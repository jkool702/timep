LINE.DEPTH.CMD NUMBER	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_____________________	__________________________________________________________________	____________________________________
7.0.0:                 	( 557.010553s | 50.09% )            ( 506.842079s | 49.97% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:              	( 0.000613s |  0.00% |  0.00% )   ( 0.000297s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
│  472.1.0:            	( 557.009417s | 50.09% | 99.99% )   ( 506.841170s | 49.97% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 472.2.0:         	( 0.025734s |  0.00% |  0.00% )   ( 0.025650s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  124.2.0:         	( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  127.2.0:         	( 0.000076s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  128.2.0:         	( 0.000129s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  129.2.0:         	( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  130.2.0:         	( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  131.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  136.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  139.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  139.2.1:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  140.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
│  │  140.2.1:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
│  │  140.2.2:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
│  │  337.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  346.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  346.2.1:         	( 0.000056s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  346.2.2:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  346.2.3:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  348.2.0:         	( 0.001381s |  0.00% |  0.00% )   ( 0.001052s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
│  │  348.2.1:         	( 0.007373s |  0.00% |  0.00% )   ( 0.007374s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 348.3.0:      	( 0.007373s |  0.00% |100.00% )   ( 0.007374s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
│  │  349.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  351.2.0:         	( 0.001512s |  0.00% |  0.00% )   ( 0.001580s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  352.2.0:         	( 0.000082s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  354.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  354.2.1:         	( 0.019279s |  0.00% |  0.00% )   ( 0.000957s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1516.2.0:        	( 556.949116s | 50.08% | 99.98% )   ( 506.800643s | 49.96% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 362.3.0:      	( 0.000284s |  0.00% |  0.00% )   ( 0.000327s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1516.3.0:     	( 0.001714s |  0.00% |  0.00% )   ( 0.002004s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1516.4.0:  	( 0.001714s |  0.00% |100.00% )   ( 0.002004s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  377.3.0:      	( 0.000096s |  0.00% |  0.00% )   ( 0.014295s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  378.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  379.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  381.3.0:      	( 0.000188s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  383.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  384.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  385.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  387.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  389.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  392.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  394.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  395.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  400.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  401.3.0:      	( 0.003279s |  0.00% |  0.00% )   ( 0.003334s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  401.3.1:      	( 0.000106s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 401.4.0:   	( 0.000106s |  0.00% |100.00% )   ( 0.000121s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  401.3.2:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  405.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  410.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  412.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  413.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  413.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  414.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  415.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  419.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  481.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  481.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  482.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  482.3.1:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  486.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  491.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  495.3.0:      	( 0.000942s |  0.00% |  0.00% )   ( 0.001111s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000058s |  0.00% |  6.15% )   ( 0.000070s |  0.00% |  6.30% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000064s |  0.00% |  6.79% )   ( 0.000077s |  0.00% |  6.93% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000062s |  0.00% |  6.58% )   ( 0.000076s |  0.00% |  6.84% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000073s |  0.00% |  7.74% )   ( 0.000085s |  0.00% |  7.65% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000061s |  0.00% |  6.47% )   ( 0.000072s |  0.00% |  6.48% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000063s |  0.00% |  6.68% )   ( 0.000076s |  0.00% |  6.84% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000060s |  0.00% |  6.36% )   ( 0.000073s |  0.00% |  6.57% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000112s |  0.00% | 11.88% )   ( 0.000124s |  0.00% | 11.16% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000060s |  0.00% |  6.36% )   ( 0.000072s |  0.00% |  6.48% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000059s |  0.00% |  6.26% )   ( 0.000071s |  0.00% |  6.39% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000066s |  0.00% |  7.00% )   ( 0.000076s |  0.00% |  6.84% )    	(1x)	│  │  │  │ continue
│  │  │  │  28.4.0:    	( 0.000082s |  0.00% |  8.70% )   ( 0.000094s |  0.00% |  8.46% )    	(1x)	│  │  │  │ local +n vOut
│  │  │  └─ -4.4.0:    	( 0.000122s |  0.00% |  6.47% )   ( 0.000145s |  0.00% |  6.52% )    	(2x)	│  │  │  └─local +n vOut (?)
│  │  │  497.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.009019s |  0.00% |  0.00% )   ( 0.009142s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  499.3.1:      	( 0.002995s |  0.00% |  0.00% )   ( 0.003143s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 499.4.0:   	( 0.000292s |  0.00% |  9.74% )   ( 0.000316s |  0.00% | 10.05% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 499.4.1:   	( 0.002703s |  0.00% | 90.25% )   ( 0.002827s |  0.00% | 89.94% )    	(1x)	│  │  │  └─nproc
│  │  │  500.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  501.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  501.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  501.3.2:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  503.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  507.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  507.3.1:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  513.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  515.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  518.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  518.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  518.3.2:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  520.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  523.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  529.3.0:      	( 0.000150s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  529.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  529.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  532.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  535.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  536.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  537.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  558.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
│  │  │  559.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
│  │  │  560.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  560.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  571.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  580.3.0:      	( 0.002866s |  0.00% |  0.00% )   ( 0.002986s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  580.3.1:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 580.4.0:   	( 0.000078s |  0.00% |100.00% )   ( 0.000091s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  581.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  584.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  590.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  592.3.0:      	( 0.001451s |  0.00% |  0.00% )   ( 0.001525s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  593.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  596.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  598.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  629.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  631.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  636.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  638.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  642.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  652.3.0:      	( 0.000531s |  0.00% |  0.00% )   ( 0.000546s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  658.3.0:      	( 0.087445s |  0.00% |  0.01% )   ( 0.087323s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 658.4.0:   	( 0.000078s |  0.00% |  0.08% )   ( 0.000091s |  0.00% |  0.10% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  660.4.0:   	( 0.012952s |  0.00% | 14.81% )   ( 0.012915s |  0.00% | 14.78% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  661.4.0:   	( 0.013955s |  0.00% | 15.95% )   ( 0.013929s |  0.00% | 15.95% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  662.4.0:   	( 0.013938s |  0.00% | 15.93% )   ( 0.013914s |  0.00% | 15.93% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  663.4.0:   	( 0.014044s |  0.00% | 16.06% )   ( 0.014017s |  0.00% | 16.05% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  664.4.0:   	( 0.014010s |  0.00% | 16.02% )   ( 0.013979s |  0.00% | 16.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  666.4.0:   	( 0.000064s |  0.00% |  0.07% )   ( 0.000076s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  667.4.0:   	( 0.018181s |  0.00% | 20.79% )   ( 0.018140s |  0.00% | 20.77% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  672.4.0:   	( 0.000089s |  0.00% |  0.10% )   ( 0.000102s |  0.00% |  0.11% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  673.4.0:   	( 0.000066s |  0.00% |  0.07% )   ( 0.000079s |  0.00% |  0.09% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 674.4.0:   	( 0.000068s |  0.00% |  0.07% )   ( 0.000081s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  682.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  687.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  729.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  733.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  735.3.0:      	( 0.000451s |  0.00% |  0.00% )   ( 0.000477s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  745.3.0:      	( 5.347068s |  0.48% |  0.96% )   ( 1.727614s |  0.17% |  0.34% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 745.4.0:   	( 0.000205s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  747.4.0:   	( 0.014015s |  0.00% |  0.26% )   ( 0.013996s |  0.00% |  0.81% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  748.4.0:   	( 0.013946s |  0.00% |  0.26% )   ( 0.013925s |  0.00% |  0.80% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  749.4.0:   	( 0.014023s |  0.00% |  0.26% )   ( 0.014001s |  0.00% |  0.81% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  750.4.0:   	( 0.014074s |  0.00% |  0.26% )   ( 0.014049s |  0.00% |  0.81% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  751.4.0:   	( 0.013918s |  0.00% |  0.26% )   ( 0.013898s |  0.00% |  0.80% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  753.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  754.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  755.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  757.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  759.4.0:   	( 0.086384s |  0.00% |  0.00% )   ( 0.100129s |  0.00% |  0.00% )    	(677x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  761.4.0:   	( 3.918883s |  0.35% |  0.10% )   ( 0.116106s |  0.01% |  0.00% )    	(676x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  761.4.1:   	( 0.001366s |  0.00% |  0.00% )   ( 0.001554s |  0.00% |  0.00% )    	(9x)	│  │  │  │ continue
│  │  │  │  763.4.0:   	( 0.083924s |  0.00% |  0.00% )   ( 0.097612s |  0.00% |  0.00% )    	(667x)	│  │  │  │ case ${REPLY} in
│  │  │  │  777.4.0:   	( 0.084284s |  0.00% |  0.00% )   ( 0.097939s |  0.00% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  778.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  781.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  787.4.0:   	( 0.084015s |  0.00% |  0.00% )   ( 0.097141s |  0.00% |  0.00% )    	(667x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  788.4.0:   	( 0.089086s |  0.00% |  0.00% )   ( 0.099536s |  0.00% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  789.4.0:   	( 0.086461s |  0.00% |  0.00% )   ( 0.099603s |  0.00% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  796.4.0:   	( 0.082338s |  0.00% |  0.00% )   ( 0.095778s |  0.00% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  796.4.1:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  798.4.0:   	( 0.083085s |  0.00% |  0.00% )   ( 0.096671s |  0.00% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  800.4.0:   	( 0.083468s |  0.00% |  0.00% )   ( 0.096924s |  0.00% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  802.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  804.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  805.4.0:   	( 0.001406s |  0.00% |  0.02% )   ( 0.001206s |  0.00% |  0.06% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  805.4.1:   	( 0.003040s |  0.00% |  0.05% )   ( 0.003428s |  0.00% |  0.19% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 805.5.0:  	( 0.003040s |  0.00% |100.00% )   ( 0.003428s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  806.4.0:   	( 0.000079s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  807.4.0:   	( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  810.4.0:   	( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  812.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  814.4.0:   	( 0.000113s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  814.4.1:   	( 0.000106s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  814.4.2:   	( 0.000078s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  816.4.0:   	( 0.000158s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.01% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  819.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  821.4.0:   	( 0.000114s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  825.4.0:   	( 0.083483s |  0.00% |  0.00% )   ( 0.096135s |  0.00% |  0.00% )    	(667x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  826.4.0:   	( 0.081606s |  0.00% |  0.00% )   ( 0.095037s |  0.00% |  0.00% )    	(667x)	│  │  │  │ case ${nWait} in
│  │  │  │  837.4.0:   	( 0.080380s |  0.00% |  0.00% )   ( 0.093476s |  0.00% |  0.00% )    	(646x)	│  │  │  │ ((nWait--))
│  │  │  │  842.4.0:   	( 0.086956s |  0.00% |  0.00% )   ( 0.100586s |  0.00% |  0.00% )    	(667x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  777.4.1:   	( 0.084145s |  0.00% |  0.00% )   ( 0.097789s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  796.4.1:   	( 0.083217s |  0.00% |  0.00% )   ( 0.096770s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  828.4.0:   	( 0.002778s |  0.00% |  0.00% )   ( 0.003231s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  829.4.0:   	( 0.002677s |  0.00% |  0.00% )   ( 0.003112s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  830.4.0:   	( 0.065674s |  0.00% |  0.05% )   ( 0.047772s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  831.4.0:   	( 0.002769s |  0.00% |  0.00% )   ( 0.003206s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  832.4.0:   	( 0.002986s |  0.00% |  0.00% )   ( 0.003375s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  834.4.0:   	( 0.002774s |  0.00% |  0.00% )   ( 0.003207s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  843.4.0:   	( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  844.4.0:   	( 0.000116s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  845.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  759.4.1:   	( 0.000158s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  759.4.2:   	( 0.000186s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -273.4.0:  	( 0.007399s |  0.00% |  0.13% )   ( 0.007499s |  0.00% |  0.43% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/pAuto'
│  │  │  853.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  854.3.0:      	( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  890.3.0:      	( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1359.3.0:     	( 0.065566s |  0.00% |  0.01% )   ( 0.065734s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1376.3.0:     	( 0.006198s |  0.00% |  0.00% )   ( 0.007190s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1376.4.0:  	( 0.000305s |  0.00% |  4.92% )   ( 0.000332s |  0.00% |  4.61% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1377.4.0:  	( 0.000184s |  0.00% |  2.96% )   ( 0.000214s |  0.00% |  2.97% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1377.4.1:  	( 0.000226s |  0.00% |  3.64% )   ( 0.000256s |  0.00% |  3.56% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1385.4.0:  	( 0.000509s |  0.00% |  8.21% )   ( 0.000523s |  0.00% |  7.27% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1386.4.0:  	( 0.000063s |  0.00% |  1.01% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1458.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1461.4.0:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1462.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1463.4.0:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000074s |  0.00% |  1.02% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1463.4.1:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1464.4.0:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1465.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000074s |  0.00% |  1.02% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1465.4.1:  	( 0.000063s |  0.00% |  1.01% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1466.4.0:  	( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.08% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1467.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1467.4.1:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1468.4.0:  	( 0.000062s |  0.00% |  1.00% )   ( 0.000074s |  0.00% |  1.02% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1468.4.1:  	( 0.000062s |  0.00% |  1.00% )   ( 0.000074s |  0.00% |  1.02% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1470.4.0:  	( 0.000066s |  0.00% |  1.06% )   ( 0.000079s |  0.00% |  1.09% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1471.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1471.4.1:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000074s |  0.00% |  1.02% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1471.4.2:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1472.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1475.4.0:  	( 0.000067s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.11% )    	(1x)	│  │  │  │ echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1476.4.0:  	( 0.000062s |  0.00% |  1.00% )   ( 0.000074s |  0.00% |  1.02% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1479.4.0:  	( 0.000072s |  0.00% |  1.16% )   ( 0.000080s |  0.00% |  1.11% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1517.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1522.4.0:  	( 0.000069s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.14% )    	(1x)	│  │  │  │ echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1523.4.0:  	( 0.000065s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1524.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1524.4.1:  	( 0.000063s |  0.00% |  1.01% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ printf '\n'
│  │  │  │  1525.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1526.4.0:  	( 0.000097s |  0.00% |  1.56% )   ( 0.000107s |  0.00% |  1.48% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1528.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1528.4.1:  	( 0.000059s |  0.00% |  0.95% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1528.4.2:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1528.4.3:  	( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.15% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1529.4.0:  	( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1542.4.0:  	( 0.000097s |  0.00% |  1.56% )   ( 0.000109s |  0.00% |  1.51% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1543.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1546.4.0:  	( 0.000087s |  0.00% |  1.40% )   ( 0.000099s |  0.00% |  1.37% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1557.4.0:  	( 0.000073s |  0.00% |  1.17% )   ( 0.000086s |  0.00% |  1.19% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1558.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1558.4.1:  	( 0.000086s |  0.00% |  1.38% )   ( 0.000096s |  0.00% |  1.33% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1559.4.0:  	( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1560.4.0:  	( 0.000063s |  0.00% |  1.01% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1565.4.0:  	( 0.000074s |  0.00% |  1.19% )   ( 0.000087s |  0.00% |  1.21% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1566.4.0:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1570.4.0:  	( 0.000089s |  0.00% |  1.43% )   ( 0.000102s |  0.00% |  1.41% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1571.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1571.4.1:  	( 0.000088s |  0.00% |  1.41% )   ( 0.000097s |  0.00% |  1.34% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1576.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1576.4.1:  	( 0.000068s |  0.00% |  1.09% )   ( 0.000081s |  0.00% |  1.12% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1577.4.0:  	( 0.000063s |  0.00% |  1.01% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1577.4.1:  	( 0.000075s |  0.00% |  1.21% )   ( 0.000088s |  0.00% |  1.22% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1578.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1578.4.1:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1578.4.2:  	( 0.000064s |  0.00% |  1.03% )   ( 0.000074s |  0.00% |  1.02% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1578.4.3:  	( 0.000065s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1586.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1586.4.1:  	( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.12% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1587.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1587.4.1:  	( 0.000065s |  0.00% |  1.04% )   ( 0.000078s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1588.4.0:  	( 0.000063s |  0.00% |  1.01% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1589.4.0:  	( 0.000089s |  0.00% |  1.43% )   ( 0.000100s |  0.00% |  1.39% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1590.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1597.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1600.4.0:  	( 0.000061s |  0.00% |  0.98% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1603.4.0:  	( 0.000062s |  0.00% |  1.00% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1604.4.0:  	( 0.000081s |  0.00% |  1.30% )   ( 0.000094s |  0.00% |  1.30% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1609.4.0:  	( 0.000068s |  0.00% |  1.09% )   ( 0.000081s |  0.00% |  1.12% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1621.4.0:  	( 0.000065s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1622.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1622.4.1:  	( 0.000067s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.09% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1623.4.0:  	( 0.000067s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.09% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1624.4.0:  	( 0.000080s |  0.00% |  1.29% )   ( 0.000093s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1625.4.0:  	( 0.000080s |  0.00% |  1.29% )   ( 0.000095s |  0.00% |  1.32% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1630.4.0:  	( 0.000086s |  0.00% |  1.38% )   ( 0.000099s |  0.00% |  1.37% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1364.3.0:     	( 0.000286s |  0.00% |  0.00% )   ( 0.000323s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1369.3.0:     	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1374.3.0:     	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1376.3.0:     	( 0.014345s |  0.00% |  0.00% )   ( 0.014319s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1381.3.0:     	( 0.014103s |  0.00% |  0.00% )   ( 0.110021s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1386.3.0:     	( 0.013997s |  0.00% |  0.00% )   ( 0.013968s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1391.3.0:     	( 0.013602s |  0.00% |  0.00% )   ( 0.013580s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1393.3.0:     	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1394.3.0:     	( 0.000066s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1396.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1407.3.0:     	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1410.3.0:     	( 0.000062s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1411.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1411.3.1:     	( 0.002774s |  0.00% |  0.00% )   ( 0.003244s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1412.3.0:     	( 0.002556s |  0.00% |  0.00% )   ( 0.003002s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1413.3.0:     	( 73.850901s |  6.64% |  3.31% )   ( 70.466184s |  6.94% |  3.47% )    	(4x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002522s |  0.00% |  0.00% )   ( 0.002601s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  81.4.0:    	( 73.847497s |  6.64% | 99.99% )   ( 70.462552s |  6.94% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 81.5.0: 	( 0.000746s |  0.00% |  0.00% )   ( 0.000851s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.C9LBmO"
│  │  │  │  │  8.5.0:  	( 0.000336s |  0.00% |  0.00% )   ( 0.000390s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.055934s |  0.00% |  0.07% )   ( 0.055862s |  0.00% |  0.07% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.C9LBmO"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.056498s |  0.00% |  0.07% )   ( 0.056419s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 205306 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.056854s |  0.00% |  0.07% )   ( 0.056773s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 205306 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.057187s |  0.00% |  0.07% )   ( 0.057099s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 205306 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.057103s |  0.00% |  0.07% )   ( 0.057016s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.015910s |  0.00% |  0.00% )   ( 0.018225s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.014274s |  0.00% |  0.00% )   ( 0.016486s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000710s |  0.00% |  0.00% )   ( 0.000825s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.C9LBmO"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000570s |  0.00% |  0.00% )   ( 0.000676s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000563s |  0.00% |  0.00% )   ( 0.000673s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.017823s |  0.00% |  0.00% )   ( 0.020122s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.C9LBmO"/.wait/p0
│  │  │  │  │  23.5.0: 	( 1.044134s |  0.09% |  0.05% )   ( 0.023197s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.015327s |  0.00% |  0.00% )   ( 0.017629s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.017220s |  0.00% |  0.00% )   ( 0.016684s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.013833s |  0.00% |  0.00% )   ( 0.015998s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.016497s |  0.00% |  0.00% )   ( 0.016571s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.123166s |  0.01% |  0.00% )   ( 0.121889s |  0.01% |  0.00% )    	(104x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.017215s |  0.00% |  0.00% )   ( 0.016096s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.013654s |  0.00% |  0.00% )   ( 0.015803s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.033412s |  0.00% |  0.00% )   ( 0.016966s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.016908s |  0.00% |  0.00% )   ( 0.019104s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.C9LBmO"/.wait/p0
│  │  │  │  │  48.5.0: 	( 0.016537s |  0.00% |  0.00% )   ( 0.015837s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.013405s |  0.00% |  0.00% )   ( 0.015550s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000776s |  0.00% |  0.00% )   ( 0.000898s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000689s |  0.00% |  0.00% )   ( 0.000821s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 72.097655s |  6.48% |  3.75% )   ( 69.730337s |  6.87% |  3.80% )    	(104x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.012521s |  0.00% |  0.01% )   ( 0.014639s |  0.00% |  0.02% )    	(104x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 4.956003s |  0.44% |  6.87% )   ( 4.749019s |  0.46% |  6.81% )    	(104x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 8.366664s |  0.75% | 11.60% )   ( 8.130126s |  0.80% | 11.65% )    	(104x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 7.031441s |  0.63% |  9.75% )   ( 6.749463s |  0.66% |  9.67% )    	(104x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 8.348584s |  0.75% | 11.57% )   ( 8.174695s |  0.80% | 11.72% )    	(104x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 6.726940s |  0.60% |  9.33% )   ( 6.510238s |  0.64% |  9.33% )    	(104x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 4.389018s |  0.39% |  6.08% )   ( 4.248120s |  0.41% |  6.09% )    	(104x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.248215s |  0.20% |  3.11% )   ( 2.199773s |  0.21% |  3.15% )    	(104x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 4.581634s |  0.41% |  6.35% )   ( 4.438571s |  0.43% |  6.36% )    	(104x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.047456s |  0.18% |  2.83% )   ( 1.933155s |  0.19% |  2.77% )    	(104x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 5.887025s |  0.52% |  8.16% )   ( 5.619470s |  0.55% |  8.05% )    	(104x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 12.846557s |  1.15% | 17.81% )   ( 12.588137s |  1.24% | 18.05% )    	(104x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.346934s |  0.21% |  3.25% )   ( 2.201087s |  0.21% |  3.15% )    	(104x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  │  20.6.0:    	( 2.276754s |  0.20% |  3.15% )   ( 2.137354s |  0.21% |  3.06% )    	(104x)	│  │  │  │  │  │ xxhsum -H3 "${@}"
│  │  │  │  │  └─ 8.6.0:   	( 0.031909s |  0.00% |  0.02% )   ( 0.036490s |  0.00% |  0.02% )    	(208x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000421s |  0.00% |  0.00% )   ( 0.000491s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.014016s |  0.00% |  0.00% )   ( 0.016096s |  0.00% |  0.00% )    	(100x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.012656s |  0.00% |  0.00% )   ( 0.014704s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.015668s |  0.00% |  0.00% )   ( 0.016283s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000392s |  0.00% |  0.00% )   ( 0.000457s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000410s |  0.00% |  0.00% )   ( 0.000472s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.028998s |  0.00% |  0.03% )   ( 0.029252s |  0.00% |  0.04% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.C9LBmO"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  │  154.4.0:   	( 0.000401s |  0.00% |  0.00% )   ( 0.000454s |  0.00% |  0.00% )    	(4x)	│  │  │  │ p_PID+=(${p0_PID})
│  │  │  └─ 8.4.0:     	( 0.000481s |  0.00% |  0.00% )   ( 0.000577s |  0.00% |  0.00% )    	(8x)	│  │  │  └─source /proc/self/fd/0 <<< "${coprocSrcCode//'{<#>}'/"${kkProcs}"}"
│  │  │  1411.3.0:     	( 0.002721s |  0.00% |  0.00% )   ( 0.003169s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1413.3.0:     	( 417.964447s | 37.58% |  3.41% )   ( 401.343601s | 39.57% |  3.59% )    	(22x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.020602s |  0.00% |  0.00% )   ( 0.021059s |  0.00% |  0.00% )    	(22x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  81.4.0:    	( 417.936287s | 37.58% | 99.99% )   ( 401.313859s | 39.56% | 99.99% )    	(22x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 81.5.0: 	( 0.003790s |  0.00% |  0.00% )   ( 0.004352s |  0.00% |  0.00% )    	(22x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.C9LBmO"
│  │  │  │  │  8.5.0:  	( 0.002677s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.481399s |  0.04% |  0.11% )   ( 0.463845s |  0.04% |  0.11% )    	(22x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.C9LBmO"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.470941s |  0.04% |  0.11% )   ( 0.464315s |  0.04% |  0.11% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 205306 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.457882s |  0.04% |  0.10% )   ( 0.456624s |  0.04% |  0.11% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 205306 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.478820s |  0.04% |  0.11% )   ( 0.477373s |  0.04% |  0.11% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 205306 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.495950s |  0.04% |  0.11% )   ( 0.494530s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.081903s |  0.00% |  0.00% )   ( 0.093266s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.072153s |  0.00% |  0.00% )   ( 0.083353s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002800s |  0.00% |  0.00% )   ( 0.003200s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.C9LBmO"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002388s |  0.00% |  0.00% )   ( 0.002790s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002253s |  0.00% |  0.00% )   ( 0.002644s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.090964s |  0.00% |  0.00% )   ( 0.102520s |  0.01% |  0.00% )    	(533x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.C9LBmO"/.wait/p4
│  │  │  │  │  23.5.0: 	( 5.005270s |  0.45% |  0.04% )   ( 0.117670s |  0.01% |  0.00% )    	(533x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.082074s |  0.00% |  0.00% )   ( 0.090761s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.075302s |  0.00% |  0.00% )   ( 0.084682s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.071993s |  0.00% |  0.00% )   ( 0.079730s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.073140s |  0.00% |  0.00% )   ( 0.084057s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.631919s |  0.05% |  0.00% )   ( 0.613749s |  0.06% |  0.00% )    	(511x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.068961s |  0.00% |  0.00% )   ( 0.079610s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.067885s |  0.00% |  0.00% )   ( 0.078512s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.129742s |  0.01% |  0.00% )   ( 0.085240s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.085732s |  0.00% |  0.00% )   ( 0.096890s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.C9LBmO"/.wait/p4
│  │  │  │  │  48.5.0: 	( 0.074404s |  0.00% |  0.00% )   ( 0.079239s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.066922s |  0.00% |  0.00% )   ( 0.077623s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.002688s |  0.00% |  0.00% )   ( 0.003101s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.002403s |  0.00% |  0.00% )   ( 0.002753s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.002433s |  0.00% |  0.00% )   ( 0.002852s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 408.449367s | 36.73% |  4.22% )   ( 396.679823s | 39.11% |  4.27% )    	(511x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.064228s |  0.00% |  0.01% )   ( 0.075021s |  0.00% |  0.01% )    	(511x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 27.859933s |  2.50% |  6.82% )   ( 27.048984s |  2.66% |  6.81% )    	(511x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 48.221445s |  4.33% | 11.80% )   ( 47.334429s |  4.66% | 11.93% )    	(511x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 39.369639s |  3.54% |  9.63% )   ( 38.151334s |  3.76% |  9.61% )    	(511x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 48.252988s |  4.33% | 11.81% )   ( 46.865065s |  4.62% | 11.81% )    	(511x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 38.004741s |  3.41% |  9.30% )   ( 36.872493s |  3.63% |  9.29% )    	(511x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 25.112485s |  2.25% |  6.14% )   ( 24.380403s |  2.40% |  6.14% )    	(511x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 12.233820s |  1.10% |  2.99% )   ( 11.600510s |  1.14% |  2.92% )    	(511x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 26.510449s |  2.38% |  6.49% )   ( 25.565431s |  2.52% |  6.44% )    	(511x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 10.679076s |  0.96% |  2.61% )   ( 10.150352s |  1.00% |  2.55% )    	(511x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 33.104833s |  2.97% |  8.10% )   ( 32.009843s |  3.15% |  8.06% )    	(511x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 75.145518s |  6.75% | 18.39% )   ( 73.907002s |  7.28% | 18.63% )    	(511x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 12.067042s |  1.08% |  2.95% )   ( 11.506209s |  1.13% |  2.90% )    	(511x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  │  20.6.0:    	( 11.655138s |  1.04% |  2.85% )   ( 11.026755s |  1.08% |  2.77% )    	(511x)	│  │  │  │  │  │ xxhsum -H3 "${@}"
│  │  │  │  │  └─ 8.6.0:   	( 0.168032s |  0.01% |  0.02% )   ( 0.185992s |  0.01% |  0.02% )    	(1022x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.071270s |  0.00% |  0.00% )   ( 0.082135s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.067769s |  0.00% |  0.00% )   ( 0.075293s |  0.00% |  0.00% )    	(489x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.100886s |  0.00% |  0.00% )   ( 0.083624s |  0.00% |  0.00% )    	(489x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002393s |  0.00% |  0.00% )   ( 0.002773s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002556s |  0.00% |  0.00% )   ( 0.002931s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.157258s |  0.01% |  0.03% )   ( 0.158942s |  0.01% |  0.03% )    	(22x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.C9LBmO"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  │  154.4.0:   	( 0.003236s |  0.00% |  0.00% )   ( 0.003621s |  0.00% |  0.00% )    	(22x)	│  │  │  │ p_PID+=(${p4_PID})
│  │  │  └─ 8.4.0:     	( 0.004322s |  0.00% |  0.00% )   ( 0.005062s |  0.00% |  0.00% )    	(44x)	│  │  │  └─source /proc/self/fd/0 <<< "${coprocSrcCode//'{<#>}'/"${kkProcs}"}"
│  │  │  1413.3.0:     	( 34.899183s |  3.13% |  3.13% )   ( 32.891230s |  3.24% |  3.24% )    	(2x)	│  │  │ << (FUNCTION): main.forkrun.local p6 p6_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001834s |  0.00% |  0.00% )   ( 0.001875s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─local p6 p6_PID (&)
│  │  │  │  81.4.0:    	( 34.896709s |  3.13% | 99.99% )   ( 32.888621s |  3.24% | 99.99% )    	(2x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 81.5.0: 	( 0.000461s |  0.00% |  0.00% )   ( 0.000529s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.C9LBmO"
│  │  │  │  │  8.5.0:  	( 0.000233s |  0.00% |  0.00% )   ( 0.000268s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p6
│  │  │  │  │  12.5.0: 	( 0.041759s |  0.00% |  0.11% )   ( 0.041643s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.C9LBmO"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.041550s |  0.00% |  0.11% )   ( 0.041449s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 205306 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.041577s |  0.00% |  0.11% )   ( 0.041466s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 205306 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.044304s |  0.00% |  0.12% )   ( 0.044187s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 205306 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.039285s |  0.00% |  0.11% )   ( 0.039179s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.011166s |  0.00% |  0.00% )   ( 0.009287s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.007264s |  0.00% |  0.00% )   ( 0.008419s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000159s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.C9LBmO"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000189s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000216s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.009176s |  0.00% |  0.00% )   ( 0.010318s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.C9LBmO"/.wait/p6
│  │  │  │  │  23.5.0: 	( 0.591917s |  0.05% |  0.06% )   ( 0.012370s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.008195s |  0.00% |  0.00% )   ( 0.009335s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.007813s |  0.00% |  0.00% )   ( 0.009077s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.007321s |  0.00% |  0.00% )   ( 0.008431s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.007578s |  0.00% |  0.00% )   ( 0.008733s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.064891s |  0.00% |  0.00% )   ( 0.062860s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.007389s |  0.00% |  0.00% )   ( 0.008509s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.006849s |  0.00% |  0.00% )   ( 0.007917s |  0.00% |  0.00% )    	(53x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.014471s |  0.00% |  0.00% )   ( 0.009104s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.009197s |  0.00% |  0.00% )   ( 0.010410s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.C9LBmO"/.wait/p6
│  │  │  │  │  48.5.0: 	( 0.007303s |  0.00% |  0.00% )   ( 0.008457s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.006973s |  0.00% |  0.00% )   ( 0.008059s |  0.00% |  0.00% )    	(53x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000147s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000165s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.000176s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 33.865979s |  3.04% |  3.66% )   ( 32.442232s |  3.19% |  3.72% )    	(53x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.006564s |  0.00% |  0.01% )   ( 0.007665s |  0.00% |  0.02% )    	(53x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 2.270593s |  0.20% |  6.70% )   ( 2.171513s |  0.21% |  6.69% )    	(53x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 3.758034s |  0.33% | 11.09% )   ( 3.633183s |  0.35% | 11.19% )    	(53x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 3.294436s |  0.29% |  9.72% )   ( 3.101872s |  0.30% |  9.56% )    	(53x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 3.804865s |  0.34% | 11.23% )   ( 3.637645s |  0.35% | 11.21% )    	(53x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 3.175405s |  0.28% |  9.37% )   ( 2.976298s |  0.29% |  9.17% )    	(53x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.124617s |  0.19% |  6.27% )   ( 2.004295s |  0.19% |  6.17% )    	(53x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.205102s |  0.10% |  3.55% )   ( 1.128942s |  0.11% |  3.47% )    	(53x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.175134s |  0.19% |  6.42% )   ( 2.057305s |  0.20% |  6.34% )    	(53x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.024505s |  0.09% |  3.02% )   ( 0.981529s |  0.09% |  3.02% )    	(53x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 2.788825s |  0.25% |  8.23% )   ( 2.698683s |  0.26% |  8.31% )    	(53x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 5.905060s |  0.53% | 17.43% )   ( 5.804069s |  0.57% | 17.89% )    	(53x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.165037s |  0.10% |  3.44% )   ( 1.125732s |  0.11% |  3.46% )    	(53x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  │  20.6.0:    	( 1.151035s |  0.10% |  3.39% )   ( 1.094390s |  0.10% |  3.37% )    	(53x)	│  │  │  │  │  │ xxhsum -H3 "${@}"
│  │  │  │  │  └─ 8.6.0:   	( 0.016767s |  0.00% |  0.02% )   ( 0.019111s |  0.00% |  0.02% )    	(106x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.007192s |  0.00% |  0.00% )   ( 0.008314s |  0.00% |  0.00% )    	(53x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.008731s |  0.00% |  0.00% )   ( 0.007812s |  0.00% |  0.00% )    	(51x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.010960s |  0.00% |  0.00% )   ( 0.008800s |  0.00% |  0.00% )    	(51x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000242s |  0.00% |  0.00% )   ( 0.000280s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000239s |  0.00% |  0.00% )   ( 0.000280s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000258s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000275s |  0.00% |  0.00% )   ( 0.000315s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.C9LBmO"/.quit
│  │  │  │  │  62.5.0: 	( 0.000427s |  0.00% |  0.00% )   ( 0.000470s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000328s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.024354s |  0.00% |  0.06% )   ( 0.018213s |  0.00% |  0.05% )    	(2x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.C9LBmO"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.C9LBmO"/.run/p6\; \$\\nprintf \n >&21'
│  │  │  │  154.4.0:   	( 0.000276s |  0.00% |  0.00% )   ( 0.000311s |  0.00% |  0.00% )    	(2x)	│  │  │  │ p_PID+=(${p6_PID})
│  │  │  └─ 8.4.0:     	( 0.000364s |  0.00% |  0.00% )   ( 0.000423s |  0.00% |  0.00% )    	(4x)	│  │  │  └─source /proc/self/fd/0 <<< "${coprocSrcCode//'{<#>}'/"${kkProcs}"}"
│  │  │  1415.3.0:     	( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1416.3.0:     	( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1417.3.0:     	( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1420.3.0:     	( 0.000126s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1425.3.0:     	( 0.001292s |  0.00% |  0.00% )   ( 0.001310s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1430.3.0:     	( 0.000130s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1492.3.0:     	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1495.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1502.3.0:     	( 24.632116s |  2.21% |  4.42% )   ( 0.001857s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1506.3.0:     	( 0.000279s |  0.00% |  0.00% )   ( 0.000315s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1511.3.0:     	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1517.2.0:        	( 0.000088s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │ wait
│  └─ -273.2.0:        	( 0.003509s |  0.00% |  0.00% )   ( 0.002113s |  0.00% |  0.00% )    	(1x)	│  └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.C9LBmO" 2>/dev/null'
└─ 8.1.0:              	( 0.000523s |  0.00% |  0.00% )   ( 0.000612s |  0.00% |  0.00% )    	(2x)	└─forkrun ff < /mnt/ramdisk/flist > /dev/null

8.0.0:                 	( 554.900813s | 49.90% )            ( 507.389069s | 50.02% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
├─ 1.1.0:              	( 0.000788s |  0.00% |  0.00% )   ( 0.000490s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  472.1.0:            	( 554.899783s | 49.90% | 99.99% )   ( 507.388298s | 50.02% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 472.2.0:         	( 0.026581s |  0.00% |  0.00% )   ( 0.026536s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  124.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  127.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  128.2.0:         	( 0.000128s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  129.2.0:         	( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  130.2.0:         	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  131.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  136.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  139.2.0:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  139.2.1:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  140.2.0:         	( 0.000127s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
│  │  140.2.1:         	( 0.000126s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
│  │  140.2.2:         	( 0.000126s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
│  │  141.2.0:         	( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
│  │  268.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
│  │  268.2.1:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
│  │  332.2.0:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
│  │  333.2.0:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
│  │  337.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  346.2.0:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  346.2.1:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  346.2.2:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  346.2.3:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  348.2.0:         	( 0.001393s |  0.00% |  0.00% )   ( 0.001038s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
│  │  348.2.1:         	( 0.007124s |  0.00% |  0.00% )   ( 0.007125s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 348.3.0:      	( 0.007124s |  0.00% |100.00% )   ( 0.007125s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
│  │  349.2.0:         	( 0.000074s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  351.2.0:         	( 0.001267s |  0.00% |  0.00% )   ( 0.001342s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  352.2.0:         	( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  354.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  354.2.1:         	( 0.016216s |  0.00% |  0.00% )   ( 0.001001s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  362.2.0:         	( 554.838928s | 49.89% | 99.98% )   ( 507.346007s | 50.02% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 362.3.0:      	( 0.000095s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1516.3.0:     	( 0.001663s |  0.00% |  0.00% )   ( 0.001932s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1516.4.0:  	( 0.001663s |  0.00% |100.00% )   ( 0.001932s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  377.3.0:      	( 0.000102s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  378.3.0:      	( 0.000089s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  379.3.0:      	( 0.000088s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  381.3.0:      	( 0.000221s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  383.3.0:      	( 0.000096s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  384.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.009587s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  385.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  387.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  389.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  392.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  394.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  395.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  400.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  401.3.0:      	( 0.005608s |  0.00% |  0.00% )   ( 0.005641s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  401.3.1:      	( 0.000212s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 401.4.0:   	( 0.000212s |  0.00% |100.00% )   ( 0.000239s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  401.3.2:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  405.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  410.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  412.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  413.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  413.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  414.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  415.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  419.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  481.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  481.3.1:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  482.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  482.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  486.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  491.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  495.3.0:      	( 0.000971s |  0.00% |  0.00% )   ( 0.001144s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000060s |  0.00% |  6.17% )   ( 0.000073s |  0.00% |  6.38% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000069s |  0.00% |  7.10% )   ( 0.000079s |  0.00% |  6.90% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000061s |  0.00% |  6.28% )   ( 0.000075s |  0.00% |  6.55% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000063s |  0.00% |  6.48% )   ( 0.000076s |  0.00% |  6.64% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000063s |  0.00% |  6.48% )   ( 0.000075s |  0.00% |  6.55% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000066s |  0.00% |  6.79% )   ( 0.000078s |  0.00% |  6.81% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000062s |  0.00% |  6.38% )   ( 0.000075s |  0.00% |  6.55% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000111s |  0.00% | 11.43% )   ( 0.000125s |  0.00% | 10.92% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000061s |  0.00% |  6.28% )   ( 0.000075s |  0.00% |  6.55% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000071s |  0.00% |  7.31% )   ( 0.000082s |  0.00% |  7.16% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000063s |  0.00% |  6.48% )   ( 0.000075s |  0.00% |  6.55% )    	(1x)	│  │  │  │ continue
│  │  │  │  28.4.0:    	( 0.000080s |  0.00% |  8.23% )   ( 0.000093s |  0.00% |  8.12% )    	(1x)	│  │  │  │ local +n vOut
│  │  │  └─ -4.4.0:    	( 0.000141s |  0.00% |  7.26% )   ( 0.000163s |  0.00% |  7.12% )    	(2x)	│  │  │  └─local +n vOut (?)
│  │  │  497.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.006878s |  0.00% |  0.00% )   ( 0.006973s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  499.3.1:      	( 0.002767s |  0.00% |  0.00% )   ( 0.002858s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 499.4.0:   	( 0.000213s |  0.00% |  7.69% )   ( 0.000228s |  0.00% |  7.97% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 499.4.1:   	( 0.002554s |  0.00% | 92.30% )   ( 0.002630s |  0.00% | 92.02% )    	(1x)	│  │  │  └─nproc
│  │  │  500.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  501.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  501.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  501.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  503.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  507.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  507.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  513.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  515.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  518.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  518.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  518.3.2:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  520.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  523.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  529.3.0:      	( 0.000150s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  529.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  529.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  532.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  535.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  536.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  537.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  538.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
│  │  │  539.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  539.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
│  │  │  540.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
│  │  │  541.3.0:      	( 0.000112s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
│  │  │  542.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
│  │  │  543.3.0:      	( 0.003043s |  0.00% |  0.00% )   ( 0.004192s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep -qF 'coreutils'
│  │  │  544.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
│  │  │  551.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  552.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  553.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
│  │  │  571.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  580.3.0:      	( 0.002939s |  0.00% |  0.00% )   ( 0.003044s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  580.3.1:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 580.4.0:   	( 0.000081s |  0.00% |100.00% )   ( 0.000094s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  581.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  584.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  590.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  592.3.0:      	( 0.001281s |  0.00% |  0.00% )   ( 0.001365s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  593.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  596.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  598.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  629.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  631.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  636.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  638.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  642.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  652.3.0:      	( 0.000556s |  0.00% |  0.00% )   ( 0.000579s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  658.3.0:      	( 0.087557s |  0.00% |  0.01% )   ( 0.087484s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 658.4.0:   	( 0.000080s |  0.00% |  0.09% )   ( 0.000092s |  0.00% |  0.10% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  660.4.0:   	( 0.012941s |  0.00% | 14.78% )   ( 0.012917s |  0.00% | 14.76% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  661.4.0:   	( 0.013959s |  0.00% | 15.94% )   ( 0.013939s |  0.00% | 15.93% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  662.4.0:   	( 0.014005s |  0.00% | 15.99% )   ( 0.013984s |  0.00% | 15.98% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  663.4.0:   	( 0.013972s |  0.00% | 15.95% )   ( 0.013951s |  0.00% | 15.94% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  664.4.0:   	( 0.013932s |  0.00% | 15.91% )   ( 0.013913s |  0.00% | 15.90% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  666.4.0:   	( 0.000061s |  0.00% |  0.06% )   ( 0.000074s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  667.4.0:   	( 0.018379s |  0.00% | 20.99% )   ( 0.018347s |  0.00% | 20.97% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  672.4.0:   	( 0.000091s |  0.00% |  0.10% )   ( 0.000104s |  0.00% |  0.11% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  673.4.0:   	( 0.000068s |  0.00% |  0.07% )   ( 0.000081s |  0.00% |  0.09% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 674.4.0:   	( 0.000069s |  0.00% |  0.07% )   ( 0.000082s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  682.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  687.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  729.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  733.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  735.3.0:      	( 0.000399s |  0.00% |  0.00% )   ( 0.000430s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  745.3.0:      	( 5.067779s |  0.45% |  0.91% )   ( 1.734495s |  0.17% |  0.34% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 745.4.0:   	( 0.000106s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  747.4.0:   	( 0.016028s |  0.00% |  0.31% )   ( 0.015979s |  0.00% |  0.92% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  748.4.0:   	( 0.014013s |  0.00% |  0.27% )   ( 0.013989s |  0.00% |  0.80% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  749.4.0:   	( 0.014017s |  0.00% |  0.27% )   ( 0.013990s |  0.00% |  0.80% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  750.4.0:   	( 0.013981s |  0.00% |  0.27% )   ( 0.013941s |  0.00% |  0.80% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  751.4.0:   	( 0.013924s |  0.00% |  0.27% )   ( 0.013899s |  0.00% |  0.80% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  753.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  754.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  755.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  757.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  759.4.0:   	( 0.086848s |  0.00% |  0.00% )   ( 0.100802s |  0.00% |  0.00% )    	(674x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  761.4.0:   	( 3.639413s |  0.32% |  0.10% )   ( 0.115641s |  0.01% |  0.00% )    	(673x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  761.4.1:   	( 0.001207s |  0.00% |  0.00% )   ( 0.001377s |  0.00% |  0.00% )    	(8x)	│  │  │  │ continue
│  │  │  │  763.4.0:   	( 0.087652s |  0.00% |  0.00% )   ( 0.098566s |  0.00% |  0.00% )    	(665x)	│  │  │  │ case ${REPLY} in
│  │  │  │  777.4.0:   	( 0.084013s |  0.00% |  0.00% )   ( 0.097694s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  778.4.0:   	( 0.000127s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  781.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  787.4.0:   	( 0.083657s |  0.00% |  0.00% )   ( 0.097265s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  788.4.0:   	( 0.086559s |  0.00% |  0.00% )   ( 0.100018s |  0.00% |  0.00% )    	(665x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  789.4.0:   	( 0.087337s |  0.00% |  0.00% )   ( 0.100894s |  0.00% |  0.00% )    	(665x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  796.4.0:   	( 0.082920s |  0.00% |  0.00% )   ( 0.096520s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  796.4.1:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  798.4.0:   	( 0.082861s |  0.00% |  0.00% )   ( 0.096378s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  800.4.0:   	( 0.083487s |  0.00% |  0.00% )   ( 0.096900s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  802.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  804.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  805.4.0:   	( 0.001713s |  0.00% |  0.03% )   ( 0.001581s |  0.00% |  0.09% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  805.4.1:   	( 0.003049s |  0.00% |  0.06% )   ( 0.003471s |  0.00% |  0.20% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 805.5.0:  	( 0.003049s |  0.00% |100.00% )   ( 0.003471s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  806.4.0:   	( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  807.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  810.4.0:   	( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  812.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  814.4.0:   	( 0.000114s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  814.4.1:   	( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  814.4.2:   	( 0.000107s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  816.4.0:   	( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  819.4.0:   	( 0.000108s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  821.4.0:   	( 0.000116s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  825.4.0:   	( 0.083010s |  0.00% |  0.00% )   ( 0.096589s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  826.4.0:   	( 0.082201s |  0.00% |  0.00% )   ( 0.095789s |  0.00% |  0.00% )    	(665x)	│  │  │  │ case ${nWait} in
│  │  │  │  837.4.0:   	( 0.080940s |  0.00% |  0.00% )   ( 0.094102s |  0.00% |  0.00% )    	(644x)	│  │  │  │ ((nWait--))
│  │  │  │  842.4.0:   	( 0.087067s |  0.00% |  0.00% )   ( 0.100836s |  0.00% |  0.00% )    	(665x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  777.4.1:   	( 0.084581s |  0.00% |  0.00% )   ( 0.098198s |  0.00% |  0.00% )    	(664x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  796.4.1:   	( 0.083267s |  0.00% |  0.00% )   ( 0.096781s |  0.00% |  0.00% )    	(664x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  828.4.0:   	( 0.002710s |  0.00% |  0.00% )   ( 0.003149s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  829.4.0:   	( 0.002611s |  0.00% |  0.00% )   ( 0.003033s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  830.4.0:   	( 0.061208s |  0.00% |  0.05% )   ( 0.048043s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  831.4.0:   	( 0.002812s |  0.00% |  0.00% )   ( 0.003251s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  832.4.0:   	( 0.002790s |  0.00% |  0.00% )   ( 0.003222s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  834.4.0:   	( 0.002802s |  0.00% |  0.00% )   ( 0.003226s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  843.4.0:   	( 0.000119s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  844.4.0:   	( 0.000123s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  845.4.0:   	( 0.000122s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  759.4.1:   	( 0.000119s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  759.4.2:   	( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -273.4.0:  	( 0.006484s |  0.00% |  0.12% )   ( 0.006327s |  0.00% |  0.36% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/pAuto'
│  │  │  853.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  854.3.0:      	( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  890.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1359.3.0:     	( 0.054146s |  0.00% |  0.00% )   ( 0.054225s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1376.3.0:     	( 0.004862s |  0.00% |  0.00% )   ( 0.005692s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1376.4.0:  	( 0.000290s |  0.00% |  5.96% )   ( 0.000323s |  0.00% |  5.67% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1377.4.0:  	( 0.000185s |  0.00% |  3.80% )   ( 0.000216s |  0.00% |  3.79% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1377.4.1:  	( 0.000079s |  0.00% |  1.62% )   ( 0.000091s |  0.00% |  1.59% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1385.4.0:  	( 0.000216s |  0.00% |  4.44% )   ( 0.000229s |  0.00% |  4.02% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1386.4.0:  	( 0.000062s |  0.00% |  1.27% )   ( 0.000076s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1458.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1461.4.0:  	( 0.000063s |  0.00% |  1.29% )   ( 0.000075s |  0.00% |  1.31% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1462.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1463.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1463.4.1:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1464.4.0:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1465.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1465.4.1:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000076s |  0.00% |  1.33% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1466.4.0:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1467.4.0:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000074s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1467.4.1:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1468.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1468.4.1:  	( 0.000062s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1468.4.2:  	( 0.000063s |  0.00% |  1.29% )   ( 0.000075s |  0.00% |  1.31% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1470.4.0:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1471.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1471.4.1:  	( 0.000062s |  0.00% |  1.27% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1471.4.2:  	( 0.000091s |  0.00% |  1.87% )   ( 0.000102s |  0.00% |  1.79% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1528.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000074s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1528.4.1:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000072s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1528.4.2:  	( 0.000069s |  0.00% |  1.41% )   ( 0.000081s |  0.00% |  1.42% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1529.4.0:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1542.4.0:  	( 0.000080s |  0.00% |  1.64% )   ( 0.000093s |  0.00% |  1.63% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1543.4.0:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000076s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1546.4.0:  	( 0.000073s |  0.00% |  1.50% )   ( 0.000085s |  0.00% |  1.49% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1557.4.0:  	( 0.000073s |  0.00% |  1.50% )   ( 0.000085s |  0.00% |  1.49% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1558.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1558.4.1:  	( 0.000069s |  0.00% |  1.41% )   ( 0.000082s |  0.00% |  1.44% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1559.4.0:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1560.4.0:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1565.4.0:  	( 0.000078s |  0.00% |  1.60% )   ( 0.000091s |  0.00% |  1.59% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1566.4.0:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000076s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1570.4.0:  	( 0.000075s |  0.00% |  1.54% )   ( 0.000087s |  0.00% |  1.52% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1571.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1571.4.1:  	( 0.000074s |  0.00% |  1.52% )   ( 0.000088s |  0.00% |  1.54% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1576.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1576.4.1:  	( 0.000069s |  0.00% |  1.41% )   ( 0.000082s |  0.00% |  1.44% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1577.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000073s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1577.4.1:  	( 0.000076s |  0.00% |  1.56% )   ( 0.000088s |  0.00% |  1.54% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1578.4.0:  	( 0.000059s |  0.00% |  1.21% )   ( 0.000071s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1578.4.1:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1586.4.0:  	( 0.000069s |  0.00% |  1.41% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1586.4.1:  	( 0.000068s |  0.00% |  1.39% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1587.4.0:  	( 0.000059s |  0.00% |  1.21% )   ( 0.000072s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1587.4.1:  	( 0.000081s |  0.00% |  1.66% )   ( 0.000093s |  0.00% |  1.63% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1588.4.0:  	( 0.000062s |  0.00% |  1.27% )   ( 0.000074s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1589.4.0:  	( 0.000099s |  0.00% |  2.03% )   ( 0.000112s |  0.00% |  1.96% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1590.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000072s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1597.4.0:  	( 0.000058s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1600.4.0:  	( 0.000058s |  0.00% |  1.19% )   ( 0.000070s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1603.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000072s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1604.4.0:  	( 0.000086s |  0.00% |  1.76% )   ( 0.000093s |  0.00% |  1.63% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1609.4.0:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1621.4.0:  	( 0.000063s |  0.00% |  1.29% )   ( 0.000075s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1622.4.0:  	( 0.000058s |  0.00% |  1.19% )   ( 0.000070s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1622.4.1:  	( 0.000081s |  0.00% |  1.66% )   ( 0.000093s |  0.00% |  1.63% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1623.4.0:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1624.4.0:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1625.4.0:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000075s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1630.4.0:  	( 0.000097s |  0.00% |  1.99% )   ( 0.000109s |  0.00% |  1.91% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1364.3.0:     	( 0.000234s |  0.00% |  0.00% )   ( 0.000272s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1369.3.0:     	( 0.000066s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1374.3.0:     	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1376.3.0:     	( 0.014218s |  0.00% |  0.00% )   ( 0.014196s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1381.3.0:     	( 0.014418s |  0.00% |  0.00% )   ( 0.110737s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1386.3.0:     	( 0.014062s |  0.00% |  0.00% )   ( 0.014039s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1391.3.0:     	( 0.013991s |  0.00% |  0.00% )   ( 0.013955s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1393.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1394.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1396.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1407.3.0:     	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1410.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1411.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1411.3.1:     	( 0.002761s |  0.00% |  0.00% )   ( 0.003239s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1412.3.0:     	( 0.002637s |  0.00% |  0.00% )   ( 0.003107s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1413.3.0:     	( 71.830577s |  6.46% |  3.23% )   ( 69.017714s |  6.80% |  3.40% )    	(4x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002399s |  0.00% |  0.00% )   ( 0.002476s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  81.4.0:    	( 71.827282s |  6.45% | 99.99% )   ( 69.014200s |  6.80% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 81.5.0: 	( 0.000892s |  0.00% |  0.00% )   ( 0.001000s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.J4xdF9"
│  │  │  │  │  8.5.0:  	( 0.000390s |  0.00% |  0.00% )   ( 0.000447s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.056144s |  0.00% |  0.07% )   ( 0.056068s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.J4xdF9"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.056582s |  0.00% |  0.07% )   ( 0.056492s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 214121 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.056782s |  0.00% |  0.07% )   ( 0.056700s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 214121 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.057253s |  0.00% |  0.07% )   ( 0.057168s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 214121 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.057193s |  0.00% |  0.07% )   ( 0.057110s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.016398s |  0.00% |  0.00% )   ( 0.018730s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.014608s |  0.00% |  0.00% )   ( 0.016805s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000821s |  0.00% |  0.00% )   ( 0.000947s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.J4xdF9"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000646s |  0.00% |  0.00% )   ( 0.000769s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000608s |  0.00% |  0.00% )   ( 0.000722s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.018191s |  0.00% |  0.00% )   ( 0.020530s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.J4xdF9"/.wait/p0
│  │  │  │  │  23.5.0: 	( 0.441898s |  0.03% |  0.02% )   ( 0.021499s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.014952s |  0.00% |  0.00% )   ( 0.017233s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.017200s |  0.00% |  0.00% )   ( 0.016501s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.013310s |  0.00% |  0.00% )   ( 0.015474s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.014363s |  0.00% |  0.00% )   ( 0.016545s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.135840s |  0.01% |  0.00% )   ( 0.122757s |  0.01% |  0.00% )    	(105x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.014995s |  0.00% |  0.00% )   ( 0.017206s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.017221s |  0.00% |  0.00% )   ( 0.019439s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.J4xdF9"/.wait/p0
│  │  │  │  │  36.5.0: 	( 0.013633s |  0.00% |  0.00% )   ( 0.015880s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.013467s |  0.00% |  0.00% )   ( 0.015593s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000741s |  0.00% |  0.00% )   ( 0.000867s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000677s |  0.00% |  0.00% )   ( 0.000802s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  61.5.0: 	( 70.716109s |  6.35% |  3.75% )   ( 68.310764s |  6.73% |  3.77% )    	(105x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.012870s |  0.00% |  0.01% )   ( 0.015029s |  0.00% |  0.02% )    	(105x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 4.853553s |  0.43% |  6.86% )   ( 4.570546s |  0.45% |  6.69% )    	(105x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 8.159386s |  0.73% | 11.53% )   ( 7.841463s |  0.77% | 11.47% )    	(105x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 6.680157s |  0.60% |  9.44% )   ( 6.506294s |  0.64% |  9.52% )    	(105x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 7.934645s |  0.71% | 11.22% )   ( 7.770342s |  0.76% | 11.37% )    	(105x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 6.446474s |  0.57% |  9.11% )   ( 6.280851s |  0.61% |  9.19% )    	(105x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 4.335144s |  0.38% |  6.13% )   ( 4.123156s |  0.40% |  6.03% )    	(105x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.292636s |  0.20% |  3.24% )   ( 2.199787s |  0.21% |  3.22% )    	(105x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 4.526150s |  0.40% |  6.40% )   ( 4.359140s |  0.42% |  6.38% )    	(105x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.012019s |  0.18% |  2.84% )   ( 1.939716s |  0.19% |  2.83% )    	(105x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 5.943234s |  0.53% |  8.40% )   ( 5.710218s |  0.56% |  8.35% )    	(105x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 12.870620s |  1.15% | 18.20% )   ( 12.602788s |  1.24% | 18.44% )    	(105x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.297673s |  0.20% |  3.24% )   ( 2.211713s |  0.21% |  3.23% )    	(105x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  │  20.6.0:    	( 2.317771s |  0.20% |  3.27% )   ( 2.141217s |  0.21% |  3.13% )    	(105x)	│  │  │  │  │  │ xxhsum -H3 "${@}"
│  │  │  │  │  └─ 8.6.0:   	( 0.033777s |  0.00% |  0.02% )   ( 0.038504s |  0.00% |  0.02% )    	(210x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  58.5.1: 	( 0.000427s |  0.00% |  0.00% )   ( 0.000500s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.013932s |  0.00% |  0.00% )   ( 0.016024s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.012826s |  0.00% |  0.00% )   ( 0.014881s |  0.00% |  0.00% )    	(97x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.017630s |  0.00% |  0.00% )   ( 0.016752s |  0.00% |  0.00% )    	(97x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000540s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000546s |  0.00% |  0.00% )   ( 0.000628s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.030467s |  0.00% |  0.04% )   ( 0.030745s |  0.00% |  0.04% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.J4xdF9"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  │  142.4.0:   	( 0.000405s |  0.00% |  0.00% )   ( 0.000453s |  0.00% |  0.00% )    	(4x)	│  │  │  │ p_PID+=(${p0_PID})
│  │  │  └─ 8.4.0:     	( 0.000491s |  0.00% |  0.00% )   ( 0.000585s |  0.00% |  0.00% )    	(8x)	│  │  │  └─source /proc/self/fd/0 <<< "${coprocSrcCode//'{<#>}'/"${kkProcs}"}"
│  │  │  1411.3.0:     	( 0.002814s |  0.00% |  0.00% )   ( 0.003278s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1413.3.0:     	( 416.893084s | 37.49% |  3.41% )   ( 401.110532s | 39.54% |  3.59% )    	(22x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.020100s |  0.00% |  0.00% )   ( 0.020605s |  0.00% |  0.00% )    	(22x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  81.4.0:    	( 416.865246s | 37.49% | 99.99% )   ( 401.081012s | 39.54% | 99.99% )    	(22x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 81.5.0: 	( 0.003186s |  0.00% |  0.00% )   ( 0.003640s |  0.00% |  0.00% )    	(22x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.J4xdF9"
│  │  │  │  │  8.5.0:  	( 0.002833s |  0.00% |  0.00% )   ( 0.003198s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.490032s |  0.04% |  0.11% )   ( 0.484204s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.J4xdF9"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.490043s |  0.04% |  0.11% )   ( 0.488356s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 214121 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.500061s |  0.04% |  0.11% )   ( 0.498506s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 214121 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.501740s |  0.04% |  0.12% )   ( 0.500015s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 214121 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.511192s |  0.04% |  0.12% )   ( 0.509378s |  0.05% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.088639s |  0.00% |  0.00% )   ( 0.097354s |  0.00% |  0.00% )    	(555x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.075367s |  0.00% |  0.00% )   ( 0.086797s |  0.00% |  0.00% )    	(555x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002850s |  0.00% |  0.00% )   ( 0.003252s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.J4xdF9"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002303s |  0.00% |  0.00% )   ( 0.002697s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002284s |  0.00% |  0.00% )   ( 0.002672s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.095174s |  0.00% |  0.00% )   ( 0.107156s |  0.01% |  0.00% )    	(555x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.J4xdF9"/.wait/p4
│  │  │  │  │  23.5.0: 	( 2.940583s |  0.26% |  0.02% )   ( 0.115579s |  0.01% |  0.00% )    	(555x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.079960s |  0.00% |  0.00% )   ( 0.091674s |  0.00% |  0.00% )    	(555x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.078196s |  0.00% |  0.00% )   ( 0.086997s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.070931s |  0.00% |  0.00% )   ( 0.082136s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.079405s |  0.00% |  0.00% )   ( 0.087503s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.669306s |  0.06% |  0.00% )   ( 0.641749s |  0.06% |  0.00% )    	(533x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.115590s |  0.01% |  0.00% )   ( 0.090871s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.089671s |  0.00% |  0.00% )   ( 0.101051s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.J4xdF9"/.wait/p4
│  │  │  │  │  36.5.0: 	( 0.071396s |  0.00% |  0.00% )   ( 0.082526s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.070280s |  0.00% |  0.00% )   ( 0.081192s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.002573s |  0.00% |  0.00% )   ( 0.002969s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.002384s |  0.00% |  0.00% )   ( 0.002810s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.002514s |  0.00% |  0.00% )   ( 0.002937s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 409.432829s | 36.82% |  4.07% )   ( 396.420879s | 39.08% |  4.10% )    	(533x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.067393s |  0.00% |  0.01% )   ( 0.078741s |  0.00% |  0.01% )    	(533x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 28.314106s |  2.54% |  6.91% )   ( 27.196807s |  2.68% |  6.86% )    	(533x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 48.219128s |  4.33% | 11.77% )   ( 46.936473s |  4.62% | 11.84% )    	(533x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 39.444783s |  3.54% |  9.63% )   ( 38.256553s |  3.77% |  9.65% )    	(533x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 47.909330s |  4.30% | 11.70% )   ( 46.714386s |  4.60% | 11.78% )    	(533x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 38.123452s |  3.42% |  9.31% )   ( 37.002250s |  3.64% |  9.33% )    	(533x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 25.466455s |  2.29% |  6.21% )   ( 24.474008s |  2.41% |  6.17% )    	(533x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 12.665237s |  1.13% |  3.09% )   ( 11.946015s |  1.17% |  3.01% )    	(533x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 26.496187s |  2.38% |  6.47% )   ( 25.542830s |  2.51% |  6.44% )    	(533x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 11.122146s |  1.00% |  2.71% )   ( 10.437713s |  1.02% |  2.63% )    	(533x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 33.110673s |  2.97% |  8.08% )   ( 32.021300s |  3.15% |  8.07% )    	(533x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 73.639207s |  6.62% | 17.98% )   ( 72.295512s |  7.12% | 18.23% )    	(533x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 12.496322s |  1.12% |  3.05% )   ( 11.912197s |  1.17% |  3.00% )    	(533x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  │  20.6.0:    	( 12.184228s |  1.09% |  2.97% )   ( 11.412984s |  1.12% |  2.87% )    	(533x)	│  │  │  │  │  │ xxhsum -H3 "${@}"
│  │  │  │  │  └─ 8.6.0:   	( 0.174182s |  0.01% |  0.02% )   ( 0.193110s |  0.01% |  0.02% )    	(1066x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.077363s |  0.00% |  0.00% )   ( 0.085157s |  0.00% |  0.00% )    	(533x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.068381s |  0.00% |  0.00% )   ( 0.079148s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.099584s |  0.00% |  0.00% )   ( 0.087707s |  0.00% |  0.00% )    	(511x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002237s |  0.00% |  0.00% )   ( 0.002599s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002369s |  0.00% |  0.00% )   ( 0.002736s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.143990s |  0.01% |  0.03% )   ( 0.145567s |  0.01% |  0.03% )    	(22x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.J4xdF9"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  │  142.4.0:   	( 0.003318s |  0.00% |  0.00% )   ( 0.003715s |  0.00% |  0.00% )    	(22x)	│  │  │  │ p_PID+=(${p4_PID})
│  │  │  └─ 8.4.0:     	( 0.004420s |  0.00% |  0.00% )   ( 0.005200s |  0.00% |  0.00% )    	(44x)	│  │  │  └─source /proc/self/fd/0 <<< "${coprocSrcCode//'{<#>}'/"${kkProcs}"}"
│  │  │  1413.3.0:     	( 36.287012s |  3.26% |  3.27% )   ( 35.123128s |  3.46% |  3.46% )    	(2x)	│  │  │ << (FUNCTION): main.forkrun.local p6 p6_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001703s |  0.00% |  0.00% )   ( 0.001748s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─local p6 p6_PID (&)
│  │  │  │  81.4.0:    	( 36.284674s |  3.26% | 99.99% )   ( 35.120650s |  3.46% | 99.99% )    	(2x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 81.5.0: 	( 0.000419s |  0.00% |  0.00% )   ( 0.000464s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.J4xdF9"
│  │  │  │  │  8.5.0:  	( 0.000245s |  0.00% |  0.00% )   ( 0.000280s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p6
│  │  │  │  │  12.5.0: 	( 0.041495s |  0.00% |  0.11% )   ( 0.041384s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.J4xdF9"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.028941s |  0.00% |  0.07% )   ( 0.028889s |  0.00% |  0.08% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 214121 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.035124s |  0.00% |  0.09% )   ( 0.035044s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 214121 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.042401s |  0.00% |  0.11% )   ( 0.042287s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 214121 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.037218s |  0.00% |  0.10% )   ( 0.037131s |  0.00% |  0.10% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.004863s |  0.00% |  0.00% )   ( 0.005530s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.004246s |  0.00% |  0.00% )   ( 0.004910s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000239s |  0.00% |  0.00% )   ( 0.000277s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.J4xdF9"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000201s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000194s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.005510s |  0.00% |  0.00% )   ( 0.006202s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.J4xdF9"/.wait/p6
│  │  │  │  │  23.5.0: 	( 0.139792s |  0.01% |  0.02% )   ( 0.006434s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.004527s |  0.00% |  0.00% )   ( 0.005188s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.004289s |  0.00% |  0.00% )   ( 0.004973s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.004250s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.004435s |  0.00% |  0.00% )   ( 0.005094s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.036570s |  0.00% |  0.00% )   ( 0.035216s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.005084s |  0.00% |  0.00% )   ( 0.005238s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.005235s |  0.00% |  0.00% )   ( 0.005915s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.J4xdF9"/.wait/p6
│  │  │  │  │  36.5.0: 	( 0.004300s |  0.00% |  0.00% )   ( 0.004992s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.003844s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.000224s |  0.00% |  0.00% )   ( 0.000263s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 35.833518s |  3.22% |  6.62% )   ( 34.801373s |  3.43% |  6.65% )    	(30x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003810s |  0.00% |  0.01% )   ( 0.004444s |  0.00% |  0.01% )    	(30x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 2.324885s |  0.20% |  6.48% )   ( 2.255683s |  0.22% |  6.48% )    	(30x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 4.414142s |  0.39% | 12.31% )   ( 4.320132s |  0.42% | 12.41% )    	(30x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 3.384275s |  0.30% |  9.44% )   ( 3.246436s |  0.32% |  9.32% )    	(30x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 4.524653s |  0.40% | 12.62% )   ( 4.333298s |  0.42% | 12.45% )    	(30x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 3.343555s |  0.30% |  9.33% )   ( 3.267853s |  0.32% |  9.39% )    	(30x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.058447s |  0.18% |  5.74% )   ( 2.010238s |  0.19% |  5.77% )    	(30x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.864436s |  0.07% |  2.41% )   ( 0.795134s |  0.07% |  2.28% )    	(30x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.328348s |  0.20% |  6.49% )   ( 2.213288s |  0.21% |  6.35% )    	(30x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.700657s |  0.06% |  1.95% )   ( 0.676169s |  0.06% |  1.94% )    	(30x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 2.860578s |  0.25% |  7.98% )   ( 2.815982s |  0.27% |  8.09% )    	(30x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 7.442751s |  0.66% | 20.77% )   ( 7.383617s |  0.72% | 21.21% )    	(30x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.798142s |  0.07% |  2.22% )   ( 0.767824s |  0.07% |  2.20% )    	(30x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.775220s |  0.06% |  2.16% )   ( 0.700331s |  0.06% |  2.01% )    	(30x)	│  │  │  │  │  │ xxhsum -H3 "${@}"
│  │  │  │  │  └─ 8.6.0:   	( 0.009619s |  0.00% |  0.01% )   ( 0.010944s |  0.00% |  0.01% )    	(60x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.004195s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.003810s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.010261s |  0.00% |  0.00% )   ( 0.004910s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  37.5.0: 	( 0.000261s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.000255s |  0.00% |  0.00% )   ( 0.000295s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  47.5.0: 	( 0.000275s |  0.00% |  0.00% )   ( 0.000317s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000319s |  0.00% |  0.00% )   ( 0.000354s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.J4xdF9"/.quit
│  │  │  │  │  50.5.0: 	( 0.000418s |  0.00% |  0.00% )   ( 0.000463s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p* 1>&21
│  │  │  │  │  51.5.0: 	( 0.000283s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.017172s |  0.00% |  0.04% )   ( 0.017208s |  0.00% |  0.04% )    	(2x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.J4xdF9"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.J4xdF9"/.run/p6\; \$\\nprintf \n >&21'
│  │  │  │  142.4.0:   	( 0.000282s |  0.00% |  0.00% )   ( 0.000311s |  0.00% |  0.00% )    	(2x)	│  │  │  │ p_PID+=(${p6_PID})
│  │  │  └─ 8.4.0:     	( 0.000353s |  0.00% |  0.00% )   ( 0.000419s |  0.00% |  0.00% )    	(4x)	│  │  │  └─source /proc/self/fd/0 <<< "${coprocSrcCode//'{<#>}'/"${kkProcs}"}"
│  │  │  1415.3.0:     	( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1416.3.0:     	( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1417.3.0:     	( 0.000126s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1420.3.0:     	( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1425.3.0:     	( 0.001302s |  0.00% |  0.00% )   ( 0.001310s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1430.3.0:     	( 0.000119s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1492.3.0:     	( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1495.3.0:     	( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1502.3.0:     	( 24.513591s |  2.20% |  4.41% )   ( 0.001817s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1506.3.0:     	( 0.000276s |  0.00% |  0.00% )   ( 0.000319s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1511.3.0:     	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1517.2.0:        	( 0.000314s |  0.00% |  0.00% )   ( 0.000366s |  0.00% |  0.00% )    	(1x)	│  │ wait
│  └─ -273.2.0:        	( 0.006013s |  0.00% |  0.00% )   ( 0.002524s |  0.00% |  0.00% )    	(1x)	│  └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.J4xdF9" 2>/dev/null'
└─ 8.1.0:              	( 0.000242s |  0.00% |  0.00% )   ( 0.000281s |  0.00% |  0.00% )    	(2x)	└─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null

TOTAL RUN TIME: 1111.911366s
TOTAL CPU TIME: 1014.231148s
