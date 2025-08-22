LINE.DEPTH.CMD NUMBER	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
_____________________	________________________________	________________________________	____________________________________
9.0.0:                 	( 464.177492s | 50.08% )            ( 421.229629s | 49.90% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:              	( 0.000776s |  0.00% |  0.00% )   ( 0.000469s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
│  425.1.0:            	( 464.176716s | 99.99% | 50.08% )   ( 421.229160s | 99.99% | 49.90% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 425.2.0:         	( 0.023475s |  0.00% |  0.00% )   ( 0.023437s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000125s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000116s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
│  │  323.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.001339s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.005752s |  0.00% |  0.00% )   ( 0.005752s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.005752s |100.00% |  0.00% )   ( 0.005752s |100.00% |  0.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.001138s |  0.00% |  0.00% )   ( 0.001211s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.014161s |  0.00% |  0.00% )   ( 0.001011s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  348.2.0:         	( 464.125158s | 99.98% | 50.07% )   ( 421.192601s | 99.99% | 49.90% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 348.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.001640s |  0.00% |  0.00% )   ( 0.001916s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.001640s |100.00% |  0.00% )   ( 0.001916s |100.00% |  0.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000182s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.002983s |  0.00% |  0.00% )   ( 0.003037s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000104s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000104s |100.00% |  0.00% )   ( 0.000117s |100.00% |  0.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000821s |  0.00% |  0.00% )   ( 0.000964s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000062s |  7.55% |  0.00% )   ( 0.000073s |  7.57% |  0.00% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000065s |  7.91% |  0.00% )   ( 0.000078s |  8.09% |  0.00% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000065s |  7.91% |  0.00% )   ( 0.000077s |  7.98% |  0.00% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000067s |  8.16% |  0.00% )   ( 0.000078s |  8.09% |  0.00% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000064s |  7.79% |  0.00% )   ( 0.000076s |  7.88% |  0.00% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000067s |  8.16% |  0.00% )   ( 0.000080s |  8.29% |  0.00% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000062s |  7.55% |  0.00% )   ( 0.000074s |  7.67% |  0.00% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000113s | 13.76% |  0.00% )   ( 0.000125s | 12.96% |  0.00% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000060s |  7.30% |  0.00% )   ( 0.000072s |  7.46% |  0.00% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000062s |  7.55% |  0.00% )   ( 0.000074s |  7.67% |  0.00% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000066s |  8.03% |  0.00% )   ( 0.000077s |  7.98% |  0.00% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000068s |  8.28% |  0.00% )   ( 0.000080s |  8.29% |  0.00% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.007506s |  0.00% |  0.00% )   ( 0.007586s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.003527s |  0.00% |  0.00% )   ( 0.003594s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:   	( 0.000279s |  7.91% |  0.00% )   ( 0.000292s |  8.12% |  0.00% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.003248s | 92.08% |  0.00% )   ( 0.003302s | 91.87% |  0.00% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000262s |  0.00% |  0.00% )   ( 0.000274s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  544.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
│  │  │  545.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  546.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  557.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.003632s |  0.00% |  0.00% )   ( 0.003739s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000116s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000116s |100.00% |  0.00% )   ( 0.000133s |100.00% |  0.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.001477s |  0.00% |  0.00% )   ( 0.001564s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000097s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000535s |  0.00% |  0.00% )   ( 0.000548s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.079466s |  0.01% |  0.00% )   ( 0.079375s |  0.01% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:   	( 0.000095s |  0.11% |  0.00% )   ( 0.000107s |  0.13% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.011232s | 14.13% |  0.00% )   ( 0.011196s | 14.10% |  0.00% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012136s | 15.27% |  0.00% )   ( 0.012116s | 15.26% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012184s | 15.33% |  0.00% )   ( 0.012165s | 15.32% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012171s | 15.31% |  0.00% )   ( 0.012153s | 15.31% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012113s | 15.24% |  0.00% )   ( 0.012094s | 15.23% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000063s |  0.07% |  0.00% )   ( 0.000076s |  0.09% |  0.00% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.019244s | 24.21% |  0.00% )   ( 0.019206s | 24.19% |  0.00% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000090s |  0.11% |  0.00% )   ( 0.000103s |  0.12% |  0.00% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000064s |  0.08% |  0.00% )   ( 0.000076s |  0.09% |  0.00% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000074s |  0.09% |  0.00% )   ( 0.000083s |  0.10% |  0.00% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000438s |  0.00% |  0.00% )   ( 0.000471s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.599416s |  0.77% |  0.38% )   ( 1.703878s |  0.40% |  0.20% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:   	( 0.000242s |  0.00% |  0.00% )   ( 0.000267s |  0.01% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.014319s |  0.39% |  0.00% )   ( 0.014291s |  0.83% |  0.00% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012195s |  0.33% |  0.00% )   ( 0.012173s |  0.71% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012195s |  0.33% |  0.00% )   ( 0.012174s |  0.71% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012110s |  0.33% |  0.00% )   ( 0.012088s |  0.70% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012147s |  0.33% |  0.00% )   ( 0.012120s |  0.71% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.084891s |  0.00% |  0.00% )   ( 0.097977s |  0.00% |  0.01% )    	(674x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 2.194791s |  0.09% |  0.23% )   ( 0.112669s |  0.00% |  0.01% )    	(673x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000536s |  0.00% |  0.00% )   ( 0.000619s |  0.00% |  0.00% )    	(4x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.083378s |  0.00% |  0.00% )   ( 0.096409s |  0.00% |  0.01% )    	(669x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.082870s |  0.00% |  0.00% )   ( 0.095853s |  0.00% |  0.01% )    	(668x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000125s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.083363s |  0.00% |  0.00% )   ( 0.096296s |  0.00% |  0.01% )    	(669x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.085835s |  0.00% |  0.00% )   ( 0.098452s |  0.00% |  0.01% )    	(669x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.086254s |  0.00% |  0.00% )   ( 0.099110s |  0.00% |  0.01% )    	(669x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.082333s |  0.00% |  0.00% )   ( 0.095181s |  0.00% |  0.01% )    	(669x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.083002s |  0.00% |  0.00% )   ( 0.096043s |  0.00% |  0.01% )    	(669x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.083329s |  0.00% |  0.00% )   ( 0.096182s |  0.00% |  0.01% )    	(669x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.006514s |  0.18% |  0.00% )   ( 0.007120s |  0.41% |  0.00% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.003092s |  0.08% |  0.00% )   ( 0.003603s |  0.21% |  0.00% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 791.5.0:  	( 0.003092s |100.00% |  0.00% )   ( 0.003603s |100.00% |  0.00% )    	(1x)	│  │  │  │  ├─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  └─ 791.5.1:  	( 0.001328s | 42.94% |  0.00% )   ( 0.001842s | 51.12% |  0.00% )    	(1x)	│  │  │  │  └─cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000150s |  0.00% |  0.00% )   ( 0.000175s |  0.01% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.082598s |  0.00% |  0.00% )   ( 0.095507s |  0.00% |  0.01% )    	(669x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.081767s |  0.00% |  0.00% )   ( 0.094748s |  0.00% |  0.01% )    	(669x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.079866s |  0.00% |  0.00% )   ( 0.092331s |  0.00% |  0.01% )    	(648x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.086033s |  0.00% |  0.00% )   ( 0.099154s |  0.00% |  0.01% )    	(669x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.083826s |  0.00% |  0.00% )   ( 0.096714s |  0.00% |  0.01% )    	(667x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.083580s |  0.00% |  0.00% )   ( 0.096463s |  0.00% |  0.01% )    	(668x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002563s |  0.00% |  0.00% )   ( 0.002948s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002526s |  0.00% |  0.00% )   ( 0.002920s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.057386s |  0.07% |  0.00% )   ( 0.046891s |  0.13% |  0.00% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002679s |  0.00% |  0.00% )   ( 0.003095s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002638s |  0.00% |  0.00% )   ( 0.003059s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.002809s |  0.00% |  0.00% )   ( 0.003241s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0:   	( 0.000108s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  829.4.0:   	( 0.000109s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000108s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000111s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000108s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.005612s |  0.15% |  0.00% )   ( 0.005682s |  0.33% |  0.00% )    	(1x)	│  │  │  └─ -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.ODlBNB"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.ODlBNB"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000096s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000090s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.059810s |  0.01% |  0.00% )   ( 0.059980s |  0.01% |  0.00% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.005667s |  0.00% |  0.00% )   ( 0.006571s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:  	( 0.000306s |  5.39% |  0.00% )   ( 0.000340s |  5.17% |  0.00% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000069s |  1.21% |  0.00% )   ( 0.000081s |  1.23% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000075s |  1.32% |  0.00% )   ( 0.000087s |  1.32% |  0.00% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000213s |  3.75% |  0.00% )   ( 0.000225s |  3.42% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000063s |  1.11% |  0.00% )   ( 0.000075s |  1.14% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000064s |  1.12% |  0.00% )   ( 0.000076s |  1.15% |  0.00% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000074s |  1.12% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000064s |  1.12% |  0.00% )   ( 0.000076s |  1.15% |  0.00% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000064s |  1.12% |  0.00% )   ( 0.000075s |  1.14% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000065s |  1.14% |  0.00% )   ( 0.000075s |  1.14% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000065s |  1.14% |  0.00% )   ( 0.000076s |  1.15% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000064s |  1.12% |  0.00% )   ( 0.000076s |  1.15% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1456.4.0:  	( 0.000065s |  1.14% |  0.00% )   ( 0.000078s |  1.18% |  0.00% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000068s |  1.19% |  0.00% )   ( 0.000077s |  1.17% |  0.00% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1461.4.0:  	( 0.000067s |  1.18% |  0.00% )   ( 0.000079s |  1.20% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0:  	( 0.000066s |  1.16% |  0.00% )   ( 0.000075s |  1.14% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1465.4.0:  	( 0.000066s |  1.16% |  0.00% )   ( 0.000078s |  1.18% |  0.00% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0:  	( 0.000069s |  1.21% |  0.00% )   ( 0.000081s |  1.23% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0:  	( 0.000065s |  1.14% |  0.00% )   ( 0.000077s |  1.17% |  0.00% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1510.4.1:  	( 0.000079s |  1.39% |  0.00% )   ( 0.000090s |  1.36% |  0.00% )    	(1x)	│  │  │  │ printf '\n'
│  │  │  │  1511.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0:  	( 0.000109s |  1.92% |  0.00% )   ( 0.000120s |  1.82% |  0.00% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1514.4.0:  	( 0.000060s |  1.05% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000059s |  1.04% |  0.00% )   ( 0.000071s |  1.08% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1514.4.3:  	( 0.000087s |  1.53% |  0.00% )   ( 0.000098s |  1.49% |  0.00% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1515.4.0:  	( 0.000071s |  1.25% |  0.00% )   ( 0.000082s |  1.24% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000082s |  1.44% |  0.00% )   ( 0.000094s |  1.43% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000074s |  1.12% |  0.00% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000078s |  1.37% |  0.00% )   ( 0.000086s |  1.30% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000072s |  1.27% |  0.00% )   ( 0.000084s |  1.27% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000066s |  1.16% |  0.00% )   ( 0.000077s |  1.17% |  0.00% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000063s |  1.11% |  0.00% )   ( 0.000074s |  1.12% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000066s |  1.16% |  0.00% )   ( 0.000077s |  1.17% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000098s |  1.72% |  0.00% )   ( 0.000110s |  1.67% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000069s |  1.21% |  0.00% )   ( 0.000081s |  1.23% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000082s |  1.44% |  0.00% )   ( 0.000094s |  1.43% |  0.00% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000066s |  1.16% |  0.00% )   ( 0.000078s |  1.18% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000078s |  1.37% |  0.00% )   ( 0.000090s |  1.36% |  0.00% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000069s |  1.21% |  0.00% )   ( 0.000080s |  1.21% |  0.00% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000077s |  1.35% |  0.00% )   ( 0.000088s |  1.33% |  0.00% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000060s |  1.05% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1564.4.2:  	( 0.000062s |  1.09% |  0.00% )   ( 0.000073s |  1.11% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1564.4.3:  	( 0.000066s |  1.16% |  0.00% )   ( 0.000077s |  1.17% |  0.00% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1572.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000071s |  1.08% |  0.00% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000073s |  1.28% |  0.00% )   ( 0.000082s |  1.24% |  0.00% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000060s |  1.05% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000069s |  1.21% |  0.00% )   ( 0.000081s |  1.23% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000070s |  1.23% |  0.00% )   ( 0.000076s |  1.15% |  0.00% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000086s |  1.51% |  0.00% )   ( 0.000097s |  1.47% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000060s |  1.05% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000061s |  1.07% |  0.00% )   ( 0.000072s |  1.09% |  0.00% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000080s |  1.41% |  0.00% )   ( 0.000092s |  1.40% |  0.00% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000067s |  1.18% |  0.00% )   ( 0.000078s |  1.18% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000063s |  1.11% |  0.00% )   ( 0.000074s |  1.12% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000059s |  1.04% |  0.00% )   ( 0.000070s |  1.06% |  0.00% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000081s |  1.42% |  0.00% )   ( 0.000093s |  1.41% |  0.00% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000067s |  1.18% |  0.00% )   ( 0.000079s |  1.20% |  0.00% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000065s |  1.14% |  0.00% )   ( 0.000076s |  1.15% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000063s |  1.11% |  0.00% )   ( 0.000074s |  1.12% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000096s |  1.69% |  0.00% )   ( 0.000108s |  1.64% |  0.00% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000250s |  0.00% |  0.00% )   ( 0.000288s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000263s |  0.00% |  0.00% )   ( 0.000301s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.012471s |  0.00% |  0.00% )   ( 0.012448s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012276s |  0.00% |  0.00% )   ( 0.099954s |  0.02% |  0.01% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012175s |  0.00% |  0.00% )   ( 0.012142s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.011852s |  0.00% |  0.00% )   ( 0.011836s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002698s |  0.00% |  0.00% )   ( 0.003116s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002547s |  0.00% |  0.00% )   ( 0.002960s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 81.792440s |  3.52% |  8.82% )   ( 77.810413s |  3.69% |  9.21% )    	(5x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002947s |  0.00% |  0.00% )   ( 0.003018s |  0.00% |  0.00% )    	(5x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 81.789048s | 99.99% |  8.82% )   ( 77.806897s | 99.99% |  9.21% )    	(5x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.001263s |  0.00% |  0.00% )   ( 0.001427s |  0.00% |  0.00% )    	(5x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.ODlBNB"
│  │  │  │  │  8.5.0:  	( 0.000984s |  0.00% |  0.00% )   ( 0.001113s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.ODlBNB"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.064505s |  0.07% |  0.00% )   ( 0.064417s |  0.08% |  0.00% )    	(5x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.ODlBNB"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ODlBNB"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.ODlBNB"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.061450s |  0.07% |  0.00% )   ( 0.061368s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1360533 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.062044s |  0.07% |  0.00% )   ( 0.061941s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1360533 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.062245s |  0.07% |  0.00% )   ( 0.062146s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1360533 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.062219s |  0.07% |  0.00% )   ( 0.062117s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.019881s |  0.00% |  0.00% )   ( 0.022449s |  0.00% |  0.00% )    	(131x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.017472s |  0.00% |  0.00% )   ( 0.020045s |  0.00% |  0.00% )    	(131x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000971s |  0.00% |  0.00% )   ( 0.001104s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.ODlBNB"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000763s |  0.00% |  0.00% )   ( 0.000883s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000742s |  0.00% |  0.00% )   ( 0.000870s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.021944s |  0.00% |  0.00% )   ( 0.024546s |  0.00% |  0.00% )    	(131x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.ODlBNB"/.wait/p0
│  │  │  │  │  23.5.0: 	( 1.486684s |  0.06% |  0.16% )   ( 0.028880s |  0.00% |  0.00% )    	(131x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.018752s |  0.00% |  0.00% )   ( 0.021333s |  0.00% |  0.00% )    	(131x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.020416s |  0.00% |  0.00% )   ( 0.020048s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.016845s |  0.00% |  0.00% )   ( 0.019345s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.017174s |  0.00% |  0.00% )   ( 0.019595s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.150142s |  0.00% |  0.01% )   ( 0.144208s |  0.00% |  0.01% )    	(126x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.016111s |  0.00% |  0.00% )   ( 0.018571s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.016597s |  0.00% |  0.00% )   ( 0.018965s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.037183s |  0.00% |  0.00% )   ( 0.020582s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.020477s |  0.00% |  0.00% )   ( 0.023067s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.ODlBNB"/.wait/p0
│  │  │  │  │  48.5.0: 	( 0.016417s |  0.00% |  0.00% )   ( 0.018918s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.016167s |  0.00% |  0.00% )   ( 0.018596s |  0.00% |  0.00% )    	(126x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000904s |  0.00% |  0.00% )   ( 0.001049s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000908s |  0.00% |  0.00% )   ( 0.001056s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 79.493097s |  3.83% |  8.57% )   ( 76.957564s |  3.90% |  9.11% )    	(126x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.015488s |  0.01% |  0.00% )   ( 0.018019s |  0.02% |  0.00% )    	(126x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 5.448773s |  6.85% |  0.58% )   ( 5.311730s |  6.90% |  0.62% )    	(126x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 9.116794s | 11.46% |  0.98% )   ( 8.844130s | 11.49% |  1.04% )    	(126x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 7.544441s |  9.49% |  0.81% )   ( 7.286364s |  9.46% |  0.86% )    	(126x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 8.828555s | 11.10% |  0.95% )   ( 8.589785s | 11.16% |  1.01% )    	(126x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 7.281289s |  9.15% |  0.78% )   ( 7.067816s |  9.18% |  0.83% )    	(126x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 4.936644s |  6.21% |  0.53% )   ( 4.770415s |  6.19% |  0.56% )    	(126x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.770005s |  3.48% |  0.29% )   ( 2.601797s |  3.38% |  0.30% )    	(126x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 5.141184s |  6.46% |  0.55% )   ( 4.950390s |  6.43% |  0.58% )    	(126x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.408099s |  3.02% |  0.25% )   ( 2.291565s |  2.97% |  0.27% )    	(126x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 6.610160s |  8.31% |  0.71% )   ( 6.363055s |  8.26% |  0.75% )    	(126x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 14.064436s | 17.69% |  1.51% )   ( 13.729113s | 17.83% |  1.62% )    	(126x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.722619s |  3.42% |  0.29% )   ( 2.614197s |  3.39% |  0.30% )    	(126x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 2.604610s |  3.27% |  0.28% )   ( 2.519188s |  3.27% |  0.29% )    	(126x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000596s |  0.00% |  0.00% )   ( 0.000678s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.016921s |  0.00% |  0.00% )   ( 0.019408s |  0.00% |  0.00% )    	(121x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.015398s |  0.00% |  0.00% )   ( 0.017755s |  0.00% |  0.00% )    	(116x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.019093s |  0.00% |  0.00% )   ( 0.019677s |  0.00% |  0.00% )    	(116x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000522s |  0.00% |  0.00% )   ( 0.000601s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000538s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.031623s |  0.03% |  0.00% )   ( 0.031957s |  0.04% |  0.00% )    	(5x)	│  │  │  │  └─break
│  │  │  └─ 146.4.0:   	( 0.000445s |  0.00% |  0.00% )   ( 0.000498s |  0.00% |  0.00% )    	(5x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002509s |  0.00% |  0.00% )   ( 0.002926s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 15.192322s |  3.27% |  1.63% )   ( 14.379509s |  3.41% |  1.70% )    	(1x)	│  │  │ << (FUNCTION): .local p5 p5_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000589s |  0.00% |  0.00% )   ( 0.000601s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p5 p5_PID (&)
│  │  │  │  73.4.0:    	( 15.191644s | 99.99% |  1.63% )   ( 14.378806s | 99.99% |  1.70% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.ODlBNB"
│  │  │  │  │  8.5.0:  	( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.ODlBNB"/.run/p5
│  │  │  │  │  12.5.0: 	( 0.012412s |  0.08% |  0.00% )   ( 0.012394s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.ODlBNB"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ODlBNB"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.ODlBNB"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.012440s |  0.08% |  0.00% )   ( 0.012420s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1360533 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.012442s |  0.08% |  0.00% )   ( 0.012421s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1360533 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.012436s |  0.08% |  0.00% )   ( 0.012417s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1360533 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.012435s |  0.08% |  0.00% )   ( 0.012416s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.004264s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.003724s |  0.00% |  0.00% )   ( 0.004278s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000217s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.ODlBNB"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000191s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000186s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.004689s |  0.00% |  0.00% )   ( 0.005291s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.ODlBNB"/.wait/p5
│  │  │  │  │  23.5.0: 	( 0.301101s |  0.07% |  0.03% )   ( 0.006294s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.004124s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.003983s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003864s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.003992s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.032666s |  0.00% |  0.00% )   ( 0.033079s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.003678s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.003479s |  0.00% |  0.00% )   ( 0.004004s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.006873s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.004582s |  0.00% |  0.00% )   ( 0.005126s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.ODlBNB"/.wait/p5
│  │  │  │  │  48.5.0: 	( 0.003754s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.003402s |  0.00% |  0.00% )   ( 0.003941s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000239s |  0.00% |  0.00% )   ( 0.000274s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000211s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 14.721005s |  3.58% |  1.58% )   ( 14.196254s |  3.65% |  1.68% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003163s |  0.02% |  0.00% )   ( 0.003717s |  0.02% |  0.00% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 0.999640s |  6.79% |  0.10% )   ( 0.957906s |  6.74% |  0.11% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.581370s | 10.74% |  0.17% )   ( 1.534321s | 10.80% |  0.18% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.406420s |  9.55% |  0.15% )   ( 1.359093s |  9.57% |  0.16% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.652568s | 11.22% |  0.17% )   ( 1.537467s | 10.83% |  0.18% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.371226s |  9.31% |  0.14% )   ( 1.324536s |  9.33% |  0.15% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.933977s |  6.34% |  0.10% )   ( 0.886458s |  6.24% |  0.10% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.554333s |  3.76% |  0.05% )   ( 0.534547s |  3.76% |  0.06% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.939315s |  6.38% |  0.10% )   ( 0.912460s |  6.42% |  0.10% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.523181s |  3.55% |  0.05% )   ( 0.489212s |  3.44% |  0.05% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.254942s |  8.52% |  0.13% )   ( 1.213033s |  8.54% |  0.14% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.379990s | 16.16% |  0.25% )   ( 2.358235s | 16.61% |  0.27% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.566193s |  3.84% |  0.06% )   ( 0.552406s |  3.89% |  0.06% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.554687s |  3.76% |  0.05% )   ( 0.532863s |  3.75% |  0.06% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.003544s |  0.00% |  0.00% )   ( 0.004066s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.003230s |  0.00% |  0.00% )   ( 0.003720s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.003619s |  0.00% |  0.00% )   ( 0.004124s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000112s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000149s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.ODlBNB"/.quit
│  │  │  │  │  62.5.0: 	( 0.000194s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.ODlBNB"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.007668s |  0.05% |  0.00% )   ( 0.007736s |  0.05% |  0.00% )    	(1x)	│  │  │  │  └─break
│  │  │  └─ 146.4.0:   	( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p5_PID})
│  │  │  1399.3.0:     	( 328.949924s |  3.37% | 35.49% )   ( 312.026325s |  3.52% | 36.97% )    	(21x)	│  │  │ << (FUNCTION): .local p6 p6_PID >>
│  │  │  ├─ 1.4.0:     	( 0.018394s |  0.00% |  0.00% )   ( 0.018832s |  0.00% |  0.00% )    	(21x)	│  │  │  ├─local p6 p6_PID (&)
│  │  │  │  73.4.0:    	( 328.928786s | 99.99% | 35.49% )   ( 312.004408s | 99.99% | 36.96% )    	(21x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003695s |  0.00% |  0.00% )   ( 0.004172s |  0.00% |  0.00% )    	(21x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.ODlBNB"
│  │  │  │  │  8.5.0:  	( 0.003451s |  0.00% |  0.00% )   ( 0.003856s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.ODlBNB"/.run/p6
│  │  │  │  │  12.5.0: 	( 0.393563s |  0.11% |  0.04% )   ( 0.388754s |  0.12% |  0.04% )    	(21x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.ODlBNB"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ODlBNB"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.ODlBNB"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.421295s |  0.12% |  0.04% )   ( 0.414565s |  0.13% |  0.04% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1360533 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.409495s |  0.12% |  0.04% )   ( 0.408273s |  0.13% |  0.04% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1360533 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.428732s |  0.13% |  0.04% )   ( 0.427272s |  0.13% |  0.05% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1360533 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.443640s |  0.13% |  0.04% )   ( 0.442281s |  0.14% |  0.05% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.081870s |  0.00% |  0.00% )   ( 0.092145s |  0.00% |  0.01% )    	(517x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.070509s |  0.00% |  0.00% )   ( 0.080767s |  0.00% |  0.00% )    	(517x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002546s |  0.00% |  0.00% )   ( 0.002889s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.ODlBNB"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002040s |  0.00% |  0.00% )   ( 0.002377s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002105s |  0.00% |  0.00% )   ( 0.002450s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.089258s |  0.00% |  0.00% )   ( 0.099816s |  0.00% |  0.01% )    	(517x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.ODlBNB"/.wait/p6
│  │  │  │  │  23.5.0: 	( 5.454074s |  0.06% |  0.58% )   ( 0.117544s |  0.00% |  0.01% )    	(517x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.076405s |  0.00% |  0.00% )   ( 0.087089s |  0.00% |  0.01% )    	(517x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.077590s |  0.00% |  0.00% )   ( 0.081346s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.067317s |  0.00% |  0.00% )   ( 0.077329s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.071038s |  0.00% |  0.00% )   ( 0.080632s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.597731s |  0.00% |  0.06% )   ( 0.595850s |  0.00% |  0.07% )    	(496x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.067225s |  0.00% |  0.00% )   ( 0.077184s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.066824s |  0.00% |  0.00% )   ( 0.076662s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.137577s |  0.00% |  0.01% )   ( 0.082690s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.082961s |  0.00% |  0.00% )   ( 0.093341s |  0.00% |  0.01% )    	(496x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.ODlBNB"/.wait/p6
│  │  │  │  │  48.5.0: 	( 0.068906s |  0.00% |  0.00% )   ( 0.075829s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.068073s |  0.00% |  0.00% )   ( 0.075448s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.002458s |  0.00% |  0.00% )   ( 0.002812s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.002145s |  0.00% |  0.00% )   ( 0.002500s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.002247s |  0.00% |  0.00% )   ( 0.002616s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 319.390620s |  4.11% | 34.46% )   ( 307.733182s |  4.18% | 36.46% )    	(496x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.065172s |  0.02% |  0.00% )   ( 0.072326s |  0.02% |  0.00% )    	(496x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 21.419976s |  6.70% |  2.31% )   ( 20.709076s |  6.72% |  2.45% )    	(496x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 36.105313s | 11.30% |  3.89% )   ( 34.825946s | 11.31% |  4.12% )    	(496x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 30.659070s |  9.59% |  3.30% )   ( 29.564929s |  9.60% |  3.50% )    	(496x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 35.448704s | 11.09% |  3.82% )   ( 34.499012s | 11.21% |  4.08% )    	(496x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 29.511963s |  9.24% |  3.18% )   ( 28.378997s |  9.22% |  3.36% )    	(496x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 20.002342s |  6.26% |  2.15% )   ( 19.072768s |  6.19% |  2.25% )    	(496x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 11.241851s |  3.51% |  1.21% )   ( 10.545817s |  3.42% |  1.24% )    	(496x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 20.572058s |  6.44% |  2.21% )   ( 19.705184s |  6.40% |  2.33% )    	(496x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 9.834618s |  3.07% |  1.06% )   ( 9.332492s |  3.03% |  1.10% )    	(496x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 26.892753s |  8.42% |  2.90% )   ( 25.713318s |  8.35% |  3.04% )    	(496x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 55.675408s | 17.43% |  6.00% )   ( 54.367851s | 17.66% |  6.44% )    	(496x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 11.105157s |  3.47% |  1.19% )   ( 10.636776s |  3.45% |  1.26% )    	(496x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 10.856235s |  3.39% |  1.17% )   ( 10.308690s |  3.34% |  1.22% )    	(496x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.069836s |  0.00% |  0.00% )   ( 0.079928s |  0.00% |  0.00% )    	(496x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.063135s |  0.00% |  0.00% )   ( 0.072632s |  0.00% |  0.00% )    	(475x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.073774s |  0.00% |  0.00% )   ( 0.081510s |  0.00% |  0.00% )    	(475x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002199s |  0.00% |  0.00% )   ( 0.002521s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002301s |  0.00% |  0.00% )   ( 0.002645s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.132151s |  0.04% |  0.01% )   ( 0.133501s |  0.04% |  0.01% )    	(21x)	│  │  │  │  └─break
│  │  │  └─ 146.4.0:   	( 0.002744s |  0.00% |  0.00% )   ( 0.003085s |  0.00% |  0.00% )    	(21x)	│  │  │  └─p_PID+=(${p6_PID})
│  │  │  1399.3.0:     	( 15.504407s |  3.34% |  1.67% )   ( 14.946670s |  3.54% |  1.77% )    	(1x)	│  │  │ << (FUNCTION): .local p21 p21_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001063s |  0.00% |  0.00% )   ( 0.001088s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p21 p21_PID (&)
│  │  │  │  73.4.0:    	( 15.503190s | 99.99% |  1.67% )   ( 14.945409s | 99.99% |  1.77% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.ODlBNB"
│  │  │  │  │  8.5.0:  	( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.ODlBNB"/.run/p21
│  │  │  │  │  12.5.0: 	( 0.024348s |  0.15% |  0.00% )   ( 0.024249s |  0.16% |  0.00% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.ODlBNB"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ODlBNB"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.ODlBNB"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.022368s |  0.14% |  0.00% )   ( 0.022298s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1360533 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.021670s |  0.13% |  0.00% )   ( 0.021598s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1360533 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.025364s |  0.16% |  0.00% )   ( 0.025277s |  0.16% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1360533 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.025617s |  0.16% |  0.00% )   ( 0.025526s |  0.17% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.003554s |  0.00% |  0.00% )   ( 0.003971s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.003032s |  0.00% |  0.00% )   ( 0.003457s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.ODlBNB"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000114s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000113s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.003557s |  0.00% |  0.00% )   ( 0.003975s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.ODlBNB"/.wait/p21
│  │  │  │  │  23.5.0: 	( 0.098718s |  0.03% |  0.01% )   ( 0.004619s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.003001s |  0.00% |  0.00% )   ( 0.003433s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.005718s |  0.00% |  0.00% )   ( 0.003295s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.ODlBNB"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.002783s |  0.00% |  0.00% )   ( 0.003184s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.002852s |  0.00% |  0.00% )   ( 0.003222s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.021835s |  0.00% |  0.00% )   ( 0.022186s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.002907s |  0.00% |  0.00% )   ( 0.003345s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.002754s |  0.00% |  0.00% )   ( 0.003149s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.006088s |  0.00% |  0.00% )   ( 0.003515s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.003532s |  0.00% |  0.00% )   ( 0.003962s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.ODlBNB"/.wait/p21
│  │  │  │  │  48.5.0: 	( 0.002752s |  0.00% |  0.00% )   ( 0.003153s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.002587s |  0.00% |  0.00% )   ( 0.002976s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000116s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 15.200123s |  5.16% |  1.64% )   ( 14.735595s |  5.18% |  1.74% )    	(19x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002365s |  0.01% |  0.00% )   ( 0.002741s |  0.01% |  0.00% )    	(19x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 0.981777s |  6.45% |  0.10% )   ( 0.961699s |  6.52% |  0.11% )    	(19x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.732585s | 11.39% |  0.18% )   ( 1.722302s | 11.68% |  0.20% )    	(19x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.437321s |  9.45% |  0.15% )   ( 1.399645s |  9.49% |  0.16% )    	(19x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.862533s | 12.25% |  0.20% )   ( 1.717160s | 11.65% |  0.20% )    	(19x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.424820s |  9.37% |  0.15% )   ( 1.385953s |  9.40% |  0.16% )    	(19x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.907100s |  5.96% |  0.09% )   ( 0.891241s |  6.04% |  0.10% )    	(19x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.458091s |  3.01% |  0.04% )   ( 0.430643s |  2.92% |  0.05% )    	(19x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.998164s |  6.56% |  0.10% )   ( 0.948391s |  6.43% |  0.11% )    	(19x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.388469s |  2.55% |  0.04% )   ( 0.375682s |  2.54% |  0.04% )    	(19x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.262528s |  8.30% |  0.13% )   ( 1.219361s |  8.27% |  0.14% )    	(19x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.889417s | 19.00% |  0.31% )   ( 2.844848s | 19.30% |  0.33% )    	(19x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.428748s |  2.82% |  0.04% )   ( 0.422707s |  2.86% |  0.05% )    	(19x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.426205s |  2.80% |  0.04% )   ( 0.413222s |  2.80% |  0.04% )    	(19x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.002795s |  0.00% |  0.00% )   ( 0.003195s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.002408s |  0.00% |  0.00% )   ( 0.002759s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.002640s |  0.00% |  0.00% )   ( 0.002986s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000128s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.ODlBNB"/.quit
│  │  │  │  │  62.5.0: 	( 0.000202s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.ODlBNB"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000148s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.008269s |  0.05% |  0.00% )   ( 0.008302s |  0.05% |  0.00% )    	(1x)	│  │  │  │  └─break
│  │  │  └─ 146.4.0:   	( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p21_PID})
│  │  │  1401.3.0:     	( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000119s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000118s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001267s |  0.00% |  0.00% )   ( 0.001285s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000116s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.853840s |  4.06% |  2.03% )   ( 0.001102s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000097s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.004123s |  0.00% |  0.00% )   ( 0.002249s |  0.00% |  0.00% )    	(1x)	└─ └─ -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.ODlBNB" 2>/dev/null'

10.0.0:                	( 462.615117s | 49.91% )            ( 422.765109s | 50.09% )             	(1x)	<< (FUNCTION): .forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
├─ 1.1.0:              	( 0.001236s |  0.00% |  0.00% )   ( 0.000997s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  425.1.0:            	( 462.613881s | 99.99% | 49.91% )   ( 422.764112s | 99.99% | 50.09% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 425.2.0:         	( 0.024344s |  0.00% |  0.00% )   ( 0.024290s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000142s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000116s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000120s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000123s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
│  │  127.2.0:         	( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
│  │  254.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
│  │  254.2.1:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
│  │  318.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
│  │  319.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
│  │  323.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.000760s |  0.00% |  0.00% )   ( 0.000445s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.003486s |  0.00% |  0.00% )   ( 0.003486s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.003486s |100.00% |  0.00% )   ( 0.003486s |100.00% |  0.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.003242s |  0.00% |  0.00% )   ( 0.003284s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.013835s |  0.00% |  0.00% )   ( 0.000352s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1502.2.0:        	( 462.559250s | 99.98% | 49.90% )   ( 422.724672s | 99.99% | 50.08% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 348.3.0:      	( 0.000091s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.001355s |  0.00% |  0.00% )   ( 0.001593s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.001355s |100.00% |  0.00% )   ( 0.001593s |100.00% |  0.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000107s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000088s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000177s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.003024s |  0.00% |  0.00% )   ( 0.003080s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000111s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000111s |100.00% |  0.00% )   ( 0.000120s |100.00% |  0.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000817s |  0.00% |  0.00% )   ( 0.000957s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000060s |  7.34% |  0.00% )   ( 0.000073s |  7.62% |  0.00% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000067s |  8.20% |  0.00% )   ( 0.000079s |  8.25% |  0.00% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000063s |  7.71% |  0.00% )   ( 0.000075s |  7.83% |  0.00% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000064s |  7.83% |  0.00% )   ( 0.000075s |  7.83% |  0.00% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000066s |  8.07% |  0.00% )   ( 0.000076s |  7.94% |  0.00% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000067s |  8.20% |  0.00% )   ( 0.000078s |  8.15% |  0.00% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000062s |  7.58% |  0.00% )   ( 0.000074s |  7.73% |  0.00% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000121s | 14.81% |  0.00% )   ( 0.000133s | 13.89% |  0.00% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000059s |  7.22% |  0.00% )   ( 0.000071s |  7.41% |  0.00% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000061s |  7.46% |  0.00% )   ( 0.000072s |  7.52% |  0.00% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000062s |  7.58% |  0.00% )   ( 0.000074s |  7.73% |  0.00% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000065s |  7.95% |  0.00% )   ( 0.000077s |  8.04% |  0.00% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.006972s |  0.00% |  0.00% )   ( 0.007062s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.002873s |  0.00% |  0.00% )   ( 0.002955s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:   	( 0.000345s | 12.00% |  0.00% )   ( 0.000362s | 12.25% |  0.00% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.002528s | 87.99% |  0.00% )   ( 0.002593s | 87.74% |  0.00% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000258s |  0.00% |  0.00% )   ( 0.000271s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  524.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
│  │  │  525.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  525.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
│  │  │  526.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
│  │  │  527.3.0:      	( 0.000106s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
│  │  │  528.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
│  │  │  529.3.0:      	( 0.004771s |  0.00% |  0.00% )   ( 0.005858s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep -qF 'coreutils'
│  │  │  529.3.1:      	( 0.003626s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(1x)	│  │  │ grep -qF 'coreutils'
│  │  │  530.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
│  │  │  537.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  538.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  539.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
│  │  │  557.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.002939s |  0.00% |  0.00% )   ( 0.003055s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000078s |100.00% |  0.00% )   ( 0.000091s |100.00% |  0.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.001288s |  0.00% |  0.00% )   ( 0.001368s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000545s |  0.00% |  0.00% )   ( 0.000561s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.079622s |  0.01% |  0.00% )   ( 0.079503s |  0.01% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:   	( 0.000078s |  0.09% |  0.00% )   ( 0.000090s |  0.11% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.011359s | 14.26% |  0.00% )   ( 0.011322s | 14.24% |  0.00% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012158s | 15.26% |  0.00% )   ( 0.012140s | 15.26% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012141s | 15.24% |  0.00% )   ( 0.012122s | 15.24% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012149s | 15.25% |  0.00% )   ( 0.012130s | 15.25% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012184s | 15.30% |  0.00% )   ( 0.012152s | 15.28% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000061s |  0.07% |  0.00% )   ( 0.000072s |  0.09% |  0.00% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.019262s | 24.19% |  0.00% )   ( 0.019214s | 24.16% |  0.00% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000090s |  0.11% |  0.00% )   ( 0.000103s |  0.12% |  0.00% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000073s |  0.09% |  0.00% )   ( 0.000080s |  0.10% |  0.00% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000067s |  0.08% |  0.00% )   ( 0.000078s |  0.09% |  0.00% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000409s |  0.00% |  0.00% )   ( 0.000434s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.355690s |  0.72% |  0.36% )   ( 1.712246s |  0.40% |  0.20% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:   	( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.012300s |  0.36% |  0.00% )   ( 0.012224s |  0.71% |  0.00% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012160s |  0.36% |  0.00% )   ( 0.012137s |  0.70% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012192s |  0.36% |  0.00% )   ( 0.012134s |  0.70% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012222s |  0.36% |  0.00% )   ( 0.012166s |  0.71% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012205s |  0.36% |  0.00% )   ( 0.012144s |  0.70% |  0.00% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.085297s |  0.00% |  0.00% )   ( 0.098439s |  0.00% |  0.01% )    	(669x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 1.924691s |  0.08% |  0.20% )   ( 0.112753s |  0.00% |  0.01% )    	(668x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000270s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.083196s |  0.00% |  0.00% )   ( 0.096247s |  0.00% |  0.01% )    	(666x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.102857s |  0.00% |  0.01% )   ( 0.096634s |  0.00% |  0.01% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.084306s |  0.00% |  0.00% )   ( 0.097209s |  0.00% |  0.01% )    	(666x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.086742s |  0.00% |  0.00% )   ( 0.099703s |  0.00% |  0.01% )    	(666x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.086521s |  0.00% |  0.00% )   ( 0.099452s |  0.00% |  0.01% )    	(666x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.082487s |  0.00% |  0.00% )   ( 0.095353s |  0.00% |  0.01% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.083923s |  0.00% |  0.00% )   ( 0.096981s |  0.00% |  0.01% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.083465s |  0.00% |  0.00% )   ( 0.096368s |  0.00% |  0.01% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.006161s |  0.18% |  0.00% )   ( 0.006842s |  0.39% |  0.00% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.003158s |  0.09% |  0.00% )   ( 0.003710s |  0.21% |  0.00% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 791.5.0:  	( 0.003158s |100.00% |  0.00% )   ( 0.003710s |100.00% |  0.00% )    	(1x)	│  │  │  │  ├─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  └─ 791.5.1:  	( 0.001384s | 43.82% |  0.00% )   ( 0.001949s | 52.53% |  0.00% )    	(1x)	│  │  │  │  └─cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000076s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.083721s |  0.00% |  0.00% )   ( 0.096698s |  0.00% |  0.01% )    	(666x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.082602s |  0.00% |  0.00% )   ( 0.095592s |  0.00% |  0.01% )    	(666x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.081200s |  0.00% |  0.00% )   ( 0.093708s |  0.00% |  0.01% )    	(645x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.086868s |  0.00% |  0.00% )   ( 0.100082s |  0.00% |  0.01% )    	(666x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.084598s |  0.00% |  0.00% )   ( 0.097642s |  0.00% |  0.01% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.083521s |  0.00% |  0.00% )   ( 0.096408s |  0.00% |  0.01% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002640s |  0.00% |  0.00% )   ( 0.003027s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002586s |  0.00% |  0.00% )   ( 0.002981s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.056923s |  0.08% |  0.00% )   ( 0.046733s |  0.12% |  0.00% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002838s |  0.00% |  0.00% )   ( 0.003263s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002794s |  0.00% |  0.00% )   ( 0.003232s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.002988s |  0.00% |  0.00% )   ( 0.003428s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  829.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000125s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000121s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000147s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.006210s |  0.18% |  0.00% )   ( 0.006269s |  0.36% |  0.00% )    	(1x)	│  │  │  └─ -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.wSsj9k"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.wSsj9k"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000101s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.052597s |  0.01% |  0.00% )   ( 0.052752s |  0.01% |  0.00% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.005169s |  0.00% |  0.00% )   ( 0.005941s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:  	( 0.000218s |  4.21% |  0.00% )   ( 0.000236s |  3.97% |  0.00% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000134s |  2.59% |  0.00% )   ( 0.000155s |  2.60% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000153s |  2.95% |  0.00% )   ( 0.000173s |  2.91% |  0.00% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000409s |  7.91% |  0.00% )   ( 0.000433s |  7.28% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000135s |  2.61% |  0.00% )   ( 0.000153s |  2.57% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000126s |  2.43% |  0.00% )   ( 0.000147s |  2.47% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000064s |  1.23% |  0.00% )   ( 0.000075s |  1.26% |  0.00% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000065s |  1.25% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000064s |  1.23% |  0.00% )   ( 0.000075s |  1.26% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000064s |  1.23% |  0.00% )   ( 0.000076s |  1.27% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000065s |  1.25% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000066s |  1.27% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000065s |  1.25% |  0.00% )   ( 0.000074s |  1.24% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1454.4.2:  	( 0.000065s |  1.25% |  0.00% )   ( 0.000075s |  1.26% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1456.4.0:  	( 0.000069s |  1.33% |  0.00% )   ( 0.000078s |  1.31% |  0.00% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000063s |  1.21% |  0.00% )   ( 0.000074s |  1.24% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000102s |  1.97% |  0.00% )   ( 0.000110s |  1.85% |  0.00% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1514.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000063s |  1.21% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000070s |  1.35% |  0.00% )   ( 0.000081s |  1.36% |  0.00% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1515.4.0:  	( 0.000068s |  1.31% |  0.00% )   ( 0.000078s |  1.31% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000086s |  1.66% |  0.00% )   ( 0.000097s |  1.63% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000074s |  1.24% |  0.00% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000073s |  1.41% |  0.00% )   ( 0.000085s |  1.43% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000073s |  1.41% |  0.00% )   ( 0.000084s |  1.41% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000067s |  1.29% |  0.00% )   ( 0.000079s |  1.32% |  0.00% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000066s |  1.27% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000065s |  1.25% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000077s |  1.48% |  0.00% )   ( 0.000086s |  1.44% |  0.00% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000063s |  1.21% |  0.00% )   ( 0.000075s |  1.26% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000075s |  1.45% |  0.00% )   ( 0.000087s |  1.46% |  0.00% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000077s |  1.48% |  0.00% )   ( 0.000089s |  1.49% |  0.00% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000062s |  1.19% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000070s |  1.35% |  0.00% )   ( 0.000081s |  1.36% |  0.00% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000077s |  1.48% |  0.00% )   ( 0.000089s |  1.49% |  0.00% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000060s |  1.16% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000068s |  1.31% |  0.00% )   ( 0.000078s |  1.31% |  0.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1572.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000069s |  1.33% |  0.00% )   ( 0.000080s |  1.34% |  0.00% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000064s |  1.23% |  0.00% )   ( 0.000075s |  1.26% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000101s |  1.95% |  0.00% )   ( 0.000112s |  1.88% |  0.00% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000059s |  1.14% |  0.00% )   ( 0.000069s |  1.16% |  0.00% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000073s |  1.22% |  0.00% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000061s |  1.18% |  0.00% )   ( 0.000072s |  1.21% |  0.00% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000093s |  1.79% |  0.00% )   ( 0.000104s |  1.75% |  0.00% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000070s |  1.35% |  0.00% )   ( 0.000079s |  1.32% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000065s |  1.25% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000059s |  1.14% |  0.00% )   ( 0.000070s |  1.17% |  0.00% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000081s |  1.56% |  0.00% )   ( 0.000093s |  1.56% |  0.00% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000067s |  1.29% |  0.00% )   ( 0.000078s |  1.31% |  0.00% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000065s |  1.25% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000066s |  1.27% |  0.00% )   ( 0.000077s |  1.29% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000079s |  1.52% |  0.00% )   ( 0.000090s |  1.51% |  0.00% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000247s |  0.00% |  0.00% )   ( 0.000285s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000270s |  0.00% |  0.00% )   ( 0.000303s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000242s |  0.00% |  0.00% )   ( 0.000279s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.012461s |  0.00% |  0.00% )   ( 0.012432s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012364s |  0.00% |  0.00% )   ( 0.100178s |  0.02% |  0.01% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012193s |  0.00% |  0.00% )   ( 0.012176s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.011988s |  0.00% |  0.00% )   ( 0.011964s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002688s |  0.00% |  0.00% )   ( 0.003128s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002542s |  0.00% |  0.00% )   ( 0.002953s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 61.797502s |  3.33% |  6.66% )   ( 58.767801s |  3.47% |  6.96% )    	(4x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002333s |  0.00% |  0.00% )   ( 0.002383s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 61.794794s | 99.99% |  6.66% )   ( 58.765010s | 99.99% |  6.96% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000860s |  0.00% |  0.00% )   ( 0.000968s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.wSsj9k"
│  │  │  │  │  8.5.0:  	( 0.000683s |  0.00% |  0.00% )   ( 0.000771s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.wSsj9k"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.049603s |  0.08% |  0.00% )   ( 0.049529s |  0.08% |  0.00% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.wSsj9k"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.wSsj9k"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.wSsj9k"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.049063s |  0.07% |  0.00% )   ( 0.048992s |  0.08% |  0.00% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1369339 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.049522s |  0.08% |  0.00% )   ( 0.049456s |  0.08% |  0.00% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1369339 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.049898s |  0.08% |  0.00% )   ( 0.049821s |  0.08% |  0.00% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1369339 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.049828s |  0.08% |  0.00% )   ( 0.049746s |  0.08% |  0.00% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.016454s |  0.00% |  0.00% )   ( 0.018647s |  0.00% |  0.00% )    	(110x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.014762s |  0.00% |  0.00% )   ( 0.016934s |  0.00% |  0.00% )    	(110x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000677s |  0.00% |  0.00% )   ( 0.000775s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.wSsj9k"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000556s |  0.00% |  0.00% )   ( 0.000645s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000527s |  0.00% |  0.00% )   ( 0.000616s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.018538s |  0.00% |  0.00% )   ( 0.020823s |  0.00% |  0.00% )    	(110x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.wSsj9k"/.wait/p0
│  │  │  │  │  23.5.0: 	( 0.511099s |  0.03% |  0.05% )   ( 0.022123s |  0.00% |  0.00% )    	(110x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.015211s |  0.00% |  0.00% )   ( 0.017401s |  0.00% |  0.00% )    	(110x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wSsj9k"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.014585s |  0.00% |  0.00% )   ( 0.016703s |  0.00% |  0.00% )    	(106x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wSsj9k"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.013774s |  0.00% |  0.00% )   ( 0.015817s |  0.00% |  0.00% )    	(106x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.014450s |  0.00% |  0.00% )   ( 0.016506s |  0.00% |  0.00% )    	(106x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.125118s |  0.00% |  0.01% )   ( 0.120874s |  0.00% |  0.01% )    	(106x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.020215s |  0.00% |  0.00% )   ( 0.017300s |  0.00% |  0.00% )    	(106x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.017553s |  0.00% |  0.00% )   ( 0.019717s |  0.00% |  0.00% )    	(106x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.wSsj9k"/.wait/p0
│  │  │  │  │  36.5.0: 	( 0.013691s |  0.00% |  0.00% )   ( 0.015800s |  0.00% |  0.00% )    	(106x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.013732s |  0.00% |  0.00% )   ( 0.015824s |  0.00% |  0.00% )    	(106x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000638s |  0.00% |  0.00% )   ( 0.000739s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000572s |  0.00% |  0.00% )   ( 0.000666s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  61.5.0: 	( 60.664720s |  3.70% |  6.54% )   ( 58.105611s |  3.73% |  6.88% )    	(106x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.013113s |  0.02% |  0.00% )   ( 0.015253s |  0.02% |  0.00% )    	(106x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 4.094745s |  6.74% |  0.44% )   ( 3.891174s |  6.69% |  0.46% )    	(106x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 6.562100s | 10.81% |  0.70% )   ( 6.407161s | 11.02% |  0.75% )    	(106x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 5.797620s |  9.55% |  0.62% )   ( 5.537772s |  9.53% |  0.65% )    	(106x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 6.617292s | 10.90% |  0.71% )   ( 6.376687s | 10.97% |  0.75% )    	(106x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 5.550956s |  9.15% |  0.59% )   ( 5.332902s |  9.17% |  0.63% )    	(106x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 3.789169s |  6.24% |  0.40% )   ( 3.624184s |  6.23% |  0.42% )    	(106x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.242738s |  3.69% |  0.24% )   ( 2.101482s |  3.61% |  0.24% )    	(106x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 3.890258s |  6.41% |  0.41% )   ( 3.709669s |  6.38% |  0.43% )    	(106x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.998850s |  3.29% |  0.21% )   ( 1.890962s |  3.25% |  0.22% )    	(106x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 5.173105s |  8.52% |  0.55% )   ( 4.933805s |  8.49% |  0.58% )    	(106x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 10.490657s | 17.29% |  1.13% )   ( 10.060739s | 17.31% |  1.19% )    	(106x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.193923s |  3.61% |  0.23% )   ( 2.130011s |  3.66% |  0.25% )    	(106x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 2.250194s |  3.70% |  0.24% )   ( 2.093810s |  3.60% |  0.24% )    	(106x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  58.5.1: 	( 0.000314s |  0.00% |  0.00% )   ( 0.000368s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.014440s |  0.00% |  0.00% )   ( 0.016517s |  0.00% |  0.00% )    	(102x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.015952s |  0.00% |  0.00% )   ( 0.015243s |  0.00% |  0.00% )    	(98x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.014625s |  0.00% |  0.00% )   ( 0.016560s |  0.00% |  0.00% )    	(98x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000355s |  0.00% |  0.00% )   ( 0.000410s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000363s |  0.00% |  0.00% )   ( 0.000415s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.022416s |  0.03% |  0.00% )   ( 0.022693s |  0.03% |  0.00% )    	(4x)	│  │  │  │  └─break
│  │  │  └─ 134.4.0:   	( 0.000375s |  0.00% |  0.00% )   ( 0.000408s |  0.00% |  0.00% )    	(4x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002546s |  0.00% |  0.00% )   ( 0.002953s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 363.352884s |  3.41% | 39.20% )   ( 347.759740s |  3.57% | 41.20% )    	(23x)	│  │  │ << (FUNCTION): .local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.020120s |  0.00% |  0.00% )   ( 0.020560s |  0.00% |  0.00% )    	(23x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  73.4.0:    	( 363.329696s | 99.99% | 39.20% )   ( 347.735729s | 99.99% | 41.20% )    	(23x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003724s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(23x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.wSsj9k"
│  │  │  │  │  8.5.0:  	( 0.003465s |  0.00% |  0.00% )   ( 0.003911s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.wSsj9k"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.448788s |  0.12% |  0.04% )   ( 0.434918s |  0.12% |  0.05% )    	(23x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.wSsj9k"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.wSsj9k"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.wSsj9k"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.460928s |  0.12% |  0.04% )   ( 0.448948s |  0.12% |  0.05% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1369339 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.456186s |  0.12% |  0.04% )   ( 0.454820s |  0.13% |  0.05% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1369339 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.450504s |  0.12% |  0.04% )   ( 0.449258s |  0.12% |  0.05% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1369339 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.456742s |  0.12% |  0.04% )   ( 0.455455s |  0.13% |  0.05% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.093811s |  0.00% |  0.01% )   ( 0.098496s |  0.00% |  0.01% )    	(555x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.076194s |  0.00% |  0.00% )   ( 0.087207s |  0.00% |  0.01% )    	(555x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002871s |  0.00% |  0.00% )   ( 0.003264s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.wSsj9k"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002359s |  0.00% |  0.00% )   ( 0.002748s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002284s |  0.00% |  0.00% )   ( 0.002661s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.095561s |  0.00% |  0.01% )   ( 0.106959s |  0.00% |  0.01% )    	(555x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.wSsj9k"/.wait/p4
│  │  │  │  │  23.5.0: 	( 2.658562s |  0.03% |  0.28% )   ( 0.114141s |  0.00% |  0.01% )    	(555x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.081193s |  0.00% |  0.00% )   ( 0.090719s |  0.00% |  0.01% )    	(555x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wSsj9k"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.077509s |  0.00% |  0.00% )   ( 0.085828s |  0.00% |  0.01% )    	(532x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wSsj9k"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.070815s |  0.00% |  0.00% )   ( 0.081502s |  0.00% |  0.00% )    	(532x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.078778s |  0.00% |  0.00% )   ( 0.086431s |  0.00% |  0.01% )    	(532x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.651863s |  0.00% |  0.07% )   ( 0.642198s |  0.00% |  0.07% )    	(532x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.125232s |  0.00% |  0.01% )   ( 0.090499s |  0.00% |  0.01% )    	(532x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.089646s |  0.00% |  0.00% )   ( 0.100829s |  0.00% |  0.01% )    	(532x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.wSsj9k"/.wait/p4
│  │  │  │  │  36.5.0: 	( 0.073207s |  0.00% |  0.00% )   ( 0.081946s |  0.00% |  0.00% )    	(532x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.070751s |  0.00% |  0.00% )   ( 0.081571s |  0.00% |  0.00% )    	(532x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.002808s |  0.00% |  0.00% )   ( 0.003231s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.002594s |  0.00% |  0.00% )   ( 0.002989s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.002635s |  0.00% |  0.00% )   ( 0.003060s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 356.412800s |  4.24% | 38.45% )   ( 343.320251s |  4.27% | 40.67% )    	(532x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.067020s |  0.01% |  0.00% )   ( 0.077871s |  0.02% |  0.00% )    	(532x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 24.131416s |  6.77% |  2.60% )   ( 23.351754s |  6.80% |  2.76% )    	(532x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 40.571566s | 11.38% |  4.37% )   ( 39.201001s | 11.41% |  4.64% )    	(532x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 34.139950s |  9.57% |  3.68% )   ( 32.754565s |  9.54% |  3.88% )    	(532x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 39.815790s | 11.17% |  4.29% )   ( 38.671594s | 11.26% |  4.58% )    	(532x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 32.983281s |  9.25% |  3.55% )   ( 31.746296s |  9.24% |  3.76% )    	(532x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 22.104797s |  6.20% |  2.38% )   ( 21.240264s |  6.18% |  2.51% )    	(532x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 12.056003s |  3.38% |  1.30% )   ( 11.445603s |  3.33% |  1.35% )    	(532x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 23.145446s |  6.49% |  2.49% )   ( 21.991594s |  6.40% |  2.60% )    	(532x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 10.765121s |  3.02% |  1.16% )   ( 10.149781s |  2.95% |  1.20% )    	(532x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 29.807414s |  8.36% |  3.21% )   ( 28.571198s |  8.32% |  3.38% )    	(532x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 62.993194s | 17.67% |  6.79% )   ( 61.488954s | 17.91% |  7.28% )    	(532x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 12.085198s |  3.39% |  1.30% )   ( 11.489546s |  3.34% |  1.36% )    	(532x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 11.746604s |  3.29% |  1.26% )   ( 11.140230s |  3.24% |  1.31% )    	(532x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.074125s |  0.00% |  0.00% )   ( 0.084810s |  0.00% |  0.01% )    	(532x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.068530s |  0.00% |  0.00% )   ( 0.078780s |  0.00% |  0.00% )    	(509x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.088755s |  0.00% |  0.00% )   ( 0.087477s |  0.00% |  0.01% )    	(509x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002233s |  0.00% |  0.00% )   ( 0.002570s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002390s |  0.00% |  0.00% )   ( 0.002741s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.141853s |  0.03% |  0.01% )   ( 0.141291s |  0.04% |  0.01% )    	(23x)	│  │  │  │  └─break
│  │  │  └─ 134.4.0:   	( 0.003068s |  0.00% |  0.00% )   ( 0.003451s |  0.00% |  0.00% )    	(23x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1399.3.0:     	( 15.074303s |  3.25% |  1.62% )   ( 14.161112s |  3.34% |  1.67% )    	(1x)	│  │  │ << (FUNCTION): .local p8 p8_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000615s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p8 p8_PID (&)
│  │  │  │  73.4.0:    	( 15.073602s | 99.99% |  1.62% )   ( 14.160381s | 99.99% |  1.67% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000309s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.wSsj9k"
│  │  │  │  │  8.5.0:  	( 0.000360s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.wSsj9k"/.run/p8
│  │  │  │  │  12.5.0: 	( 0.012516s |  0.08% |  0.00% )   ( 0.012497s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.wSsj9k"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.wSsj9k"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.wSsj9k"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.012463s |  0.08% |  0.00% )   ( 0.012444s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1369339 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.012447s |  0.08% |  0.00% )   ( 0.012428s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1369339 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.012486s |  0.08% |  0.00% )   ( 0.012464s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1369339 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.012484s |  0.08% |  0.00% )   ( 0.012465s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.004375s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.003878s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.wSsj9k"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.005134s |  0.00% |  0.00% )   ( 0.005648s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.wSsj9k"/.wait/p8
│  │  │  │  │  23.5.0: 	( 0.224089s |  0.05% |  0.02% )   ( 0.006291s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.004197s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wSsj9k"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.003995s |  0.00% |  0.00% )   ( 0.004587s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wSsj9k"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003945s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.003944s |  0.00% |  0.00% )   ( 0.004518s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.034676s |  0.00% |  0.00% )   ( 0.035151s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.007930s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.004837s |  0.00% |  0.00% )   ( 0.005436s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.wSsj9k"/.wait/p8
│  │  │  │  │  36.5.0: 	( 0.003851s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.003691s |  0.00% |  0.00% )   ( 0.004242s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 14.680726s |  3.47% |  1.58% )   ( 13.980193s |  3.52% |  1.65% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003579s |  0.02% |  0.00% )   ( 0.004167s |  0.02% |  0.00% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 1.010096s |  6.88% |  0.10% )   ( 0.954299s |  6.82% |  0.11% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.582411s | 10.77% |  0.17% )   ( 1.488627s | 10.64% |  0.17% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.387249s |  9.44% |  0.14% )   ( 1.342566s |  9.60% |  0.15% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.517319s | 10.33% |  0.16% )   ( 1.484984s | 10.62% |  0.17% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.340726s |  9.13% |  0.14% )   ( 1.278309s |  9.14% |  0.15% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.956729s |  6.51% |  0.10% )   ( 0.881247s |  6.30% |  0.10% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.598064s |  4.07% |  0.06% )   ( 0.553403s |  3.95% |  0.06% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.923505s |  6.29% |  0.09% )   ( 0.885437s |  6.33% |  0.10% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.542607s |  3.69% |  0.05% )   ( 0.513695s |  3.67% |  0.06% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.258992s |  8.57% |  0.13% )   ( 1.204193s |  8.61% |  0.14% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.357416s | 16.05% |  0.25% )   ( 2.244839s | 16.05% |  0.26% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.618540s |  4.21% |  0.06% )   ( 0.578664s |  4.13% |  0.06% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.583493s |  3.97% |  0.06% )   ( 0.565763s |  4.04% |  0.06% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.003848s |  0.00% |  0.00% )   ( 0.004403s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.003614s |  0.00% |  0.00% )   ( 0.004149s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.004202s |  0.00% |  0.00% )   ( 0.004744s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  37.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  47.5.0: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.wSsj9k"/.quit
│  │  │  │  │  50.5.0: 	( 0.000209s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.wSsj9k"/.run/p* 1>&21
│  │  │  │  │  51.5.0: 	( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.008290s |  0.05% |  0.00% )   ( 0.008271s |  0.05% |  0.00% )    	(1x)	│  │  │  │  └─break
│  │  │  └─ 134.4.0:   	( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p8_PID})
│  │  │  1401.3.0:     	( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001270s |  0.00% |  0.00% )   ( 0.001285s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000126s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.749880s |  4.05% |  2.02% )   ( 0.001690s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000339s |  0.00% |  0.00% )   ( 0.000380s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000270s |  0.00% |  0.00% )   ( 0.000311s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000296s |  0.00% |  0.00% )   ( 0.000341s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.006730s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(1x)	└─ └─ -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.wSsj9k" 2>/dev/null'

TOTAL RUN TIME: 926.792609s
TOTAL CPU TIME: 843.994738s
