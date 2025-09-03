LINE.DEPTH.CMD NUMBER	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_____________________	__________________________________________________________________	____________________________________
1.0.0:                 	( 559.855213s | 50.11% )            ( 508.864033s | 49.97% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:              	( 0.000676s |  0.00% |  0.00% )   ( 0.000339s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
│  603.1.0:            	( 559.854537s | 50.11% | 99.99% )   ( 508.863694s | 49.97% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 603.2.0:         	( 0.027416s |  0.00% |  0.00% )   ( 0.027328s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  128.2.0:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  131.2.0:         	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  132.2.0:         	( 0.000127s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  133.2.0:         	( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  134.2.0:         	( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  135.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  140.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  143.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  143.2.1:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  144.2.0:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
│  │  144.2.1:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
│  │  144.2.2:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
│  │  341.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  350.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  350.2.1:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  350.2.2:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  350.2.3:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  352.2.0:         	( 0.001386s |  0.00% |  0.00% )   ( 0.001011s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
│  │  352.2.1:         	( 0.008396s |  0.00% |  0.00% )   ( 0.008396s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 352.3.0:      	( 0.008396s |  0.00% |100.00% )   ( 0.008396s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
│  │  353.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  355.2.0:         	( 0.003381s |  0.00% |  0.00% )   ( 0.003414s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  356.2.0:         	( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  358.2.0:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  358.2.1:         	( 0.017010s |  0.00% |  0.00% )   ( 0.000366s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1520.2.0:        	( 559.789326s | 50.11% | 99.98% )   ( 508.818839s | 49.96% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 366.3.0:      	( 0.000100s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1520.3.0:     	( 0.001522s |  0.00% |  0.00% )   ( 0.001813s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1520.4.0:  	( 0.001522s |  0.00% |100.00% )   ( 0.001813s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  381.3.0:      	( 0.000107s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  382.3.0:      	( 0.000095s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  383.3.0:      	( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  385.3.0:      	( 0.000260s |  0.00% |  0.00% )   ( 0.006555s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  387.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  388.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  389.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  391.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  393.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  396.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  398.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  399.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  404.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  405.3.0:      	( 0.003218s |  0.00% |  0.00% )   ( 0.003274s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  405.3.1:      	( 0.000106s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 405.4.0:   	( 0.000106s |  0.00% |100.00% )   ( 0.000124s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  405.3.2:      	( 0.000096s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  409.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  414.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  416.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  418.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  419.3.0:      	( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  423.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  485.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  485.3.1:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  486.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  486.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  490.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  495.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  499.3.0:      	( 0.000873s |  0.00% |  0.00% )   ( 0.001008s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000061s |  0.00% |  6.98% )   ( 0.000072s |  0.00% |  7.14% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  12.4.0:    	( 0.000089s |  0.00% | 10.19% )   ( 0.000097s |  0.00% |  9.62% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  13.4.0:    	( 0.000068s |  0.00% |  7.78% )   ( 0.000079s |  0.00% |  7.83% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  15.4.0:    	( 0.000067s |  0.00% |  7.67% )   ( 0.000079s |  0.00% |  7.83% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  16.4.0:    	( 0.000064s |  0.00% |  7.33% )   ( 0.000076s |  0.00% |  7.53% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  17.4.0:    	( 0.000083s |  0.00% |  9.50% )   ( 0.000092s |  0.00% |  9.12% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  19.4.0:    	( 0.000062s |  0.00% |  7.10% )   ( 0.000074s |  0.00% |  7.34% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  19.4.1:    	( 0.000113s |  0.00% | 12.94% )   ( 0.000125s |  0.00% | 12.40% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  21.4.0:    	( 0.000063s |  0.00% |  7.21% )   ( 0.000075s |  0.00% |  7.44% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  22.4.0:    	( 0.000071s |  0.00% |  8.13% )   ( 0.000083s |  0.00% |  8.23% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  22.4.1:    	( 0.000061s |  0.00% |  6.98% )   ( 0.000073s |  0.00% |  7.24% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 32.4.0:    	( 0.000071s |  0.00% |  8.13% )   ( 0.000083s |  0.00% |  8.23% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  501.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  503.3.0:      	( 0.001161s |  0.00% |  0.00% )   ( 0.000993s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  503.3.1:      	( 0.003465s |  0.00% |  0.00% )   ( 0.003542s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 503.4.0:   	( 0.000176s |  0.00% |  5.07% )   ( 0.000191s |  0.00% |  5.39% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 503.4.1:   	( 0.003289s |  0.00% | 94.92% )   ( 0.003351s |  0.00% | 94.60% )    	(1x)	│  │  │  └─nproc
│  │  │  504.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  505.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  505.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  505.3.2:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  507.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  517.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  519.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  522.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  522.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  522.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  524.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  527.3.0:      	( 0.000101s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.0:      	( 0.000157s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  533.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  536.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  539.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  540.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  541.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  562.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
│  │  │  563.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
│  │  │  564.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  564.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  575.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  584.3.0:      	( 0.003808s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  584.3.1:      	( 0.000108s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 584.4.0:   	( 0.000108s |  0.00% |100.00% )   ( 0.000127s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  585.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  588.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  594.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  596.3.0:      	( 0.002232s |  0.00% |  0.00% )   ( 0.002304s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  597.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  600.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  602.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  633.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  635.3.0:      	( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  640.3.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  642.3.0:      	( 0.000092s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  646.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  656.3.0:      	( 0.000537s |  0.00% |  0.00% )   ( 0.000551s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  662.3.0:      	( 0.092982s |  0.00% |  0.01% )   ( 0.092851s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 662.4.0:   	( 0.000080s |  0.00% |  0.08% )   ( 0.000094s |  0.00% |  0.10% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  664.4.0:   	( 0.013865s |  0.00% | 14.91% )   ( 0.013840s |  0.00% | 14.90% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  665.4.0:   	( 0.014843s |  0.00% | 15.96% )   ( 0.014820s |  0.00% | 15.96% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  666.4.0:   	( 0.014903s |  0.00% | 16.02% )   ( 0.014871s |  0.00% | 16.01% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  667.4.0:   	( 0.014804s |  0.00% | 15.92% )   ( 0.014771s |  0.00% | 15.90% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  668.4.0:   	( 0.014835s |  0.00% | 15.95% )   ( 0.014804s |  0.00% | 15.94% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  670.4.0:   	( 0.000066s |  0.00% |  0.07% )   ( 0.000078s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  671.4.0:   	( 0.019357s |  0.00% | 20.81% )   ( 0.019308s |  0.00% | 20.79% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  676.4.0:   	( 0.000091s |  0.00% |  0.09% )   ( 0.000104s |  0.00% |  0.11% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  677.4.0:   	( 0.000070s |  0.00% |  0.07% )   ( 0.000081s |  0.00% |  0.08% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 678.4.0:   	( 0.000068s |  0.00% |  0.07% )   ( 0.000080s |  0.00% |  0.08% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  686.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  691.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  733.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  737.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  739.3.0:      	( 0.000436s |  0.00% |  0.00% )   ( 0.000452s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  749.3.0:      	( 4.740820s |  0.42% |  0.84% )   ( 1.759814s |  0.17% |  0.34% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 749.4.0:   	( 0.000202s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  751.4.0:   	( 0.014904s |  0.00% |  0.31% )   ( 0.014880s |  0.00% |  0.84% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  752.4.0:   	( 0.014887s |  0.00% |  0.31% )   ( 0.014864s |  0.00% |  0.84% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  753.4.0:   	( 0.014822s |  0.00% |  0.31% )   ( 0.014799s |  0.00% |  0.84% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  754.4.0:   	( 0.014792s |  0.00% |  0.31% )   ( 0.014768s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  755.4.0:   	( 0.014831s |  0.00% |  0.31% )   ( 0.014807s |  0.00% |  0.84% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  757.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  758.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  759.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  761.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  763.4.0:   	( 0.088459s |  0.00% |  0.00% )   ( 0.101624s |  0.00% |  0.00% )    	(680x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  765.4.0:   	( 3.282134s |  0.29% |  0.10% )   ( 0.116989s |  0.01% |  0.00% )    	(679x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  765.4.1:   	( 0.001487s |  0.00% |  0.00% )   ( 0.001692s |  0.00% |  0.00% )    	(10x)	│  │  │  │ continue
│  │  │  │  767.4.0:   	( 0.085168s |  0.00% |  0.00% )   ( 0.098184s |  0.00% |  0.00% )    	(669x)	│  │  │  │ case ${REPLY} in
│  │  │  │  781.4.0:   	( 0.086103s |  0.00% |  0.00% )   ( 0.099292s |  0.00% |  0.00% )    	(669x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.0:   	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  785.4.0:   	( 0.000130s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  791.4.0:   	( 0.086100s |  0.00% |  0.00% )   ( 0.099180s |  0.00% |  0.00% )    	(669x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  792.4.0:   	( 0.088077s |  0.00% |  0.00% )   ( 0.100950s |  0.00% |  0.00% )    	(669x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  793.4.0:   	( 0.088731s |  0.00% |  0.00% )   ( 0.101551s |  0.00% |  0.00% )    	(669x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  800.4.0:   	( 0.085094s |  0.00% |  0.00% )   ( 0.097745s |  0.00% |  0.00% )    	(669x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  800.4.1:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  802.4.0:   	( 0.084980s |  0.00% |  0.00% )   ( 0.097768s |  0.00% |  0.00% )    	(669x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  804.4.0:   	( 0.084699s |  0.00% |  0.00% )   ( 0.097516s |  0.00% |  0.00% )    	(669x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  806.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  808.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  809.4.0:   	( 0.008388s |  0.00% |  0.17% )   ( 0.009077s |  0.00% |  0.51% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  809.4.1:   	( 0.003841s |  0.00% |  0.08% )   ( 0.004409s |  0.00% |  0.25% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 809.5.0:  	( 0.003841s |  0.00% |100.00% )   ( 0.004409s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  810.4.0:   	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  811.4.0:   	( 0.000121s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  814.4.0:   	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  816.4.0:   	( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  818.4.0:   	( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  818.4.1:   	( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  818.4.2:   	( 0.000119s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  820.4.0:   	( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  823.4.0:   	( 0.000114s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  825.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  829.4.0:   	( 0.084286s |  0.00% |  0.00% )   ( 0.096989s |  0.00% |  0.00% )    	(669x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  830.4.0:   	( 0.085269s |  0.00% |  0.00% )   ( 0.096177s |  0.00% |  0.00% )    	(669x)	│  │  │  │ case ${nWait} in
│  │  │  │  841.4.0:   	( 0.082482s |  0.00% |  0.00% )   ( 0.094973s |  0.00% |  0.00% )    	(648x)	│  │  │  │ ((nWait--))
│  │  │  │  846.4.0:   	( 0.088315s |  0.00% |  0.00% )   ( 0.101474s |  0.00% |  0.00% )    	(669x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  781.4.1:   	( 0.085490s |  0.00% |  0.00% )   ( 0.098356s |  0.00% |  0.00% )    	(668x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  800.4.1:   	( 0.084827s |  0.00% |  0.00% )   ( 0.097865s |  0.00% |  0.00% )    	(668x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  832.4.0:   	( 0.002646s |  0.00% |  0.00% )   ( 0.003047s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  833.4.0:   	( 0.002626s |  0.00% |  0.00% )   ( 0.003031s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  834.4.0:   	( 0.060064s |  0.00% |  0.06% )   ( 0.048723s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  835.4.0:   	( 0.002754s |  0.00% |  0.00% )   ( 0.003204s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  836.4.0:   	( 0.002694s |  0.00% |  0.00% )   ( 0.003100s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  838.4.0:   	( 0.002786s |  0.00% |  0.00% )   ( 0.003178s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  847.4.0:   	( 0.000128s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  848.4.0:   	( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  849.4.0:   	( 0.000119s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  763.4.1:   	( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  763.4.2:   	( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -335.4.0:  	( 0.006334s |  0.00% |  0.13% )   ( 0.006415s |  0.00% |  0.36% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/pAuto'
│  │  │  857.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  858.3.0:      	( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  894.3.0:      	( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1363.3.0:     	( 0.066058s |  0.00% |  0.01% )   ( 0.066261s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1380.3.0:     	( 0.006047s |  0.00% |  0.00% )   ( 0.006965s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1380.4.0:  	( 0.000201s |  0.00% |  3.32% )   ( 0.000226s |  0.00% |  3.24% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1381.4.0:  	( 0.000130s |  0.00% |  2.14% )   ( 0.000151s |  0.00% |  2.16% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1381.4.1:  	( 0.000149s |  0.00% |  2.46% )   ( 0.000170s |  0.00% |  2.44% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1389.4.0:  	( 0.000396s |  0.00% |  6.54% )   ( 0.000419s |  0.00% |  6.01% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1390.4.0:  	( 0.000127s |  0.00% |  2.10% )   ( 0.000147s |  0.00% |  2.11% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1462.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1465.4.0:  	( 0.000071s |  0.00% |  1.17% )   ( 0.000079s |  0.00% |  1.13% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1466.4.0:  	( 0.000061s |  0.00% |  1.00% )   ( 0.000072s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1467.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000073s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1467.4.1:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1468.4.0:  	( 0.000070s |  0.00% |  1.15% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1469.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1469.4.1:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1470.4.0:  	( 0.000068s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.13% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1471.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000073s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1471.4.1:  	( 0.000065s |  0.00% |  1.07% )   ( 0.000076s |  0.00% |  1.09% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1472.4.0:  	( 0.000062s |  0.00% |  1.02% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1472.4.1:  	( 0.000073s |  0.00% |  1.20% )   ( 0.000084s |  0.00% |  1.20% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1474.4.0:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1475.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1475.4.1:  	( 0.000064s |  0.00% |  1.05% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1475.4.2:  	( 0.000067s |  0.00% |  1.10% )   ( 0.000079s |  0.00% |  1.13% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1476.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1479.4.0:  	( 0.000080s |  0.00% |  1.32% )   ( 0.000091s |  0.00% |  1.30% )    	(1x)	│  │  │  │ echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1480.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1483.4.0:  	( 0.000068s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.13% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1521.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1526.4.0:  	( 0.000071s |  0.00% |  1.17% )   ( 0.000083s |  0.00% |  1.19% )    	(1x)	│  │  │  │ echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1527.4.0:  	( 0.000068s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.13% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1528.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1528.4.1:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.10% )    	(1x)	│  │  │  │ printf '\n'
│  │  │  │  1529.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1530.4.0:  	( 0.000096s |  0.00% |  1.58% )   ( 0.000107s |  0.00% |  1.53% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1532.4.0:  	( 0.000064s |  0.00% |  1.05% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1532.4.1:  	( 0.000062s |  0.00% |  1.02% )   ( 0.000073s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1532.4.2:  	( 0.000062s |  0.00% |  1.02% )   ( 0.000073s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1532.4.3:  	( 0.000088s |  0.00% |  1.45% )   ( 0.000100s |  0.00% |  1.43% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1533.4.0:  	( 0.000071s |  0.00% |  1.17% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1546.4.0:  	( 0.000085s |  0.00% |  1.40% )   ( 0.000096s |  0.00% |  1.37% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1547.4.0:  	( 0.000061s |  0.00% |  1.00% )   ( 0.000073s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1550.4.0:  	( 0.000076s |  0.00% |  1.25% )   ( 0.000087s |  0.00% |  1.24% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1561.4.0:  	( 0.000075s |  0.00% |  1.24% )   ( 0.000087s |  0.00% |  1.24% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1562.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1562.4.1:  	( 0.000069s |  0.00% |  1.14% )   ( 0.000080s |  0.00% |  1.14% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1563.4.0:  	( 0.000065s |  0.00% |  1.07% )   ( 0.000076s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1564.4.0:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1569.4.0:  	( 0.000076s |  0.00% |  1.25% )   ( 0.000088s |  0.00% |  1.26% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1570.4.0:  	( 0.000065s |  0.00% |  1.07% )   ( 0.000076s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000077s |  0.00% |  1.27% )   ( 0.000088s |  0.00% |  1.26% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1575.4.0:  	( 0.000064s |  0.00% |  1.05% )   ( 0.000085s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1575.4.1:  	( 0.000086s |  0.00% |  1.42% )   ( 0.000097s |  0.00% |  1.39% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1580.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1580.4.1:  	( 0.000071s |  0.00% |  1.17% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1581.4.0:  	( 0.000064s |  0.00% |  1.05% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1581.4.1:  	( 0.000078s |  0.00% |  1.28% )   ( 0.000091s |  0.00% |  1.30% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1582.4.0:  	( 0.000062s |  0.00% |  1.02% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1582.4.1:  	( 0.000061s |  0.00% |  1.00% )   ( 0.000072s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1582.4.2:  	( 0.000061s |  0.00% |  1.00% )   ( 0.000073s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1582.4.3:  	( 0.000067s |  0.00% |  1.10% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1590.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1590.4.1:  	( 0.000070s |  0.00% |  1.15% )   ( 0.000081s |  0.00% |  1.16% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1591.4.0:  	( 0.000082s |  0.00% |  1.35% )   ( 0.000090s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1591.4.1:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1592.4.0:  	( 0.000064s |  0.00% |  1.05% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1593.4.0:  	( 0.000089s |  0.00% |  1.47% )   ( 0.000100s |  0.00% |  1.43% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1594.4.0:  	( 0.000067s |  0.00% |  1.10% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1601.4.0:  	( 0.000061s |  0.00% |  1.00% )   ( 0.000072s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1604.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1607.4.0:  	( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1608.4.0:  	( 0.000099s |  0.00% |  1.63% )   ( 0.000108s |  0.00% |  1.55% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1613.4.0:  	( 0.000069s |  0.00% |  1.14% )   ( 0.000080s |  0.00% |  1.14% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1625.4.0:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1626.4.0:  	( 0.000061s |  0.00% |  1.00% )   ( 0.000072s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1626.4.1:  	( 0.000074s |  0.00% |  1.22% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1627.4.0:  	( 0.000070s |  0.00% |  1.15% )   ( 0.000081s |  0.00% |  1.16% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1628.4.0:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1629.4.0:  	( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1634.4.0:  	( 0.000105s |  0.00% |  1.73% )   ( 0.000114s |  0.00% |  1.63% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1368.3.0:     	( 0.000280s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1373.3.0:     	( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1378.3.0:     	( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1380.3.0:     	( 0.015182s |  0.00% |  0.00% )   ( 0.015151s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1385.3.0:     	( 0.015108s |  0.00% |  0.00% )   ( 0.117101s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1390.3.0:     	( 0.015049s |  0.00% |  0.00% )   ( 0.015029s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1395.3.0:     	( 0.014471s |  0.00% |  0.00% )   ( 0.014443s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1397.3.0:     	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1398.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1400.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1411.3.0:     	( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1414.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1415.3.0:     	( 0.000065s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1415.3.1:     	( 0.002792s |  0.00% |  0.00% )   ( 0.003215s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1416.3.0:     	( 0.002796s |  0.00% |  0.00% )   ( 0.003221s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1417.3.0:     	( 18.695859s |  1.67% |  3.33% )   ( 18.230547s |  1.79% |  3.58% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000635s |  0.00% |  0.00% )   ( 0.000650s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  146.4.0:   	( 18.695137s |  1.67% | 99.99% )   ( 18.229796s |  1.79% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000256s |  0.00% |  0.00% )   ( 0.000288s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000268s |  0.00% |  0.00% )   ( 0.000303s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p0
│  │  │  │  │  16.5.0: 	( 0.015103s |  0.00% |  0.08% )   ( 0.015084s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.014848s |  0.00% |  0.07% )   ( 0.014826s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015207s |  0.00% |  0.08% )   ( 0.015181s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015125s |  0.00% |  0.08% )   ( 0.015099s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015130s |  0.00% |  0.08% )   ( 0.015107s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.002696s |  0.00% |  0.00% )   ( 0.003044s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002541s |  0.00% |  0.00% )   ( 0.002896s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000198s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003010s |  0.00% |  0.00% )   ( 0.003365s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p0
│  │  │  │  │  27.5.0: 	( 0.133837s |  0.01% |  0.03% )   ( 0.003609s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002530s |  0.00% |  0.00% )   ( 0.002894s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002343s |  0.00% |  0.00% )   ( 0.002682s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002204s |  0.00% |  0.00% )   ( 0.002513s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002397s |  0.00% |  0.00% )   ( 0.002732s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.016705s |  0.00% |  0.00% )   ( 0.016974s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002213s |  0.00% |  0.00% )   ( 0.002527s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002144s |  0.00% |  0.00% )   ( 0.002468s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.002298s |  0.00% |  0.00% )   ( 0.002620s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.002746s |  0.00% |  0.00% )   ( 0.003082s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p0
│  │  │  │  │  52.5.0: 	( 0.002239s |  0.00% |  0.00% )   ( 0.002577s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002103s |  0.00% |  0.00% )   ( 0.002424s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  77.5.0: 	( 18.424268s |  1.64% |  5.79% )   ( 18.083412s |  1.77% |  5.83% )    	(17x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002069s |  0.00% |  0.01% )   ( 0.002410s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.167004s |  0.10% |  6.33% )   ( 1.137073s |  0.11% |  6.28% )    	(17x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.211514s |  0.19% | 12.00% )   ( 2.195406s |  0.21% | 12.14% )    	(17x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.739251s |  0.15% |  9.44% )   ( 1.724396s |  0.16% |  9.53% )    	(17x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.291095s |  0.20% | 12.43% )   ( 2.237556s |  0.21% | 12.37% )    	(17x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.689591s |  0.15% |  9.17% )   ( 1.660538s |  0.16% |  9.18% )    	(17x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.098685s |  0.09% |  5.96% )   ( 1.070742s |  0.10% |  5.92% )    	(17x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.440345s |  0.03% |  2.39% )   ( 0.423556s |  0.04% |  2.34% )    	(17x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.184657s |  0.10% |  6.42% )   ( 1.173629s |  0.11% |  6.49% )    	(17x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.376214s |  0.03% |  2.04% )   ( 0.355485s |  0.03% |  1.96% )    	(17x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.498458s |  0.13% |  8.13% )   ( 1.477383s |  0.14% |  8.16% )    	(17x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.919022s |  0.35% | 21.27% )   ( 3.859798s |  0.37% | 21.34% )    	(17x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.426377s |  0.03% |  2.31% )   ( 0.397376s |  0.03% |  2.19% )    	(17x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.379986s |  0.03% |  2.06% )   ( 0.368064s |  0.03% |  2.03% )    	(17x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  74.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.002242s |  0.00% |  0.00% )   ( 0.002575s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002095s |  0.00% |  0.00% )   ( 0.002393s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.002313s |  0.00% |  0.00% )   ( 0.002594s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.005243s |  0.00% |  0.02% )   ( 0.005329s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1415.3.0:     	( 0.002612s |  0.00% |  0.00% )   ( 0.003030s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1417.3.0:     	( 18.116333s |  1.62% |  3.23% )   ( 17.290974s |  1.69% |  3.39% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p1 p1_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000593s |  0.00% |  0.00% )   ( 0.000606s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p1 p1_PID (&)
│  │  │  │  146.4.0:   	( 18.115658s |  1.62% | 99.99% )   ( 17.290273s |  1.69% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000205s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000220s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p1
│  │  │  │  │  16.5.0: 	( 0.016084s |  0.00% |  0.08% )   ( 0.016058s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015309s |  0.00% |  0.08% )   ( 0.015287s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015191s |  0.00% |  0.08% )   ( 0.015169s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015162s |  0.00% |  0.08% )   ( 0.015138s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015159s |  0.00% |  0.08% )   ( 0.015139s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003906s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003498s |  0.00% |  0.00% )   ( 0.003964s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000172s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004285s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p1
│  │  │  │  │  27.5.0: 	( 0.374096s |  0.03% |  0.08% )   ( 0.005742s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003630s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003364s |  0.00% |  0.00% )   ( 0.003839s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003138s |  0.00% |  0.00% )   ( 0.003589s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003399s |  0.00% |  0.00% )   ( 0.003853s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.027397s |  0.00% |  0.00% )   ( 0.026957s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003210s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003175s |  0.00% |  0.00% )   ( 0.003649s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.006510s |  0.00% |  0.00% )   ( 0.003931s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003971s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p1
│  │  │  │  │  52.5.0: 	( 0.003211s |  0.00% |  0.00% )   ( 0.003693s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003212s |  0.00% |  0.00% )   ( 0.003663s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  77.5.0: 	( 17.568119s |  1.57% |  4.04% )   ( 17.107527s |  1.67% |  4.12% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002990s |  0.00% |  0.01% )   ( 0.003470s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.195363s |  0.10% |  6.80% )   ( 1.123524s |  0.11% |  6.56% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.027273s |  0.18% | 11.53% )   ( 1.993199s |  0.19% | 11.65% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.676721s |  0.15% |  9.54% )   ( 1.644266s |  0.16% |  9.61% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.031921s |  0.18% | 11.56% )   ( 1.977485s |  0.19% | 11.55% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.609137s |  0.14% |  9.15% )   ( 1.577929s |  0.15% |  9.22% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.089183s |  0.09% |  6.19% )   ( 1.026110s |  0.10% |  5.99% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.529133s |  0.04% |  3.01% )   ( 0.514077s |  0.05% |  3.00% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.127683s |  0.10% |  6.41% )   ( 1.082378s |  0.10% |  6.32% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.471371s |  0.04% |  2.68% )   ( 0.456760s |  0.04% |  2.66% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.443445s |  0.12% |  8.21% )   ( 1.428312s |  0.14% |  8.34% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.349245s |  0.29% | 19.06% )   ( 3.276235s |  0.32% | 19.15% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.517003s |  0.04% |  2.94% )   ( 0.509389s |  0.05% |  2.97% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.497651s |  0.04% |  2.83% )   ( 0.494393s |  0.04% |  2.88% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  74.5.1: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.003179s |  0.00% |  0.00% )   ( 0.003626s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003007s |  0.00% |  0.00% )   ( 0.003435s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003962s |  0.00% |  0.00% )   ( 0.003737s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008990s |  0.00% |  0.04% )   ( 0.009066s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p1\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p1_PID})
│  │  │  1417.3.0:     	( 18.280978s |  1.63% |  3.26% )   ( 17.550343s |  1.72% |  3.44% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p2 p2_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000596s |  0.00% |  0.00% )   ( 0.000610s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p2 p2_PID (&)
│  │  │  │  146.4.0:   	( 18.280297s |  1.63% | 99.99% )   ( 17.549634s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000311s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000348s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p2
│  │  │  │  │  16.5.0: 	( 0.014970s |  0.00% |  0.08% )   ( 0.014947s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015194s |  0.00% |  0.08% )   ( 0.015169s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015164s |  0.00% |  0.08% )   ( 0.015141s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015208s |  0.00% |  0.08% )   ( 0.015184s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015136s |  0.00% |  0.08% )   ( 0.015116s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004409s |  0.00% |  0.00% )   ( 0.004968s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003814s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000197s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004842s |  0.00% |  0.00% )   ( 0.005412s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p2
│  │  │  │  │  27.5.0: 	( 0.295176s |  0.02% |  0.05% )   ( 0.006300s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004195s |  0.00% |  0.00% )   ( 0.004730s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003983s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003650s |  0.00% |  0.00% )   ( 0.004202s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004022s |  0.00% |  0.00% )   ( 0.004569s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.032465s |  0.00% |  0.00% )   ( 0.032894s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003828s |  0.00% |  0.00% )   ( 0.004376s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003807s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.012942s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004710s |  0.00% |  0.00% )   ( 0.005269s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p2
│  │  │  │  │  52.5.0: 	( 0.003836s |  0.00% |  0.00% )   ( 0.004389s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003803s |  0.00% |  0.00% )   ( 0.004366s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000268s |  0.00% |  0.00% )   ( 0.000309s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000192s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  77.5.0: 	( 17.795949s |  1.59% |  3.47% )   ( 17.354711s |  1.70% |  3.53% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003527s |  0.00% |  0.01% )   ( 0.004064s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.204338s |  0.10% |  6.76% )   ( 1.162258s |  0.11% |  6.69% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.061023s |  0.18% | 11.58% )   ( 1.986959s |  0.19% | 11.44% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.685305s |  0.15% |  9.47% )   ( 1.659035s |  0.16% |  9.55% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.032410s |  0.18% | 11.42% )   ( 1.975690s |  0.19% | 11.38% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.595642s |  0.14% |  8.96% )   ( 1.589106s |  0.15% |  9.15% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.087502s |  0.09% |  6.11% )   ( 1.062641s |  0.10% |  6.12% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.584090s |  0.05% |  3.28% )   ( 0.566415s |  0.05% |  3.26% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.159312s |  0.10% |  6.51% )   ( 1.111926s |  0.10% |  6.40% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.536921s |  0.04% |  3.01% )   ( 0.509913s |  0.05% |  2.93% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.475566s |  0.13% |  8.29% )   ( 1.444809s |  0.14% |  8.32% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.185356s |  0.28% | 17.89% )   ( 3.152912s |  0.30% | 18.16% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.589894s |  0.05% |  3.31% )   ( 0.568523s |  0.05% |  3.27% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.595063s |  0.05% |  3.34% )   ( 0.560460s |  0.05% |  3.22% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  74.5.1: 	( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.003788s |  0.00% |  0.00% )   ( 0.004209s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003532s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.005095s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004921s |  0.00% |  0.02% )   ( 0.004993s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p2\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p2_PID})
│  │  │  1417.3.0:     	( 18.641746s |  1.66% |  3.33% )   ( 17.761335s |  1.74% |  3.49% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p3 p3_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000610s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p3 p3_PID (&)
│  │  │  │  146.4.0:   	( 18.641053s |  1.66% | 99.99% )   ( 17.760615s |  1.74% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000312s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000353s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p3
│  │  │  │  │  16.5.0: 	( 0.015295s |  0.00% |  0.08% )   ( 0.015219s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015246s |  0.00% |  0.08% )   ( 0.015171s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015230s |  0.00% |  0.08% )   ( 0.015156s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015269s |  0.00% |  0.08% )   ( 0.015192s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015222s |  0.00% |  0.08% )   ( 0.015142s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004741s |  0.00% |  0.00% )   ( 0.005345s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004163s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000229s |  0.00% |  0.00% )   ( 0.000256s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000185s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000182s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005273s |  0.00% |  0.00% )   ( 0.005875s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p3
│  │  │  │  │  27.5.0: 	( 0.267546s |  0.02% |  0.04% )   ( 0.006194s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004373s |  0.00% |  0.00% )   ( 0.004961s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004096s |  0.00% |  0.00% )   ( 0.004698s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.004006s |  0.00% |  0.00% )   ( 0.004505s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004283s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.038816s |  0.00% |  0.00% )   ( 0.033290s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003834s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003845s |  0.00% |  0.00% )   ( 0.004425s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.007229s |  0.00% |  0.00% )   ( 0.004837s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004862s |  0.00% |  0.00% )   ( 0.005452s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p3
│  │  │  │  │  52.5.0: 	( 0.003859s |  0.00% |  0.00% )   ( 0.004419s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003788s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000202s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000182s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  77.5.0: 	( 18.178086s |  1.62% |  3.36% )   ( 17.560059s |  1.72% |  3.40% )    	(29x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003757s |  0.00% |  0.02% )   ( 0.004354s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.266560s |  0.11% |  6.96% )   ( 1.212038s |  0.11% |  6.90% )    	(29x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.055712s |  0.18% | 11.30% )   ( 2.029127s |  0.19% | 11.55% )    	(29x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.807667s |  0.16% |  9.94% )   ( 1.728343s |  0.16% |  9.84% )    	(29x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.119584s |  0.18% | 11.66% )   ( 2.037557s |  0.20% | 11.60% )    	(29x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.726180s |  0.15% |  9.49% )   ( 1.674760s |  0.16% |  9.53% )    	(29x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.122908s |  0.10% |  6.17% )   ( 1.108316s |  0.10% |  6.31% )    	(29x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.607205s |  0.05% |  3.34% )   ( 0.587022s |  0.05% |  3.34% )    	(29x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.177910s |  0.10% |  6.47% )   ( 1.103660s |  0.10% |  6.28% )    	(29x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.580044s |  0.05% |  3.19% )   ( 0.528255s |  0.05% |  3.00% )    	(29x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.474976s |  0.13% |  8.11% )   ( 1.411673s |  0.13% |  8.03% )    	(29x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.998866s |  0.26% | 16.49% )   ( 2.951388s |  0.28% | 16.80% )    	(29x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.627410s |  0.05% |  3.45% )   ( 0.598444s |  0.05% |  3.40% )    	(29x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.609307s |  0.05% |  3.35% )   ( 0.585122s |  0.05% |  3.33% )    	(29x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  74.5.1: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.003938s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003864s |  0.00% |  0.00% )   ( 0.004263s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.005680s |  0.00% |  0.00% )   ( 0.004720s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.006586s |  0.00% |  0.03% )   ( 0.006628s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p3\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000083s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p3_PID})
│  │  │  1417.3.0:     	( 19.741257s |  1.76% |  3.52% )   ( 19.086819s |  1.87% |  3.75% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000622s |  0.00% |  0.00% )   ( 0.000639s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  146.4.0:   	( 19.740548s |  1.76% | 99.99% )   ( 19.086079s |  1.87% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000312s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000351s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p4
│  │  │  │  │  16.5.0: 	( 0.015195s |  0.00% |  0.07% )   ( 0.015173s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015201s |  0.00% |  0.07% )   ( 0.015180s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015158s |  0.00% |  0.07% )   ( 0.015136s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015200s |  0.00% |  0.07% )   ( 0.015176s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015191s |  0.00% |  0.07% )   ( 0.015164s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003193s |  0.00% |  0.00% )   ( 0.003605s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002843s |  0.00% |  0.00% )   ( 0.003254s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000167s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003611s |  0.00% |  0.00% )   ( 0.004038s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p4
│  │  │  │  │  27.5.0: 	( 0.300931s |  0.02% |  0.06% )   ( 0.005031s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003365s |  0.00% |  0.00% )   ( 0.003804s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003132s |  0.00% |  0.00% )   ( 0.003559s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002825s |  0.00% |  0.00% )   ( 0.003230s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002984s |  0.00% |  0.00% )   ( 0.003409s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.022665s |  0.00% |  0.00% )   ( 0.022953s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002855s |  0.00% |  0.00% )   ( 0.003266s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002776s |  0.00% |  0.00% )   ( 0.003188s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.004142s |  0.00% |  0.00% )   ( 0.003542s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003632s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p4
│  │  │  │  │  52.5.0: 	( 0.002985s |  0.00% |  0.00% )   ( 0.003421s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002807s |  0.00% |  0.00% )   ( 0.003218s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000146s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  77.5.0: 	( 19.283021s |  1.72% |  4.65% )   ( 18.918430s |  1.85% |  4.72% )    	(21x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002707s |  0.00% |  0.01% )   ( 0.003130s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.348912s |  0.12% |  6.99% )   ( 1.327661s |  0.13% |  7.01% )    	(21x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.444434s |  0.21% | 12.67% )   ( 2.421938s |  0.23% | 12.80% )    	(21x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.941827s |  0.17% | 10.07% )   ( 1.906795s |  0.18% | 10.07% )    	(21x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.458699s |  0.22% | 12.75% )   ( 2.377518s |  0.23% | 12.56% )    	(21x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.900265s |  0.17% |  9.85% )   ( 1.878346s |  0.18% |  9.92% )    	(21x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.184854s |  0.10% |  6.14% )   ( 1.163230s |  0.11% |  6.14% )    	(21x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.520552s |  0.04% |  2.69% )   ( 0.501093s |  0.04% |  2.64% )    	(21x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.309253s |  0.11% |  6.78% )   ( 1.259024s |  0.12% |  6.65% )    	(21x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.442790s |  0.03% |  2.29% )   ( 0.432106s |  0.04% |  2.28% )    	(21x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.604662s |  0.14% |  8.32% )   ( 1.551008s |  0.15% |  8.19% )    	(21x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.178027s |  0.28% | 16.48% )   ( 3.164213s |  0.31% | 16.72% )    	(21x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.485945s |  0.04% |  2.52% )   ( 0.477320s |  0.04% |  2.52% )    	(21x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.460094s |  0.04% |  2.38% )   ( 0.455048s |  0.04% |  2.40% )    	(21x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  74.5.1: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.002805s |  0.00% |  0.00% )   ( 0.003200s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002765s |  0.00% |  0.00% )   ( 0.003146s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003050s |  0.00% |  0.00% )   ( 0.003363s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.006638s |  0.00% |  0.03% )   ( 0.006700s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1417.3.0:     	( 23.429536s |  2.09% |  4.18% )   ( 22.311316s |  2.19% |  4.38% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p5 p5_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000620s |  0.00% |  0.00% )   ( 0.000640s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p5 p5_PID (&)
│  │  │  │  146.4.0:   	( 23.428831s |  2.09% | 99.99% )   ( 22.310577s |  2.19% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000324s |  0.00% |  0.00% )   ( 0.000365s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000336s |  0.00% |  0.00% )   ( 0.000380s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p5
│  │  │  │  │  16.5.0: 	( 0.015269s |  0.00% |  0.06% )   ( 0.015242s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015200s |  0.00% |  0.06% )   ( 0.015175s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015197s |  0.00% |  0.06% )   ( 0.015170s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015177s |  0.00% |  0.06% )   ( 0.015145s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015144s |  0.00% |  0.06% )   ( 0.015117s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004219s |  0.00% |  0.00% )   ( 0.004777s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003680s |  0.00% |  0.00% )   ( 0.004189s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004900s |  0.00% |  0.00% )   ( 0.005256s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p5
│  │  │  │  │  27.5.0: 	( 0.173311s |  0.01% |  0.02% )   ( 0.005565s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003840s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003818s |  0.00% |  0.00% )   ( 0.004330s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003581s |  0.00% |  0.00% )   ( 0.004128s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003855s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.037760s |  0.00% |  0.00% )   ( 0.032118s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003761s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003731s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.003828s |  0.00% |  0.00% )   ( 0.004365s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004503s |  0.00% |  0.00% )   ( 0.005053s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p5
│  │  │  │  │  52.5.0: 	( 0.003586s |  0.00% |  0.00% )   ( 0.004128s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003644s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 23.073509s |  2.06% |  3.78% )   ( 22.120277s |  2.17% |  3.81% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003368s |  0.00% |  0.01% )   ( 0.003892s |  0.00% |  0.01% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.645838s |  0.14% |  7.13% )   ( 1.552337s |  0.15% |  7.01% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.722164s |  0.24% | 11.79% )   ( 2.625387s |  0.25% | 11.86% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.127178s |  0.19% |  9.21% )   ( 2.048029s |  0.20% |  9.25% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.720343s |  0.24% | 11.78% )   ( 2.550080s |  0.25% | 11.52% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.029080s |  0.18% |  8.79% )   ( 1.996957s |  0.19% |  9.02% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.563313s |  0.13% |  6.77% )   ( 1.482911s |  0.14% |  6.70% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.646917s |  0.05% |  2.80% )   ( 0.624953s |  0.06% |  2.82% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.583650s |  0.14% |  6.86% )   ( 1.512044s |  0.14% |  6.83% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.619797s |  0.05% |  2.68% )   ( 0.552612s |  0.05% |  2.49% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.846986s |  0.16% |  8.00% )   ( 1.791448s |  0.17% |  8.09% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 4.268406s |  0.38% | 18.49% )   ( 4.185827s |  0.41% | 18.92% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.652666s |  0.05% |  2.82% )   ( 0.609070s |  0.05% |  2.75% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.643803s |  0.05% |  2.79% )   ( 0.584730s |  0.05% |  2.64% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003638s |  0.00% |  0.00% )   ( 0.004131s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003633s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003974s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004856s |  0.00% |  0.02% )   ( 0.004914s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p5\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p5_PID})
│  │  │  1417.3.0:     	( 18.076309s |  1.61% |  3.22% )   ( 17.312354s |  1.70% |  3.40% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p6 p6_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000637s |  0.00% |  0.00% )   ( 0.000652s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p6 p6_PID (&)
│  │  │  │  146.4.0:   	( 18.075587s |  1.61% | 99.99% )   ( 17.311603s |  1.70% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000317s |  0.00% |  0.00% )   ( 0.000366s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000350s |  0.00% |  0.00% )   ( 0.000387s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p6
│  │  │  │  │  16.5.0: 	( 0.015294s |  0.00% |  0.08% )   ( 0.015244s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015277s |  0.00% |  0.08% )   ( 0.015228s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015240s |  0.00% |  0.08% )   ( 0.015194s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015266s |  0.00% |  0.08% )   ( 0.015210s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015251s |  0.00% |  0.08% )   ( 0.015190s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004360s |  0.00% |  0.00% )   ( 0.004944s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003856s |  0.00% |  0.00% )   ( 0.004387s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000087s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.008576s |  0.00% |  0.00% )   ( 0.005526s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p6
│  │  │  │  │  27.5.0: 	( 0.217494s |  0.01% |  0.04% )   ( 0.006324s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004190s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003966s |  0.00% |  0.00% )   ( 0.004569s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003638s |  0.00% |  0.00% )   ( 0.004146s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003795s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.034191s |  0.00% |  0.00% )   ( 0.032730s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003789s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003814s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.003775s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004498s |  0.00% |  0.00% )   ( 0.005044s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p6
│  │  │  │  │  52.5.0: 	( 0.003628s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003637s |  0.00% |  0.00% )   ( 0.004179s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.668616s |  1.58% |  3.62% )   ( 17.114051s |  1.68% |  3.66% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003352s |  0.00% |  0.01% )   ( 0.003893s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.174760s |  0.10% |  6.64% )   ( 1.148627s |  0.11% |  6.71% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.001718s |  0.17% | 11.32% )   ( 1.928737s |  0.18% | 11.26% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.699554s |  0.15% |  9.61% )   ( 1.651694s |  0.16% |  9.65% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.986139s |  0.17% | 11.24% )   ( 1.932845s |  0.18% | 11.29% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.597274s |  0.14% |  9.04% )   ( 1.558782s |  0.15% |  9.10% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.113650s |  0.09% |  6.30% )   ( 1.062644s |  0.10% |  6.20% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.611475s |  0.05% |  3.46% )   ( 0.594586s |  0.05% |  3.47% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.101570s |  0.09% |  6.23% )   ( 1.084652s |  0.10% |  6.33% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.540042s |  0.04% |  3.05% )   ( 0.514267s |  0.05% |  3.00% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.478472s |  0.13% |  8.36% )   ( 1.425016s |  0.13% |  8.32% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.127746s |  0.27% | 17.70% )   ( 3.058152s |  0.30% | 17.86% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.636093s |  0.05% |  3.60% )   ( 0.582152s |  0.05% |  3.40% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.596771s |  0.05% |  3.37% )   ( 0.568004s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003959s |  0.00% |  0.00% )   ( 0.004426s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003664s |  0.00% |  0.00% )   ( 0.004204s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.005724s |  0.00% |  0.00% )   ( 0.004473s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008731s |  0.00% |  0.04% )   ( 0.008814s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p6\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p6_PID})
│  │  │  1417.3.0:     	( 18.047718s |  1.61% |  3.22% )   ( 17.091232s |  1.67% |  3.35% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p7 p7_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000640s |  0.00% |  0.00% )   ( 0.000657s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p7 p7_PID (&)
│  │  │  │  146.4.0:   	( 18.046995s |  1.61% | 99.99% )   ( 17.090477s |  1.67% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000204s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000220s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p7
│  │  │  │  │  16.5.0: 	( 0.016444s |  0.00% |  0.09% )   ( 0.016421s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015191s |  0.00% |  0.08% )   ( 0.015168s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015213s |  0.00% |  0.08% )   ( 0.015186s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015184s |  0.00% |  0.08% )   ( 0.015158s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015242s |  0.00% |  0.08% )   ( 0.015216s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004209s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003650s |  0.00% |  0.00% )   ( 0.004160s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004440s |  0.00% |  0.00% )   ( 0.004986s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p7
│  │  │  │  │  27.5.0: 	( 0.362527s |  0.03% |  0.07% )   ( 0.006352s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004046s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003757s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003373s |  0.00% |  0.00% )   ( 0.003856s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003624s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.030245s |  0.00% |  0.00% )   ( 0.030523s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003372s |  0.00% |  0.00% )   ( 0.003859s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003418s |  0.00% |  0.00% )   ( 0.003892s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.009513s |  0.00% |  0.00% )   ( 0.004131s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004411s |  0.00% |  0.00% )   ( 0.004942s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p7
│  │  │  │  │  52.5.0: 	( 0.003373s |  0.00% |  0.00% )   ( 0.003859s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.004314s |  0.00% |  0.00% )   ( 0.003726s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.500039s |  1.56% |  3.87% )   ( 16.898135s |  1.65% |  3.95% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003150s |  0.00% |  0.01% )   ( 0.003649s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.121397s |  0.10% |  6.40% )   ( 1.115441s |  0.10% |  6.60% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.999611s |  0.17% | 11.42% )   ( 1.921033s |  0.18% | 11.36% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.742963s |  0.15% |  9.95% )   ( 1.614322s |  0.15% |  9.55% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.968645s |  0.17% | 11.24% )   ( 1.926103s |  0.18% | 11.39% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.620182s |  0.14% |  9.25% )   ( 1.557389s |  0.15% |  9.21% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.107943s |  0.09% |  6.33% )   ( 1.018251s |  0.09% |  6.02% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.554819s |  0.04% |  3.17% )   ( 0.538348s |  0.05% |  3.18% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.106678s |  0.09% |  6.32% )   ( 1.081726s |  0.10% |  6.40% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.524691s |  0.04% |  2.99% )   ( 0.492984s |  0.04% |  2.91% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.481023s |  0.13% |  8.46% )   ( 1.437939s |  0.14% |  8.50% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.143818s |  0.28% | 17.96% )   ( 3.107319s |  0.30% | 18.38% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.565735s |  0.05% |  3.23% )   ( 0.555863s |  0.05% |  3.28% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.559384s |  0.05% |  3.19% )   ( 0.527768s |  0.05% |  3.12% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003669s |  0.00% |  0.00% )   ( 0.004205s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003047s |  0.00% |  0.00% )   ( 0.003493s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003532s |  0.00% |  0.00% )   ( 0.004009s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000177s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000190s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009905s |  0.00% |  0.05% )   ( 0.009997s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p7\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000083s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p7_PID})
│  │  │  1417.3.0:     	( 17.766884s |  1.59% |  3.17% )   ( 16.991856s |  1.66% |  3.33% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p8 p8_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000652s |  0.00% |  0.00% )   ( 0.000674s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p8 p8_PID (&)
│  │  │  │  146.4.0:   	( 17.766146s |  1.59% | 99.99% )   ( 16.991081s |  1.66% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000317s |  0.00% |  0.00% )   ( 0.000366s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000332s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p8
│  │  │  │  │  16.5.0: 	( 0.015237s |  0.00% |  0.08% )   ( 0.015213s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015267s |  0.00% |  0.08% )   ( 0.015240s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015191s |  0.00% |  0.08% )   ( 0.015166s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015259s |  0.00% |  0.08% )   ( 0.015225s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015151s |  0.00% |  0.08% )   ( 0.015129s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004511s |  0.00% |  0.00% )   ( 0.005099s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003977s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004719s |  0.00% |  0.00% )   ( 0.005275s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p8
│  │  │  │  │  27.5.0: 	( 0.329689s |  0.02% |  0.06% )   ( 0.006421s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004415s |  0.00% |  0.00% )   ( 0.004925s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004376s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003915s |  0.00% |  0.00% )   ( 0.004497s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004136s |  0.00% |  0.00% )   ( 0.004703s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.037283s |  0.00% |  0.00% )   ( 0.034485s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003900s |  0.00% |  0.00% )   ( 0.004460s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003893s |  0.00% |  0.00% )   ( 0.004451s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.004158s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004696s |  0.00% |  0.00% )   ( 0.005275s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p8
│  │  │  │  │  52.5.0: 	( 0.003843s |  0.00% |  0.00% )   ( 0.004439s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003667s |  0.00% |  0.00% )   ( 0.004207s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.247114s |  1.54% |  3.46% )   ( 16.789189s |  1.64% |  3.52% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003550s |  0.00% |  0.02% )   ( 0.004109s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.133605s |  0.10% |  6.57% )   ( 1.123270s |  0.11% |  6.69% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.909841s |  0.17% | 11.07% )   ( 1.872496s |  0.18% | 11.15% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.624403s |  0.14% |  9.41% )   ( 1.599345s |  0.15% |  9.52% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.903199s |  0.17% | 11.03% )   ( 1.863519s |  0.18% | 11.09% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.589734s |  0.14% |  9.21% )   ( 1.563555s |  0.15% |  9.31% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.126464s |  0.10% |  6.53% )   ( 1.021952s |  0.10% |  6.08% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.595222s |  0.05% |  3.45% )   ( 0.577906s |  0.05% |  3.44% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.075633s |  0.09% |  6.23% )   ( 1.060794s |  0.10% |  6.31% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.539558s |  0.04% |  3.12% )   ( 0.528067s |  0.05% |  3.14% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.462074s |  0.13% |  8.47% )   ( 1.400778s |  0.13% |  8.34% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.066138s |  0.27% | 17.77% )   ( 2.991153s |  0.29% | 17.81% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.608637s |  0.05% |  3.52% )   ( 0.598984s |  0.05% |  3.56% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.609056s |  0.05% |  3.53% )   ( 0.583261s |  0.05% |  3.47% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003819s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003541s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.004140s |  0.00% |  0.00% )   ( 0.004621s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008910s |  0.00% |  0.05% )   ( 0.008982s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p8\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p8_PID})
│  │  │  1417.3.0:     	( 17.914519s |  1.60% |  3.20% )   ( 17.030493s |  1.67% |  3.34% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p9 p9_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000639s |  0.00% |  0.00% )   ( 0.000655s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p9 p9_PID (&)
│  │  │  │  146.4.0:   	( 17.913795s |  1.60% | 99.99% )   ( 17.029737s |  1.67% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000314s |  0.00% |  0.00% )   ( 0.000363s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000261s |  0.00% |  0.00% )   ( 0.000274s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p9
│  │  │  │  │  16.5.0: 	( 0.015308s |  0.00% |  0.08% )   ( 0.015281s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015274s |  0.00% |  0.08% )   ( 0.015244s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015719s |  0.00% |  0.08% )   ( 0.015688s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015243s |  0.00% |  0.08% )   ( 0.015211s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015203s |  0.00% |  0.08% )   ( 0.015177s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004021s |  0.00% |  0.00% )   ( 0.004538s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003599s |  0.00% |  0.00% )   ( 0.004064s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004323s |  0.00% |  0.00% )   ( 0.004809s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p9
│  │  │  │  │  27.5.0: 	( 0.403831s |  0.03% |  0.09% )   ( 0.006258s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003929s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003762s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003489s |  0.00% |  0.00% )   ( 0.003989s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003673s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.031006s |  0.00% |  0.00% )   ( 0.030574s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003344s |  0.00% |  0.00% )   ( 0.003840s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003429s |  0.00% |  0.00% )   ( 0.003922s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.008323s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003989s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p9
│  │  │  │  │  52.5.0: 	( 0.003220s |  0.00% |  0.00% )   ( 0.003697s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003018s |  0.00% |  0.00% )   ( 0.003472s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000113s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.329946s |  1.55% |  4.03% )   ( 16.840756s |  1.65% |  4.12% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003010s |  0.00% |  0.01% )   ( 0.003487s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.114019s |  0.09% |  6.42% )   ( 1.098941s |  0.10% |  6.52% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.987913s |  0.17% | 11.47% )   ( 1.943486s |  0.19% | 11.54% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.659280s |  0.14% |  9.57% )   ( 1.618112s |  0.15% |  9.60% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.976933s |  0.17% | 11.40% )   ( 1.941949s |  0.19% | 11.53% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.615770s |  0.14% |  9.32% )   ( 1.573761s |  0.15% |  9.34% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.045420s |  0.09% |  6.03% )   ( 1.016120s |  0.09% |  6.03% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.548583s |  0.04% |  3.16% )   ( 0.530422s |  0.05% |  3.14% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.144629s |  0.10% |  6.60% )   ( 1.070380s |  0.10% |  6.35% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.491152s |  0.04% |  2.83% )   ( 0.465598s |  0.04% |  2.76% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.441638s |  0.12% |  8.31% )   ( 1.405832s |  0.13% |  8.34% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.230847s |  0.28% | 18.64% )   ( 3.143588s |  0.30% | 18.66% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.550515s |  0.04% |  3.17% )   ( 0.526644s |  0.05% |  3.12% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.520237s |  0.04% |  3.00% )   ( 0.502436s |  0.04% |  2.98% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003484s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002983s |  0.00% |  0.00% )   ( 0.003386s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003376s |  0.00% |  0.00% )   ( 0.003793s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008907s |  0.00% |  0.04% )   ( 0.008982s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p9\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000085s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p9_PID})
│  │  │  1417.3.0:     	( 17.806855s |  1.59% |  3.18% )   ( 16.820302s |  1.65% |  3.30% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p10 p10_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000650s |  0.00% |  0.00% )   ( 0.000670s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p10 p10_PID (&)
│  │  │  │  146.4.0:   	( 17.806121s |  1.59% | 99.99% )   ( 16.819534s |  1.65% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000316s |  0.00% |  0.00% )   ( 0.000367s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p10
│  │  │  │  │  16.5.0: 	( 0.017516s |  0.00% |  0.09% )   ( 0.017485s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029027s |  0.00% |  0.16% )   ( 0.028931s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028973s |  0.00% |  0.16% )   ( 0.028868s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028962s |  0.00% |  0.16% )   ( 0.028873s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.028946s |  0.00% |  0.16% )   ( 0.028848s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004487s |  0.00% |  0.00% )   ( 0.005041s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004096s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000147s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004870s |  0.00% |  0.00% )   ( 0.005456s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p10
│  │  │  │  │  27.5.0: 	( 0.349052s |  0.03% |  0.07% )   ( 0.006884s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004342s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004015s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003781s |  0.00% |  0.00% )   ( 0.004329s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004027s |  0.00% |  0.00% )   ( 0.004566s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.033434s |  0.00% |  0.00% )   ( 0.033871s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003738s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003888s |  0.00% |  0.00% )   ( 0.004441s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.007264s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004690s |  0.00% |  0.00% )   ( 0.005244s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p10
│  │  │  │  │  52.5.0: 	( 0.003687s |  0.00% |  0.00% )   ( 0.004235s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003674s |  0.00% |  0.00% )   ( 0.004204s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000114s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.208332s |  1.54% |  3.57% )   ( 16.560840s |  1.62% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003606s |  0.00% |  0.02% )   ( 0.004175s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.141917s |  0.10% |  6.63% )   ( 1.097750s |  0.10% |  6.62% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.914580s |  0.17% | 11.12% )   ( 1.860930s |  0.18% | 11.23% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.605093s |  0.14% |  9.32% )   ( 1.580845s |  0.15% |  9.54% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.885705s |  0.16% | 10.95% )   ( 1.819393s |  0.17% | 10.98% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.589974s |  0.14% |  9.23% )   ( 1.529480s |  0.15% |  9.23% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.066130s |  0.09% |  6.19% )   ( 1.024169s |  0.10% |  6.18% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.596078s |  0.05% |  3.46% )   ( 0.579734s |  0.05% |  3.50% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.120230s |  0.10% |  6.50% )   ( 1.068315s |  0.10% |  6.45% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.538762s |  0.04% |  3.13% )   ( 0.519617s |  0.05% |  3.13% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.496200s |  0.13% |  8.69% )   ( 1.396618s |  0.13% |  8.43% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.032829s |  0.27% | 17.62% )   ( 2.919528s |  0.28% | 17.62% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.621494s |  0.05% |  3.61% )   ( 0.587082s |  0.05% |  3.54% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.595734s |  0.05% |  3.46% )   ( 0.573204s |  0.05% |  3.46% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003988s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003633s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.007060s |  0.00% |  0.00% )   ( 0.004587s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009176s |  0.00% |  0.05% )   ( 0.009262s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p10\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p10_PID})
│  │  │  1417.3.0:     	( 17.525780s |  1.56% |  3.13% )   ( 16.449206s |  1.61% |  3.23% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p11 p11_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000699s |  0.00% |  0.00% )   ( 0.000713s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p11 p11_PID (&)
│  │  │  │  146.4.0:   	( 17.524992s |  1.56% | 99.99% )   ( 16.448389s |  1.61% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p11
│  │  │  │  │  16.5.0: 	( 0.015307s |  0.00% |  0.08% )   ( 0.015273s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015198s |  0.00% |  0.08% )   ( 0.015173s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.023661s |  0.00% |  0.13% )   ( 0.023592s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028837s |  0.00% |  0.16% )   ( 0.028735s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.028834s |  0.00% |  0.16% )   ( 0.028744s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004755s |  0.00% |  0.00% )   ( 0.005353s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004160s |  0.00% |  0.00% )   ( 0.004753s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000142s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.008482s |  0.00% |  0.00% )   ( 0.005936s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p11
│  │  │  │  │  27.5.0: 	( 0.396451s |  0.03% |  0.07% )   ( 0.007214s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004616s |  0.00% |  0.00% )   ( 0.005216s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004357s |  0.00% |  0.00% )   ( 0.004978s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.004030s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004278s |  0.00% |  0.00% )   ( 0.004861s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.037000s |  0.00% |  0.00% )   ( 0.033921s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.004155s |  0.00% |  0.00% )   ( 0.004702s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003824s |  0.00% |  0.00% )   ( 0.004367s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.007150s |  0.00% |  0.00% )   ( 0.004742s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.005073s |  0.00% |  0.00% )   ( 0.005698s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p11
│  │  │  │  │  52.5.0: 	( 0.004035s |  0.00% |  0.00% )   ( 0.004627s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003894s |  0.00% |  0.00% )   ( 0.004468s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000113s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 16.894057s |  1.51% |  3.44% )   ( 16.206655s |  1.59% |  3.51% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003616s |  0.00% |  0.02% )   ( 0.004169s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.171703s |  0.10% |  6.93% )   ( 1.090706s |  0.10% |  6.72% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.868267s |  0.16% | 11.05% )   ( 1.791556s |  0.17% | 11.05% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.635378s |  0.14% |  9.68% )   ( 1.552710s |  0.15% |  9.58% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.867160s |  0.16% | 11.05% )   ( 1.789270s |  0.17% | 11.04% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.562320s |  0.13% |  9.24% )   ( 1.498350s |  0.14% |  9.24% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.038942s |  0.09% |  6.14% )   ( 1.001991s |  0.09% |  6.18% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.598931s |  0.05% |  3.54% )   ( 0.588191s |  0.05% |  3.62% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.068667s |  0.09% |  6.32% )   ( 1.030627s |  0.10% |  6.35% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.566783s |  0.05% |  3.35% )   ( 0.519480s |  0.05% |  3.20% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.399692s |  0.12% |  8.28% )   ( 1.358638s |  0.13% |  8.38% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.869594s |  0.25% | 16.98% )   ( 2.794502s |  0.27% | 17.24% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.613796s |  0.05% |  3.63% )   ( 0.604293s |  0.05% |  3.72% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.629208s |  0.05% |  3.72% )   ( 0.582172s |  0.05% |  3.59% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.004139s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003722s |  0.00% |  0.00% )   ( 0.004236s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.004311s |  0.00% |  0.00% )   ( 0.004853s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  53.5.0: 	( 0.000128s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  62.5.0: 	( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  63.5.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  65.5.0: 	( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit
│  │  │  │  │  66.5.0: 	( 0.000234s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p* 1>&21
│  │  │  │  │  67.5.0: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008794s |  0.00% |  0.05% )   ( 0.008860s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p11\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p11_PID})
│  │  │  1417.3.0:     	( 22.111477s |  1.97% |  3.94% )   ( 21.312295s |  2.09% |  4.18% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p12 p12_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000740s |  0.00% |  0.00% )   ( 0.000754s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p12 p12_PID (&)
│  │  │  │  146.4.0:   	( 22.110649s |  1.97% | 99.99% )   ( 21.311437s |  2.09% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p12
│  │  │  │  │  16.5.0: 	( 0.015496s |  0.00% |  0.07% )   ( 0.015356s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015453s |  0.00% |  0.06% )   ( 0.015397s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015207s |  0.00% |  0.06% )   ( 0.015184s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015236s |  0.00% |  0.06% )   ( 0.015204s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015287s |  0.00% |  0.06% )   ( 0.015262s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003204s |  0.00% |  0.00% )   ( 0.003606s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002768s |  0.00% |  0.00% )   ( 0.003170s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.006741s |  0.00% |  0.00% )   ( 0.004091s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p12
│  │  │  │  │  27.5.0: 	( 0.297039s |  0.02% |  0.06% )   ( 0.005262s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003300s |  0.00% |  0.00% )   ( 0.003739s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002992s |  0.00% |  0.00% )   ( 0.003428s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002628s |  0.00% |  0.00% )   ( 0.003008s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003015s |  0.00% |  0.00% )   ( 0.003294s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.022457s |  0.00% |  0.00% )   ( 0.022783s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002708s |  0.00% |  0.00% )   ( 0.003121s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002734s |  0.00% |  0.00% )   ( 0.003120s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.002954s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003403s |  0.00% |  0.00% )   ( 0.003814s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p12
│  │  │  │  │  52.5.0: 	( 0.005627s |  0.00% |  0.00% )   ( 0.003043s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002614s |  0.00% |  0.00% )   ( 0.002990s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 21.649559s |  1.93% |  4.89% )   ( 21.147532s |  2.07% |  4.96% )    	(20x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002599s |  0.00% |  0.01% )   ( 0.002990s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.590086s |  0.14% |  7.34% )   ( 1.522667s |  0.14% |  7.20% )    	(20x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 3.035782s |  0.27% | 14.02% )   ( 2.916953s |  0.28% | 13.79% )    	(20x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.299807s |  0.20% | 10.62% )   ( 2.254721s |  0.22% | 10.66% )    	(20x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.919051s |  0.26% | 13.48% )   ( 2.863721s |  0.28% | 13.54% )    	(20x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.081804s |  0.18% |  9.61% )   ( 2.058098s |  0.20% |  9.73% )    	(20x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.317351s |  0.11% |  6.08% )   ( 1.305706s |  0.12% |  6.17% )    	(20x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.518374s |  0.04% |  2.39% )   ( 0.498369s |  0.04% |  2.35% )    	(20x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.346388s |  0.12% |  6.21% )   ( 1.304954s |  0.12% |  6.17% )    	(20x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.463723s |  0.04% |  2.14% )   ( 0.435390s |  0.04% |  2.05% )    	(20x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.530729s |  0.13% |  7.07% )   ( 1.487682s |  0.14% |  7.03% )    	(20x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.566960s |  0.31% | 16.47% )   ( 3.534695s |  0.34% | 16.71% )    	(20x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.495345s |  0.04% |  2.28% )   ( 0.492508s |  0.04% |  2.32% )    	(20x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.481560s |  0.04% |  2.22% )   ( 0.469078s |  0.04% |  2.21% )    	(20x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002801s |  0.00% |  0.00% )   ( 0.003206s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.008509s |  0.00% |  0.00% )   ( 0.003008s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.002877s |  0.00% |  0.00% )   ( 0.003241s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.005300s |  0.00% |  0.02% )   ( 0.005359s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p12\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000088s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p12_PID})
│  │  │  1417.3.0:     	( 20.717434s |  1.85% |  3.70% )   ( 19.863113s |  1.95% |  3.90% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p13 p13_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000850s |  0.00% |  0.00% )   ( 0.000874s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p13 p13_PID (&)
│  │  │  │  146.4.0:   	( 20.716426s |  1.85% | 99.99% )   ( 19.862056s |  1.95% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000141s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p13
│  │  │  │  │  16.5.0: 	( 0.029189s |  0.00% |  0.14% )   ( 0.029089s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029356s |  0.00% |  0.14% )   ( 0.029250s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.029111s |  0.00% |  0.14% )   ( 0.029018s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029416s |  0.00% |  0.14% )   ( 0.029298s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.029207s |  0.00% |  0.14% )   ( 0.029114s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004203s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003679s |  0.00% |  0.00% )   ( 0.004217s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004651s |  0.00% |  0.00% )   ( 0.005186s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p13
│  │  │  │  │  27.5.0: 	( 0.308029s |  0.02% |  0.05% )   ( 0.006175s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004032s |  0.00% |  0.00% )   ( 0.004570s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003712s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003594s |  0.00% |  0.00% )   ( 0.003998s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003650s |  0.00% |  0.00% )   ( 0.004145s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.028943s |  0.00% |  0.00% )   ( 0.029368s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003455s |  0.00% |  0.00% )   ( 0.003951s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003469s |  0.00% |  0.00% )   ( 0.003983s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.009601s |  0.00% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004394s |  0.00% |  0.00% )   ( 0.004938s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p13
│  │  │  │  │  52.5.0: 	( 0.003679s |  0.00% |  0.00% )   ( 0.004150s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003582s |  0.00% |  0.00% )   ( 0.004096s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 20.160519s |  1.80% |  3.74% )   ( 19.605725s |  1.92% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003297s |  0.00% |  0.01% )   ( 0.003801s |  0.00% |  0.01% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.463123s |  0.13% |  7.25% )   ( 1.396558s |  0.13% |  7.12% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.322519s |  0.20% | 11.52% )   ( 2.280306s |  0.22% | 11.63% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.882353s |  0.16% |  9.33% )   ( 1.822583s |  0.17% |  9.29% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.319779s |  0.20% | 11.50% )   ( 2.248458s |  0.22% | 11.46% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.825914s |  0.16% |  9.05% )   ( 1.777671s |  0.17% |  9.06% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.299127s |  0.11% |  6.44% )   ( 1.259097s |  0.12% |  6.42% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.628398s |  0.05% |  3.11% )   ( 0.601663s |  0.05% |  3.06% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.366002s |  0.12% |  6.77% )   ( 1.299349s |  0.12% |  6.62% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.534129s |  0.04% |  2.64% )   ( 0.516036s |  0.05% |  2.63% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.610083s |  0.14% |  7.98% )   ( 1.589182s |  0.15% |  8.10% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.719466s |  0.33% | 18.44% )   ( 3.661770s |  0.35% | 18.67% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.609022s |  0.05% |  3.02% )   ( 0.590940s |  0.05% |  3.01% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.577307s |  0.05% |  2.86% )   ( 0.558311s |  0.05% |  2.84% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003605s |  0.00% |  0.00% )   ( 0.004112s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003418s |  0.00% |  0.00% )   ( 0.003922s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003862s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004867s |  0.00% |  0.02% )   ( 0.004938s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p13\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000158s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p13_PID})
│  │  │  1417.3.0:     	( 18.087349s |  1.61% |  3.23% )   ( 17.274872s |  1.69% |  3.39% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p14 p14_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001012s |  0.00% |  0.00% )   ( 0.001035s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p14 p14_PID (&)
│  │  │  │  146.4.0:   	( 18.086188s |  1.61% | 99.99% )   ( 17.273670s |  1.69% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p14
│  │  │  │  │  16.5.0: 	( 0.028940s |  0.00% |  0.16% )   ( 0.028850s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.028881s |  0.00% |  0.15% )   ( 0.028795s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028870s |  0.00% |  0.15% )   ( 0.028775s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.026365s |  0.00% |  0.14% )   ( 0.026268s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.017834s |  0.00% |  0.09% )   ( 0.017781s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003098s |  0.00% |  0.00% )   ( 0.003498s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002777s |  0.00% |  0.00% )   ( 0.003173s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000091s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003325s |  0.00% |  0.00% )   ( 0.003720s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p14
│  │  │  │  │  27.5.0: 	( 0.269056s |  0.02% |  0.07% )   ( 0.004550s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003027s |  0.00% |  0.00% )   ( 0.003443s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003004s |  0.00% |  0.00% )   ( 0.003398s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002735s |  0.00% |  0.00% )   ( 0.003135s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002871s |  0.00% |  0.00% )   ( 0.003279s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.022078s |  0.00% |  0.00% )   ( 0.022387s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002610s |  0.00% |  0.00% )   ( 0.002996s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002643s |  0.00% |  0.00% )   ( 0.003027s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.005904s |  0.00% |  0.00% )   ( 0.003385s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003433s |  0.00% |  0.00% )   ( 0.003850s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p14
│  │  │  │  │  52.5.0: 	( 0.002760s |  0.00% |  0.00% )   ( 0.003135s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002643s |  0.00% |  0.00% )   ( 0.003020s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.603899s |  1.57% |  5.12% )   ( 17.052427s |  1.67% |  5.19% )    	(19x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002453s |  0.00% |  0.01% )   ( 0.002846s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.141178s |  0.10% |  6.48% )   ( 1.118253s |  0.10% |  6.55% )    	(19x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.067059s |  0.18% | 11.74% )   ( 2.030332s |  0.19% | 11.90% )    	(19x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.696862s |  0.15% |  9.63% )   ( 1.649164s |  0.16% |  9.67% )    	(19x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.095483s |  0.18% | 11.90% )   ( 2.054420s |  0.20% | 12.04% )    	(19x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.603769s |  0.14% |  9.11% )   ( 1.596240s |  0.15% |  9.36% )    	(19x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.037352s |  0.09% |  5.89% )   ( 1.002411s |  0.09% |  5.87% )    	(19x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.535352s |  0.04% |  3.04% )   ( 0.452002s |  0.04% |  2.65% )    	(19x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.140512s |  0.10% |  6.47% )   ( 1.063276s |  0.10% |  6.23% )    	(19x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.432091s |  0.03% |  2.45% )   ( 0.397244s |  0.03% |  2.32% )    	(19x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.444530s |  0.12% |  8.20% )   ( 1.404660s |  0.13% |  8.23% )    	(19x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.451994s |  0.30% | 19.60% )   ( 3.402704s |  0.33% | 19.95% )    	(19x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.476777s |  0.04% |  2.70% )   ( 0.452079s |  0.04% |  2.65% )    	(19x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.478487s |  0.04% |  2.71% )   ( 0.426796s |  0.04% |  2.50% )    	(19x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002788s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002448s |  0.00% |  0.00% )   ( 0.002818s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.002747s |  0.00% |  0.00% )   ( 0.003112s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  53.5.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  62.5.0: 	( 0.000134s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  63.5.0: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  65.5.0: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit
│  │  │  │  │  66.5.0: 	( 0.000200s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p* 1>&21
│  │  │  │  │  67.5.0: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009671s |  0.00% |  0.05% )   ( 0.009650s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p14\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000149s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p14_PID})
│  │  │  1417.3.0:     	( 18.735998s |  1.67% |  3.34% )   ( 17.866780s |  1.75% |  3.51% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p15 p15_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001069s |  0.00% |  0.00% )   ( 0.001090s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p15 p15_PID (&)
│  │  │  │  146.4.0:   	( 18.734780s |  1.67% | 99.99% )   ( 17.865519s |  1.75% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p15
│  │  │  │  │  16.5.0: 	( 0.026448s |  0.00% |  0.14% )   ( 0.026340s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.025789s |  0.00% |  0.13% )   ( 0.025704s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.020391s |  0.00% |  0.10% )   ( 0.020323s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.018151s |  0.00% |  0.09% )   ( 0.018098s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.017709s |  0.00% |  0.09% )   ( 0.017659s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004006s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003419s |  0.00% |  0.00% )   ( 0.003911s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004218s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p15
│  │  │  │  │  27.5.0: 	( 0.264871s |  0.02% |  0.05% )   ( 0.005650s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003882s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003691s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003530s |  0.00% |  0.00% )   ( 0.004017s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003549s |  0.00% |  0.00% )   ( 0.004021s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.031799s |  0.00% |  0.00% )   ( 0.029005s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003412s |  0.00% |  0.00% )   ( 0.003888s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003406s |  0.00% |  0.00% )   ( 0.003906s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.003753s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004291s |  0.00% |  0.00% )   ( 0.004829s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p15
│  │  │  │  │  52.5.0: 	( 0.003375s |  0.00% |  0.00% )   ( 0.003860s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003415s |  0.00% |  0.00% )   ( 0.003914s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 18.262637s |  1.63% |  4.06% )   ( 17.647700s |  1.73% |  4.11% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003183s |  0.00% |  0.01% )   ( 0.003659s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.259892s |  0.11% |  6.89% )   ( 1.209750s |  0.11% |  6.85% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.155356s |  0.19% | 11.80% )   ( 2.117769s |  0.20% | 12.00% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.773453s |  0.15% |  9.71% )   ( 1.734932s |  0.17% |  9.83% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.141161s |  0.19% | 11.72% )   ( 2.093628s |  0.20% | 11.86% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.744276s |  0.15% |  9.55% )   ( 1.695136s |  0.16% |  9.60% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.131258s |  0.10% |  6.19% )   ( 1.094798s |  0.10% |  6.20% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.586572s |  0.05% |  3.21% )   ( 0.552878s |  0.05% |  3.13% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.178785s |  0.10% |  6.45% )   ( 1.137069s |  0.11% |  6.44% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.502148s |  0.04% |  2.74% )   ( 0.475519s |  0.04% |  2.69% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.518598s |  0.13% |  8.31% )   ( 1.392487s |  0.13% |  7.89% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.135976s |  0.28% | 17.17% )   ( 3.089583s |  0.30% | 17.50% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.583147s |  0.05% |  3.19% )   ( 0.536089s |  0.05% |  3.03% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.548832s |  0.04% |  3.00% )   ( 0.514403s |  0.05% |  2.91% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003504s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003246s |  0.00% |  0.00% )   ( 0.003697s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003547s |  0.00% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.007704s |  0.00% |  0.04% )   ( 0.007732s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p15\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p15_PID})
│  │  │  1417.3.0:     	( 17.610476s |  1.57% |  3.14% )   ( 16.878032s |  1.65% |  3.31% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p16 p16_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001069s |  0.00% |  0.00% )   ( 0.001086s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p16 p16_PID (&)
│  │  │  │  146.4.0:   	( 17.609252s |  1.57% | 99.99% )   ( 16.876771s |  1.65% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000091s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p16
│  │  │  │  │  16.5.0: 	( 0.017855s |  0.00% |  0.10% )   ( 0.017802s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015259s |  0.00% |  0.08% )   ( 0.015215s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015318s |  0.00% |  0.08% )   ( 0.015283s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.016283s |  0.00% |  0.09% )   ( 0.016250s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.016948s |  0.00% |  0.09% )   ( 0.016912s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004400s |  0.00% |  0.00% )   ( 0.004994s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003920s |  0.00% |  0.00% )   ( 0.004473s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.006126s |  0.00% |  0.00% )   ( 0.005420s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p16
│  │  │  │  │  27.5.0: 	( 0.198727s |  0.01% |  0.04% )   ( 0.005806s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003948s |  0.00% |  0.00% )   ( 0.004493s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003616s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003479s |  0.00% |  0.00% )   ( 0.004011s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003783s |  0.00% |  0.00% )   ( 0.004296s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.032723s |  0.00% |  0.00% )   ( 0.030109s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003531s |  0.00% |  0.00% )   ( 0.004046s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003513s |  0.00% |  0.00% )   ( 0.004051s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.004874s |  0.00% |  0.00% )   ( 0.004384s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004581s |  0.00% |  0.00% )   ( 0.005133s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p16
│  │  │  │  │  52.5.0: 	( 0.003499s |  0.00% |  0.00% )   ( 0.004049s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003539s |  0.00% |  0.00% )   ( 0.004027s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.222316s |  1.54% |  3.76% )   ( 16.679331s |  1.63% |  3.80% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003337s |  0.00% |  0.01% )   ( 0.003855s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.115479s |  0.09% |  6.47% )   ( 1.092595s |  0.10% |  6.55% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.010415s |  0.17% | 11.67% )   ( 1.881369s |  0.18% | 11.27% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.630601s |  0.14% |  9.46% )   ( 1.583120s |  0.15% |  9.49% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.922341s |  0.17% | 11.16% )   ( 1.884157s |  0.18% | 11.29% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.562781s |  0.13% |  9.07% )   ( 1.540275s |  0.15% |  9.23% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.025140s |  0.09% |  5.95% )   ( 1.019295s |  0.10% |  6.11% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.592949s |  0.05% |  3.44% )   ( 0.563096s |  0.05% |  3.37% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.131170s |  0.10% |  6.56% )   ( 1.067468s |  0.10% |  6.39% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.505690s |  0.04% |  2.93% )   ( 0.485598s |  0.04% |  2.91% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.428426s |  0.12% |  8.29% )   ( 1.404869s |  0.13% |  8.42% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.131318s |  0.28% | 18.18% )   ( 3.042191s |  0.29% | 18.23% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.592414s |  0.05% |  3.43% )   ( 0.566215s |  0.05% |  3.39% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.570255s |  0.05% |  3.31% )   ( 0.545228s |  0.05% |  3.26% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003791s |  0.00% |  0.00% )   ( 0.004345s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003348s |  0.00% |  0.00% )   ( 0.003839s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003906s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000142s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009088s |  0.00% |  0.05% )   ( 0.009066s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p16\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p16_PID})
│  │  │  1417.3.0:     	( 18.154298s |  1.62% |  3.24% )   ( 17.277656s |  1.69% |  3.39% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p17 p17_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001067s |  0.00% |  0.00% )   ( 0.001088s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p17 p17_PID (&)
│  │  │  │  146.4.0:   	( 18.153082s |  1.62% | 99.99% )   ( 17.276398s |  1.69% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000092s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p17
│  │  │  │  │  16.5.0: 	( 0.017948s |  0.00% |  0.09% )   ( 0.017824s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.017981s |  0.00% |  0.09% )   ( 0.017801s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015362s |  0.00% |  0.08% )   ( 0.015262s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.018120s |  0.00% |  0.09% )   ( 0.017998s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.022667s |  0.00% |  0.12% )   ( 0.022525s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004492s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003899s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000158s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004774s |  0.00% |  0.00% )   ( 0.005337s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p17
│  │  │  │  │  27.5.0: 	( 0.410376s |  0.03% |  0.08% )   ( 0.006775s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004417s |  0.00% |  0.00% )   ( 0.004987s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004315s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003772s |  0.00% |  0.00% )   ( 0.004303s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004232s |  0.00% |  0.00% )   ( 0.004817s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.034558s |  0.00% |  0.00% )   ( 0.032018s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003847s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003812s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.004029s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004672s |  0.00% |  0.00% )   ( 0.005221s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p17
│  │  │  │  │  52.5.0: 	( 0.003793s |  0.00% |  0.00% )   ( 0.004337s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003914s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000110s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.543221s |  1.57% |  3.57% )   ( 17.064263s |  1.67% |  3.65% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003817s |  0.00% |  0.02% )   ( 0.004353s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.185675s |  0.10% |  6.75% )   ( 1.169475s |  0.11% |  6.85% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.987027s |  0.17% | 11.32% )   ( 1.936964s |  0.19% | 11.35% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.707115s |  0.15% |  9.73% )   ( 1.649911s |  0.16% |  9.66% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.940713s |  0.17% | 11.06% )   ( 1.913840s |  0.18% | 11.21% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.573986s |  0.14% |  8.97% )   ( 1.550455s |  0.15% |  9.08% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.080591s |  0.09% |  6.15% )   ( 1.042959s |  0.10% |  6.11% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.599924s |  0.05% |  3.41% )   ( 0.573509s |  0.05% |  3.36% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.120693s |  0.10% |  6.38% )   ( 1.077564s |  0.10% |  6.31% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.527579s |  0.04% |  3.00% )   ( 0.508021s |  0.04% |  2.97% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.477875s |  0.13% |  8.42% )   ( 1.418482s |  0.13% |  8.31% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.123963s |  0.27% | 17.80% )   ( 3.063282s |  0.30% | 17.95% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.597338s |  0.05% |  3.40% )   ( 0.583831s |  0.05% |  3.42% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.616925s |  0.05% |  3.51% )   ( 0.571617s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003784s |  0.00% |  0.00% )   ( 0.004309s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003769s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.004297s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000079s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.005941s |  0.00% |  0.03% )   ( 0.005934s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p17\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p17_PID})
│  │  │  1417.3.0:     	( 17.975239s |  1.60% |  3.21% )   ( 17.162881s |  1.68% |  3.37% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p18 p18_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001076s |  0.00% |  0.00% )   ( 0.001100s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p18 p18_PID (&)
│  │  │  │  146.4.0:   	( 17.974011s |  1.60% | 99.99% )   ( 17.161605s |  1.68% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000142s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p18
│  │  │  │  │  16.5.0: 	( 0.026532s |  0.00% |  0.14% )   ( 0.026405s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.030226s |  0.00% |  0.16% )   ( 0.030115s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.026712s |  0.00% |  0.14% )   ( 0.026617s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.031315s |  0.00% |  0.17% )   ( 0.031217s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.032811s |  0.00% |  0.18% )   ( 0.032684s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004084s |  0.00% |  0.00% )   ( 0.004608s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003554s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000186s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000160s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000159s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004216s |  0.00% |  0.00% )   ( 0.004729s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p18
│  │  │  │  │  27.5.0: 	( 0.331086s |  0.02% |  0.07% )   ( 0.005660s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003801s |  0.00% |  0.00% )   ( 0.004328s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003618s |  0.00% |  0.00% )   ( 0.004115s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003387s |  0.00% |  0.00% )   ( 0.003892s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003629s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.029289s |  0.00% |  0.00% )   ( 0.029713s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003503s |  0.00% |  0.00% )   ( 0.004014s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003386s |  0.00% |  0.00% )   ( 0.003881s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.004680s |  0.00% |  0.00% )   ( 0.004157s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004333s |  0.00% |  0.00% )   ( 0.004870s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p18
│  │  │  │  │  52.5.0: 	( 0.003437s |  0.00% |  0.00% )   ( 0.003913s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003054s |  0.00% |  0.00% )   ( 0.003522s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000147s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.400844s |  1.55% |  4.03% )   ( 16.906894s |  1.66% |  4.10% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003188s |  0.00% |  0.01% )   ( 0.003682s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.192604s |  0.10% |  6.85% )   ( 1.141445s |  0.11% |  6.75% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.020215s |  0.18% | 11.60% )   ( 1.966153s |  0.19% | 11.62% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.662860s |  0.14% |  9.55% )   ( 1.617046s |  0.15% |  9.56% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.992090s |  0.17% | 11.44% )   ( 1.958271s |  0.19% | 11.58% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.565624s |  0.14% |  8.99% )   ( 1.545776s |  0.15% |  9.14% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.056829s |  0.09% |  6.07% )   ( 1.005113s |  0.09% |  5.94% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.562015s |  0.05% |  3.22% )   ( 0.533075s |  0.05% |  3.15% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.088797s |  0.09% |  6.25% )   ( 1.065454s |  0.10% |  6.30% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.474077s |  0.04% |  2.72% )   ( 0.462522s |  0.04% |  2.73% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.456615s |  0.13% |  8.37% )   ( 1.417017s |  0.13% |  8.38% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.244332s |  0.29% | 18.64% )   ( 3.159553s |  0.31% | 18.68% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.533426s |  0.04% |  3.06% )   ( 0.525941s |  0.05% |  3.11% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.548172s |  0.04% |  3.15% )   ( 0.505846s |  0.04% |  2.99% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003303s |  0.00% |  0.00% )   ( 0.003768s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003165s |  0.00% |  0.00% )   ( 0.003519s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003376s |  0.00% |  0.00% )   ( 0.003812s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.005260s |  0.00% |  0.02% )   ( 0.005357s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p18\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p18_PID})
│  │  │  1417.3.0:     	( 21.367656s |  1.91% |  3.81% )   ( 20.746295s |  2.03% |  4.07% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p19 p19_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001103s |  0.00% |  0.00% )   ( 0.001125s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p19 p19_PID (&)
│  │  │  │  146.4.0:   	( 21.366393s |  1.91% | 99.99% )   ( 20.744994s |  2.03% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000190s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000195s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p19
│  │  │  │  │  16.5.0: 	( 0.024588s |  0.00% |  0.11% )   ( 0.024476s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.025531s |  0.00% |  0.11% )   ( 0.025458s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028318s |  0.00% |  0.13% )   ( 0.028228s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029863s |  0.00% |  0.13% )   ( 0.029773s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.030395s |  0.00% |  0.14% )   ( 0.030292s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003317s |  0.00% |  0.00% )   ( 0.003708s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002860s |  0.00% |  0.00% )   ( 0.003279s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003701s |  0.00% |  0.00% )   ( 0.004138s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p19
│  │  │  │  │  27.5.0: 	( 0.222910s |  0.01% |  0.04% )   ( 0.004703s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003104s |  0.00% |  0.00% )   ( 0.003544s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003221s |  0.00% |  0.00% )   ( 0.003675s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002843s |  0.00% |  0.00% )   ( 0.003192s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002977s |  0.00% |  0.00% )   ( 0.003392s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.024399s |  0.00% |  0.00% )   ( 0.024729s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002880s |  0.00% |  0.00% )   ( 0.003196s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002691s |  0.00% |  0.00% )   ( 0.003077s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.002815s |  0.00% |  0.00% )   ( 0.003179s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003505s |  0.00% |  0.00% )   ( 0.003930s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p19
│  │  │  │  │  52.5.0: 	( 0.002770s |  0.00% |  0.00% )   ( 0.003173s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002677s |  0.00% |  0.00% )   ( 0.003078s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000109s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 20.926564s |  1.87% |  4.89% )   ( 20.516884s |  2.01% |  4.94% )    	(20x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002671s |  0.00% |  0.01% )   ( 0.003073s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.484873s |  0.13% |  7.09% )   ( 1.449059s |  0.14% |  7.06% )    	(20x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.599480s |  0.23% | 12.42% )   ( 2.553236s |  0.25% | 12.44% )    	(20x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.942729s |  0.17% |  9.28% )   ( 1.923201s |  0.18% |  9.37% )    	(20x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.482212s |  0.22% | 11.86% )   ( 2.455579s |  0.24% | 11.96% )    	(20x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.918606s |  0.17% |  9.16% )   ( 1.882276s |  0.18% |  9.17% )    	(20x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.278257s |  0.11% |  6.10% )   ( 1.271008s |  0.12% |  6.19% )    	(20x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.510534s |  0.04% |  2.43% )   ( 0.504169s |  0.04% |  2.45% )    	(20x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.324517s |  0.11% |  6.32% )   ( 1.310437s |  0.12% |  6.38% )    	(20x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.446995s |  0.04% |  2.13% )   ( 0.430391s |  0.04% |  2.09% )    	(20x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.669319s |  0.14% |  7.97% )   ( 1.650804s |  0.16% |  8.04% )    	(20x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 4.263669s |  0.38% | 20.37% )   ( 4.112759s |  0.40% | 20.04% )    	(20x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.535799s |  0.04% |  2.56% )   ( 0.510620s |  0.05% |  2.48% )    	(20x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.466903s |  0.04% |  2.23% )   ( 0.460272s |  0.04% |  2.24% )    	(20x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002841s |  0.00% |  0.00% )   ( 0.003252s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002543s |  0.00% |  0.00% )   ( 0.002921s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.002938s |  0.00% |  0.00% )   ( 0.003329s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004828s |  0.00% |  0.02% )   ( 0.004886s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p19\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p19_PID})
│  │  │  1417.3.0:     	( 17.740124s |  1.58% |  3.16% )   ( 16.313261s |  1.60% |  3.20% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p20 p20_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001079s |  0.00% |  0.00% )   ( 0.001102s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p20 p20_PID (&)
│  │  │  │  146.4.0:   	( 17.738897s |  1.58% | 99.99% )   ( 16.311989s |  1.60% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p20
│  │  │  │  │  16.5.0: 	( 0.028674s |  0.00% |  0.16% )   ( 0.028577s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.027346s |  0.00% |  0.15% )   ( 0.027269s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.027473s |  0.00% |  0.15% )   ( 0.027385s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.030740s |  0.00% |  0.17% )   ( 0.030647s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.032979s |  0.00% |  0.18% )   ( 0.032876s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004779s |  0.00% |  0.00% )   ( 0.005376s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004336s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005349s |  0.00% |  0.00% )   ( 0.005984s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p20
│  │  │  │  │  27.5.0: 	( 0.357570s |  0.03% |  0.06% )   ( 0.006866s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004648s |  0.00% |  0.00% )   ( 0.005255s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004534s |  0.00% |  0.00% )   ( 0.005147s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.004136s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004464s |  0.00% |  0.00% )   ( 0.005043s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.035713s |  0.00% |  0.00% )   ( 0.036226s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.004149s |  0.00% |  0.00% )   ( 0.004757s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.004121s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.016583s |  0.00% |  0.00% )   ( 0.005338s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.005333s |  0.00% |  0.00% )   ( 0.005967s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p20
│  │  │  │  │  52.5.0: 	( 0.004358s |  0.00% |  0.00% )   ( 0.004970s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.004081s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000172s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.106586s |  1.53% |  3.32% )   ( 16.032364s |  1.57% |  3.38% )    	(29x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003903s |  0.00% |  0.02% )   ( 0.004524s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.150973s |  0.10% |  6.72% )   ( 1.088080s |  0.10% |  6.78% )    	(29x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.857951s |  0.16% | 10.86% )   ( 1.764249s |  0.17% | 11.00% )    	(29x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.626430s |  0.14% |  9.50% )   ( 1.526054s |  0.14% |  9.51% )    	(29x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.880018s |  0.16% | 10.99% )   ( 1.732779s |  0.17% | 10.80% )    	(29x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.621002s |  0.14% |  9.47% )   ( 1.490413s |  0.14% |  9.29% )    	(29x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.086556s |  0.09% |  6.35% )   ( 0.998079s |  0.09% |  6.22% )    	(29x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.658469s |  0.05% |  3.84% )   ( 0.595540s |  0.05% |  3.71% )    	(29x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.132713s |  0.10% |  6.62% )   ( 1.024258s |  0.10% |  6.38% )    	(29x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.599350s |  0.05% |  3.50% )   ( 0.535430s |  0.05% |  3.33% )    	(29x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.422408s |  0.12% |  8.31% )   ( 1.361656s |  0.13% |  8.49% )    	(29x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.755360s |  0.24% | 16.10% )   ( 2.708765s |  0.26% | 16.89% )    	(29x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.659851s |  0.05% |  3.85% )   ( 0.606630s |  0.05% |  3.78% )    	(29x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.651602s |  0.05% |  3.80% )   ( 0.595907s |  0.05% |  3.71% )    	(29x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.004334s |  0.00% |  0.00% )   ( 0.004922s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.004028s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.004302s |  0.00% |  0.00% )   ( 0.004869s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000149s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.006904s |  0.00% |  0.03% )   ( 0.006963s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p20\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p20_PID})
│  │  │  1417.3.0:     	( 21.562460s |  1.93% |  3.85% )   ( 20.799611s |  2.04% |  4.08% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p21 p21_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001096s |  0.00% |  0.00% )   ( 0.001119s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p21 p21_PID (&)
│  │  │  │  146.4.0:   	( 21.561223s |  1.93% | 99.99% )   ( 20.798328s |  2.04% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000163s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p21
│  │  │  │  │  16.5.0: 	( 0.028558s |  0.00% |  0.13% )   ( 0.028440s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.024122s |  0.00% |  0.11% )   ( 0.024054s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.032306s |  0.00% |  0.14% )   ( 0.032184s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.030893s |  0.00% |  0.14% )   ( 0.030801s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.030200s |  0.00% |  0.14% )   ( 0.030097s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004759s |  0.00% |  0.00% )   ( 0.005377s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004305s |  0.00% |  0.00% )   ( 0.004908s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000184s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005433s |  0.00% |  0.00% )   ( 0.006064s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p21
│  │  │  │  │  27.5.0: 	( 0.190117s |  0.01% |  0.02% )   ( 0.006648s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004430s |  0.00% |  0.00% )   ( 0.005045s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004415s |  0.00% |  0.00% )   ( 0.004954s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.004021s |  0.00% |  0.00% )   ( 0.004591s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004204s |  0.00% |  0.00% )   ( 0.004748s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.039213s |  0.00% |  0.00% )   ( 0.034182s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.004098s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.004082s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.010364s |  0.00% |  0.00% )   ( 0.005033s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004992s |  0.00% |  0.00% )   ( 0.005570s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p21
│  │  │  │  │  52.5.0: 	( 0.007240s |  0.00% |  0.00% )   ( 0.004836s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003952s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000116s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 21.098306s |  1.88% |  3.37% )   ( 20.526182s |  2.01% |  3.40% )    	(29x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003790s |  0.00% |  0.01% )   ( 0.004374s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.635816s |  0.14% |  7.75% )   ( 1.564884s |  0.15% |  7.62% )    	(29x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.336387s |  0.20% | 11.07% )   ( 2.319251s |  0.22% | 11.29% )    	(29x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.917046s |  0.17% |  9.08% )   ( 1.896426s |  0.18% |  9.23% )    	(29x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.371854s |  0.21% | 11.24% )   ( 2.315734s |  0.22% | 11.28% )    	(29x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.916178s |  0.17% |  9.08% )   ( 1.844115s |  0.18% |  8.98% )    	(29x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.370349s |  0.12% |  6.49% )   ( 1.339400s |  0.13% |  6.52% )    	(29x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.679227s |  0.06% |  3.21% )   ( 0.642662s |  0.06% |  3.13% )    	(29x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.416931s |  0.12% |  6.71% )   ( 1.379853s |  0.13% |  6.72% )    	(29x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.603076s |  0.05% |  2.85% )   ( 0.557774s |  0.05% |  2.71% )    	(29x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.736814s |  0.15% |  8.23% )   ( 1.694064s |  0.16% |  8.25% )    	(29x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.763992s |  0.33% | 17.84% )   ( 3.710602s |  0.36% | 18.07% )    	(29x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.684450s |  0.06% |  3.24% )   ( 0.640668s |  0.06% |  3.12% )    	(29x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.662396s |  0.05% |  3.13% )   ( 0.616375s |  0.06% |  3.00% )    	(29x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.004475s |  0.00% |  0.00% )   ( 0.004995s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003923s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.006751s |  0.00% |  0.00% )   ( 0.004926s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004774s |  0.00% |  0.02% )   ( 0.004839s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p21\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000141s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p21_PID})
│  │  │  1417.3.0:     	( 18.730198s |  1.67% |  3.34% )   ( 18.358427s |  1.80% |  3.60% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p22 p22_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000963s |  0.00% |  0.00% )   ( 0.000984s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p22 p22_PID (&)
│  │  │  │  146.4.0:   	( 18.729067s |  1.67% | 99.99% )   ( 18.357254s |  1.80% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000166s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p22
│  │  │  │  │  16.5.0: 	( 0.029295s |  0.00% |  0.15% )   ( 0.029185s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029456s |  0.00% |  0.15% )   ( 0.029345s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.029297s |  0.00% |  0.15% )   ( 0.029152s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029441s |  0.00% |  0.15% )   ( 0.029286s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.027941s |  0.00% |  0.14% )   ( 0.027860s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.002112s |  0.00% |  0.00% )   ( 0.002387s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.001971s |  0.00% |  0.00% )   ( 0.002253s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.002373s |  0.00% |  0.00% )   ( 0.002668s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p22
│  │  │  │  │  27.5.0: 	( 0.100216s |  0.00% |  0.03% )   ( 0.003025s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002071s |  0.00% |  0.00% )   ( 0.002365s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002036s |  0.00% |  0.00% )   ( 0.002226s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.001909s |  0.00% |  0.00% )   ( 0.002138s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.001933s |  0.00% |  0.00% )   ( 0.002201s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.020728s |  0.00% |  0.00% )   ( 0.015760s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.001824s |  0.00% |  0.00% )   ( 0.002078s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.001754s |  0.00% |  0.00% )   ( 0.002008s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.001933s |  0.00% |  0.00% )   ( 0.002198s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.002208s |  0.00% |  0.00% )   ( 0.002466s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p22
│  │  │  │  │  52.5.0: 	( 0.001787s |  0.00% |  0.00% )   ( 0.002050s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.001759s |  0.00% |  0.00% )   ( 0.002011s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000115s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 18.422553s |  1.64% |  7.56% )   ( 18.152114s |  1.78% |  7.60% )    	(13x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.001604s |  0.00% |  0.00% )   ( 0.001855s |  0.00% |  0.01% )    	(13x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.202698s |  0.10% |  6.52% )   ( 1.189084s |  0.11% |  6.55% )    	(13x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.329627s |  0.20% | 12.64% )   ( 2.317654s |  0.22% | 12.76% )    	(13x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.814502s |  0.16% |  9.84% )   ( 1.750505s |  0.17% |  9.64% )    	(13x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.281467s |  0.20% | 12.38% )   ( 2.263391s |  0.22% | 12.46% )    	(13x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.720330s |  0.15% |  9.33% )   ( 1.681319s |  0.16% |  9.26% )    	(13x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.075843s |  0.09% |  5.83% )   ( 1.057623s |  0.10% |  5.82% )    	(13x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.409520s |  0.03% |  2.22% )   ( 0.385310s |  0.03% |  2.12% )    	(13x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.166929s |  0.10% |  6.33% )   ( 1.155416s |  0.11% |  6.36% )    	(13x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.318909s |  0.02% |  1.73% )   ( 0.309888s |  0.03% |  1.70% )    	(13x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.471735s |  0.13% |  7.98% )   ( 1.456020s |  0.14% |  8.02% )    	(13x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.929260s |  0.35% | 21.32% )   ( 3.907845s |  0.38% | 21.52% )    	(13x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.364984s |  0.03% |  1.98% )   ( 0.357879s |  0.03% |  1.97% )    	(13x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.335145s |  0.03% |  1.81% )   ( 0.318325s |  0.03% |  1.75% )    	(13x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.001849s |  0.00% |  0.00% )   ( 0.002101s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.001653s |  0.00% |  0.00% )   ( 0.001879s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.004746s |  0.00% |  0.00% )   ( 0.002018s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004983s |  0.00% |  0.02% )   ( 0.005069s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p22\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p22_PID})
│  │  │  1417.3.0:     	( 18.613139s |  1.66% |  3.32% )   ( 18.000246s |  1.76% |  3.53% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p23 p23_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001058s |  0.00% |  0.00% )   ( 0.001081s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p23 p23_PID (&)
│  │  │  │  146.4.0:   	( 18.611925s |  1.66% | 99.99% )   ( 17.998990s |  1.76% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000146s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000176s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p23
│  │  │  │  │  16.5.0: 	( 0.029608s |  0.00% |  0.15% )   ( 0.029494s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.034183s |  0.00% |  0.18% )   ( 0.033728s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.030221s |  0.00% |  0.16% )   ( 0.030109s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029689s |  0.00% |  0.15% )   ( 0.029568s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.029492s |  0.00% |  0.15% )   ( 0.029387s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.002554s |  0.00% |  0.00% )   ( 0.002897s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002409s |  0.00% |  0.00% )   ( 0.002752s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003065s |  0.00% |  0.00% )   ( 0.003421s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p23
│  │  │  │  │  27.5.0: 	( 0.255089s |  0.02% |  0.08% )   ( 0.004391s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002811s |  0.00% |  0.00% )   ( 0.003200s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002534s |  0.00% |  0.00% )   ( 0.002889s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002343s |  0.00% |  0.00% )   ( 0.002668s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002485s |  0.00% |  0.00% )   ( 0.002828s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.020277s |  0.00% |  0.00% )   ( 0.020487s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002366s |  0.00% |  0.00% )   ( 0.002695s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002133s |  0.00% |  0.00% )   ( 0.002431s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.005604s |  0.00% |  0.00% )   ( 0.002836s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.002797s |  0.00% |  0.00% )   ( 0.003127s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p23
│  │  │  │  │  52.5.0: 	( 0.002308s |  0.00% |  0.00% )   ( 0.002651s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002274s |  0.00% |  0.00% )   ( 0.002611s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 18.130937s |  1.62% |  6.08% )   ( 17.766849s |  1.74% |  6.16% )    	(16x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002007s |  0.00% |  0.01% )   ( 0.002301s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.194462s |  0.10% |  6.58% )   ( 1.165470s |  0.11% |  6.55% )    	(16x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.242566s |  0.20% | 12.36% )   ( 2.188682s |  0.21% | 12.31% )    	(16x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.718540s |  0.15% |  9.47% )   ( 1.702807s |  0.16% |  9.58% )    	(16x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.239963s |  0.20% | 12.35% )   ( 2.210292s |  0.21% | 12.44% )    	(16x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.706226s |  0.15% |  9.41% )   ( 1.680654s |  0.16% |  9.45% )    	(16x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.041976s |  0.09% |  5.74% )   ( 1.029658s |  0.10% |  5.79% )    	(16x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.421580s |  0.03% |  2.32% )   ( 0.412446s |  0.04% |  2.32% )    	(16x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.130585s |  0.10% |  6.23% )   ( 1.107339s |  0.10% |  6.23% )    	(16x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.374201s |  0.03% |  2.06% )   ( 0.358925s |  0.03% |  2.02% )    	(16x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.471900s |  0.13% |  8.11% )   ( 1.425917s |  0.14% |  8.02% )    	(16x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.803832s |  0.34% | 20.97% )   ( 3.716915s |  0.36% | 20.92% )    	(16x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.410707s |  0.03% |  2.26% )   ( 0.394861s |  0.03% |  2.22% )    	(16x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.372392s |  0.03% |  2.05% )   ( 0.370582s |  0.03% |  2.08% )    	(16x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002249s |  0.00% |  0.00% )   ( 0.002571s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002100s |  0.00% |  0.00% )   ( 0.002414s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.002453s |  0.00% |  0.00% )   ( 0.002777s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008616s |  0.00% |  0.04% )   ( 0.008691s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p23\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p23_PID})
│  │  │  1417.3.0:     	( 17.466736s |  1.56% |  3.12% )   ( 16.550081s |  1.62% |  3.25% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p24 p24_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001092s |  0.00% |  0.00% )   ( 0.001120s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p24 p24_PID (&)
│  │  │  │  146.4.0:   	( 17.465490s |  1.56% | 99.99% )   ( 16.548790s |  1.62% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000172s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000176s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p24
│  │  │  │  │  16.5.0: 	( 0.029506s |  0.00% |  0.16% )   ( 0.029228s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029013s |  0.00% |  0.16% )   ( 0.028768s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028869s |  0.00% |  0.16% )   ( 0.028701s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028912s |  0.00% |  0.16% )   ( 0.028806s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.028918s |  0.00% |  0.16% )   ( 0.028829s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004768s |  0.00% |  0.00% )   ( 0.005384s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004232s |  0.00% |  0.00% )   ( 0.004796s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005267s |  0.00% |  0.00% )   ( 0.005768s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p24
│  │  │  │  │  27.5.0: 	( 0.336729s |  0.03% |  0.06% )   ( 0.006622s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004641s |  0.00% |  0.00% )   ( 0.005224s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004354s |  0.00% |  0.00% )   ( 0.004988s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003977s |  0.00% |  0.00% )   ( 0.004547s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004315s |  0.00% |  0.00% )   ( 0.004892s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.033950s |  0.00% |  0.00% )   ( 0.034360s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.004020s |  0.00% |  0.00% )   ( 0.004568s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003958s |  0.00% |  0.00% )   ( 0.004519s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.015649s |  0.00% |  0.00% )   ( 0.005175s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.005101s |  0.00% |  0.00% )   ( 0.005707s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p24
│  │  │  │  │  52.5.0: 	( 0.004041s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003991s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 16.854749s |  1.50% |  3.44% )   ( 16.274366s |  1.59% |  3.51% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003575s |  0.00% |  0.02% )   ( 0.004154s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.101135s |  0.09% |  6.53% )   ( 1.090860s |  0.10% |  6.70% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.858537s |  0.16% | 11.02% )   ( 1.807167s |  0.17% | 11.10% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.612637s |  0.14% |  9.56% )   ( 1.557383s |  0.15% |  9.56% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.834023s |  0.16% | 10.88% )   ( 1.779215s |  0.17% | 10.93% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.561655s |  0.13% |  9.26% )   ( 1.510780s |  0.14% |  9.28% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.032376s |  0.09% |  6.12% )   ( 1.005661s |  0.09% |  6.17% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.623602s |  0.05% |  3.69% )   ( 0.592478s |  0.05% |  3.64% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.050886s |  0.09% |  6.23% )   ( 1.031234s |  0.10% |  6.33% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.546298s |  0.04% |  3.24% )   ( 0.520219s |  0.05% |  3.19% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.431482s |  0.12% |  8.49% )   ( 1.372175s |  0.13% |  8.43% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.897615s |  0.25% | 17.19% )   ( 2.815524s |  0.27% | 17.30% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.665490s |  0.05% |  3.94% )   ( 0.595561s |  0.05% |  3.65% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.635438s |  0.05% |  3.77% )   ( 0.591955s |  0.05% |  3.63% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.004170s |  0.00% |  0.00% )   ( 0.004742s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003811s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.008267s |  0.00% |  0.00% )   ( 0.004705s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000150s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008895s |  0.00% |  0.05% )   ( 0.008976s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p24\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000154s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p24_PID})
│  │  │  1417.3.0:     	( 17.750879s |  1.58% |  3.17% )   ( 16.799655s |  1.64% |  3.30% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p25 p25_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001127s |  0.00% |  0.00% )   ( 0.001152s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p25 p25_PID (&)
│  │  │  │  146.4.0:   	( 17.749600s |  1.58% | 99.99% )   ( 16.798327s |  1.64% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p25
│  │  │  │  │  16.5.0: 	( 0.029112s |  0.00% |  0.16% )   ( 0.028855s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029037s |  0.00% |  0.16% )   ( 0.028781s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028960s |  0.00% |  0.16% )   ( 0.028770s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028890s |  0.00% |  0.16% )   ( 0.028693s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.029748s |  0.00% |  0.16% )   ( 0.029504s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004614s |  0.00% |  0.00% )   ( 0.005170s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004050s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000172s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004995s |  0.00% |  0.00% )   ( 0.005587s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p25
│  │  │  │  │  27.5.0: 	( 0.313722s |  0.02% |  0.06% )   ( 0.006696s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004376s |  0.00% |  0.00% )   ( 0.004935s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004083s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003811s |  0.00% |  0.00% )   ( 0.004362s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003977s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.032677s |  0.00% |  0.00% )   ( 0.033108s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.003824s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.003551s |  0.00% |  0.00% )   ( 0.004067s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.003889s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.004483s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p25
│  │  │  │  │  52.5.0: 	( 0.003745s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.003529s |  0.00% |  0.00% )   ( 0.004052s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000110s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 17.182975s |  1.53% |  3.58% )   ( 16.530510s |  1.62% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003443s |  0.00% |  0.02% )   ( 0.003983s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.144338s |  0.10% |  6.65% )   ( 1.095923s |  0.10% |  6.62% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.894937s |  0.16% | 11.02% )   ( 1.875196s |  0.18% | 11.34% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.662741s |  0.14% |  9.67% )   ( 1.595325s |  0.15% |  9.65% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.895286s |  0.16% | 11.03% )   ( 1.831289s |  0.17% | 11.07% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.687711s |  0.15% |  9.82% )   ( 1.529314s |  0.15% |  9.25% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.115660s |  0.09% |  6.49% )   ( 1.031538s |  0.10% |  6.24% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.599458s |  0.05% |  3.48% )   ( 0.572653s |  0.05% |  3.46% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.090416s |  0.09% |  6.34% )   ( 1.057284s |  0.10% |  6.39% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.535716s |  0.04% |  3.11% )   ( 0.509060s |  0.04% |  3.07% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.409729s |  0.12% |  8.20% )   ( 1.365478s |  0.13% |  8.26% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.981480s |  0.26% | 17.35% )   ( 2.930991s |  0.28% | 17.73% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.581418s |  0.05% |  3.38% )   ( 0.570676s |  0.05% |  3.45% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.580642s |  0.05% |  3.37% )   ( 0.561800s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003917s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.003585s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.003996s |  0.00% |  0.00% )   ( 0.004528s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008630s |  0.00% |  0.04% )   ( 0.008706s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p25\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p25_PID})
│  │  │  1417.3.0:     	( 20.582490s |  1.84% |  3.67% )   ( 19.948163s |  1.95% |  3.92% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p26 p26_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001092s |  0.00% |  0.00% )   ( 0.001116s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p26 p26_PID (&)
│  │  │  │  146.4.0:   	( 20.581248s |  1.84% | 99.99% )   ( 19.946875s |  1.95% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p26
│  │  │  │  │  16.5.0: 	( 0.029709s |  0.00% |  0.14% )   ( 0.029597s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.037714s |  0.00% |  0.18% )   ( 0.031643s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.029966s |  0.00% |  0.14% )   ( 0.029858s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029173s |  0.00% |  0.14% )   ( 0.029078s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.022568s |  0.00% |  0.10% )   ( 0.022498s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003041s |  0.00% |  0.00% )   ( 0.003427s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002622s |  0.00% |  0.00% )   ( 0.002997s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000152s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003245s |  0.00% |  0.00% )   ( 0.003625s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p26
│  │  │  │  │  27.5.0: 	( 0.256188s |  0.02% |  0.06% )   ( 0.004442s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002978s |  0.00% |  0.00% )   ( 0.003378s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002908s |  0.00% |  0.00% )   ( 0.003323s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002626s |  0.00% |  0.00% )   ( 0.003003s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002714s |  0.00% |  0.00% )   ( 0.003075s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.021419s |  0.00% |  0.00% )   ( 0.021724s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002447s |  0.00% |  0.00% )   ( 0.002796s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002370s |  0.00% |  0.00% )   ( 0.002733s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.003279s |  0.00% |  0.00% )   ( 0.002965s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003093s |  0.00% |  0.00% )   ( 0.003450s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p26
│  │  │  │  │  52.5.0: 	( 0.002448s |  0.00% |  0.00% )   ( 0.002794s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002429s |  0.00% |  0.00% )   ( 0.002794s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000168s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000164s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000169s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 20.104578s |  1.79% |  5.42% )   ( 19.722625s |  1.93% |  5.49% )    	(18x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002373s |  0.00% |  0.01% )   ( 0.002727s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.437733s |  0.12% |  7.15% )   ( 1.395955s |  0.13% |  7.07% )    	(18x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.707594s |  0.24% | 13.46% )   ( 2.675145s |  0.26% | 13.56% )    	(18x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.127577s |  0.19% | 10.58% )   ( 2.040294s |  0.20% | 10.34% )    	(18x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.677390s |  0.23% | 13.31% )   ( 2.653816s |  0.26% | 13.45% )    	(18x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.038185s |  0.18% | 10.13% )   ( 2.019803s |  0.19% | 10.24% )    	(18x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.270649s |  0.11% |  6.32% )   ( 1.264398s |  0.12% |  6.41% )    	(18x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.509896s |  0.04% |  2.53% )   ( 0.465431s |  0.04% |  2.35% )    	(18x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.266571s |  0.11% |  6.29% )   ( 1.253728s |  0.12% |  6.35% )    	(18x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.425401s |  0.03% |  2.11% )   ( 0.397303s |  0.03% |  2.01% )    	(18x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.384205s |  0.12% |  6.88% )   ( 1.365195s |  0.13% |  6.92% )    	(18x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.361764s |  0.30% | 16.72% )   ( 3.322456s |  0.32% | 16.84% )    	(18x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.460095s |  0.04% |  2.28% )   ( 0.452077s |  0.04% |  2.29% )    	(18x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.435145s |  0.03% |  2.16% )   ( 0.414297s |  0.04% |  2.10% )    	(18x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002568s |  0.00% |  0.00% )   ( 0.002941s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002281s |  0.00% |  0.00% )   ( 0.002616s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.002652s |  0.00% |  0.00% )   ( 0.002999s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004867s |  0.00% |  0.02% )   ( 0.004934s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p26\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p26_PID})
│  │  │  1417.3.0:     	( 18.683396s |  1.67% |  3.33% )   ( 17.607375s |  1.72% |  3.46% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p27 p27_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001172s |  0.00% |  0.00% )   ( 0.001201s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p27 p27_PID (&)
│  │  │  │  146.4.0:   	( 18.682082s |  1.67% | 99.99% )   ( 17.606007s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000214s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.PQPdY2"
│  │  │  │  │  12.5.0: 	( 0.000204s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p27
│  │  │  │  │  16.5.0: 	( 0.033317s |  0.00% |  0.17% )   ( 0.033202s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.031518s |  0.00% |  0.16% )   ( 0.031408s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 908193 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.032152s |  0.00% |  0.17% )   ( 0.032035s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 908193 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029108s |  0.00% |  0.15% )   ( 0.029004s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 908193 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.030987s |  0.00% |  0.16% )   ( 0.030883s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003027s |  0.00% |  0.00% )   ( 0.003411s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002880s |  0.00% |  0.00% )   ( 0.003240s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000168s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.PQPdY2"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003471s |  0.00% |  0.00% )   ( 0.003870s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p27
│  │  │  │  │  27.5.0: 	( 0.266415s |  0.02% |  0.07% )   ( 0.004764s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003004s |  0.00% |  0.00% )   ( 0.003367s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003006s |  0.00% |  0.00% )   ( 0.003447s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002701s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002980s |  0.00% |  0.00% )   ( 0.003387s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.025132s |  0.00% |  0.00% )   ( 0.022447s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.002644s |  0.00% |  0.00% )   ( 0.003008s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.002715s |  0.00% |  0.00% )   ( 0.003101s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.002916s |  0.00% |  0.00% )   ( 0.003291s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.003293s |  0.00% |  0.00% )   ( 0.003712s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.PQPdY2"/.wait/p27
│  │  │  │  │  52.5.0: 	( 0.002773s |  0.00% |  0.00% )   ( 0.003167s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.002751s |  0.00% |  0.00% )   ( 0.003140s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000161s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 18.178819s |  1.62% |  5.12% )   ( 17.361275s |  1.70% |  5.18% )    	(19x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002358s |  0.00% |  0.01% )   ( 0.002721s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.178338s |  0.10% |  6.48% )   ( 1.164993s |  0.11% |  6.71% )    	(19x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.209437s |  0.19% | 12.15% )   ( 2.137777s |  0.20% | 12.31% )    	(19x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.731771s |  0.15% |  9.52% )   ( 1.668260s |  0.16% |  9.60% )    	(19x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.133112s |  0.19% | 11.73% )   ( 2.063567s |  0.20% | 11.88% )    	(19x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.629112s |  0.14% |  8.96% )   ( 1.580467s |  0.15% |  9.10% )    	(19x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.065938s |  0.09% |  5.86% )   ( 1.028821s |  0.10% |  5.92% )    	(19x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.488128s |  0.04% |  2.68% )   ( 0.463172s |  0.04% |  2.66% )    	(19x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.140793s |  0.10% |  6.27% )   ( 1.110353s |  0.10% |  6.39% )    	(19x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.440150s |  0.03% |  2.42% )   ( 0.395380s |  0.03% |  2.27% )    	(19x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.536763s |  0.13% |  8.45% )   ( 1.401660s |  0.13% |  8.07% )    	(19x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.624551s |  0.32% | 19.93% )   ( 3.459963s |  0.33% | 19.92% )    	(19x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.511067s |  0.04% |  2.81% )   ( 0.455280s |  0.04% |  2.62% )    	(19x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.487301s |  0.04% |  2.68% )   ( 0.428861s |  0.04% |  2.47% )    	(19x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002774s |  0.00% |  0.00% )   ( 0.003155s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.002572s |  0.00% |  0.00% )   ( 0.002928s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.002861s |  0.00% |  0.00% )   ( 0.003233s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.006833s |  0.00% |  0.03% )   ( 0.006853s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.PQPdY2"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.PQPdY2"/.run/p27\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000142s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p27_PID})
│  │  │  1419.3.0:     	( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1420.3.0:     	( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1421.3.0:     	( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1424.3.0:     	( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1429.3.0:     	( 0.001309s |  0.00% |  0.00% )   ( 0.001322s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1434.3.0:     	( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1496.3.0:     	( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1499.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1506.3.0:     	( 24.855815s |  2.22% |  4.44% )   ( 0.001644s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1510.3.0:     	( 0.000280s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1515.3.0:     	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1521.2.0:        	( 0.000330s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -335.2.0:        	( 0.005846s |  0.00% |  0.00% )   ( 0.002263s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.PQPdY2" 2>/dev/null'

2.0.0:                 	( 557.207467s | 49.88% )            ( 509.463753s | 50.02% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
├─ 1.1.0:              	( 0.000642s |  0.00% |  0.00% )   ( 0.000305s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  603.1.0:            	( 557.206825s | 49.88% | 99.99% )   ( 509.463448s | 50.02% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 603.2.0:         	( 0.027016s |  0.00% |  0.00% )   ( 0.026961s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  128.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  131.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  132.2.0:         	( 0.000123s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  133.2.0:         	( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  134.2.0:         	( 0.000082s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  135.2.0:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  140.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  143.2.0:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  143.2.1:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  144.2.0:         	( 0.000122s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
│  │  144.2.1:         	( 0.000121s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
│  │  144.2.2:         	( 0.000127s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
│  │  145.2.0:         	( 0.000105s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
│  │  272.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
│  │  272.2.1:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
│  │  336.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
│  │  337.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
│  │  341.2.0:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  350.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  350.2.1:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  350.2.2:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  350.2.3:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  352.2.0:         	( 0.001320s |  0.00% |  0.00% )   ( 0.001004s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
│  │  352.2.1:         	( 0.006709s |  0.00% |  0.00% )   ( 0.006709s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 352.3.0:      	( 0.006709s |  0.00% |100.00% )   ( 0.006709s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
│  │  353.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  355.2.0:         	( 0.001298s |  0.00% |  0.00% )   ( 0.001379s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  356.2.0:         	( 0.000089s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  358.2.0:         	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  358.2.1:         	( 0.017142s |  0.00% |  0.00% )   ( 0.001000s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  366.2.0:         	( 557.142885s | 49.87% | 99.98% )   ( 509.419190s | 50.02% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 366.3.0:      	( 0.000100s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1520.3.0:     	( 0.001619s |  0.00% |  0.00% )   ( 0.001951s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1520.4.0:  	( 0.001619s |  0.00% |100.00% )   ( 0.001951s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  381.3.0:      	( 0.000108s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  382.3.0:      	( 0.000090s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  383.3.0:      	( 0.000107s |  0.00% |  0.00% )   ( 0.005408s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  385.3.0:      	( 0.000282s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  387.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  388.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  389.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  391.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  393.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  396.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  398.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  399.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  404.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  405.3.0:      	( 0.003262s |  0.00% |  0.00% )   ( 0.003316s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  405.3.1:      	( 0.000110s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 405.4.0:   	( 0.000110s |  0.00% |100.00% )   ( 0.000127s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  405.3.2:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  409.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  414.3.0:      	( 0.000086s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  416.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  418.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  419.3.0:      	( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  423.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  485.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  485.3.1:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  486.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  486.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  490.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  495.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  499.3.0:      	( 0.000839s |  0.00% |  0.00% )   ( 0.000977s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000059s |  0.00% |  7.03% )   ( 0.000070s |  0.00% |  7.16% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  12.4.0:    	( 0.000069s |  0.00% |  8.22% )   ( 0.000081s |  0.00% |  8.29% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  13.4.0:    	( 0.000066s |  0.00% |  7.86% )   ( 0.000079s |  0.00% |  8.08% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  15.4.0:    	( 0.000065s |  0.00% |  7.74% )   ( 0.000076s |  0.00% |  7.77% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  16.4.0:    	( 0.000066s |  0.00% |  7.86% )   ( 0.000077s |  0.00% |  7.88% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  17.4.0:    	( 0.000079s |  0.00% |  9.41% )   ( 0.000089s |  0.00% |  9.10% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  19.4.0:    	( 0.000062s |  0.00% |  7.38% )   ( 0.000075s |  0.00% |  7.67% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  19.4.1:    	( 0.000113s |  0.00% | 13.46% )   ( 0.000126s |  0.00% | 12.89% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  21.4.0:    	( 0.000064s |  0.00% |  7.62% )   ( 0.000076s |  0.00% |  7.77% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  22.4.0:    	( 0.000061s |  0.00% |  7.27% )   ( 0.000074s |  0.00% |  7.57% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  22.4.1:    	( 0.000067s |  0.00% |  7.98% )   ( 0.000076s |  0.00% |  7.77% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 32.4.0:    	( 0.000068s |  0.00% |  8.10% )   ( 0.000078s |  0.00% |  7.98% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  501.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  503.3.0:      	( 0.006482s |  0.00% |  0.00% )   ( 0.006592s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  503.3.1:      	( 0.002222s |  0.00% |  0.00% )   ( 0.002333s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 503.4.0:   	( 0.000257s |  0.00% | 11.56% )   ( 0.000275s |  0.00% | 11.78% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 503.4.1:   	( 0.001965s |  0.00% | 88.43% )   ( 0.002058s |  0.00% | 88.21% )    	(1x)	│  │  │  └─nproc
│  │  │  504.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  505.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  505.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  505.3.2:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  507.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  517.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  519.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  522.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  522.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  522.3.2:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  524.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  527.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.0:      	( 0.000162s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  533.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.2:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  536.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  539.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  540.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  541.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  542.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
│  │  │  543.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  543.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
│  │  │  544.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
│  │  │  545.3.0:      	( 0.000104s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
│  │  │  546.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
│  │  │  547.3.0:      	( 0.003110s |  0.00% |  0.00% )   ( 0.004250s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep -qF 'coreutils'
│  │  │  548.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
│  │  │  555.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  556.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  557.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
│  │  │  575.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  584.3.0:      	( 0.003068s |  0.00% |  0.00% )   ( 0.003193s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  584.3.1:      	( 0.000083s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 584.4.0:   	( 0.000083s |  0.00% |100.00% )   ( 0.000099s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  585.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  588.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  594.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  596.3.0:      	( 0.002733s |  0.00% |  0.00% )   ( 0.002806s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  597.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  600.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  602.3.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  633.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  635.3.0:      	( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  640.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  642.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  646.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  656.3.0:      	( 0.000579s |  0.00% |  0.00% )   ( 0.000590s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  662.3.0:      	( 0.092564s |  0.00% |  0.01% )   ( 0.092428s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 662.4.0:   	( 0.000082s |  0.00% |  0.08% )   ( 0.000097s |  0.00% |  0.10% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  664.4.0:   	( 0.013704s |  0.00% | 14.80% )   ( 0.013673s |  0.00% | 14.79% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  665.4.0:   	( 0.014958s |  0.00% | 16.15% )   ( 0.014933s |  0.00% | 16.15% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  666.4.0:   	( 0.014934s |  0.00% | 16.13% )   ( 0.014902s |  0.00% | 16.12% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  667.4.0:   	( 0.014903s |  0.00% | 16.10% )   ( 0.014862s |  0.00% | 16.07% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  668.4.0:   	( 0.014756s |  0.00% | 15.94% )   ( 0.014733s |  0.00% | 15.93% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  670.4.0:   	( 0.000064s |  0.00% |  0.06% )   ( 0.000075s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  671.4.0:   	( 0.018922s |  0.00% | 20.44% )   ( 0.018882s |  0.00% | 20.42% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  676.4.0:   	( 0.000103s |  0.00% |  0.11% )   ( 0.000111s |  0.00% |  0.12% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  677.4.0:   	( 0.000070s |  0.00% |  0.07% )   ( 0.000081s |  0.00% |  0.08% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 678.4.0:   	( 0.000068s |  0.00% |  0.07% )   ( 0.000079s |  0.00% |  0.08% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  686.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  691.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  733.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  737.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  739.3.0:      	( 0.000452s |  0.00% |  0.00% )   ( 0.000470s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  749.3.0:      	( 4.621599s |  0.41% |  0.82% )   ( 1.782808s |  0.17% |  0.34% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 749.4.0:   	( 0.000212s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  751.4.0:   	( 0.016292s |  0.00% |  0.35% )   ( 0.016266s |  0.00% |  0.91% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  752.4.0:   	( 0.014986s |  0.00% |  0.32% )   ( 0.014957s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  753.4.0:   	( 0.014916s |  0.00% |  0.32% )   ( 0.014885s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  754.4.0:   	( 0.014817s |  0.00% |  0.32% )   ( 0.014787s |  0.00% |  0.82% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  755.4.0:   	( 0.014833s |  0.00% |  0.32% )   ( 0.014811s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  757.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  758.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  759.4.0:   	( 0.000083s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  761.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  763.4.0:   	( 0.089419s |  0.00% |  0.00% )   ( 0.102580s |  0.01% |  0.00% )    	(678x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  765.4.0:   	( 3.124962s |  0.27% |  0.09% )   ( 0.118602s |  0.01% |  0.00% )    	(677x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  765.4.1:   	( 0.001629s |  0.00% |  0.00% )   ( 0.001863s |  0.00% |  0.00% )    	(11x)	│  │  │  │ continue
│  │  │  │  767.4.0:   	( 0.086779s |  0.00% |  0.00% )   ( 0.099606s |  0.00% |  0.00% )    	(666x)	│  │  │  │ case ${REPLY} in
│  │  │  │  781.4.0:   	( 0.090754s |  0.00% |  0.00% )   ( 0.100574s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.0:   	( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  785.4.0:   	( 0.000178s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  791.4.0:   	( 0.086677s |  0.00% |  0.00% )   ( 0.099578s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  792.4.0:   	( 0.089364s |  0.00% |  0.00% )   ( 0.101896s |  0.01% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  793.4.0:   	( 0.090090s |  0.00% |  0.00% )   ( 0.103091s |  0.01% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  800.4.0:   	( 0.085784s |  0.00% |  0.00% )   ( 0.098748s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  800.4.1:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  802.4.0:   	( 0.086607s |  0.00% |  0.00% )   ( 0.099613s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  804.4.0:   	( 0.086319s |  0.00% |  0.00% )   ( 0.099140s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  806.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  808.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  809.4.0:   	( 0.007237s |  0.00% |  0.15% )   ( 0.007792s |  0.00% |  0.43% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  809.4.1:   	( 0.003408s |  0.00% |  0.07% )   ( 0.003880s |  0.00% |  0.21% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 809.5.0:  	( 0.003408s |  0.00% |100.00% )   ( 0.003880s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  810.4.0:   	( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  811.4.0:   	( 0.000085s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  814.4.0:   	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  816.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  818.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  818.4.1:   	( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  818.4.2:   	( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  820.4.0:   	( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  823.4.0:   	( 0.000124s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  825.4.0:   	( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  829.4.0:   	( 0.086512s |  0.00% |  0.00% )   ( 0.099131s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  830.4.0:   	( 0.084879s |  0.00% |  0.00% )   ( 0.097758s |  0.00% |  0.00% )    	(666x)	│  │  │  │ case ${nWait} in
│  │  │  │  841.4.0:   	( 0.083001s |  0.00% |  0.00% )   ( 0.095528s |  0.00% |  0.00% )    	(645x)	│  │  │  │ ((nWait--))
│  │  │  │  846.4.0:   	( 0.089602s |  0.00% |  0.00% )   ( 0.102612s |  0.01% |  0.00% )    	(666x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  781.4.1:   	( 0.086787s |  0.00% |  0.00% )   ( 0.099486s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  800.4.1:   	( 0.086554s |  0.00% |  0.00% )   ( 0.099597s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  832.4.0:   	( 0.002834s |  0.00% |  0.00% )   ( 0.003185s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  833.4.0:   	( 0.002668s |  0.00% |  0.00% )   ( 0.003080s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  834.4.0:   	( 0.076060s |  0.00% |  0.07% )   ( 0.050128s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  835.4.0:   	( 0.002941s |  0.00% |  0.00% )   ( 0.003433s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  836.4.0:   	( 0.002907s |  0.00% |  0.00% )   ( 0.003324s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  838.4.0:   	( 0.002861s |  0.00% |  0.00% )   ( 0.003281s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  847.4.0:   	( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  848.4.0:   	( 0.000134s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  849.4.0:   	( 0.000121s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  763.4.1:   	( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  763.4.2:   	( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -335.4.0:  	( 0.006486s |  0.00% |  0.14% )   ( 0.006567s |  0.00% |  0.36% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/pAuto'
│  │  │  857.3.0:      	( 0.000082s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  858.3.0:      	( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  894.3.0:      	( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1363.3.0:     	( 0.053032s |  0.00% |  0.00% )   ( 0.053104s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1380.3.0:     	( 0.004821s |  0.00% |  0.00% )   ( 0.005576s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1380.4.0:  	( 0.000141s |  0.00% |  2.92% )   ( 0.000162s |  0.00% |  2.90% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1381.4.0:  	( 0.000084s |  0.00% |  1.74% )   ( 0.000098s |  0.00% |  1.75% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1381.4.1:  	( 0.000078s |  0.00% |  1.61% )   ( 0.000090s |  0.00% |  1.61% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1389.4.0:  	( 0.000216s |  0.00% |  4.48% )   ( 0.000229s |  0.00% |  4.10% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1390.4.0:  	( 0.000070s |  0.00% |  1.45% )   ( 0.000078s |  0.00% |  1.39% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1462.4.0:  	( 0.000063s |  0.00% |  1.30% )   ( 0.000074s |  0.00% |  1.32% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1465.4.0:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000078s |  0.00% |  1.39% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1466.4.0:  	( 0.000062s |  0.00% |  1.28% )   ( 0.000074s |  0.00% |  1.32% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1467.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1467.4.1:  	( 0.000077s |  0.00% |  1.59% )   ( 0.000088s |  0.00% |  1.57% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1468.4.0:  	( 0.000065s |  0.00% |  1.34% )   ( 0.000077s |  0.00% |  1.38% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1469.4.0:  	( 0.000064s |  0.00% |  1.32% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1469.4.1:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1470.4.0:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1471.4.0:  	( 0.000060s |  0.00% |  1.24% )   ( 0.000072s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1471.4.1:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1472.4.0:  	( 0.000063s |  0.00% |  1.30% )   ( 0.000074s |  0.00% |  1.32% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1472.4.1:  	( 0.000064s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1472.4.2:  	( 0.000066s |  0.00% |  1.36% )   ( 0.000078s |  0.00% |  1.39% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1474.4.0:  	( 0.000069s |  0.00% |  1.43% )   ( 0.000081s |  0.00% |  1.45% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1475.4.0:  	( 0.000074s |  0.00% |  1.53% )   ( 0.000084s |  0.00% |  1.50% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1475.4.1:  	( 0.000063s |  0.00% |  1.30% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1475.4.2:  	( 0.000093s |  0.00% |  1.92% )   ( 0.000105s |  0.00% |  1.88% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1532.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000080s |  0.00% |  1.43% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1532.4.1:  	( 0.000075s |  0.00% |  1.55% )   ( 0.000086s |  0.00% |  1.54% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1532.4.2:  	( 0.000070s |  0.00% |  1.45% )   ( 0.000081s |  0.00% |  1.45% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1533.4.0:  	( 0.000070s |  0.00% |  1.45% )   ( 0.000081s |  0.00% |  1.45% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1546.4.0:  	( 0.000087s |  0.00% |  1.80% )   ( 0.000099s |  0.00% |  1.77% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1547.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000076s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1550.4.0:  	( 0.000078s |  0.00% |  1.61% )   ( 0.000090s |  0.00% |  1.61% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1561.4.0:  	( 0.000076s |  0.00% |  1.57% )   ( 0.000088s |  0.00% |  1.57% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1562.4.0:  	( 0.000064s |  0.00% |  1.32% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1562.4.1:  	( 0.000092s |  0.00% |  1.90% )   ( 0.000098s |  0.00% |  1.75% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1563.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000080s |  0.00% |  1.43% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1564.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1569.4.0:  	( 0.000083s |  0.00% |  1.72% )   ( 0.000094s |  0.00% |  1.68% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1570.4.0:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000093s |  0.00% |  1.92% )   ( 0.000104s |  0.00% |  1.86% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1575.4.0:  	( 0.000064s |  0.00% |  1.32% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1575.4.1:  	( 0.000079s |  0.00% |  1.63% )   ( 0.000090s |  0.00% |  1.61% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1580.4.0:  	( 0.000063s |  0.00% |  1.30% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1580.4.1:  	( 0.000072s |  0.00% |  1.49% )   ( 0.000084s |  0.00% |  1.50% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1581.4.0:  	( 0.000063s |  0.00% |  1.30% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1581.4.1:  	( 0.000076s |  0.00% |  1.57% )   ( 0.000104s |  0.00% |  1.86% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1582.4.0:  	( 0.000064s |  0.00% |  1.32% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1582.4.1:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1590.4.0:  	( 0.000061s |  0.00% |  1.26% )   ( 0.000073s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1590.4.1:  	( 0.000085s |  0.00% |  1.76% )   ( 0.000097s |  0.00% |  1.73% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1591.4.0:  	( 0.000062s |  0.00% |  1.28% )   ( 0.000073s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1591.4.1:  	( 0.000082s |  0.00% |  1.70% )   ( 0.000093s |  0.00% |  1.66% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1592.4.0:  	( 0.000064s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1593.4.0:  	( 0.000087s |  0.00% |  1.80% )   ( 0.000098s |  0.00% |  1.75% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1594.4.0:  	( 0.000060s |  0.00% |  1.24% )   ( 0.000072s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1601.4.0:  	( 0.000072s |  0.00% |  1.49% )   ( 0.000083s |  0.00% |  1.48% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1604.4.0:  	( 0.000062s |  0.00% |  1.28% )   ( 0.000073s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1607.4.0:  	( 0.000060s |  0.00% |  1.24% )   ( 0.000071s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1608.4.0:  	( 0.000083s |  0.00% |  1.72% )   ( 0.000095s |  0.00% |  1.70% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1613.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1625.4.0:  	( 0.000065s |  0.00% |  1.34% )   ( 0.000075s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1626.4.0:  	( 0.000061s |  0.00% |  1.26% )   ( 0.000072s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1626.4.1:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1627.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000078s |  0.00% |  1.39% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1628.4.0:  	( 0.000068s |  0.00% |  1.41% )   ( 0.000079s |  0.00% |  1.41% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1629.4.0:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000077s |  0.00% |  1.38% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1634.4.0:  	( 0.000094s |  0.00% |  1.94% )   ( 0.000106s |  0.00% |  1.90% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1368.3.0:     	( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1373.3.0:     	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1378.3.0:     	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1380.3.0:     	( 0.015078s |  0.00% |  0.00% )   ( 0.015050s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1385.3.0:     	( 0.015165s |  0.00% |  0.00% )   ( 0.015142s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1390.3.0:     	( 0.014986s |  0.00% |  0.00% )   ( 0.116492s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1395.3.0:     	( 0.014946s |  0.00% |  0.00% )   ( 0.014911s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1397.3.0:     	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1398.3.0:     	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1400.3.0:     	( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1411.3.0:     	( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1414.3.0:     	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1415.3.0:     	( 0.000066s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1415.3.1:     	( 0.002878s |  0.00% |  0.00% )   ( 0.003316s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1416.3.0:     	( 0.002772s |  0.00% |  0.00% )   ( 0.003195s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1417.3.0:     	( 18.691531s |  1.67% |  3.35% )   ( 17.533974s |  1.72% |  3.44% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000661s |  0.00% |  0.00% )   ( 0.000678s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  146.4.0:   	( 18.690769s |  1.67% | 99.99% )   ( 17.533178s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000337s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000346s |  0.00% |  0.00% )   ( 0.000390s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p0
│  │  │  │  │  16.5.0: 	( 0.014875s |  0.00% |  0.07% )   ( 0.014851s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.014813s |  0.00% |  0.07% )   ( 0.014793s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.014919s |  0.00% |  0.07% )   ( 0.014895s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015202s |  0.00% |  0.08% )   ( 0.015177s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015129s |  0.00% |  0.08% )   ( 0.015107s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004516s |  0.00% |  0.00% )   ( 0.005108s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004171s |  0.00% |  0.00% )   ( 0.004760s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000226s |  0.00% |  0.00% )   ( 0.000256s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000186s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000182s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004962s |  0.00% |  0.00% )   ( 0.005545s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p0
│  │  │  │  │  27.5.0: 	( 0.228657s |  0.02% |  0.04% )   ( 0.006485s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004375s |  0.00% |  0.00% )   ( 0.004974s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004320s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003763s |  0.00% |  0.00% )   ( 0.004344s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003991s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.031982s |  0.00% |  0.00% )   ( 0.032428s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.009972s |  0.00% |  0.00% )   ( 0.004703s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004443s |  0.00% |  0.00% )   ( 0.004992s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p0
│  │  │  │  │  40.5.0: 	( 0.003688s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003660s |  0.00% |  0.00% )   ( 0.004206s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000205s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000183s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  65.5.0: 	( 18.280300s |  1.63% |  3.49% )   ( 17.342192s |  1.70% |  3.53% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003438s |  0.00% |  0.01% )   ( 0.003968s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.252288s |  0.11% |  6.85% )   ( 1.191451s |  0.11% |  6.87% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.076156s |  0.18% | 11.35% )   ( 2.017632s |  0.19% | 11.63% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.824744s |  0.16% |  9.98% )   ( 1.714696s |  0.16% |  9.88% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.099529s |  0.18% | 11.48% )   ( 2.031554s |  0.19% | 11.71% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.739417s |  0.15% |  9.51% )   ( 1.650596s |  0.16% |  9.51% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.170113s |  0.10% |  6.40% )   ( 1.067791s |  0.10% |  6.15% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.667689s |  0.05% |  3.65% )   ( 0.582626s |  0.05% |  3.35% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.212514s |  0.10% |  6.63% )   ( 1.107122s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.562262s |  0.05% |  3.07% )   ( 0.511185s |  0.05% |  2.94% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.440908s |  0.12% |  7.88% )   ( 1.403650s |  0.13% |  8.09% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.038680s |  0.27% | 16.62% )   ( 2.913569s |  0.28% | 16.80% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.598373s |  0.05% |  3.27% )   ( 0.579557s |  0.05% |  3.34% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.594189s |  0.05% |  3.25% )   ( 0.566795s |  0.05% |  3.26% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  62.5.1: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.003869s |  0.00% |  0.00% )   ( 0.004406s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003529s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003817s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009783s |  0.00% |  0.05% )   ( 0.009843s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000101s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1415.3.0:     	( 0.002619s |  0.00% |  0.00% )   ( 0.003029s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1417.3.0:     	( 17.661834s |  1.58% |  3.17% )   ( 16.831489s |  1.65% |  3.30% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p1 p1_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000604s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p1 p1_PID (&)
│  │  │  │  146.4.0:   	( 17.661142s |  1.58% | 99.99% )   ( 16.830767s |  1.65% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000164s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p1
│  │  │  │  │  16.5.0: 	( 0.016513s |  0.00% |  0.09% )   ( 0.016483s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.014810s |  0.00% |  0.08% )   ( 0.014787s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015116s |  0.00% |  0.08% )   ( 0.015094s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015172s |  0.00% |  0.08% )   ( 0.015147s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015148s |  0.00% |  0.08% )   ( 0.015124s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004346s |  0.00% |  0.00% )   ( 0.004878s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003959s |  0.00% |  0.00% )   ( 0.004511s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000175s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004700s |  0.00% |  0.00% )   ( 0.005271s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p1
│  │  │  │  │  27.5.0: 	( 0.096064s |  0.00% |  0.02% )   ( 0.005346s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003911s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003796s |  0.00% |  0.00% )   ( 0.004367s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003715s |  0.00% |  0.00% )   ( 0.004257s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.006950s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.032865s |  0.00% |  0.00% )   ( 0.030329s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.007164s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004682s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p1
│  │  │  │  │  40.5.0: 	( 0.004829s |  0.00% |  0.00% )   ( 0.004307s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003526s |  0.00% |  0.00% )   ( 0.004058s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  65.5.0: 	( 17.381137s |  1.55% |  3.78% )   ( 16.644013s |  1.63% |  3.80% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003334s |  0.00% |  0.01% )   ( 0.003774s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.130658s |  0.10% |  6.50% )   ( 1.084241s |  0.10% |  6.51% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.916515s |  0.17% | 11.02% )   ( 1.881062s |  0.18% | 11.30% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.723378s |  0.15% |  9.91% )   ( 1.595416s |  0.15% |  9.58% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.010646s |  0.17% | 11.56% )   ( 1.902133s |  0.18% | 11.42% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.607718s |  0.14% |  9.24% )   ( 1.528981s |  0.15% |  9.18% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.084800s |  0.09% |  6.24% )   ( 1.001216s |  0.09% |  6.01% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.569884s |  0.05% |  3.27% )   ( 0.547092s |  0.05% |  3.28% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.084138s |  0.09% |  6.23% )   ( 1.057326s |  0.10% |  6.35% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.504114s |  0.04% |  2.90% )   ( 0.480802s |  0.04% |  2.88% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.481624s |  0.13% |  8.52% )   ( 1.391891s |  0.13% |  8.36% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.127190s |  0.27% | 17.99% )   ( 3.072532s |  0.30% | 18.46% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.577347s |  0.05% |  3.32% )   ( 0.558377s |  0.05% |  3.35% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.559791s |  0.05% |  3.22% )   ( 0.539170s |  0.05% |  3.23% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  62.5.1: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.003887s |  0.00% |  0.00% )   ( 0.004329s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003353s |  0.00% |  0.00% )   ( 0.003862s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003698s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  41.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  51.5.0: 	( 0.000171s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  53.5.0: 	( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit
│  │  │  │  │  54.5.0: 	( 0.000211s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p* 1>&21
│  │  │  │  │  55.5.0: 	( 0.000157s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009678s |  0.00% |  0.05% )   ( 0.009213s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p1\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000088s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p1_PID})
│  │  │  1417.3.0:     	( 17.513960s |  1.56% |  3.14% )   ( 16.453372s |  1.61% |  3.22% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p2 p2_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000664s |  0.00% |  0.00% )   ( 0.000676s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p2 p2_PID (&)
│  │  │  │  146.4.0:   	( 17.513206s |  1.56% | 99.99% )   ( 16.452590s |  1.61% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000300s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000321s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p2
│  │  │  │  │  16.5.0: 	( 0.014869s |  0.00% |  0.08% )   ( 0.014847s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015043s |  0.00% |  0.08% )   ( 0.015022s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015182s |  0.00% |  0.08% )   ( 0.015159s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015174s |  0.00% |  0.08% )   ( 0.015150s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015189s |  0.00% |  0.08% )   ( 0.015166s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004874s |  0.00% |  0.00% )   ( 0.005506s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004412s |  0.00% |  0.00% )   ( 0.005038s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000228s |  0.00% |  0.00% )   ( 0.000258s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000184s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000183s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005397s |  0.00% |  0.00% )   ( 0.006058s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p2
│  │  │  │  │  27.5.0: 	( 0.085587s |  0.00% |  0.01% )   ( 0.006074s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004576s |  0.00% |  0.00% )   ( 0.005202s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004437s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.004228s |  0.00% |  0.00% )   ( 0.004847s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004510s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.038314s |  0.00% |  0.00% )   ( 0.036983s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.005907s |  0.00% |  0.00% )   ( 0.005278s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.005351s |  0.00% |  0.00% )   ( 0.005901s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p2
│  │  │  │  │  40.5.0: 	( 0.004110s |  0.00% |  0.00% )   ( 0.004696s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.004120s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000216s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000194s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  65.5.0: 	( 17.238406s |  1.54% |  3.28% )   ( 16.251172s |  1.59% |  3.29% )    	(30x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003769s |  0.00% |  0.02% )   ( 0.004370s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.221240s |  0.10% |  7.08% )   ( 1.113197s |  0.10% |  6.84% )    	(30x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.853019s |  0.16% | 10.74% )   ( 1.785659s |  0.17% | 10.98% )    	(30x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.658150s |  0.14% |  9.61% )   ( 1.552219s |  0.15% |  9.55% )    	(30x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.922678s |  0.17% | 11.15% )   ( 1.762871s |  0.17% | 10.84% )    	(30x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.592890s |  0.14% |  9.24% )   ( 1.495146s |  0.14% |  9.20% )    	(30x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.102987s |  0.09% |  6.39% )   ( 0.996850s |  0.09% |  6.13% )    	(30x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.632323s |  0.05% |  3.66% )   ( 0.601343s |  0.05% |  3.70% )    	(30x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.074615s |  0.09% |  6.23% )   ( 1.033693s |  0.10% |  6.36% )    	(30x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.613078s |  0.05% |  3.55% )   ( 0.541998s |  0.05% |  3.33% )    	(30x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.450476s |  0.12% |  8.41% )   ( 1.377215s |  0.13% |  8.47% )    	(30x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.806797s |  0.25% | 16.28% )   ( 2.753204s |  0.27% | 16.94% )    	(30x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.663029s |  0.05% |  3.84% )   ( 0.621458s |  0.06% |  3.82% )    	(30x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.643355s |  0.05% |  3.73% )   ( 0.611949s |  0.06% |  3.76% )    	(30x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  62.5.1: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.004163s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003985s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.004367s |  0.00% |  0.00% )   ( 0.004941s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008975s |  0.00% |  0.05% )   ( 0.009041s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p2\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000090s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p2_PID})
│  │  │  1417.3.0:     	( 18.124863s |  1.62% |  3.25% )   ( 17.476824s |  1.71% |  3.43% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p3 p3_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000603s |  0.00% |  0.00% )   ( 0.000617s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p3 p3_PID (&)
│  │  │  │  146.4.0:   	( 18.124170s |  1.62% | 99.99% )   ( 17.476101s |  1.71% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000355s |  0.00% |  0.00% )   ( 0.000401s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000348s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p3
│  │  │  │  │  16.5.0: 	( 0.015070s |  0.00% |  0.08% )   ( 0.014993s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015243s |  0.00% |  0.08% )   ( 0.015163s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015251s |  0.00% |  0.08% )   ( 0.015173s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015295s |  0.00% |  0.08% )   ( 0.015219s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015272s |  0.00% |  0.08% )   ( 0.015236s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003737s |  0.00% |  0.00% )   ( 0.004222s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003208s |  0.00% |  0.00% )   ( 0.003639s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000240s |  0.00% |  0.00% )   ( 0.000268s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000190s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000191s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003960s |  0.00% |  0.00% )   ( 0.004425s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p3
│  │  │  │  │  27.5.0: 	( 0.098956s |  0.00% |  0.02% )   ( 0.004779s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003391s |  0.00% |  0.00% )   ( 0.003868s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003129s |  0.00% |  0.00% )   ( 0.003595s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002913s |  0.00% |  0.00% )   ( 0.003331s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003122s |  0.00% |  0.00% )   ( 0.003560s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.025266s |  0.00% |  0.00% )   ( 0.025537s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.003323s |  0.00% |  0.00% )   ( 0.003746s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.006767s |  0.00% |  0.00% )   ( 0.004178s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p3
│  │  │  │  │  40.5.0: 	( 0.003022s |  0.00% |  0.00% )   ( 0.003445s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.002977s |  0.00% |  0.00% )   ( 0.003423s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000151s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  65.5.0: 	( 17.861741s |  1.59% |  4.47% )   ( 17.307515s |  1.69% |  4.50% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002730s |  0.00% |  0.01% )   ( 0.003162s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.145549s |  0.10% |  6.41% )   ( 1.138213s |  0.11% |  6.57% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.081832s |  0.18% | 11.65% )   ( 2.048639s |  0.20% | 11.83% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.765120s |  0.15% |  9.88% )   ( 1.624644s |  0.15% |  9.38% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.074847s |  0.18% | 11.61% )   ( 2.022309s |  0.19% | 11.68% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.637260s |  0.14% |  9.16% )   ( 1.611585s |  0.15% |  9.31% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.069349s |  0.09% |  5.98% )   ( 1.050492s |  0.10% |  6.06% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.527224s |  0.04% |  2.95% )   ( 0.503111s |  0.04% |  2.90% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.198881s |  0.10% |  6.71% )   ( 1.125798s |  0.11% |  6.50% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.448429s |  0.04% |  2.51% )   ( 0.425392s |  0.04% |  2.45% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.478626s |  0.13% |  8.27% )   ( 1.416444s |  0.13% |  8.18% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.458752s |  0.30% | 19.36% )   ( 3.378134s |  0.33% | 19.51% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.494049s |  0.04% |  2.76% )   ( 0.485741s |  0.04% |  2.80% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.479093s |  0.04% |  2.68% )   ( 0.473851s |  0.04% |  2.73% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  62.5.1: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.003034s |  0.00% |  0.00% )   ( 0.003477s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.002791s |  0.00% |  0.00% )   ( 0.003214s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.006185s |  0.00% |  0.00% )   ( 0.003506s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008565s |  0.00% |  0.04% )   ( 0.008633s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p3\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000090s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p3_PID})
│  │  │  1417.3.0:     	( 18.197505s |  1.62% |  3.26% )   ( 17.601772s |  1.72% |  3.45% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000615s |  0.00% |  0.00% )   ( 0.000631s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  146.4.0:   	( 18.196795s |  1.62% | 99.99% )   ( 17.601030s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000340s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000345s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p4
│  │  │  │  │  16.5.0: 	( 0.015189s |  0.00% |  0.08% )   ( 0.015168s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015188s |  0.00% |  0.08% )   ( 0.015165s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015181s |  0.00% |  0.08% )   ( 0.015157s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015179s |  0.00% |  0.08% )   ( 0.015151s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015153s |  0.00% |  0.08% )   ( 0.015129s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004680s |  0.00% |  0.00% )   ( 0.005251s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004190s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000247s |  0.00% |  0.00% )   ( 0.000275s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000209s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000201s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005297s |  0.00% |  0.00% )   ( 0.005908s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p4
│  │  │  │  │  27.5.0: 	( 0.129122s |  0.01% |  0.02% )   ( 0.005985s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004407s |  0.00% |  0.00% )   ( 0.005007s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004247s |  0.00% |  0.00% )   ( 0.004855s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003940s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004260s |  0.00% |  0.00% )   ( 0.004852s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.032985s |  0.00% |  0.00% )   ( 0.033406s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.007397s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.005098s |  0.00% |  0.00% )   ( 0.005708s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p4
│  │  │  │  │  40.5.0: 	( 0.004186s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.004053s |  0.00% |  0.00% )   ( 0.004670s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000249s |  0.00% |  0.00% )   ( 0.000288s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000234s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  65.5.0: 	( 17.884411s |  1.60% |  3.51% )   ( 17.405910s |  1.70% |  3.53% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003510s |  0.00% |  0.01% )   ( 0.004075s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.231770s |  0.11% |  6.88% )   ( 1.181029s |  0.11% |  6.78% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.029418s |  0.18% | 11.34% )   ( 1.997757s |  0.19% | 11.47% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.711837s |  0.15% |  9.57% )   ( 1.668611s |  0.16% |  9.58% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.985084s |  0.17% | 11.09% )   ( 1.942275s |  0.19% | 11.15% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.636964s |  0.14% |  9.15% )   ( 1.603865s |  0.15% |  9.21% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.101033s |  0.09% |  6.15% )   ( 1.067931s |  0.10% |  6.13% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.601899s |  0.05% |  3.36% )   ( 0.575756s |  0.05% |  3.30% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.124295s |  0.10% |  6.28% )   ( 1.104379s |  0.10% |  6.34% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.523710s |  0.04% |  2.92% )   ( 0.509499s |  0.05% |  2.92% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.495899s |  0.13% |  8.36% )   ( 1.444788s |  0.14% |  8.30% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.212027s |  0.28% | 17.95% )   ( 3.135932s |  0.30% | 18.01% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.637401s |  0.05% |  3.56% )   ( 0.595987s |  0.05% |  3.42% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.589564s |  0.05% |  3.29% )   ( 0.574026s |  0.05% |  3.29% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  62.5.1: 	( 0.000160s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.003992s |  0.00% |  0.00% )   ( 0.004567s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003862s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.004220s |  0.00% |  0.00% )   ( 0.004771s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008318s |  0.00% |  0.04% )   ( 0.008391s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000095s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1417.3.0:     	( 18.131252s |  1.62% |  3.25% )   ( 17.463474s |  1.71% |  3.42% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p5 p5_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000638s |  0.00% |  0.00% )   ( 0.000667s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p5 p5_PID (&)
│  │  │  │  146.4.0:   	( 18.130526s |  1.62% | 99.99% )   ( 17.462703s |  1.71% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000337s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000348s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p5
│  │  │  │  │  16.5.0: 	( 0.015215s |  0.00% |  0.08% )   ( 0.015191s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015178s |  0.00% |  0.08% )   ( 0.015153s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015217s |  0.00% |  0.08% )   ( 0.015190s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015171s |  0.00% |  0.08% )   ( 0.015144s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015134s |  0.00% |  0.08% )   ( 0.015111s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003373s |  0.00% |  0.00% )   ( 0.003798s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002802s |  0.00% |  0.00% )   ( 0.003203s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003562s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p5
│  │  │  │  │  27.5.0: 	( 0.092338s |  0.00% |  0.02% )   ( 0.004326s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002983s |  0.00% |  0.00% )   ( 0.003398s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002830s |  0.00% |  0.00% )   ( 0.003254s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002570s |  0.00% |  0.00% )   ( 0.002945s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002849s |  0.00% |  0.00% )   ( 0.003236s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.022717s |  0.00% |  0.00% )   ( 0.023056s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.002871s |  0.00% |  0.00% )   ( 0.003252s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.003292s |  0.00% |  0.00% )   ( 0.003686s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p5
│  │  │  │  │  40.5.0: 	( 0.002594s |  0.00% |  0.00% )   ( 0.002990s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.002603s |  0.00% |  0.00% )   ( 0.003007s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.885216s |  1.60% |  4.93% )   ( 17.302185s |  1.69% |  4.95% )    	(20x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002610s |  0.00% |  0.01% )   ( 0.003014s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.177445s |  0.10% |  6.58% )   ( 1.133646s |  0.11% |  6.55% )    	(20x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.093873s |  0.18% | 11.70% )   ( 2.053786s |  0.20% | 11.87% )    	(20x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.695747s |  0.15% |  9.48% )   ( 1.665334s |  0.16% |  9.62% )    	(20x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.145796s |  0.19% | 11.99% )   ( 2.079233s |  0.20% | 12.01% )    	(20x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.662829s |  0.14% |  9.29% )   ( 1.611064s |  0.15% |  9.31% )    	(20x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.053564s |  0.09% |  5.89% )   ( 1.019614s |  0.10% |  5.89% )    	(20x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.521478s |  0.04% |  2.91% )   ( 0.479294s |  0.04% |  2.77% )    	(20x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.182520s |  0.10% |  6.61% )   ( 1.110097s |  0.10% |  6.41% )    	(20x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.455680s |  0.04% |  2.54% )   ( 0.407819s |  0.04% |  2.35% )    	(20x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.441034s |  0.12% |  8.05% )   ( 1.400701s |  0.13% |  8.09% )    	(20x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.442575s |  0.30% | 19.24% )   ( 3.421532s |  0.33% | 19.77% )    	(20x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.503477s |  0.04% |  2.81% )   ( 0.472390s |  0.04% |  2.73% )    	(20x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.506588s |  0.04% |  2.83% )   ( 0.444661s |  0.04% |  2.56% )    	(20x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002803s |  0.00% |  0.00% )   ( 0.003185s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.002670s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.005832s |  0.00% |  0.00% )   ( 0.003372s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009237s |  0.00% |  0.05% )   ( 0.009300s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p5\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000088s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p5_PID})
│  │  │  1417.3.0:     	( 23.834788s |  2.13% |  4.27% )   ( 23.426658s |  2.30% |  4.59% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p6 p6_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000631s |  0.00% |  0.00% )   ( 0.000646s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p6 p6_PID (&)
│  │  │  │  146.4.0:   	( 23.834060s |  2.13% | 99.99% )   ( 23.425902s |  2.30% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000327s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000358s |  0.00% |  0.00% )   ( 0.000393s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p6
│  │  │  │  │  16.5.0: 	( 0.015218s |  0.00% |  0.06% )   ( 0.015189s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015178s |  0.00% |  0.06% )   ( 0.015156s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015166s |  0.00% |  0.06% )   ( 0.015139s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015178s |  0.00% |  0.06% )   ( 0.015148s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015154s |  0.00% |  0.06% )   ( 0.015132s |  0.00% |  0.06% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.002967s |  0.00% |  0.00% )   ( 0.003351s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002602s |  0.00% |  0.00% )   ( 0.002994s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003335s |  0.00% |  0.00% )   ( 0.003735s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p6
│  │  │  │  │  27.5.0: 	( 0.092498s |  0.00% |  0.02% )   ( 0.003972s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002805s |  0.00% |  0.00% )   ( 0.003185s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002846s |  0.00% |  0.00% )   ( 0.003236s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002463s |  0.00% |  0.00% )   ( 0.002827s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002733s |  0.00% |  0.00% )   ( 0.003120s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.024353s |  0.00% |  0.00% )   ( 0.021673s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.005803s |  0.00% |  0.00% )   ( 0.003197s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.005994s |  0.00% |  0.00% )   ( 0.003444s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p6
│  │  │  │  │  40.5.0: 	( 0.002394s |  0.00% |  0.00% )   ( 0.002739s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.002334s |  0.00% |  0.00% )   ( 0.002671s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 23.591732s |  2.11% |  5.49% )   ( 23.275421s |  2.28% |  5.51% )    	(18x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002208s |  0.00% |  0.00% )   ( 0.002561s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.669887s |  0.14% |  7.07% )   ( 1.640078s |  0.16% |  7.04% )    	(18x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.871843s |  0.25% | 12.17% )   ( 2.829084s |  0.27% | 12.15% )    	(18x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.160981s |  0.19% |  9.15% )   ( 2.122475s |  0.20% |  9.11% )    	(18x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.853875s |  0.25% | 12.09% )   ( 2.824259s |  0.27% | 12.13% )    	(18x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.138557s |  0.19% |  9.06% )   ( 2.113232s |  0.20% |  9.07% )    	(18x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.522060s |  0.13% |  6.45% )   ( 1.502105s |  0.14% |  6.45% )    	(18x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.549638s |  0.04% |  2.32% )   ( 0.523686s |  0.05% |  2.24% )    	(18x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.581686s |  0.14% |  6.70% )   ( 1.567908s |  0.15% |  6.73% )    	(18x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.443971s |  0.03% |  1.88% )   ( 0.432070s |  0.04% |  1.85% )    	(18x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.866077s |  0.16% |  7.90% )   ( 1.839746s |  0.18% |  7.90% )    	(18x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 4.955370s |  0.44% | 21.00% )   ( 4.930303s |  0.48% | 21.18% )    	(18x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.502533s |  0.04% |  2.13% )   ( 0.495722s |  0.04% |  2.12% )    	(18x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.473046s |  0.04% |  2.00% )   ( 0.452192s |  0.04% |  1.94% )    	(18x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002560s |  0.00% |  0.00% )   ( 0.002916s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.002289s |  0.00% |  0.00% )   ( 0.002629s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.002551s |  0.00% |  0.00% )   ( 0.002881s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004662s |  0.00% |  0.01% )   ( 0.004722s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p6\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p6_PID})
│  │  │  1417.3.0:     	( 17.712819s |  1.58% |  3.17% )   ( 17.039337s |  1.67% |  3.34% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p7 p7_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000636s |  0.00% |  0.00% )   ( 0.000649s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p7 p7_PID (&)
│  │  │  │  146.4.0:   	( 17.712091s |  1.58% | 99.99% )   ( 17.038580s |  1.67% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000337s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000205s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p7
│  │  │  │  │  16.5.0: 	( 0.015280s |  0.00% |  0.08% )   ( 0.015255s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015198s |  0.00% |  0.08% )   ( 0.015173s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015205s |  0.00% |  0.08% )   ( 0.015177s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015181s |  0.00% |  0.08% )   ( 0.015156s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015166s |  0.00% |  0.08% )   ( 0.015143s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004100s |  0.00% |  0.00% )   ( 0.004622s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003827s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004796s |  0.00% |  0.00% )   ( 0.005342s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p7
│  │  │  │  │  27.5.0: 	( 0.076865s |  0.00% |  0.01% )   ( 0.005351s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004005s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003910s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003520s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003667s |  0.00% |  0.00% )   ( 0.004178s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.034265s |  0.00% |  0.00% )   ( 0.031668s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.006982s |  0.00% |  0.00% )   ( 0.004485s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004412s |  0.00% |  0.00% )   ( 0.004958s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p7
│  │  │  │  │  40.5.0: 	( 0.003579s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003533s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.451373s |  1.56% |  3.78% )   ( 16.853346s |  1.65% |  3.80% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003395s |  0.00% |  0.01% )   ( 0.003914s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.226630s |  0.10% |  7.02% )   ( 1.114187s |  0.10% |  6.61% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.944470s |  0.17% | 11.14% )   ( 1.896297s |  0.18% | 11.25% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.629988s |  0.14% |  9.34% )   ( 1.608934s |  0.15% |  9.54% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.952349s |  0.17% | 11.18% )   ( 1.913128s |  0.18% | 11.35% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.594263s |  0.14% |  9.13% )   ( 1.573285s |  0.15% |  9.33% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.036012s |  0.09% |  5.93% )   ( 1.008353s |  0.09% |  5.98% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.568069s |  0.05% |  3.25% )   ( 0.544446s |  0.05% |  3.23% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.093731s |  0.09% |  6.26% )   ( 1.068332s |  0.10% |  6.33% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.549625s |  0.04% |  3.14% )   ( 0.494164s |  0.04% |  2.93% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.493492s |  0.13% |  8.55% )   ( 1.423921s |  0.13% |  8.44% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.139571s |  0.28% | 17.99% )   ( 3.073433s |  0.30% | 18.23% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.601535s |  0.05% |  3.44% )   ( 0.573154s |  0.05% |  3.40% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.618243s |  0.05% |  3.54% )   ( 0.557798s |  0.05% |  3.30% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003740s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003538s |  0.00% |  0.00% )   ( 0.004066s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.009947s |  0.00% |  0.00% )   ( 0.004554s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008744s |  0.00% |  0.04% )   ( 0.008819s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p7\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000092s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p7_PID})
│  │  │  1417.3.0:     	( 17.830731s |  1.59% |  3.20% )   ( 16.900994s |  1.65% |  3.31% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p8 p8_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000669s |  0.00% |  0.00% )   ( 0.000688s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p8 p8_PID (&)
│  │  │  │  146.4.0:   	( 17.829969s |  1.59% | 99.99% )   ( 16.900196s |  1.65% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000332s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p8
│  │  │  │  │  16.5.0: 	( 0.015297s |  0.00% |  0.08% )   ( 0.015240s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015262s |  0.00% |  0.08% )   ( 0.015203s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015260s |  0.00% |  0.08% )   ( 0.015202s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015256s |  0.00% |  0.08% )   ( 0.015191s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015232s |  0.00% |  0.08% )   ( 0.015169s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003977s |  0.00% |  0.00% )   ( 0.004485s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003442s |  0.00% |  0.00% )   ( 0.003938s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004246s |  0.00% |  0.00% )   ( 0.004745s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p8
│  │  │  │  │  27.5.0: 	( 0.135811s |  0.01% |  0.03% )   ( 0.005367s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003721s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003598s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003253s |  0.00% |  0.00% )   ( 0.003714s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003314s |  0.00% |  0.00% )   ( 0.003792s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.028839s |  0.00% |  0.00% )   ( 0.029272s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.004625s |  0.00% |  0.00% )   ( 0.004108s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004143s |  0.00% |  0.00% )   ( 0.004638s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p8
│  │  │  │  │  40.5.0: 	( 0.003373s |  0.00% |  0.00% )   ( 0.003837s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003211s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.524048s |  1.56% |  4.09% )   ( 16.721862s |  1.64% |  4.12% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003072s |  0.00% |  0.01% )   ( 0.003570s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.230032s |  0.11% |  7.01% )   ( 1.130228s |  0.11% |  6.75% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.007920s |  0.17% | 11.45% )   ( 1.944504s |  0.19% | 11.62% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.619942s |  0.14% |  9.24% )   ( 1.587827s |  0.15% |  9.49% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.984376s |  0.17% | 11.32% )   ( 1.917084s |  0.18% | 11.46% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.607460s |  0.14% |  9.17% )   ( 1.549558s |  0.15% |  9.26% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.024820s |  0.09% |  5.84% )   ( 0.995409s |  0.09% |  5.95% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.555274s |  0.04% |  3.16% )   ( 0.524209s |  0.05% |  3.13% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.108850s |  0.09% |  6.32% )   ( 1.052404s |  0.10% |  6.29% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.478571s |  0.04% |  2.73% )   ( 0.461972s |  0.04% |  2.76% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.523164s |  0.13% |  8.69% )   ( 1.389909s |  0.13% |  8.31% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.215072s |  0.28% | 18.34% )   ( 3.109116s |  0.30% | 18.59% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.601927s |  0.05% |  3.43% )   ( 0.537172s |  0.05% |  3.21% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.563568s |  0.05% |  3.21% )   ( 0.518900s |  0.05% |  3.10% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003482s |  0.00% |  0.00% )   ( 0.003957s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003199s |  0.00% |  0.00% )   ( 0.003659s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.006531s |  0.00% |  0.00% )   ( 0.004026s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000188s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009649s |  0.00% |  0.05% )   ( 0.009395s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p8\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000093s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p8_PID})
│  │  │  1417.3.0:     	( 21.133472s |  1.89% |  3.79% )   ( 20.779317s |  2.04% |  4.07% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p9 p9_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000649s |  0.00% |  0.00% )   ( 0.000665s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p9 p9_PID (&)
│  │  │  │  146.4.0:   	( 21.132732s |  1.89% | 99.99% )   ( 20.778535s |  2.04% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000339s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p9
│  │  │  │  │  16.5.0: 	( 0.015251s |  0.00% |  0.07% )   ( 0.015225s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015200s |  0.00% |  0.07% )   ( 0.015175s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015194s |  0.00% |  0.07% )   ( 0.015172s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015186s |  0.00% |  0.07% )   ( 0.015160s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015168s |  0.00% |  0.07% )   ( 0.015138s |  0.00% |  0.07% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.002399s |  0.00% |  0.00% )   ( 0.002726s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002244s |  0.00% |  0.00% )   ( 0.002558s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.002608s |  0.00% |  0.00% )   ( 0.002905s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p9
│  │  │  │  │  27.5.0: 	( 0.053229s |  0.00% |  0.01% )   ( 0.003026s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002246s |  0.00% |  0.00% )   ( 0.002527s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.001918s |  0.00% |  0.00% )   ( 0.002198s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.001940s |  0.00% |  0.00% )   ( 0.002220s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002106s |  0.00% |  0.00% )   ( 0.002377s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.017072s |  0.00% |  0.00% )   ( 0.017268s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.002106s |  0.00% |  0.00% )   ( 0.002390s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.002424s |  0.00% |  0.00% )   ( 0.002710s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p9
│  │  │  │  │  40.5.0: 	( 0.002000s |  0.00% |  0.00% )   ( 0.002294s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.001895s |  0.00% |  0.00% )   ( 0.002177s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 20.950527s |  1.87% |  7.08% )   ( 20.642223s |  2.02% |  7.09% )    	(14x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.001770s |  0.00% |  0.00% )   ( 0.002044s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.457191s |  0.13% |  6.95% )   ( 1.443242s |  0.14% |  6.99% )    	(14x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.885661s |  0.25% | 13.77% )   ( 2.860669s |  0.28% | 13.85% )    	(14x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.098448s |  0.18% | 10.01% )   ( 2.069221s |  0.20% | 10.02% )    	(14x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.829391s |  0.25% | 13.50% )   ( 2.780221s |  0.27% | 13.46% )    	(14x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.119853s |  0.18% | 10.11% )   ( 2.101666s |  0.20% | 10.18% )    	(14x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.287164s |  0.11% |  6.14% )   ( 1.269075s |  0.12% |  6.14% )    	(14x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.442164s |  0.03% |  2.11% )   ( 0.428422s |  0.04% |  2.07% )    	(14x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.349807s |  0.12% |  6.44% )   ( 1.343947s |  0.13% |  6.51% )    	(14x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.347922s |  0.03% |  1.66% )   ( 0.334443s |  0.03% |  1.62% )    	(14x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.476006s |  0.13% |  7.04% )   ( 1.416380s |  0.13% |  6.86% )    	(14x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.906698s |  0.34% | 18.64% )   ( 3.874957s |  0.38% | 18.77% )    	(14x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.390175s |  0.03% |  1.86% )   ( 0.375622s |  0.03% |  1.81% )    	(14x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.358277s |  0.03% |  1.71% )   ( 0.342314s |  0.03% |  1.65% )    	(14x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002019s |  0.00% |  0.00% )   ( 0.002302s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.001818s |  0.00% |  0.00% )   ( 0.002087s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.002056s |  0.00% |  0.00% )   ( 0.002324s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.005112s |  0.00% |  0.02% )   ( 0.005194s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p9\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000091s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p9_PID})
│  │  │  1417.3.0:     	( 17.740647s |  1.58% |  3.18% )   ( 16.977086s |  1.66% |  3.33% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p10 p10_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000651s |  0.00% |  0.00% )   ( 0.000671s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p10 p10_PID (&)
│  │  │  │  146.4.0:   	( 17.739903s |  1.58% | 99.99% )   ( 16.976305s |  1.66% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000325s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p10
│  │  │  │  │  16.5.0: 	( 0.015270s |  0.00% |  0.08% )   ( 0.015243s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015186s |  0.00% |  0.08% )   ( 0.015160s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015191s |  0.00% |  0.08% )   ( 0.015168s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015209s |  0.00% |  0.08% )   ( 0.015175s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015167s |  0.00% |  0.08% )   ( 0.015139s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004927s |  0.00% |  0.00% )   ( 0.005549s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004355s |  0.00% |  0.00% )   ( 0.004986s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005448s |  0.00% |  0.00% )   ( 0.006092s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p10
│  │  │  │  │  27.5.0: 	( 0.198452s |  0.01% |  0.03% )   ( 0.006453s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004463s |  0.00% |  0.00% )   ( 0.005070s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004415s |  0.00% |  0.00% )   ( 0.005026s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003863s |  0.00% |  0.00% )   ( 0.004430s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004281s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.035785s |  0.00% |  0.00% )   ( 0.036250s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.010345s |  0.00% |  0.00% )   ( 0.005205s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.005152s |  0.00% |  0.00% )   ( 0.005793s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p10
│  │  │  │  │  40.5.0: 	( 0.004040s |  0.00% |  0.00% )   ( 0.004634s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.004091s |  0.00% |  0.00% )   ( 0.004679s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.355509s |  1.55% |  3.26% )   ( 16.780637s |  1.64% |  3.29% )    	(30x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003935s |  0.00% |  0.02% )   ( 0.004564s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.182979s |  0.10% |  6.81% )   ( 1.141483s |  0.11% |  6.80% )    	(30x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.898753s |  0.16% | 10.94% )   ( 1.860737s |  0.18% | 11.08% )    	(30x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.660475s |  0.14% |  9.56% )   ( 1.604628s |  0.15% |  9.56% )    	(30x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.927516s |  0.17% | 11.10% )   ( 1.850905s |  0.18% | 11.03% )    	(30x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.572966s |  0.14% |  9.06% )   ( 1.544727s |  0.15% |  9.20% )    	(30x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.070015s |  0.09% |  6.16% )   ( 1.045496s |  0.10% |  6.23% )    	(30x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.633979s |  0.05% |  3.65% )   ( 0.607511s |  0.05% |  3.62% )    	(30x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.107327s |  0.09% |  6.38% )   ( 1.076952s |  0.10% |  6.41% )    	(30x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.567591s |  0.05% |  3.27% )   ( 0.558038s |  0.05% |  3.32% )    	(30x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.481756s |  0.13% |  8.53% )   ( 1.425445s |  0.13% |  8.49% )    	(30x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.910521s |  0.26% | 16.77% )   ( 2.835188s |  0.27% | 16.89% )    	(30x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.661201s |  0.05% |  3.80% )   ( 0.615776s |  0.06% |  3.66% )    	(30x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.676495s |  0.06% |  3.89% )   ( 0.609187s |  0.05% |  3.63% )    	(30x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.004268s |  0.00% |  0.00% )   ( 0.004872s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.004016s |  0.00% |  0.00% )   ( 0.004591s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.004455s |  0.00% |  0.00% )   ( 0.005025s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.005006s |  0.00% |  0.02% )   ( 0.005090s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p10\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000093s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p10_PID})
│  │  │  1417.3.0:     	( 17.601833s |  1.57% |  3.15% )   ( 16.528598s |  1.62% |  3.24% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p11 p11_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000672s |  0.00% |  0.00% )   ( 0.000687s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p11 p11_PID (&)
│  │  │  │  146.4.0:   	( 17.601069s |  1.57% | 99.99% )   ( 16.527800s |  1.62% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p11
│  │  │  │  │  16.5.0: 	( 0.028642s |  0.00% |  0.16% )   ( 0.028558s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.024850s |  0.00% |  0.14% )   ( 0.024776s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.025094s |  0.00% |  0.14% )   ( 0.025003s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015477s |  0.00% |  0.08% )   ( 0.015438s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.017615s |  0.00% |  0.10% )   ( 0.017575s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004314s |  0.00% |  0.00% )   ( 0.004881s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003698s |  0.00% |  0.00% )   ( 0.004249s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004819s |  0.00% |  0.00% )   ( 0.005332s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p11
│  │  │  │  │  27.5.0: 	( 0.134042s |  0.01% |  0.02% )   ( 0.005667s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003869s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004017s |  0.00% |  0.00% )   ( 0.004599s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003608s |  0.00% |  0.00% )   ( 0.004140s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003770s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.035453s |  0.00% |  0.00% )   ( 0.031651s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.003952s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004703s |  0.00% |  0.00% )   ( 0.005263s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p11
│  │  │  │  │  40.5.0: 	( 0.003739s |  0.00% |  0.00% )   ( 0.004281s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003529s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.254312s |  1.54% |  3.92% )   ( 16.305807s |  1.60% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003249s |  0.00% |  0.01% )   ( 0.003748s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.104278s |  0.09% |  6.40% )   ( 1.078910s |  0.10% |  6.61% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.903011s |  0.17% | 11.02% )   ( 1.824593s |  0.17% | 11.18% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.656718s |  0.14% |  9.60% )   ( 1.559218s |  0.15% |  9.56% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.026315s |  0.18% | 11.74% )   ( 1.844871s |  0.18% | 11.31% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.595132s |  0.14% |  9.24% )   ( 1.480123s |  0.14% |  9.07% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.073068s |  0.09% |  6.21% )   ( 0.975287s |  0.09% |  5.98% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.580398s |  0.05% |  3.36% )   ( 0.537090s |  0.05% |  3.29% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.119751s |  0.10% |  6.48% )   ( 1.043577s |  0.10% |  6.40% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.507820s |  0.04% |  2.94% )   ( 0.485820s |  0.04% |  2.97% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.444648s |  0.12% |  8.37% )   ( 1.381586s |  0.13% |  8.47% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.049856s |  0.27% | 17.67% )   ( 2.996826s |  0.29% | 18.37% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.599417s |  0.05% |  3.47% )   ( 0.556409s |  0.05% |  3.41% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.590651s |  0.05% |  3.42% )   ( 0.537749s |  0.05% |  3.29% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003801s |  0.00% |  0.00% )   ( 0.004346s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003452s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003862s |  0.00% |  0.00% )   ( 0.004387s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  41.5.0: 	( 0.000126s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  51.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  53.5.0: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit
│  │  │  │  │  54.5.0: 	( 0.000204s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p* 1>&21
│  │  │  │  │  55.5.0: 	( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008897s |  0.00% |  0.05% )   ( 0.008970s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p11\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000092s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p11_PID})
│  │  │  1417.3.0:     	( 18.091184s |  1.61% |  3.24% )   ( 17.405675s |  1.70% |  3.41% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p12 p12_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000709s |  0.00% |  0.00% )   ( 0.000718s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p12 p12_PID (&)
│  │  │  │  146.4.0:   	( 18.090374s |  1.61% | 99.99% )   ( 17.404844s |  1.70% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p12
│  │  │  │  │  16.5.0: 	( 0.016836s |  0.00% |  0.09% )   ( 0.016773s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015298s |  0.00% |  0.08% )   ( 0.015265s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.015298s |  0.00% |  0.08% )   ( 0.015257s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.015409s |  0.00% |  0.08% )   ( 0.015378s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.015545s |  0.00% |  0.08% )   ( 0.015520s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003730s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003266s |  0.00% |  0.00% )   ( 0.003710s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004265s |  0.00% |  0.00% )   ( 0.004771s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p12
│  │  │  │  │  27.5.0: 	( 0.114849s |  0.01% |  0.02% )   ( 0.004910s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003532s |  0.00% |  0.00% )   ( 0.004003s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003171s |  0.00% |  0.00% )   ( 0.003622s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003158s |  0.00% |  0.00% )   ( 0.003634s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003288s |  0.00% |  0.00% )   ( 0.003742s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.027915s |  0.00% |  0.00% )   ( 0.028089s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.003344s |  0.00% |  0.00% )   ( 0.003784s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.003866s |  0.00% |  0.00% )   ( 0.004334s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p12
│  │  │  │  │  40.5.0: 	( 0.003094s |  0.00% |  0.00% )   ( 0.003544s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.002992s |  0.00% |  0.00% )   ( 0.003443s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000112s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000126s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.812135s |  1.59% |  4.28% )   ( 17.229989s |  1.69% |  4.30% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003103s |  0.00% |  0.01% )   ( 0.003557s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.195505s |  0.10% |  6.71% )   ( 1.168424s |  0.11% |  6.78% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.095190s |  0.18% | 11.76% )   ( 2.040788s |  0.20% | 11.84% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.718048s |  0.15% |  9.64% )   ( 1.655440s |  0.16% |  9.60% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.111357s |  0.18% | 11.85% )   ( 2.020146s |  0.19% | 11.72% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.627559s |  0.14% |  9.13% )   ( 1.606669s |  0.15% |  9.32% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.044603s |  0.09% |  5.86% )   ( 1.001741s |  0.09% |  5.81% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.566917s |  0.05% |  3.18% )   ( 0.520368s |  0.05% |  3.02% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.112306s |  0.09% |  6.24% )   ( 1.096455s |  0.10% |  6.36% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.484467s |  0.04% |  2.71% )   ( 0.452833s |  0.04% |  2.62% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.484084s |  0.13% |  8.33% )   ( 1.425368s |  0.13% |  8.27% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.260671s |  0.29% | 18.30% )   ( 3.230469s |  0.31% | 18.74% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.540074s |  0.04% |  3.03% )   ( 0.512648s |  0.05% |  2.97% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.568251s |  0.05% |  3.19% )   ( 0.495083s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003337s |  0.00% |  0.00% )   ( 0.003778s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.002934s |  0.00% |  0.00% )   ( 0.003344s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003303s |  0.00% |  0.00% )   ( 0.003682s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008724s |  0.00% |  0.04% )   ( 0.008802s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p12\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000101s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p12_PID})
│  │  │  1417.3.0:     	( 18.774110s |  1.68% |  3.36% )   ( 17.902296s |  1.75% |  3.51% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p13 p13_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000883s |  0.00% |  0.00% )   ( 0.000907s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p13 p13_PID (&)
│  │  │  │  146.4.0:   	( 18.773056s |  1.68% | 99.99% )   ( 17.901191s |  1.75% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p13
│  │  │  │  │  16.5.0: 	( 0.029182s |  0.00% |  0.15% )   ( 0.029080s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029315s |  0.00% |  0.15% )   ( 0.029210s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.029162s |  0.00% |  0.15% )   ( 0.029063s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029373s |  0.00% |  0.15% )   ( 0.029273s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.029303s |  0.00% |  0.15% )   ( 0.029205s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004305s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003527s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000126s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004429s |  0.00% |  0.00% )   ( 0.004942s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p13
│  │  │  │  │  27.5.0: 	( 0.150734s |  0.01% |  0.03% )   ( 0.005538s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003802s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003569s |  0.00% |  0.00% )   ( 0.004094s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003282s |  0.00% |  0.00% )   ( 0.003773s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003495s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.031479s |  0.00% |  0.00% )   ( 0.029849s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.003644s |  0.00% |  0.00% )   ( 0.004137s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004243s |  0.00% |  0.00% )   ( 0.004753s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p13
│  │  │  │  │  40.5.0: 	( 0.003443s |  0.00% |  0.00% )   ( 0.003940s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003331s |  0.00% |  0.00% )   ( 0.003824s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 18.383053s |  1.64% |  3.91% )   ( 17.651375s |  1.73% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003208s |  0.00% |  0.01% )   ( 0.003714s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.292193s |  0.11% |  7.02% )   ( 1.226025s |  0.12% |  6.94% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.159352s |  0.19% | 11.74% )   ( 2.096036s |  0.20% | 11.87% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.849751s |  0.16% | 10.06% )   ( 1.734780s |  0.17% |  9.82% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.159636s |  0.19% | 11.74% )   ( 2.110386s |  0.20% | 11.95% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.739089s |  0.15% |  9.46% )   ( 1.700086s |  0.16% |  9.63% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.144051s |  0.10% |  6.22% )   ( 1.090355s |  0.10% |  6.17% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.565690s |  0.05% |  3.07% )   ( 0.548375s |  0.05% |  3.10% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.212812s |  0.10% |  6.59% )   ( 1.116337s |  0.10% |  6.32% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.509188s |  0.04% |  2.76% )   ( 0.479485s |  0.04% |  2.71% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.479726s |  0.13% |  8.04% )   ( 1.377081s |  0.13% |  7.80% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.123986s |  0.27% | 16.99% )   ( 3.081245s |  0.30% | 17.45% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.575360s |  0.05% |  3.12% )   ( 0.554880s |  0.05% |  3.14% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.569011s |  0.05% |  3.09% )   ( 0.532590s |  0.05% |  3.01% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003456s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003333s |  0.00% |  0.00% )   ( 0.003833s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003822s |  0.00% |  0.00% )   ( 0.004216s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008447s |  0.00% |  0.04% )   ( 0.008525s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p13\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000171s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p13_PID})
│  │  │  1417.3.0:     	( 18.209743s |  1.63% |  3.26% )   ( 17.495859s |  1.71% |  3.43% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p14 p14_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000964s |  0.00% |  0.00% )   ( 0.000991s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p14 p14_PID (&)
│  │  │  │  146.4.0:   	( 18.208616s |  1.63% | 99.99% )   ( 17.494687s |  1.71% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000089s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p14
│  │  │  │  │  16.5.0: 	( 0.016959s |  0.00% |  0.09% )   ( 0.016816s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.017399s |  0.00% |  0.09% )   ( 0.017350s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.030494s |  0.00% |  0.16% )   ( 0.030376s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028985s |  0.00% |  0.15% )   ( 0.028896s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.028829s |  0.00% |  0.15% )   ( 0.028737s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003561s |  0.00% |  0.00% )   ( 0.004029s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003212s |  0.00% |  0.00% )   ( 0.003662s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.007079s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p14
│  │  │  │  │  27.5.0: 	( 0.102354s |  0.00% |  0.02% )   ( 0.004938s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003347s |  0.00% |  0.00% )   ( 0.003831s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003339s |  0.00% |  0.00% )   ( 0.003804s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002957s |  0.00% |  0.00% )   ( 0.003388s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003179s |  0.00% |  0.00% )   ( 0.003612s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.026663s |  0.00% |  0.00% )   ( 0.027032s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.003430s |  0.00% |  0.00% )   ( 0.003892s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.003924s |  0.00% |  0.00% )   ( 0.004410s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p14
│  │  │  │  │  40.5.0: 	( 0.003116s |  0.00% |  0.00% )   ( 0.003592s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003088s |  0.00% |  0.00% )   ( 0.003540s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.897942s |  1.60% |  4.46% )   ( 17.277890s |  1.69% |  4.48% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002863s |  0.00% |  0.01% )   ( 0.003331s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.251209s |  0.11% |  6.99% )   ( 1.162369s |  0.11% |  6.72% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.044715s |  0.18% | 11.42% )   ( 2.019223s |  0.19% | 11.68% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.668490s |  0.14% |  9.32% )   ( 1.632807s |  0.16% |  9.45% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.095669s |  0.18% | 11.70% )   ( 2.036089s |  0.19% | 11.78% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.642812s |  0.14% |  9.17% )   ( 1.613165s |  0.15% |  9.33% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.069902s |  0.09% |  5.97% )   ( 1.038693s |  0.10% |  6.01% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.544036s |  0.04% |  3.03% )   ( 0.499559s |  0.04% |  2.89% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.139051s |  0.10% |  6.36% )   ( 1.107644s |  0.10% |  6.41% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.487102s |  0.04% |  2.72% )   ( 0.445508s |  0.04% |  2.57% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.493163s |  0.13% |  8.34% )   ( 1.434276s |  0.14% |  8.30% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.363428s |  0.30% | 18.79% )   ( 3.319453s |  0.32% | 19.21% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.566455s |  0.05% |  3.16% )   ( 0.496883s |  0.04% |  2.87% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.529047s |  0.04% |  2.95% )   ( 0.468890s |  0.04% |  2.71% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003139s |  0.00% |  0.00% )   ( 0.003570s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003047s |  0.00% |  0.00% )   ( 0.003489s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003284s |  0.00% |  0.00% )   ( 0.003710s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008089s |  0.00% |  0.04% )   ( 0.008166s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p14\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000163s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p14_PID})
│  │  │  1417.3.0:     	( 18.632751s |  1.66% |  3.34% )   ( 18.201548s |  1.78% |  3.57% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p15 p15_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000982s |  0.00% |  0.00% )   ( 0.001002s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p15 p15_PID (&)
│  │  │  │  146.4.0:   	( 18.631616s |  1.66% | 99.99% )   ( 18.200369s |  1.78% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000100s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000104s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p15
│  │  │  │  │  16.5.0: 	( 0.015442s |  0.00% |  0.08% )   ( 0.015369s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.015232s |  0.00% |  0.08% )   ( 0.015201s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.025703s |  0.00% |  0.13% )   ( 0.025620s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028818s |  0.00% |  0.15% )   ( 0.028729s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.028805s |  0.00% |  0.15% )   ( 0.028719s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.002750s |  0.00% |  0.00% )   ( 0.003119s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.002374s |  0.00% |  0.00% )   ( 0.002725s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003002s |  0.00% |  0.00% )   ( 0.003361s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p15
│  │  │  │  │  27.5.0: 	( 0.095054s |  0.00% |  0.02% )   ( 0.003674s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.002617s |  0.00% |  0.00% )   ( 0.002933s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.002369s |  0.00% |  0.00% )   ( 0.002711s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002240s |  0.00% |  0.00% )   ( 0.002576s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.002418s |  0.00% |  0.00% )   ( 0.002762s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.019391s |  0.00% |  0.00% )   ( 0.019389s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.005556s |  0.00% |  0.00% )   ( 0.002898s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.002909s |  0.00% |  0.00% )   ( 0.003231s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p15
│  │  │  │  │  40.5.0: 	( 0.002365s |  0.00% |  0.00% )   ( 0.002710s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.002261s |  0.00% |  0.00% )   ( 0.002597s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 18.359398s |  1.64% |  5.79% )   ( 18.017996s |  1.76% |  5.82% )    	(17x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002222s |  0.00% |  0.01% )   ( 0.002574s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.197993s |  0.10% |  6.52% )   ( 1.185723s |  0.11% |  6.58% )    	(17x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.272228s |  0.20% | 12.37% )   ( 2.221131s |  0.21% | 12.32% )    	(17x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.766051s |  0.15% |  9.61% )   ( 1.725186s |  0.16% |  9.57% )    	(17x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.258721s |  0.20% | 12.30% )   ( 2.217264s |  0.21% | 12.30% )    	(17x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.695376s |  0.15% |  9.23% )   ( 1.672675s |  0.16% |  9.28% )    	(17x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.091013s |  0.09% |  5.94% )   ( 1.060528s |  0.10% |  5.88% )    	(17x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.436720s |  0.03% |  2.37% )   ( 0.431088s |  0.04% |  2.39% )    	(17x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.172212s |  0.10% |  6.38% )   ( 1.153885s |  0.11% |  6.40% )    	(17x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.383408s |  0.03% |  2.08% )   ( 0.370973s |  0.03% |  2.05% )    	(17x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.498458s |  0.13% |  8.16% )   ( 1.462725s |  0.14% |  8.11% )    	(17x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.751059s |  0.33% | 20.43% )   ( 3.717378s |  0.36% | 20.63% )    	(17x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.432925s |  0.03% |  2.35% )   ( 0.410760s |  0.04% |  2.27% )    	(17x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.401012s |  0.03% |  2.18% )   ( 0.386106s |  0.03% |  2.14% )    	(17x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.002284s |  0.00% |  0.00% )   ( 0.002610s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.002191s |  0.00% |  0.00% )   ( 0.002469s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.002412s |  0.00% |  0.00% )   ( 0.002714s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004927s |  0.00% |  0.02% )   ( 0.004997s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p15\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p15_PID})
│  │  │  1417.3.0:     	( 21.748259s |  1.94% |  3.90% )   ( 20.839454s |  2.04% |  4.09% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p16 p16_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001052s |  0.00% |  0.00% )   ( 0.001075s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p16 p16_PID (&)
│  │  │  │  146.4.0:   	( 21.747047s |  1.94% | 99.99% )   ( 20.838201s |  2.04% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000163s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p16
│  │  │  │  │  16.5.0: 	( 0.030291s |  0.00% |  0.13% )   ( 0.030190s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.028854s |  0.00% |  0.13% )   ( 0.028756s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028842s |  0.00% |  0.13% )   ( 0.028754s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029111s |  0.00% |  0.13% )   ( 0.028997s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.021167s |  0.00% |  0.09% )   ( 0.021111s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004360s |  0.00% |  0.00% )   ( 0.004892s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003850s |  0.00% |  0.00% )   ( 0.004378s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000169s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004733s |  0.00% |  0.00% )   ( 0.005301s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p16
│  │  │  │  │  27.5.0: 	( 0.210013s |  0.01% |  0.03% )   ( 0.006138s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004143s |  0.00% |  0.00% )   ( 0.004712s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004040s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003532s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003884s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.030592s |  0.00% |  0.00% )   ( 0.031016s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.005520s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004491s |  0.00% |  0.00% )   ( 0.005038s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p16
│  │  │  │  │  40.5.0: 	( 0.003646s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003622s |  0.00% |  0.00% )   ( 0.004161s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000166s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000148s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 21.305277s |  1.90% |  3.76% )   ( 20.593977s |  2.02% |  3.80% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003418s |  0.00% |  0.01% )   ( 0.003934s |  0.00% |  0.01% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.592865s |  0.14% |  7.47% )   ( 1.482785s |  0.14% |  7.20% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.514037s |  0.22% | 11.80% )   ( 2.382264s |  0.23% | 11.56% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.991855s |  0.17% |  9.34% )   ( 1.925849s |  0.18% |  9.35% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.429583s |  0.21% | 11.40% )   ( 2.393046s |  0.23% | 11.62% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.940174s |  0.17% |  9.10% )   ( 1.878970s |  0.18% |  9.12% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.340785s |  0.12% |  6.29% )   ( 1.327187s |  0.13% |  6.44% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.659961s |  0.05% |  3.09% )   ( 0.617657s |  0.06% |  2.99% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.397897s |  0.12% |  6.56% )   ( 1.368370s |  0.13% |  6.64% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.538381s |  0.04% |  2.52% )   ( 0.525020s |  0.05% |  2.54% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.731092s |  0.15% |  8.12% )   ( 1.656569s |  0.16% |  8.04% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.927639s |  0.35% | 18.43% )   ( 3.846044s |  0.37% | 18.67% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.631418s |  0.05% |  2.96% )   ( 0.605055s |  0.05% |  2.93% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.606172s |  0.05% |  2.84% )   ( 0.581227s |  0.05% |  2.82% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003837s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003407s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003731s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004721s |  0.00% |  0.02% )   ( 0.004788s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p16\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000160s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p16_PID})
│  │  │  1417.3.0:     	( 20.527673s |  1.83% |  3.68% )   ( 19.719821s |  1.93% |  3.87% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p17 p17_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001008s |  0.00% |  0.00% )   ( 0.001032s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p17 p17_PID (&)
│  │  │  │  146.4.0:   	( 20.526511s |  1.83% | 99.99% )   ( 19.718609s |  1.93% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p17
│  │  │  │  │  16.5.0: 	( 0.028898s |  0.00% |  0.14% )   ( 0.028807s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.028761s |  0.00% |  0.14% )   ( 0.028674s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.027886s |  0.00% |  0.13% )   ( 0.027791s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.023385s |  0.00% |  0.11% )   ( 0.023310s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.028891s |  0.00% |  0.14% )   ( 0.028790s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004526s |  0.00% |  0.00% )   ( 0.005113s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003882s |  0.00% |  0.00% )   ( 0.004412s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000115s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004884s |  0.00% |  0.00% )   ( 0.005459s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p17
│  │  │  │  │  27.5.0: 	( 0.179159s |  0.01% |  0.03% )   ( 0.005874s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003854s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003786s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003534s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003707s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.029533s |  0.00% |  0.00% )   ( 0.029912s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.006786s |  0.00% |  0.00% )   ( 0.004330s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004508s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p17
│  │  │  │  │  40.5.0: 	( 0.003617s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003603s |  0.00% |  0.00% )   ( 0.004142s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000180s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000162s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 20.113372s |  1.80% |  3.76% )   ( 19.477172s |  1.91% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003444s |  0.00% |  0.01% )   ( 0.003983s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.437612s |  0.12% |  7.14% )   ( 1.390884s |  0.13% |  7.14% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.341842s |  0.20% | 11.64% )   ( 2.251510s |  0.22% | 11.55% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.870825s |  0.16% |  9.30% )   ( 1.841077s |  0.18% |  9.45% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.284306s |  0.20% | 11.35% )   ( 2.220032s |  0.21% | 11.39% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.797973s |  0.16% |  8.93% )   ( 1.763357s |  0.17% |  9.05% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.349714s |  0.12% |  6.71% )   ( 1.263153s |  0.12% |  6.48% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.614531s |  0.05% |  3.05% )   ( 0.585858s |  0.05% |  3.00% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.301997s |  0.11% |  6.47% )   ( 1.285285s |  0.12% |  6.59% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.545290s |  0.04% |  2.71% )   ( 0.515505s |  0.05% |  2.64% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.640607s |  0.14% |  8.15% )   ( 1.597052s |  0.15% |  8.19% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.734227s |  0.33% | 18.56% )   ( 3.608623s |  0.35% | 18.52% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.608087s |  0.05% |  3.02% )   ( 0.586731s |  0.05% |  3.01% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.582917s |  0.05% |  2.89% )   ( 0.564122s |  0.05% |  2.89% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003671s |  0.00% |  0.00% )   ( 0.004174s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003414s |  0.00% |  0.00% )   ( 0.003876s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.006702s |  0.00% |  0.00% )   ( 0.004262s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004823s |  0.00% |  0.02% )   ( 0.004881s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p17\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000154s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p17_PID})
│  │  │  1417.3.0:     	( 18.542179s |  1.65% |  3.32% )   ( 17.977003s |  1.76% |  3.52% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p18 p18_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001064s |  0.00% |  0.00% )   ( 0.001087s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p18 p18_PID (&)
│  │  │  │  146.4.0:   	( 18.540958s |  1.65% | 99.99% )   ( 17.975739s |  1.76% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p18
│  │  │  │  │  16.5.0: 	( 0.028880s |  0.00% |  0.15% )   ( 0.028784s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.030192s |  0.00% |  0.16% )   ( 0.030075s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.030391s |  0.00% |  0.16% )   ( 0.030289s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029671s |  0.00% |  0.16% )   ( 0.029567s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.029827s |  0.00% |  0.16% )   ( 0.029723s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004014s |  0.00% |  0.00% )   ( 0.004511s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003570s |  0.00% |  0.00% )   ( 0.004054s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004409s |  0.00% |  0.00% )   ( 0.004933s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p18
│  │  │  │  │  27.5.0: 	( 0.177556s |  0.01% |  0.03% )   ( 0.005501s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003777s |  0.00% |  0.00% )   ( 0.004254s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003443s |  0.00% |  0.00% )   ( 0.003937s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003438s |  0.00% |  0.00% )   ( 0.003916s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003591s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.029090s |  0.00% |  0.00% )   ( 0.029530s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.008026s |  0.00% |  0.00% )   ( 0.004156s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004104s |  0.00% |  0.00% )   ( 0.004606s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p18
│  │  │  │  │  40.5.0: 	( 0.003244s |  0.00% |  0.00% )   ( 0.003705s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003180s |  0.00% |  0.00% )   ( 0.003650s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 18.121104s |  1.62% |  4.07% )   ( 17.728489s |  1.74% |  4.10% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003215s |  0.00% |  0.01% )   ( 0.003690s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.269465s |  0.11% |  7.00% )   ( 1.201132s |  0.11% |  6.77% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.158808s |  0.19% | 11.91% )   ( 2.086933s |  0.20% | 11.77% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.721670s |  0.15% |  9.50% )   ( 1.697577s |  0.16% |  9.57% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.074842s |  0.18% | 11.44% )   ( 2.058730s |  0.20% | 11.61% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.659026s |  0.14% |  9.15% )   ( 1.641945s |  0.16% |  9.26% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.127053s |  0.10% |  6.21% )   ( 1.086075s |  0.10% |  6.12% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.556357s |  0.04% |  3.07% )   ( 0.541286s |  0.05% |  3.05% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.137496s |  0.10% |  6.27% )   ( 1.127161s |  0.11% |  6.35% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.500865s |  0.04% |  2.76% )   ( 0.470536s |  0.04% |  2.65% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.477450s |  0.13% |  8.15% )   ( 1.441690s |  0.14% |  8.13% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.354658s |  0.30% | 18.51% )   ( 3.325801s |  0.32% | 18.75% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.550012s |  0.04% |  3.03% )   ( 0.540199s |  0.05% |  3.04% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.530187s |  0.04% |  2.92% )   ( 0.505734s |  0.04% |  2.85% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003472s |  0.00% |  0.00% )   ( 0.003924s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003125s |  0.00% |  0.00% )   ( 0.003595s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.006757s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004869s |  0.00% |  0.02% )   ( 0.004942s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p18\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p18_PID})
│  │  │  1417.3.0:     	( 21.568361s |  1.93% |  3.87% )   ( 20.665834s |  2.02% |  4.05% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p19 p19_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001009s |  0.00% |  0.00% )   ( 0.001029s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p19 p19_PID (&)
│  │  │  │  146.4.0:   	( 21.567201s |  1.93% | 99.99% )   ( 20.664628s |  2.02% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000102s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p19
│  │  │  │  │  16.5.0: 	( 0.023313s |  0.00% |  0.10% )   ( 0.023231s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.027334s |  0.00% |  0.12% )   ( 0.027238s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.029321s |  0.00% |  0.13% )   ( 0.029214s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.023649s |  0.00% |  0.10% )   ( 0.023573s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.029942s |  0.00% |  0.13% )   ( 0.029829s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003855s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003494s |  0.00% |  0.00% )   ( 0.003960s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004362s |  0.00% |  0.00% )   ( 0.004877s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p19
│  │  │  │  │  27.5.0: 	( 0.155943s |  0.01% |  0.02% )   ( 0.005262s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003668s |  0.00% |  0.00% )   ( 0.004166s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003569s |  0.00% |  0.00% )   ( 0.004087s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003342s |  0.00% |  0.00% )   ( 0.003809s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003647s |  0.00% |  0.00% )   ( 0.004150s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.031465s |  0.00% |  0.00% )   ( 0.029904s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.007216s |  0.00% |  0.00% )   ( 0.004055s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004203s |  0.00% |  0.00% )   ( 0.004714s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p19
│  │  │  │  │  40.5.0: 	( 0.003487s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003197s |  0.00% |  0.00% )   ( 0.003661s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000171s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000179s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 21.186064s |  1.89% |  4.09% )   ( 20.432843s |  2.00% |  4.11% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003196s |  0.00% |  0.01% )   ( 0.003699s |  0.00% |  0.01% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.558752s |  0.13% |  7.35% )   ( 1.515028s |  0.14% |  7.41% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.810042s |  0.25% | 13.26% )   ( 2.777711s |  0.27% | 13.59% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.238246s |  0.20% | 10.56% )   ( 2.180399s |  0.21% | 10.67% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.869015s |  0.25% | 13.54% )   ( 2.782312s |  0.27% | 13.61% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.057898s |  0.18% |  9.71% )   ( 1.932464s |  0.18% |  9.45% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.336238s |  0.11% |  6.30% )   ( 1.262513s |  0.12% |  6.17% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.576985s |  0.05% |  2.72% )   ( 0.551849s |  0.05% |  2.70% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.355733s |  0.12% |  6.39% )   ( 1.254297s |  0.12% |  6.13% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.538794s |  0.04% |  2.54% )   ( 0.494731s |  0.04% |  2.42% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.485346s |  0.13% |  7.01% )   ( 1.441220s |  0.14% |  7.05% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.232233s |  0.28% | 15.25% )   ( 3.167090s |  0.31% | 15.49% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.563288s |  0.05% |  2.65% )   ( 0.546330s |  0.05% |  2.67% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.560298s |  0.05% |  2.64% )   ( 0.523200s |  0.05% |  2.56% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003407s |  0.00% |  0.00% )   ( 0.003884s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003027s |  0.00% |  0.00% )   ( 0.003490s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003476s |  0.00% |  0.00% )   ( 0.003911s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004941s |  0.00% |  0.02% )   ( 0.005028s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p19\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000151s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p19_PID})
│  │  │  1417.3.0:     	( 17.792884s |  1.59% |  3.19% )   ( 17.180489s |  1.68% |  3.37% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p20 p20_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001075s |  0.00% |  0.00% )   ( 0.001096s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p20 p20_PID (&)
│  │  │  │  146.4.0:   	( 17.791655s |  1.59% | 99.99% )   ( 17.179214s |  1.68% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000168s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000184s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p20
│  │  │  │  │  16.5.0: 	( 0.028708s |  0.00% |  0.16% )   ( 0.028607s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.027399s |  0.00% |  0.15% )   ( 0.027302s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028856s |  0.00% |  0.16% )   ( 0.028761s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028936s |  0.00% |  0.16% )   ( 0.028841s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.028837s |  0.00% |  0.16% )   ( 0.028750s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004248s |  0.00% |  0.00% )   ( 0.004796s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003835s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004712s |  0.00% |  0.00% )   ( 0.005246s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p20
│  │  │  │  │  27.5.0: 	( 0.151260s |  0.01% |  0.03% )   ( 0.005632s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004060s |  0.00% |  0.00% )   ( 0.004532s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003762s |  0.00% |  0.00% )   ( 0.004312s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003523s |  0.00% |  0.00% )   ( 0.004016s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003696s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.034131s |  0.00% |  0.00% )   ( 0.031526s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.003772s |  0.00% |  0.00% )   ( 0.004242s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004249s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p20
│  │  │  │  │  40.5.0: 	( 0.003274s |  0.00% |  0.00% )   ( 0.003766s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003286s |  0.00% |  0.00% )   ( 0.003772s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.400169s |  1.55% |  3.91% )   ( 16.929113s |  1.66% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003180s |  0.00% |  0.01% )   ( 0.003692s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.147878s |  0.10% |  6.59% )   ( 1.139772s |  0.11% |  6.73% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.985899s |  0.17% | 11.41% )   ( 1.927600s |  0.18% | 11.38% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.690274s |  0.15% |  9.71% )   ( 1.626031s |  0.15% |  9.60% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.973420s |  0.17% | 11.34% )   ( 1.919743s |  0.18% | 11.33% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.614734s |  0.14% |  9.27% )   ( 1.550289s |  0.15% |  9.15% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.033858s |  0.09% |  5.94% )   ( 1.021824s |  0.10% |  6.03% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.574250s |  0.05% |  3.30% )   ( 0.551906s |  0.05% |  3.26% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.108233s |  0.09% |  6.36% )   ( 1.089448s |  0.10% |  6.43% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.520216s |  0.04% |  2.98% )   ( 0.485384s |  0.04% |  2.86% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.506752s |  0.13% |  8.65% )   ( 1.417842s |  0.13% |  8.37% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.127591s |  0.27% | 17.97% )   ( 3.110904s |  0.30% | 18.37% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.565204s |  0.05% |  3.24% )   ( 0.553183s |  0.05% |  3.26% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.548680s |  0.04% |  3.15% )   ( 0.531495s |  0.05% |  3.13% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003722s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003157s |  0.00% |  0.00% )   ( 0.003611s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003564s |  0.00% |  0.00% )   ( 0.004032s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000151s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.009094s |  0.00% |  0.05% )   ( 0.009172s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p20\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000154s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p20_PID})
│  │  │  1417.3.0:     	( 21.749737s |  1.94% |  3.90% )   ( 21.436100s |  2.10% |  4.20% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p21 p21_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001102s |  0.00% |  0.00% )   ( 0.001127s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p21 p21_PID (&)
│  │  │  │  146.4.0:   	( 21.748472s |  1.94% | 99.99% )   ( 21.434789s |  2.10% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000157s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p21
│  │  │  │  │  16.5.0: 	( 0.022178s |  0.00% |  0.10% )   ( 0.022103s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029958s |  0.00% |  0.13% )   ( 0.029860s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.029028s |  0.00% |  0.13% )   ( 0.028931s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028578s |  0.00% |  0.13% )   ( 0.028482s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.030203s |  0.00% |  0.13% )   ( 0.030099s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.002105s |  0.00% |  0.00% )   ( 0.002367s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.001831s |  0.00% |  0.00% )   ( 0.002061s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.002277s |  0.00% |  0.00% )   ( 0.002528s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p21
│  │  │  │  │  27.5.0: 	( 0.065716s |  0.00% |  0.02% )   ( 0.002895s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.001889s |  0.00% |  0.00% )   ( 0.002137s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.001681s |  0.00% |  0.00% )   ( 0.001925s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.001605s |  0.00% |  0.00% )   ( 0.001829s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.001779s |  0.00% |  0.00% )   ( 0.002026s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.013987s |  0.00% |  0.00% )   ( 0.014190s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.001895s |  0.00% |  0.00% )   ( 0.002149s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.002052s |  0.00% |  0.00% )   ( 0.002287s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p21
│  │  │  │  │  40.5.0: 	( 0.001651s |  0.00% |  0.00% )   ( 0.001893s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.001621s |  0.00% |  0.00% )   ( 0.001860s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 21.497375s |  1.92% |  8.23% )   ( 21.243192s |  2.08% |  8.25% )    	(12x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.001609s |  0.00% |  0.00% )   ( 0.001851s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.475243s |  0.13% |  6.86% )   ( 1.462064s |  0.14% |  6.88% )    	(12x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.738596s |  0.24% | 12.73% )   ( 2.708369s |  0.26% | 12.74% )    	(12x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.002636s |  0.17% |  9.31% )   ( 1.986131s |  0.19% |  9.34% )    	(12x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.694989s |  0.24% | 12.53% )   ( 2.663785s |  0.26% | 12.53% )    	(12x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.963374s |  0.17% |  9.13% )   ( 1.952599s |  0.19% |  9.19% )    	(12x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.310166s |  0.11% |  6.09% )   ( 1.300642s |  0.12% |  6.12% )    	(12x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.421665s |  0.03% |  1.96% )   ( 0.405151s |  0.03% |  1.90% )    	(12x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.403751s |  0.12% |  6.52% )   ( 1.392825s |  0.13% |  6.55% )    	(12x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.322286s |  0.02% |  1.49% )   ( 0.315019s |  0.03% |  1.48% )    	(12x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.663127s |  0.14% |  7.73% )   ( 1.644908s |  0.16% |  7.74% )    	(12x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 4.751766s |  0.42% | 22.10% )   ( 4.711046s |  0.46% | 22.17% )    	(12x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.406234s |  0.03% |  1.88% )   ( 0.376655s |  0.03% |  1.77% )    	(12x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.341933s |  0.03% |  1.59% )   ( 0.322147s |  0.03% |  1.51% )    	(12x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.001774s |  0.00% |  0.00% )   ( 0.002022s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.001542s |  0.00% |  0.00% )   ( 0.001772s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.001665s |  0.00% |  0.00% )   ( 0.001868s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004893s |  0.00% |  0.02% )   ( 0.004955s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p21\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p21_PID})
│  │  │  1417.3.0:     	( 17.573040s |  1.57% |  3.15% )   ( 16.911702s |  1.66% |  3.31% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p22 p22_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001093s |  0.00% |  0.00% )   ( 0.001113s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p22 p22_PID (&)
│  │  │  │  146.4.0:   	( 17.571792s |  1.57% | 99.99% )   ( 16.910409s |  1.66% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p22
│  │  │  │  │  16.5.0: 	( 0.028935s |  0.00% |  0.16% )   ( 0.028757s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.028932s |  0.00% |  0.16% )   ( 0.028692s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.028971s |  0.00% |  0.16% )   ( 0.028694s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.028853s |  0.00% |  0.16% )   ( 0.028610s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.029043s |  0.00% |  0.16% )   ( 0.028833s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004473s |  0.00% |  0.00% )   ( 0.005045s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003984s |  0.00% |  0.00% )   ( 0.004544s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000178s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004953s |  0.00% |  0.00% )   ( 0.005517s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p22
│  │  │  │  │  27.5.0: 	( 0.161398s |  0.01% |  0.03% )   ( 0.005769s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004026s |  0.00% |  0.00% )   ( 0.004584s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003804s |  0.00% |  0.00% )   ( 0.004381s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003773s |  0.00% |  0.00% )   ( 0.004249s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003832s |  0.00% |  0.00% )   ( 0.004362s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.033800s |  0.00% |  0.00% )   ( 0.031242s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.007052s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004747s |  0.00% |  0.00% )   ( 0.005300s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p22
│  │  │  │  │  40.5.0: 	( 0.003735s |  0.00% |  0.00% )   ( 0.004277s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003684s |  0.00% |  0.00% )   ( 0.004234s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.163724s |  1.53% |  3.61% )   ( 16.656741s |  1.63% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003580s |  0.00% |  0.02% )   ( 0.004118s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.153401s |  0.10% |  6.71% )   ( 1.125316s |  0.11% |  6.75% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.909205s |  0.17% | 11.12% )   ( 1.872115s |  0.18% | 11.23% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.676965s |  0.15% |  9.77% )   ( 1.603810s |  0.15% |  9.62% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.935413s |  0.17% | 11.27% )   ( 1.873460s |  0.18% | 11.24% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.574701s |  0.14% |  9.17% )   ( 1.537302s |  0.15% |  9.22% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.076550s |  0.09% |  6.27% )   ( 1.022860s |  0.10% |  6.14% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.583751s |  0.05% |  3.40% )   ( 0.563098s |  0.05% |  3.38% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.104343s |  0.09% |  6.43% )   ( 1.065931s |  0.10% |  6.39% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.535267s |  0.04% |  3.11% )   ( 0.512718s |  0.05% |  3.07% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.434291s |  0.12% |  8.35% )   ( 1.391422s |  0.13% |  8.35% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.006141s |  0.26% | 17.51% )   ( 2.943251s |  0.28% | 17.67% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.598370s |  0.05% |  3.48% )   ( 0.577920s |  0.05% |  3.46% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.571746s |  0.05% |  3.33% )   ( 0.563420s |  0.05% |  3.38% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003817s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003485s |  0.00% |  0.00% )   ( 0.004010s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.004030s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.007293s |  0.00% |  0.04% )   ( 0.007384s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p22\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000155s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p22_PID})
│  │  │  1417.3.0:     	( 19.413156s |  1.73% |  3.48% )   ( 18.845578s |  1.85% |  3.69% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p23 p23_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001169s |  0.00% |  0.00% )   ( 0.001194s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p23 p23_PID (&)
│  │  │  │  146.4.0:   	( 19.411810s |  1.73% | 99.99% )   ( 18.844186s |  1.85% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000214s |  0.00% |  0.00% )   ( 0.000238s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000167s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p23
│  │  │  │  │  16.5.0: 	( 0.030219s |  0.00% |  0.15% )   ( 0.030106s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.031925s |  0.00% |  0.16% )   ( 0.031796s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.033045s |  0.00% |  0.17% )   ( 0.032919s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.031322s |  0.00% |  0.16% )   ( 0.031208s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.031509s |  0.00% |  0.16% )   ( 0.031406s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.003586s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003105s |  0.00% |  0.00% )   ( 0.003545s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.003914s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p23
│  │  │  │  │  27.5.0: 	( 0.138006s |  0.01% |  0.03% )   ( 0.005174s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.005213s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003239s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.002986s |  0.00% |  0.00% )   ( 0.003418s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003181s |  0.00% |  0.00% )   ( 0.003608s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.028350s |  0.00% |  0.00% )   ( 0.025728s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.003409s |  0.00% |  0.00% )   ( 0.003831s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.003775s |  0.00% |  0.00% )   ( 0.004226s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p23
│  │  │  │  │  40.5.0: 	( 0.003094s |  0.00% |  0.00% )   ( 0.003526s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.002968s |  0.00% |  0.00% )   ( 0.003357s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 19.033636s |  1.70% |  4.66% )   ( 18.597381s |  1.82% |  4.69% )    	(21x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003062s |  0.00% |  0.01% )   ( 0.003521s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.351531s |  0.12% |  7.10% )   ( 1.305396s |  0.12% |  7.01% )    	(21x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.438258s |  0.21% | 12.81% )   ( 2.394391s |  0.23% | 12.87% )    	(21x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.936698s |  0.17% | 10.17% )   ( 1.878729s |  0.18% | 10.10% )    	(21x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 2.399242s |  0.21% | 12.60% )   ( 2.375073s |  0.23% | 12.77% )    	(21x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.894143s |  0.16% |  9.95% )   ( 1.857768s |  0.18% |  9.98% )    	(21x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.188170s |  0.10% |  6.24% )   ( 1.172729s |  0.11% |  6.30% )    	(21x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.540377s |  0.04% |  2.83% )   ( 0.503703s |  0.04% |  2.70% )    	(21x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.338656s |  0.11% |  7.03% )   ( 1.268891s |  0.12% |  6.82% )    	(21x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.470903s |  0.04% |  2.47% )   ( 0.452346s |  0.04% |  2.43% )    	(21x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.485401s |  0.13% |  7.80% )   ( 1.450635s |  0.14% |  7.80% )    	(21x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.022097s |  0.27% | 15.87% )   ( 2.985465s |  0.29% | 16.05% )    	(21x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.490356s |  0.04% |  2.57% )   ( 0.488408s |  0.04% |  2.62% )    	(21x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.474742s |  0.04% |  2.49% )   ( 0.460326s |  0.04% |  2.47% )    	(21x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003086s |  0.00% |  0.00% )   ( 0.003499s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.002898s |  0.00% |  0.00% )   ( 0.003315s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003286s |  0.00% |  0.00% )   ( 0.003716s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.004862s |  0.00% |  0.02% )   ( 0.004918s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p23\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p23_PID})
│  │  │  1417.3.0:     	( 17.749532s |  1.58% |  3.18% )   ( 17.107993s |  1.68% |  3.35% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p24 p24_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001230s |  0.00% |  0.00% )   ( 0.001248s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p24 p24_PID (&)
│  │  │  │  146.4.0:   	( 17.748127s |  1.58% | 99.99% )   ( 17.106546s |  1.67% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000151s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p24
│  │  │  │  │  16.5.0: 	( 0.031857s |  0.00% |  0.17% )   ( 0.029959s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.032865s |  0.00% |  0.18% )   ( 0.032683s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.034318s |  0.00% |  0.19% )   ( 0.034205s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.033481s |  0.00% |  0.18% )   ( 0.033374s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.033143s |  0.00% |  0.18% )   ( 0.032958s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004436s |  0.00% |  0.00% )   ( 0.004991s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003943s |  0.00% |  0.00% )   ( 0.004464s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000157s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004900s |  0.00% |  0.00% )   ( 0.005462s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p24
│  │  │  │  │  27.5.0: 	( 0.104625s |  0.00% |  0.02% )   ( 0.005498s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004082s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003733s |  0.00% |  0.00% )   ( 0.004250s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003699s |  0.00% |  0.00% )   ( 0.004239s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003917s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.032136s |  0.00% |  0.00% )   ( 0.032471s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.004158s |  0.00% |  0.00% )   ( 0.004695s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004642s |  0.00% |  0.00% )   ( 0.005146s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p24
│  │  │  │  │  40.5.0: 	( 0.003575s |  0.00% |  0.00% )   ( 0.004080s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003603s |  0.00% |  0.00% )   ( 0.004122s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000163s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000105s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.379270s |  1.55% |  3.76% )   ( 16.831331s |  1.65% |  3.78% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003627s |  0.00% |  0.02% )   ( 0.004166s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.219067s |  0.10% |  7.01% )   ( 1.140299s |  0.11% |  6.77% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 2.026917s |  0.18% | 11.66% )   ( 1.919468s |  0.18% | 11.40% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.658529s |  0.14% |  9.54% )   ( 1.625054s |  0.15% |  9.65% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.943846s |  0.17% | 11.18% )   ( 1.890610s |  0.18% | 11.23% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.598840s |  0.14% |  9.19% )   ( 1.545468s |  0.15% |  9.18% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.064638s |  0.09% |  6.12% )   ( 1.028822s |  0.10% |  6.11% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.585363s |  0.05% |  3.36% )   ( 0.558641s |  0.05% |  3.31% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.101519s |  0.09% |  6.33% )   ( 1.075085s |  0.10% |  6.38% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.515788s |  0.04% |  2.96% )   ( 0.496568s |  0.04% |  2.95% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.412025s |  0.12% |  8.12% )   ( 1.387146s |  0.13% |  8.24% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.089812s |  0.27% | 17.77% )   ( 3.034933s |  0.29% | 18.03% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.589901s |  0.05% |  3.39% )   ( 0.569516s |  0.05% |  3.38% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.569398s |  0.05% |  3.27% )   ( 0.555555s |  0.05% |  3.30% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003969s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003401s |  0.00% |  0.00% )   ( 0.003899s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.004029s |  0.00% |  0.00% )   ( 0.004528s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008985s |  0.00% |  0.05% )   ( 0.009059s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p24\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000175s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p24_PID})
│  │  │  1417.3.0:     	( 17.528888s |  1.56% |  3.14% )   ( 16.670938s |  1.63% |  3.27% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p25 p25_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001282s |  0.00% |  0.00% )   ( 0.001325s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p25 p25_PID (&)
│  │  │  │  146.4.0:   	( 17.527436s |  1.56% | 99.99% )   ( 16.669414s |  1.63% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p25
│  │  │  │  │  16.5.0: 	( 0.035366s |  0.00% |  0.20% )   ( 0.029841s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.036828s |  0.00% |  0.21% )   ( 0.034898s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.031066s |  0.00% |  0.17% )   ( 0.030955s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.030091s |  0.00% |  0.17% )   ( 0.029989s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.030704s |  0.00% |  0.17% )   ( 0.030567s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.005044s |  0.00% |  0.00% )   ( 0.005675s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.004503s |  0.00% |  0.00% )   ( 0.005120s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005625s |  0.00% |  0.00% )   ( 0.006210s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p25
│  │  │  │  │  27.5.0: 	( 0.098140s |  0.00% |  0.01% )   ( 0.006519s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004755s |  0.00% |  0.00% )   ( 0.005372s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004526s |  0.00% |  0.00% )   ( 0.005155s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.004171s |  0.00% |  0.00% )   ( 0.004767s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004501s |  0.00% |  0.00% )   ( 0.005095s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.038408s |  0.00% |  0.00% )   ( 0.035749s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.004668s |  0.00% |  0.00% )   ( 0.005027s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.005080s |  0.00% |  0.00% )   ( 0.005679s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p25
│  │  │  │  │  40.5.0: 	( 0.004027s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003876s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000114s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.150114s |  1.53% |  3.37% )   ( 16.389287s |  1.60% |  3.39% )    	(29x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003792s |  0.00% |  0.02% )   ( 0.004371s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.122301s |  0.10% |  6.54% )   ( 1.112760s |  0.10% |  6.78% )    	(29x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.896623s |  0.16% | 11.05% )   ( 1.796665s |  0.17% | 10.96% )    	(29x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.665676s |  0.14% |  9.71% )   ( 1.571946s |  0.15% |  9.59% )    	(29x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.847855s |  0.16% | 10.77% )   ( 1.783717s |  0.17% | 10.88% )    	(29x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.560578s |  0.13% |  9.09% )   ( 1.521226s |  0.14% |  9.28% )    	(29x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.080894s |  0.09% |  6.30% )   ( 1.030430s |  0.10% |  6.28% )    	(29x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.626549s |  0.05% |  3.65% )   ( 0.605419s |  0.05% |  3.69% )    	(29x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.094756s |  0.09% |  6.38% )   ( 1.031091s |  0.10% |  6.29% )    	(29x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.592483s |  0.05% |  3.45% )   ( 0.543089s |  0.05% |  3.31% )    	(29x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.434683s |  0.12% |  8.36% )   ( 1.373131s |  0.13% |  8.37% )    	(29x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.914071s |  0.26% | 16.99% )   ( 2.775412s |  0.27% | 16.93% )    	(29x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.684551s |  0.06% |  3.99% )   ( 0.626708s |  0.06% |  3.82% )    	(29x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.625302s |  0.05% |  3.64% )   ( 0.613322s |  0.06% |  3.74% )    	(29x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.004333s |  0.00% |  0.00% )   ( 0.004938s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003913s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.007787s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008547s |  0.00% |  0.04% )   ( 0.008634s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p25\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000170s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p25_PID})
│  │  │  1417.3.0:     	( 17.678629s |  1.58% |  3.17% )   ( 17.152848s |  1.68% |  3.36% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p26 p26_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001116s |  0.00% |  0.00% )   ( 0.001143s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p26 p26_PID (&)
│  │  │  │  146.4.0:   	( 17.677325s |  1.58% | 99.99% )   ( 17.151490s |  1.68% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p26
│  │  │  │  │  16.5.0: 	( 0.029452s |  0.00% |  0.16% )   ( 0.029190s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029749s |  0.00% |  0.16% )   ( 0.029481s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.030499s |  0.00% |  0.17% )   ( 0.030225s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.030927s |  0.00% |  0.17% )   ( 0.030684s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.030287s |  0.00% |  0.17% )   ( 0.030028s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004078s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003651s |  0.00% |  0.00% )   ( 0.004153s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.004408s |  0.00% |  0.00% )   ( 0.004925s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p26
│  │  │  │  │  27.5.0: 	( 0.102919s |  0.00% |  0.02% )   ( 0.005105s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.003676s |  0.00% |  0.00% )   ( 0.004185s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003384s |  0.00% |  0.00% )   ( 0.003850s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003253s |  0.00% |  0.00% )   ( 0.003731s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003564s |  0.00% |  0.00% )   ( 0.004059s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.027595s |  0.00% |  0.00% )   ( 0.028017s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.006692s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004191s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p26
│  │  │  │  │  40.5.0: 	( 0.003518s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003327s |  0.00% |  0.00% )   ( 0.003811s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000128s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.331562s |  1.55% |  4.08% )   ( 16.900132s |  1.65% |  4.10% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003099s |  0.00% |  0.01% )   ( 0.003565s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.155218s |  0.10% |  6.66% )   ( 1.101202s |  0.10% |  6.51% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.988435s |  0.17% | 11.47% )   ( 1.956897s |  0.19% | 11.57% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.663226s |  0.14% |  9.59% )   ( 1.614809s |  0.15% |  9.55% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.956433s |  0.17% | 11.28% )   ( 1.933531s |  0.18% | 11.44% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.587261s |  0.14% |  9.15% )   ( 1.573340s |  0.15% |  9.30% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.056852s |  0.09% |  6.09% )   ( 1.042772s |  0.10% |  6.17% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.565172s |  0.05% |  3.26% )   ( 0.541687s |  0.05% |  3.20% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.111119s |  0.09% |  6.41% )   ( 1.076332s |  0.10% |  6.36% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.478198s |  0.04% |  2.75% )   ( 0.468284s |  0.04% |  2.77% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.455871s |  0.13% |  8.40% )   ( 1.393188s |  0.13% |  8.24% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.200251s |  0.28% | 18.46% )   ( 3.140673s |  0.30% | 18.58% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.570995s |  0.05% |  3.29% )   ( 0.533550s |  0.05% |  3.15% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.539432s |  0.04% |  3.11% )   ( 0.520302s |  0.05% |  3.07% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003498s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003313s |  0.00% |  0.00% )   ( 0.003795s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003665s |  0.00% |  0.00% )   ( 0.004099s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008778s |  0.00% |  0.04% )   ( 0.008853s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p26\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000188s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p26_PID})
│  │  │  1417.3.0:     	( 17.891425s |  1.60% |  3.21% )   ( 16.743926s |  1.64% |  3.28% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p27 p27_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001094s |  0.00% |  0.00% )   ( 0.001117s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p27 p27_PID (&)
│  │  │  │  146.4.0:   	( 17.890177s |  1.60% | 99.99% )   ( 16.742628s |  1.64% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000163s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.wCWl9V"
│  │  │  │  │  12.5.0: 	( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p27
│  │  │  │  │  16.5.0: 	( 0.033544s |  0.00% |  0.18% )   ( 0.032476s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.030166s |  0.00% |  0.16% )   ( 0.029191s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 917028 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.030642s |  0.00% |  0.17% )   ( 0.030503s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 917028 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.030125s |  0.00% |  0.16% )   ( 0.029988s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 917028 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.025684s |  0.00% |  0.14% )   ( 0.025586s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004447s |  0.00% |  0.00% )   ( 0.005030s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.003812s |  0.00% |  0.00% )   ( 0.004360s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000171s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.wCWl9V"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000148s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005084s |  0.00% |  0.00% )   ( 0.005680s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p27
│  │  │  │  │  27.5.0: 	( 0.137601s |  0.01% |  0.02% )   ( 0.005900s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004209s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.003783s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.003658s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.003909s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.034799s |  0.00% |  0.00% )   ( 0.032471s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.007158s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.004823s |  0.00% |  0.00% )   ( 0.005383s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.wCWl9V"/.wait/p27
│  │  │  │  │  40.5.0: 	( 0.003761s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.003651s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 17.498526s |  1.56% |  3.62% )   ( 16.482321s |  1.61% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003439s |  0.00% |  0.01% )   ( 0.003985s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.160106s |  0.10% |  6.62% )   ( 1.108548s |  0.10% |  6.72% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.962216s |  0.17% | 11.21% )   ( 1.874010s |  0.18% | 11.36% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.656430s |  0.14% |  9.46% )   ( 1.566324s |  0.15% |  9.50% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.936819s |  0.17% | 11.06% )   ( 1.867734s |  0.18% | 11.33% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.579146s |  0.14% |  9.02% )   ( 1.508776s |  0.14% |  9.15% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.153115s |  0.10% |  6.58% )   ( 1.033147s |  0.10% |  6.26% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.673619s |  0.06% |  3.84% )   ( 0.568210s |  0.05% |  3.44% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.169457s |  0.10% |  6.68% )   ( 1.040945s |  0.10% |  6.31% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.564006s |  0.05% |  3.22% )   ( 0.510515s |  0.05% |  3.09% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.473867s |  0.13% |  8.42% )   ( 1.379314s |  0.13% |  8.36% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 3.012573s |  0.26% | 17.21% )   ( 2.903230s |  0.28% | 17.61% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.576215s |  0.05% |  3.29% )   ( 0.567141s |  0.05% |  3.44% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.577518s |  0.05% |  3.30% )   ( 0.550442s |  0.05% |  3.33% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003889s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003574s |  0.00% |  0.00% )   ( 0.004118s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.003969s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.007946s |  0.00% |  0.04% )   ( 0.008029s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.wCWl9V"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.wCWl9V"/.run/p27\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000154s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p27_PID})
│  │  │  1419.3.0:     	( 0.000169s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1420.3.0:     	( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1421.3.0:     	( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1424.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1429.3.0:     	( 0.001292s |  0.00% |  0.00% )   ( 0.001308s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1434.3.0:     	( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1496.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1499.3.0:     	( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1506.3.0:     	( 24.621838s |  2.20% |  4.41% )   ( 0.001683s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1510.3.0:     	( 0.000283s |  0.00% |  0.00% )   ( 0.000325s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1515.3.0:     	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1521.2.0:        	( 0.000319s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -335.2.0:        	( 0.008165s |  0.00% |  0.00% )   ( 0.004500s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.wCWl9V" 2>/dev/null'

TOTAL RUN TIME: 1117.062680s
TOTAL CPU TIME: 1018.327786s
