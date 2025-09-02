LINE.DEPTH.CMD NUMBER	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_____________________	__________________________________________________________________	____________________________________
1.0.0:                 	( 556.752362s | 50.04% )            ( 506.281168s | 49.92% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:              	( 0.000695s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
│  603.1.0:            	( 556.751667s | 50.04% | 99.99% )   ( 506.280847s | 49.92% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 603.2.0:         	( 0.027487s |  0.00% |  0.00% )   ( 0.027421s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  128.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  131.2.0:         	( 0.000080s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  132.2.0:         	( 0.000133s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  133.2.0:         	( 0.000098s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  134.2.0:         	( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  135.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  140.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  143.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  143.2.1:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  144.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
│  │  144.2.1:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
│  │  144.2.2:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
│  │  341.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  350.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  350.2.1:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  350.2.2:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  350.2.3:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  352.2.0:         	( 0.001463s |  0.00% |  0.00% )   ( 0.001072s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
│  │  352.2.1:         	( 0.005448s |  0.00% |  0.00% )   ( 0.005449s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 352.3.0:      	( 0.005448s |  0.00% |100.00% )   ( 0.005449s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
│  │  353.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  355.2.0:         	( 0.003384s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  356.2.0:         	( 0.000085s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  358.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  358.2.1:         	( 0.019400s |  0.00% |  0.00% )   ( 0.000962s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1520.2.0:        	( 556.687131s | 50.03% | 99.98% )   ( 506.238411s | 49.92% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 366.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1520.3.0:     	( 0.001180s |  0.00% |  0.00% )   ( 0.001368s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1520.4.0:  	( 0.001180s |  0.00% |100.00% )   ( 0.001368s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  381.3.0:      	( 0.000083s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  382.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  383.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  385.3.0:      	( 0.000184s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  387.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  388.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  389.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  391.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  393.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.009781s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  396.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  398.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  399.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  404.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  405.3.0:      	( 0.003211s |  0.00% |  0.00% )   ( 0.003271s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  405.3.1:      	( 0.000107s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 405.4.0:   	( 0.000107s |  0.00% |100.00% )   ( 0.000122s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  405.3.2:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  409.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  414.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  416.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.1:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  418.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  419.3.0:      	( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  423.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  485.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  485.3.1:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  486.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  486.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  490.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  495.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  499.3.0:      	( 0.000826s |  0.00% |  0.00% )   ( 0.000979s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000060s |  0.00% |  7.26% )   ( 0.000072s |  0.00% |  7.35% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  12.4.0:    	( 0.000066s |  0.00% |  7.99% )   ( 0.000078s |  0.00% |  7.96% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  13.4.0:    	( 0.000063s |  0.00% |  7.62% )   ( 0.000076s |  0.00% |  7.76% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  15.4.0:    	( 0.000064s |  0.00% |  7.74% )   ( 0.000077s |  0.00% |  7.86% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  16.4.0:    	( 0.000063s |  0.00% |  7.62% )   ( 0.000075s |  0.00% |  7.66% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  17.4.0:    	( 0.000066s |  0.00% |  7.99% )   ( 0.000079s |  0.00% |  8.06% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  19.4.0:    	( 0.000063s |  0.00% |  7.62% )   ( 0.000076s |  0.00% |  7.76% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  19.4.1:    	( 0.000118s |  0.00% | 14.28% )   ( 0.000131s |  0.00% | 13.38% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  21.4.0:    	( 0.000063s |  0.00% |  7.62% )   ( 0.000076s |  0.00% |  7.76% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  22.4.0:    	( 0.000064s |  0.00% |  7.74% )   ( 0.000076s |  0.00% |  7.76% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  22.4.1:    	( 0.000064s |  0.00% |  7.74% )   ( 0.000077s |  0.00% |  7.86% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 32.4.0:    	( 0.000072s |  0.00% |  8.71% )   ( 0.000086s |  0.00% |  8.78% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  501.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  503.3.0:      	( 0.008434s |  0.00% |  0.00% )   ( 0.008595s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  503.3.1:      	( 0.002971s |  0.00% |  0.00% )   ( 0.003137s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 503.4.0:   	( 0.000304s |  0.00% | 10.23% )   ( 0.000323s |  0.00% | 10.29% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 503.4.1:   	( 0.002667s |  0.00% | 89.76% )   ( 0.002814s |  0.00% | 89.70% )    	(1x)	│  │  │  └─nproc
│  │  │  504.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  505.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  505.3.1:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  505.3.2:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  507.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.1:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  517.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  519.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  522.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  522.3.1:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  522.3.2:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  524.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  527.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.0:      	( 0.000159s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  533.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.2:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  536.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  539.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  540.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  541.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  562.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
│  │  │  563.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
│  │  │  564.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  564.3.1:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  575.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  584.3.0:      	( 0.003710s |  0.00% |  0.00% )   ( 0.003833s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  584.3.1:      	( 0.000107s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 584.4.0:   	( 0.000107s |  0.00% |100.00% )   ( 0.000124s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  585.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  588.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  594.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  596.3.0:      	( 0.001739s |  0.00% |  0.00% )   ( 0.001810s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  597.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  600.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  602.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  633.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  635.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  640.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  642.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  646.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  656.3.0:      	( 0.000543s |  0.00% |  0.00% )   ( 0.000560s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  662.3.0:      	( 0.091474s |  0.00% |  0.01% )   ( 0.091309s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 662.4.0:   	( 0.000082s |  0.00% |  0.08% )   ( 0.000095s |  0.00% |  0.10% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  664.4.0:   	( 0.013624s |  0.00% | 14.89% )   ( 0.013577s |  0.00% | 14.86% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  665.4.0:   	( 0.014779s |  0.00% | 16.15% )   ( 0.014754s |  0.00% | 16.15% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  666.4.0:   	( 0.014908s |  0.00% | 16.29% )   ( 0.014878s |  0.00% | 16.29% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  667.4.0:   	( 0.014860s |  0.00% | 16.24% )   ( 0.014827s |  0.00% | 16.23% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  668.4.0:   	( 0.014837s |  0.00% | 16.21% )   ( 0.014777s |  0.00% | 16.18% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  670.4.0:   	( 0.000062s |  0.00% |  0.06% )   ( 0.000074s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  671.4.0:   	( 0.018097s |  0.00% | 19.78% )   ( 0.018063s |  0.00% | 19.78% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  676.4.0:   	( 0.000092s |  0.00% |  0.10% )   ( 0.000105s |  0.00% |  0.11% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  677.4.0:   	( 0.000067s |  0.00% |  0.07% )   ( 0.000080s |  0.00% |  0.08% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 678.4.0:   	( 0.000066s |  0.00% |  0.07% )   ( 0.000079s |  0.00% |  0.08% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  686.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  691.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  733.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  737.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  739.3.0:      	( 0.000422s |  0.00% |  0.00% )   ( 0.000444s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  749.3.0:      	( 4.750800s |  0.42% |  0.85% )   ( 1.777814s |  0.17% |  0.35% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 749.4.0:   	( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  751.4.0:   	( 0.017319s |  0.00% |  0.36% )   ( 0.017288s |  0.00% |  0.97% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  752.4.0:   	( 0.014872s |  0.00% |  0.31% )   ( 0.014845s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  753.4.0:   	( 0.014917s |  0.00% |  0.31% )   ( 0.014890s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  754.4.0:   	( 0.014812s |  0.00% |  0.31% )   ( 0.014782s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  755.4.0:   	( 0.014755s |  0.00% |  0.31% )   ( 0.014730s |  0.00% |  0.82% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  757.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  758.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  759.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  761.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  763.4.0:   	( 0.088702s |  0.00% |  0.00% )   ( 0.102623s |  0.01% |  0.00% )    	(676x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  765.4.0:   	( 3.280820s |  0.29% |  0.10% )   ( 0.116910s |  0.01% |  0.00% )    	(675x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  765.4.1:   	( 0.001543s |  0.00% |  0.00% )   ( 0.001752s |  0.00% |  0.01% )    	(9x)	│  │  │  │ continue
│  │  │  │  767.4.0:   	( 0.086309s |  0.00% |  0.00% )   ( 0.099911s |  0.00% |  0.00% )    	(666x)	│  │  │  │ case ${REPLY} in
│  │  │  │  781.4.0:   	( 0.091361s |  0.00% |  0.00% )   ( 0.101596s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.0:   	( 0.000181s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  785.4.0:   	( 0.000188s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  791.4.0:   	( 0.086236s |  0.00% |  0.00% )   ( 0.099887s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  792.4.0:   	( 0.087796s |  0.00% |  0.00% )   ( 0.101196s |  0.00% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  793.4.0:   	( 0.089338s |  0.00% |  0.00% )   ( 0.102989s |  0.01% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  800.4.0:   	( 0.085124s |  0.00% |  0.00% )   ( 0.098680s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  800.4.1:   	( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  802.4.0:   	( 0.085510s |  0.00% |  0.00% )   ( 0.099132s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  804.4.0:   	( 0.085183s |  0.00% |  0.00% )   ( 0.098679s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  806.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  808.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  809.4.0:   	( 0.006629s |  0.00% |  0.13% )   ( 0.007282s |  0.00% |  0.40% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  809.4.1:   	( 0.003266s |  0.00% |  0.06% )   ( 0.003799s |  0.00% |  0.21% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 809.5.0:  	( 0.003266s |  0.00% |100.00% )   ( 0.003799s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  810.4.0:   	( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  811.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  814.4.0:   	( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  816.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  818.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  818.4.1:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  818.4.2:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  820.4.0:   	( 0.000090s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  823.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  825.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  829.4.0:   	( 0.084710s |  0.00% |  0.00% )   ( 0.098237s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  830.4.0:   	( 0.083611s |  0.00% |  0.00% )   ( 0.097116s |  0.00% |  0.00% )    	(666x)	│  │  │  │ case ${nWait} in
│  │  │  │  841.4.0:   	( 0.081904s |  0.00% |  0.00% )   ( 0.095025s |  0.00% |  0.00% )    	(645x)	│  │  │  │ ((nWait--))
│  │  │  │  846.4.0:   	( 0.088898s |  0.00% |  0.00% )   ( 0.102611s |  0.01% |  0.00% )    	(666x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  781.4.1:   	( 0.086615s |  0.00% |  0.00% )   ( 0.100327s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  800.4.1:   	( 0.085710s |  0.00% |  0.00% )   ( 0.099380s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  832.4.0:   	( 0.002668s |  0.00% |  0.00% )   ( 0.003086s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  833.4.0:   	( 0.002712s |  0.00% |  0.00% )   ( 0.003145s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  834.4.0:   	( 0.061740s |  0.00% |  0.06% )   ( 0.048354s |  0.00% |  0.12% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  835.4.0:   	( 0.003011s |  0.00% |  0.00% )   ( 0.003463s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  836.4.0:   	( 0.002851s |  0.00% |  0.00% )   ( 0.003284s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  838.4.0:   	( 0.003140s |  0.00% |  0.00% )   ( 0.003593s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  847.4.0:   	( 0.000177s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  848.4.0:   	( 0.000169s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.01% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  849.4.0:   	( 0.000165s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  763.4.1:   	( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  763.4.2:   	( 0.000141s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -335.4.0:  	( 0.006271s |  0.00% |  0.13% )   ( 0.006346s |  0.00% |  0.35% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/pAuto'
│  │  │  857.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  858.3.0:      	( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  894.3.0:      	( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1363.3.0:     	( 0.065273s |  0.00% |  0.01% )   ( 0.065411s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1380.3.0:     	( 0.005750s |  0.00% |  0.00% )   ( 0.006717s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1380.4.0:  	( 0.000311s |  0.00% |  5.40% )   ( 0.000340s |  0.00% |  5.06% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1381.4.0:  	( 0.000067s |  0.00% |  1.16% )   ( 0.000080s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1381.4.1:  	( 0.000077s |  0.00% |  1.33% )   ( 0.000090s |  0.00% |  1.33% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1389.4.0:  	( 0.000215s |  0.00% |  3.73% )   ( 0.000229s |  0.00% |  3.40% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1390.4.0:  	( 0.000070s |  0.00% |  1.21% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1462.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1465.4.0:  	( 0.000065s |  0.00% |  1.13% )   ( 0.000078s |  0.00% |  1.16% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1466.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1467.4.0:  	( 0.000066s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.14% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1467.4.1:  	( 0.000066s |  0.00% |  1.14% )   ( 0.000078s |  0.00% |  1.16% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1468.4.0:  	( 0.000066s |  0.00% |  1.14% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1469.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1469.4.1:  	( 0.000065s |  0.00% |  1.13% )   ( 0.000077s |  0.00% |  1.14% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1470.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000080s |  0.00% |  1.19% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1471.4.0:  	( 0.000061s |  0.00% |  1.06% )   ( 0.000073s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1471.4.1:  	( 0.000067s |  0.00% |  1.16% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1472.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1472.4.1:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000076s |  0.00% |  1.13% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1474.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000080s |  0.00% |  1.19% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1475.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1475.4.1:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1475.4.2:  	( 0.000067s |  0.00% |  1.16% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1476.4.0:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1479.4.0:  	( 0.000070s |  0.00% |  1.21% )   ( 0.000083s |  0.00% |  1.23% )    	(1x)	│  │  │  │ echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1480.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1483.4.0:  	( 0.000066s |  0.00% |  1.14% )   ( 0.000078s |  0.00% |  1.16% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1521.4.0:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000076s |  0.00% |  1.13% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1526.4.0:  	( 0.000073s |  0.00% |  1.26% )   ( 0.000086s |  0.00% |  1.28% )    	(1x)	│  │  │  │ echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1527.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000081s |  0.00% |  1.20% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1528.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1528.4.1:  	( 0.000065s |  0.00% |  1.13% )   ( 0.000078s |  0.00% |  1.16% )    	(1x)	│  │  │  │ printf '\n'
│  │  │  │  1529.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1530.4.0:  	( 0.000095s |  0.00% |  1.65% )   ( 0.000108s |  0.00% |  1.60% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1532.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1532.4.1:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1532.4.2:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1532.4.3:  	( 0.000073s |  0.00% |  1.26% )   ( 0.000086s |  0.00% |  1.28% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1533.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000080s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1546.4.0:  	( 0.000098s |  0.00% |  1.70% )   ( 0.000111s |  0.00% |  1.65% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1547.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1550.4.0:  	( 0.000089s |  0.00% |  1.54% )   ( 0.000101s |  0.00% |  1.50% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1561.4.0:  	( 0.000075s |  0.00% |  1.30% )   ( 0.000087s |  0.00% |  1.29% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1562.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1562.4.1:  	( 0.000084s |  0.00% |  1.46% )   ( 0.000096s |  0.00% |  1.42% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1563.4.0:  	( 0.000067s |  0.00% |  1.16% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1564.4.0:  	( 0.000065s |  0.00% |  1.13% )   ( 0.000076s |  0.00% |  1.13% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1569.4.0:  	( 0.000077s |  0.00% |  1.33% )   ( 0.000090s |  0.00% |  1.33% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1570.4.0:  	( 0.000066s |  0.00% |  1.14% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000090s |  0.00% |  1.56% )   ( 0.000103s |  0.00% |  1.53% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1575.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1575.4.1:  	( 0.000070s |  0.00% |  1.21% )   ( 0.000082s |  0.00% |  1.22% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1580.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1580.4.1:  	( 0.000070s |  0.00% |  1.21% )   ( 0.000082s |  0.00% |  1.22% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1581.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1581.4.1:  	( 0.000092s |  0.00% |  1.60% )   ( 0.000105s |  0.00% |  1.56% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1582.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1582.4.1:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1582.4.2:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1582.4.3:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000080s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1590.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000073s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1590.4.1:  	( 0.000085s |  0.00% |  1.47% )   ( 0.000097s |  0.00% |  1.44% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1591.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1591.4.1:  	( 0.000066s |  0.00% |  1.14% )   ( 0.000078s |  0.00% |  1.16% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1592.4.0:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000077s |  0.00% |  1.14% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1593.4.0:  	( 0.000088s |  0.00% |  1.53% )   ( 0.000099s |  0.00% |  1.47% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1594.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1601.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1604.4.0:  	( 0.000062s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1607.4.0:  	( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1608.4.0:  	( 0.000081s |  0.00% |  1.40% )   ( 0.000094s |  0.00% |  1.39% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1613.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000081s |  0.00% |  1.20% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1625.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000080s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1626.4.0:  	( 0.000061s |  0.00% |  1.06% )   ( 0.000073s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1626.4.1:  	( 0.000084s |  0.00% |  1.46% )   ( 0.000096s |  0.00% |  1.42% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1627.4.0:  	( 0.000069s |  0.00% |  1.20% )   ( 0.000081s |  0.00% |  1.20% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1628.4.0:  	( 0.000067s |  0.00% |  1.16% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1629.4.0:  	( 0.000067s |  0.00% |  1.16% )   ( 0.000079s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1634.4.0:  	( 0.000084s |  0.00% |  1.46% )   ( 0.000096s |  0.00% |  1.42% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1368.3.0:     	( 0.000118s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1373.3.0:     	( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1378.3.0:     	( 0.000108s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1380.3.0:     	( 0.016994s |  0.00% |  0.00% )   ( 0.016959s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1385.3.0:     	( 0.014946s |  0.00% |  0.00% )   ( 0.115167s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1390.3.0:     	( 0.014840s |  0.00% |  0.00% )   ( 0.014807s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1395.3.0:     	( 0.014631s |  0.00% |  0.00% )   ( 0.014603s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1397.3.0:     	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1398.3.0:     	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1400.3.0:     	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1411.3.0:     	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1414.3.0:     	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1415.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1415.3.1:     	( 0.002858s |  0.00% |  0.00% )   ( 0.003328s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1416.3.0:     	( 0.002697s |  0.00% |  0.00% )   ( 0.003157s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1417.3.0:     	( 78.265089s |  7.03% |  3.51% )   ( 75.069651s |  7.40% |  3.70% )    	(4x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002552s |  0.00% |  0.00% )   ( 0.002635s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  146.4.0:   	( 78.262166s |  7.03% | 99.99% )   ( 75.066594s |  7.40% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.001188s |  0.00% |  0.00% )   ( 0.001336s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.lmb53t"
│  │  │  │  │  12.5.0: 	( 0.000417s |  0.00% |  0.00% )   ( 0.000481s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p0
│  │  │  │  │  16.5.0: 	( 0.059593s |  0.00% |  0.07% )   ( 0.059515s |  0.00% |  0.07% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.lmb53t"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.059784s |  0.00% |  0.07% )   ( 0.059696s |  0.00% |  0.07% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 135033 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.060409s |  0.00% |  0.07% )   ( 0.060309s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 135033 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.060519s |  0.00% |  0.07% )   ( 0.060425s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 135033 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.060549s |  0.00% |  0.07% )   ( 0.060446s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.014877s |  0.00% |  0.00% )   ( 0.016958s |  0.00% |  0.00% )    	(99x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.013536s |  0.00% |  0.00% )   ( 0.015534s |  0.00% |  0.00% )    	(99x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000787s |  0.00% |  0.00% )   ( 0.000897s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.lmb53t"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000682s |  0.00% |  0.00% )   ( 0.000801s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000623s |  0.00% |  0.00% )   ( 0.000735s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.019439s |  0.00% |  0.00% )   ( 0.018548s |  0.00% |  0.00% )    	(99x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.lmb53t"/.wait/p0
│  │  │  │  │  27.5.0: 	( 1.052149s |  0.09% |  0.05% )   ( 0.021576s |  0.00% |  0.00% )    	(99x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.014522s |  0.00% |  0.00% )   ( 0.016254s |  0.00% |  0.00% )    	(99x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.013661s |  0.00% |  0.00% )   ( 0.015698s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.012368s |  0.00% |  0.00% )   ( 0.014309s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.013082s |  0.00% |  0.00% )   ( 0.015019s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.105348s |  0.00% |  0.00% )   ( 0.106915s |  0.01% |  0.00% )    	(95x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.012557s |  0.00% |  0.00% )   ( 0.014416s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.012444s |  0.00% |  0.00% )   ( 0.014391s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.022505s |  0.00% |  0.00% )   ( 0.015446s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.015892s |  0.00% |  0.00% )   ( 0.017924s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.lmb53t"/.wait/p0
│  │  │  │  │  52.5.0: 	( 0.015729s |  0.00% |  0.00% )   ( 0.014733s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.012325s |  0.00% |  0.00% )   ( 0.014262s |  0.00% |  0.00% )    	(95x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000786s |  0.00% |  0.00% )   ( 0.000908s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000690s |  0.00% |  0.00% )   ( 0.000816s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  77.5.0: 	( 76.543969s |  6.88% |  4.15% )   ( 74.360635s |  7.33% |  4.22% )    	(95x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.011888s |  0.00% |  0.01% )   ( 0.013848s |  0.00% |  0.01% )    	(95x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 5.283111s |  0.47% |  6.90% )   ( 5.061207s |  0.49% |  6.80% )    	(95x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 9.210431s |  0.82% | 12.03% )   ( 8.991538s |  0.88% | 12.09% )    	(95x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 7.399137s |  0.66% |  9.66% )   ( 7.193570s |  0.70% |  9.67% )    	(95x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 9.066297s |  0.81% | 11.84% )   ( 8.837392s |  0.87% | 11.88% )    	(95x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 7.091037s |  0.63% |  9.26% )   ( 6.931869s |  0.68% |  9.32% )    	(95x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 4.784723s |  0.43% |  6.25% )   ( 4.580940s |  0.45% |  6.16% )    	(95x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.225095s |  0.20% |  2.90% )   ( 2.092912s |  0.20% |  2.81% )    	(95x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 5.029585s |  0.45% |  6.57% )   ( 4.876967s |  0.48% |  6.55% )    	(95x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 1.921700s |  0.17% |  2.51% )   ( 1.848012s |  0.18% |  2.48% )    	(95x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 6.263474s |  0.56% |  8.18% )   ( 6.035263s |  0.59% |  8.11% )    	(95x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 13.990178s |  1.25% | 18.27% )   ( 13.797040s |  1.36% | 18.55% )    	(95x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 2.172619s |  0.19% |  2.83% )   ( 2.110162s |  0.20% |  2.83% )    	(95x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 2.094694s |  0.18% |  2.73% )   ( 1.989915s |  0.19% |  2.67% )    	(95x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  74.5.1: 	( 0.000452s |  0.00% |  0.00% )   ( 0.000521s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.012618s |  0.00% |  0.00% )   ( 0.014462s |  0.00% |  0.00% )    	(91x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.011632s |  0.00% |  0.00% )   ( 0.013421s |  0.00% |  0.00% )    	(87x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.013161s |  0.00% |  0.00% )   ( 0.014939s |  0.00% |  0.00% )    	(87x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000362s |  0.00% |  0.00% )   ( 0.000424s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000317s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.023194s |  0.00% |  0.02% )   ( 0.023480s |  0.00% |  0.03% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.lmb53t"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000371s |  0.00% |  0.00% )   ( 0.000422s |  0.00% |  0.00% )    	(4x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1415.3.0:     	( 0.002892s |  0.00% |  0.00% )   ( 0.003362s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1417.3.0:     	( 414.018274s | 37.21% |  3.38% )   ( 395.983937s | 39.04% |  3.55% )    	(22x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.021151s |  0.00% |  0.00% )   ( 0.021594s |  0.00% |  0.00% )    	(22x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  146.4.0:   	( 413.994212s | 37.21% | 99.99% )   ( 395.959023s | 39.04% | 99.99% )    	(22x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.004211s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(22x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.lmb53t"
│  │  │  │  │  12.5.0: 	( 0.002468s |  0.00% |  0.00% )   ( 0.002811s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p4
│  │  │  │  │  16.5.0: 	( 0.486386s |  0.04% |  0.11% )   ( 0.469331s |  0.04% |  0.11% )    	(22x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.lmb53t"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.520900s |  0.04% |  0.12% )   ( 0.504113s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 135033 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.503870s |  0.04% |  0.12% )   ( 0.502255s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 135033 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.507272s |  0.04% |  0.12% )   ( 0.505696s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 135033 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.520455s |  0.04% |  0.12% )   ( 0.518680s |  0.05% |  0.13% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.085085s |  0.00% |  0.00% )   ( 0.096484s |  0.00% |  0.00% )    	(542x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.074961s |  0.00% |  0.00% )   ( 0.086109s |  0.00% |  0.00% )    	(542x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.002497s |  0.00% |  0.00% )   ( 0.002864s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.lmb53t"/.nLines
│  │  │  │  │  24.5.2: 	( 0.002045s |  0.00% |  0.00% )   ( 0.002379s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.002194s |  0.00% |  0.00% )   ( 0.002562s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.096814s |  0.00% |  0.00% )   ( 0.105637s |  0.01% |  0.00% )    	(542x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.lmb53t"/.wait/p4
│  │  │  │  │  27.5.0: 	( 6.162074s |  0.55% |  0.06% )   ( 0.123258s |  0.01% |  0.00% )    	(542x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.082014s |  0.00% |  0.00% )   ( 0.092988s |  0.00% |  0.00% )    	(542x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.082603s |  0.00% |  0.00% )   ( 0.090780s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.074209s |  0.00% |  0.00% )   ( 0.082144s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.077844s |  0.00% |  0.00% )   ( 0.087225s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.640056s |  0.05% |  0.00% )   ( 0.620342s |  0.06% |  0.00% )    	(520x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.071882s |  0.00% |  0.00% )   ( 0.082724s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.071328s |  0.00% |  0.00% )   ( 0.082016s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.119146s |  0.01% |  0.00% )   ( 0.088078s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.089532s |  0.00% |  0.00% )   ( 0.100788s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.lmb53t"/.wait/p4
│  │  │  │  │  52.5.0: 	( 0.072960s |  0.00% |  0.00% )   ( 0.082767s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.070236s |  0.00% |  0.00% )   ( 0.081024s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.002674s |  0.00% |  0.00% )   ( 0.003088s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.002396s |  0.00% |  0.00% )   ( 0.002786s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.002592s |  0.00% |  0.00% )   ( 0.003020s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 403.166149s | 36.23% |  4.13% )   ( 391.115039s | 38.56% |  4.19% )    	(520x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.068049s |  0.00% |  0.01% )   ( 0.079167s |  0.00% |  0.02% )    	(520x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 27.474022s |  2.46% |  6.81% )   ( 26.564183s |  2.61% |  6.79% )    	(520x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 47.639704s |  4.28% | 11.81% )   ( 46.314975s |  4.56% | 11.84% )    	(520x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 38.769178s |  3.48% |  9.61% )   ( 37.579328s |  3.70% |  9.60% )    	(520x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 47.336043s |  4.25% | 11.74% )   ( 46.211147s |  4.55% | 11.81% )    	(520x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 37.599124s |  3.37% |  9.32% )   ( 36.552089s |  3.60% |  9.34% )    	(520x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 24.759294s |  2.22% |  6.14% )   ( 24.046935s |  2.37% |  6.14% )    	(520x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 12.258652s |  1.10% |  3.04% )   ( 11.699644s |  1.15% |  2.99% )    	(520x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 25.937359s |  2.33% |  6.43% )   ( 25.144522s |  2.47% |  6.42% )    	(520x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 10.750766s |  0.96% |  2.66% )   ( 10.199550s |  1.00% |  2.60% )    	(520x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 32.773555s |  2.94% |  8.12% )   ( 31.563406s |  3.11% |  8.07% )    	(520x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 73.675354s |  6.62% | 18.27% )   ( 72.376040s |  7.13% | 18.50% )    	(520x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 12.257168s |  1.10% |  3.04% )   ( 11.623580s |  1.14% |  2.97% )    	(520x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 11.867881s |  1.06% |  2.94% )   ( 11.160473s |  1.10% |  2.85% )    	(520x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.073714s |  0.00% |  0.00% )   ( 0.084796s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.071427s |  0.00% |  0.00% )   ( 0.079217s |  0.00% |  0.00% )    	(498x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.084553s |  0.00% |  0.00% )   ( 0.086729s |  0.00% |  0.00% )    	(498x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.002485s |  0.00% |  0.00% )   ( 0.002877s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.002590s |  0.00% |  0.00% )   ( 0.002974s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.162590s |  0.01% |  0.03% )   ( 0.160663s |  0.01% |  0.04% )    	(22x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.lmb53t"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.002911s |  0.00% |  0.00% )   ( 0.003320s |  0.00% |  0.00% )    	(22x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1417.3.0:     	( 34.662427s |  3.11% |  3.11% )   ( 33.026632s |  3.25% |  3.26% )    	(2x)	│  │  │ << (FUNCTION): main.forkrun.local p16 p16_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002182s |  0.00% |  0.00% )   ( 0.002223s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─local p16 p16_PID (&)
│  │  │  │  146.4.0:   	( 34.659939s |  3.11% | 99.99% )   ( 33.024063s |  3.25% | 99.99% )    	(2x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000271s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.lmb53t"
│  │  │  │  │  12.5.0: 	( 0.000263s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p16
│  │  │  │  │  16.5.0: 	( 0.042689s |  0.00% |  0.12% )   ( 0.042555s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.lmb53t"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.046329s |  0.00% |  0.13% )   ( 0.046203s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 135033 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.058935s |  0.00% |  0.17% )   ( 0.058747s |  0.00% |  0.17% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 135033 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.059408s |  0.00% |  0.17% )   ( 0.059198s |  0.00% |  0.17% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 135033 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.059934s |  0.00% |  0.17% )   ( 0.059735s |  0.00% |  0.18% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.009034s |  0.00% |  0.00% )   ( 0.010232s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.008239s |  0.00% |  0.00% )   ( 0.009463s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000286s |  0.00% |  0.00% )   ( 0.000325s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.lmb53t"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000255s |  0.00% |  0.00% )   ( 0.000291s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000233s |  0.00% |  0.00% )   ( 0.000272s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.009970s |  0.00% |  0.00% )   ( 0.011221s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.lmb53t"/.wait/p16
│  │  │  │  │  27.5.0: 	( 0.495840s |  0.04% |  0.05% )   ( 0.012719s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.008713s |  0.00% |  0.00% )   ( 0.009922s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.008571s |  0.00% |  0.00% )   ( 0.009824s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.007945s |  0.00% |  0.00% )   ( 0.009050s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.008279s |  0.00% |  0.00% )   ( 0.009438s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.067238s |  0.00% |  0.00% )   ( 0.065176s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  37.5.0: 	( 0.007663s |  0.00% |  0.00% )   ( 0.008821s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  37.5.1: 	( 0.010248s |  0.00% |  0.00% )   ( 0.008319s |  0.00% |  0.00% )    	(53x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.010415s |  0.00% |  0.00% )   ( 0.009305s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  51.5.0: 	( 0.009831s |  0.00% |  0.00% )   ( 0.011057s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.lmb53t"/.wait/p16
│  │  │  │  │  52.5.0: 	( 0.007857s |  0.00% |  0.00% )   ( 0.009023s |  0.00% |  0.00% )    	(55x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  72.5.0: 	( 0.007411s |  0.00% |  0.00% )   ( 0.008540s |  0.00% |  0.00% )    	(53x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  73.5.0: 	( 0.000299s |  0.00% |  0.00% )   ( 0.000345s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  74.5.0: 	( 0.000263s |  0.00% |  0.00% )   ( 0.000310s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  74.5.1: 	( 0.000275s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  77.5.0: 	( 33.667558s |  3.02% |  3.66% )   ( 32.506854s |  3.20% |  3.71% )    	(53x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.007077s |  0.00% |  0.02% )   ( 0.008211s |  0.00% |  0.02% )    	(53x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 2.265987s |  0.20% |  6.73% )   ( 2.165091s |  0.21% |  6.66% )    	(53x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 3.768313s |  0.33% | 11.19% )   ( 3.678261s |  0.36% | 11.31% )    	(53x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 3.185568s |  0.28% |  9.46% )   ( 3.094471s |  0.30% |  9.51% )    	(53x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 3.789167s |  0.34% | 11.25% )   ( 3.641189s |  0.35% | 11.20% )    	(53x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 3.072548s |  0.27% |  9.12% )   ( 2.988990s |  0.29% |  9.19% )    	(53x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 2.064170s |  0.18% |  6.13% )   ( 1.995036s |  0.19% |  6.13% )    	(53x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 1.137951s |  0.10% |  3.37% )   ( 1.107321s |  0.10% |  3.40% )    	(53x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.134427s |  0.19% |  6.33% )   ( 2.065059s |  0.20% |  6.35% )    	(53x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 1.047263s |  0.09% |  3.11% )   ( 1.001960s |  0.09% |  3.08% )    	(53x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 2.802088s |  0.25% |  8.32% )   ( 2.731273s |  0.26% |  8.40% )    	(53x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 5.976115s |  0.53% | 17.75% )   ( 5.808245s |  0.57% | 17.86% )    	(53x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 1.191994s |  0.10% |  3.54% )   ( 1.124756s |  0.11% |  3.46% )    	(53x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 1.224890s |  0.11% |  3.63% )   ( 1.096991s |  0.10% |  3.37% )    	(53x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.008033s |  0.00% |  0.00% )   ( 0.009185s |  0.00% |  0.00% )    	(53x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  72.5.1: 	( 0.007218s |  0.00% |  0.00% )   ( 0.008314s |  0.00% |  0.00% )    	(51x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  75.5.0: 	( 0.011013s |  0.00% |  0.00% )   ( 0.009065s |  0.00% |  0.00% )    	(51x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  53.5.0: 	( 0.000256s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  62.5.0: 	( 0.000254s |  0.00% |  0.00% )   ( 0.000295s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  63.5.0: 	( 0.000276s |  0.00% |  0.00% )   ( 0.000317s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  65.5.0: 	( 0.000302s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.lmb53t"/.quit
│  │  │  │  │  66.5.0: 	( 0.000409s |  0.00% |  0.00% )   ( 0.000442s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p* 1>&21
│  │  │  │  │  67.5.0: 	( 0.000313s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.017613s |  0.00% |  0.05% )   ( 0.017576s |  0.00% |  0.05% )    	(2x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.lmb53t"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.lmb53t"/.run/p16\; \$\\nprintf \n >&21'
│  │  │  └─ 219.4.0:   	( 0.000306s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  └─p_PID+=(${p16_PID})
│  │  │  1419.3.0:     	( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1420.3.0:     	( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1421.3.0:     	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1424.3.0:     	( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1429.3.0:     	( 0.001310s |  0.00% |  0.00% )   ( 0.001323s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1434.3.0:     	( 0.000130s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1496.3.0:     	( 0.000134s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1499.3.0:     	( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1506.3.0:     	( 24.726266s |  2.22% |  4.44% )   ( 0.001755s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1510.3.0:     	( 0.000289s |  0.00% |  0.00% )   ( 0.000325s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1515.3.0:     	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1521.2.0:        	( 0.000095s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -335.2.0:        	( 0.005805s |  0.00% |  0.00% )   ( 0.002263s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.lmb53t" 2>/dev/null'

2.0.0:                 	( 555.779649s | 49.95% )            ( 507.786040s | 50.07% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
├─ 1.1.0:              	( 0.001383s |  0.00% |  0.00% )   ( 0.001103s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  603.1.0:            	( 555.778266s | 49.95% | 99.99% )   ( 507.784937s | 50.07% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 603.2.0:         	( 0.027367s |  0.00% |  0.00% )   ( 0.027306s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  128.2.0:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  131.2.0:         	( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  132.2.0:         	( 0.000125s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  133.2.0:         	( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  134.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  135.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  140.2.0:         	( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  143.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  143.2.1:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  144.2.0:         	( 0.000123s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
│  │  144.2.1:         	( 0.000128s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
│  │  144.2.2:         	( 0.000122s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
│  │  145.2.0:         	( 0.000100s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
│  │  272.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
│  │  272.2.1:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
│  │  336.2.0:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
│  │  337.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
│  │  341.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  350.2.0:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  350.2.1:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  350.2.2:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  350.2.3:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  352.2.0:         	( 0.001314s |  0.00% |  0.00% )   ( 0.000988s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
│  │  352.2.1:         	( 0.004549s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 352.3.0:      	( 0.004549s |  0.00% |100.00% )   ( 0.004550s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
│  │  353.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  355.2.0:         	( 0.001548s |  0.00% |  0.00% )   ( 0.001620s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  356.2.0:         	( 0.000087s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  358.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  358.2.1:         	( 0.017398s |  0.00% |  0.00% )   ( 0.000985s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  366.2.0:         	( 555.718901s | 49.95% | 99.98% )   ( 507.743620s | 50.07% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 366.3.0:      	( 0.000097s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1520.3.0:     	( 0.001401s |  0.00% |  0.00% )   ( 0.001661s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1520.4.0:  	( 0.001401s |  0.00% |100.00% )   ( 0.001661s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  381.3.0:      	( 0.000110s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  382.3.0:      	( 0.000090s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  383.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  385.3.0:      	( 0.000195s |  0.00% |  0.00% )   ( 0.014050s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  387.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  388.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  389.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  391.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  393.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  396.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  398.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  399.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  404.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  405.3.0:      	( 0.003241s |  0.00% |  0.00% )   ( 0.003298s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  405.3.1:      	( 0.000109s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 405.4.0:   	( 0.000109s |  0.00% |100.00% )   ( 0.000127s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  405.3.2:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  409.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  414.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  416.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  417.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  418.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  419.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  423.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  485.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  485.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  486.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  486.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  490.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  495.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  499.3.0:      	( 0.000829s |  0.00% |  0.00% )   ( 0.000992s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000060s |  0.00% |  7.23% )   ( 0.000073s |  0.00% |  7.35% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  12.4.0:    	( 0.000067s |  0.00% |  8.08% )   ( 0.000079s |  0.00% |  7.96% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  13.4.0:    	( 0.000064s |  0.00% |  7.72% )   ( 0.000076s |  0.00% |  7.66% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  15.4.0:    	( 0.000065s |  0.00% |  7.84% )   ( 0.000078s |  0.00% |  7.86% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  16.4.0:    	( 0.000063s |  0.00% |  7.59% )   ( 0.000075s |  0.00% |  7.56% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  17.4.0:    	( 0.000069s |  0.00% |  8.32% )   ( 0.000083s |  0.00% |  8.36% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  19.4.0:    	( 0.000063s |  0.00% |  7.59% )   ( 0.000086s |  0.00% |  8.66% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  19.4.1:    	( 0.000121s |  0.00% | 14.59% )   ( 0.000131s |  0.00% | 13.20% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  21.4.0:    	( 0.000063s |  0.00% |  7.59% )   ( 0.000076s |  0.00% |  7.66% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  22.4.0:    	( 0.000061s |  0.00% |  7.35% )   ( 0.000074s |  0.00% |  7.45% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  22.4.1:    	( 0.000063s |  0.00% |  7.59% )   ( 0.000076s |  0.00% |  7.66% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 32.4.0:    	( 0.000070s |  0.00% |  8.44% )   ( 0.000085s |  0.00% |  8.56% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  501.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  503.3.0:      	( 0.011515s |  0.00% |  0.00% )   ( 0.011642s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  503.3.1:      	( 0.004214s |  0.00% |  0.00% )   ( 0.004409s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 503.4.0:   	( 0.000541s |  0.00% | 12.83% )   ( 0.000574s |  0.00% | 13.01% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 503.4.1:   	( 0.003673s |  0.00% | 87.16% )   ( 0.003835s |  0.00% | 86.98% )    	(1x)	│  │  │  └─nproc
│  │  │  504.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  505.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  505.3.1:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  505.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  507.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  511.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  517.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  519.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  522.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  522.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  522.3.2:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  524.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  527.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.0:      	( 0.000153s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  533.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  533.3.2:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  536.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  539.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  540.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  541.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  542.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
│  │  │  543.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  543.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
│  │  │  544.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
│  │  │  545.3.0:      	( 0.000103s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
│  │  │  546.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
│  │  │  547.3.0:      	( 0.003557s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep -qF 'coreutils'
│  │  │  548.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
│  │  │  555.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  556.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  557.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
│  │  │  575.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  584.3.0:      	( 0.003241s |  0.00% |  0.00% )   ( 0.003356s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  584.3.1:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 584.4.0:   	( 0.000085s |  0.00% |100.00% )   ( 0.000102s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  585.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  588.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  594.3.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  596.3.0:      	( 0.001330s |  0.00% |  0.00% )   ( 0.001396s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  597.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  600.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  602.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  633.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  635.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  640.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  642.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  646.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  656.3.0:      	( 0.000595s |  0.00% |  0.00% )   ( 0.000604s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  662.3.0:      	( 0.092611s |  0.00% |  0.01% )   ( 0.092528s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 662.4.0:   	( 0.000317s |  0.00% |  0.34% )   ( 0.000365s |  0.00% |  0.39% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  664.4.0:   	( 0.013726s |  0.00% | 14.82% )   ( 0.013702s |  0.00% | 14.80% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  665.4.0:   	( 0.014844s |  0.00% | 16.02% )   ( 0.014816s |  0.00% | 16.01% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  666.4.0:   	( 0.014902s |  0.00% | 16.09% )   ( 0.014874s |  0.00% | 16.07% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  667.4.0:   	( 0.014853s |  0.00% | 16.03% )   ( 0.014821s |  0.00% | 16.01% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  668.4.0:   	( 0.014827s |  0.00% | 16.00% )   ( 0.014800s |  0.00% | 15.99% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  670.4.0:   	( 0.000073s |  0.00% |  0.07% )   ( 0.000081s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  671.4.0:   	( 0.018835s |  0.00% | 20.33% )   ( 0.018797s |  0.00% | 20.31% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  676.4.0:   	( 0.000100s |  0.00% |  0.10% )   ( 0.000113s |  0.00% |  0.12% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  677.4.0:   	( 0.000068s |  0.00% |  0.07% )   ( 0.000081s |  0.00% |  0.08% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 678.4.0:   	( 0.000066s |  0.00% |  0.07% )   ( 0.000078s |  0.00% |  0.08% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  686.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  691.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  733.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  737.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  739.3.0:      	( 0.000466s |  0.00% |  0.00% )   ( 0.000489s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  749.3.0:      	( 4.497368s |  0.40% |  0.80% )   ( 1.791454s |  0.17% |  0.35% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 749.4.0:   	( 0.000180s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  751.4.0:   	( 0.018689s |  0.00% |  0.41% )   ( 0.018639s |  0.00% |  1.04% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  752.4.0:   	( 0.014920s |  0.00% |  0.33% )   ( 0.014886s |  0.00% |  0.83% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  753.4.0:   	( 0.014861s |  0.00% |  0.33% )   ( 0.014832s |  0.00% |  0.82% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  754.4.0:   	( 0.014878s |  0.00% |  0.33% )   ( 0.014851s |  0.00% |  0.82% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  755.4.0:   	( 0.014836s |  0.00% |  0.32% )   ( 0.014809s |  0.00% |  0.82% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  757.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  758.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  759.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  761.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  763.4.0:   	( 0.089001s |  0.00% |  0.00% )   ( 0.102836s |  0.01% |  0.00% )    	(673x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  765.4.0:   	( 3.010234s |  0.27% |  0.09% )   ( 0.118934s |  0.01% |  0.00% )    	(672x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  765.4.1:   	( 0.001015s |  0.00% |  0.00% )   ( 0.001164s |  0.00% |  0.01% )    	(6x)	│  │  │  │ continue
│  │  │  │  767.4.0:   	( 0.086695s |  0.00% |  0.00% )   ( 0.100496s |  0.00% |  0.00% )    	(666x)	│  │  │  │ case ${REPLY} in
│  │  │  │  781.4.0:   	( 0.086940s |  0.00% |  0.00% )   ( 0.100882s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.0:   	( 0.000193s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  785.4.0:   	( 0.000208s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  791.4.0:   	( 0.086311s |  0.00% |  0.00% )   ( 0.099970s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  792.4.0:   	( 0.088831s |  0.00% |  0.00% )   ( 0.102455s |  0.01% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  793.4.0:   	( 0.089328s |  0.00% |  0.00% )   ( 0.103107s |  0.01% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  800.4.0:   	( 0.085405s |  0.00% |  0.00% )   ( 0.099136s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  800.4.1:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  802.4.0:   	( 0.086001s |  0.00% |  0.00% )   ( 0.099757s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  804.4.0:   	( 0.086155s |  0.00% |  0.00% )   ( 0.099869s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  806.4.0:   	( 0.000075s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  808.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  809.4.0:   	( 0.006450s |  0.00% |  0.14% )   ( 0.006958s |  0.00% |  0.38% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  809.4.1:   	( 0.003142s |  0.00% |  0.06% )   ( 0.003518s |  0.00% |  0.19% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 809.5.0:  	( 0.003142s |  0.00% |100.00% )   ( 0.003518s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  810.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  811.4.0:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  814.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  816.4.0:   	( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  818.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  818.4.1:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  818.4.2:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  820.4.0:   	( 0.000102s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  823.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  825.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  829.4.0:   	( 0.087379s |  0.00% |  0.00% )   ( 0.099843s |  0.00% |  0.00% )    	(666x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  830.4.0:   	( 0.085166s |  0.00% |  0.00% )   ( 0.098898s |  0.00% |  0.00% )    	(666x)	│  │  │  │ case ${nWait} in
│  │  │  │  841.4.0:   	( 0.083715s |  0.00% |  0.00% )   ( 0.097065s |  0.00% |  0.00% )    	(645x)	│  │  │  │ ((nWait--))
│  │  │  │  846.4.0:   	( 0.089689s |  0.00% |  0.00% )   ( 0.103576s |  0.01% |  0.00% )    	(666x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  781.4.1:   	( 0.086784s |  0.00% |  0.00% )   ( 0.100496s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  800.4.1:   	( 0.086715s |  0.00% |  0.00% )   ( 0.100420s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  832.4.0:   	( 0.002635s |  0.00% |  0.00% )   ( 0.003054s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  833.4.0:   	( 0.002610s |  0.00% |  0.00% )   ( 0.003032s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  834.4.0:   	( 0.071944s |  0.00% |  0.07% )   ( 0.049064s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  835.4.0:   	( 0.002867s |  0.00% |  0.00% )   ( 0.003343s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  836.4.0:   	( 0.002917s |  0.00% |  0.00% )   ( 0.003380s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  838.4.0:   	( 0.002939s |  0.00% |  0.00% )   ( 0.003365s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  847.4.0:   	( 0.000176s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  848.4.0:   	( 0.000171s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.01% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  849.4.0:   	( 0.000171s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  763.4.1:   	( 0.000170s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  763.4.2:   	( 0.000197s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -335.4.0:  	( 0.005675s |  0.00% |  0.12% )   ( 0.005759s |  0.00% |  0.32% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/pAuto'
│  │  │  857.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  858.3.0:      	( 0.000101s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  894.3.0:      	( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1363.3.0:     	( 0.054496s |  0.00% |  0.00% )   ( 0.054601s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1380.3.0:     	( 0.005005s |  0.00% |  0.00% )   ( 0.005832s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1380.4.0:  	( 0.000152s |  0.00% |  3.03% )   ( 0.000173s |  0.00% |  2.96% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1381.4.0:  	( 0.000104s |  0.00% |  2.07% )   ( 0.000115s |  0.00% |  1.97% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1381.4.1:  	( 0.000116s |  0.00% |  2.31% )   ( 0.000128s |  0.00% |  2.19% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1389.4.0:  	( 0.000298s |  0.00% |  5.95% )   ( 0.000316s |  0.00% |  5.41% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1390.4.0:  	( 0.000091s |  0.00% |  1.81% )   ( 0.000107s |  0.00% |  1.83% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1462.4.0:  	( 0.000090s |  0.00% |  1.79% )   ( 0.000106s |  0.00% |  1.81% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1465.4.0:  	( 0.000067s |  0.00% |  1.33% )   ( 0.000079s |  0.00% |  1.35% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1466.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1467.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000076s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1467.4.1:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.37% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1468.4.0:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000079s |  0.00% |  1.35% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1469.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1469.4.1:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.33% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1470.4.0:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.37% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1471.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000076s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1471.4.1:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.37% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1472.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000076s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1472.4.1:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000077s |  0.00% |  1.32% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1472.4.2:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.35% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1474.4.0:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.37% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1475.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1475.4.1:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1475.4.2:  	( 0.000103s |  0.00% |  2.05% )   ( 0.000114s |  0.00% |  1.95% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1532.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1532.4.1:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000073s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1532.4.2:  	( 0.000070s |  0.00% |  1.39% )   ( 0.000081s |  0.00% |  1.38% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1533.4.0:  	( 0.000070s |  0.00% |  1.39% )   ( 0.000080s |  0.00% |  1.37% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1546.4.0:  	( 0.000100s |  0.00% |  1.99% )   ( 0.000113s |  0.00% |  1.93% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1547.4.0:  	( 0.000061s |  0.00% |  1.21% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1550.4.0:  	( 0.000091s |  0.00% |  1.81% )   ( 0.000104s |  0.00% |  1.78% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1561.4.0:  	( 0.000077s |  0.00% |  1.53% )   ( 0.000091s |  0.00% |  1.56% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1562.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1562.4.1:  	( 0.000082s |  0.00% |  1.63% )   ( 0.000095s |  0.00% |  1.62% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1563.4.0:  	( 0.000067s |  0.00% |  1.33% )   ( 0.000080s |  0.00% |  1.37% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1564.4.0:  	( 0.000076s |  0.00% |  1.51% )   ( 0.000088s |  0.00% |  1.50% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1569.4.0:  	( 0.000097s |  0.00% |  1.93% )   ( 0.000110s |  0.00% |  1.88% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1570.4.0:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000092s |  0.00% |  1.83% )   ( 0.000105s |  0.00% |  1.80% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1575.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1575.4.1:  	( 0.000080s |  0.00% |  1.59% )   ( 0.000093s |  0.00% |  1.59% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1580.4.0:  	( 0.000070s |  0.00% |  1.39% )   ( 0.000083s |  0.00% |  1.42% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1580.4.1:  	( 0.000085s |  0.00% |  1.69% )   ( 0.000097s |  0.00% |  1.66% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1581.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1581.4.1:  	( 0.000094s |  0.00% |  1.87% )   ( 0.000106s |  0.00% |  1.81% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1582.4.0:  	( 0.000061s |  0.00% |  1.21% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1582.4.1:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000076s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1590.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000072s |  0.00% |  1.23% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1590.4.1:  	( 0.000084s |  0.00% |  1.67% )   ( 0.000098s |  0.00% |  1.68% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1591.4.0:  	( 0.000061s |  0.00% |  1.21% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1591.4.1:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.32% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1592.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1593.4.0:  	( 0.000087s |  0.00% |  1.73% )   ( 0.000099s |  0.00% |  1.69% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1594.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1601.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000073s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1604.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000076s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1607.4.0:  	( 0.000061s |  0.00% |  1.21% )   ( 0.000073s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1608.4.0:  	( 0.000082s |  0.00% |  1.63% )   ( 0.000095s |  0.00% |  1.62% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1613.4.0:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000081s |  0.00% |  1.38% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1625.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000076s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1626.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000071s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1626.4.1:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000081s |  0.00% |  1.38% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1627.4.0:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000081s |  0.00% |  1.38% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1628.4.0:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.37% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1629.4.0:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1634.4.0:  	( 0.000089s |  0.00% |  1.77% )   ( 0.000102s |  0.00% |  1.74% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1368.3.0:     	( 0.000276s |  0.00% |  0.00% )   ( 0.000309s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1373.3.0:     	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1378.3.0:     	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1380.3.0:     	( 0.015176s |  0.00% |  0.00% )   ( 0.015139s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1385.3.0:     	( 0.015159s |  0.00% |  0.00% )   ( 0.015131s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1390.3.0:     	( 0.015111s |  0.00% |  0.00% )   ( 0.120746s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1395.3.0:     	( 0.014967s |  0.00% |  0.00% )   ( 0.014931s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1397.3.0:     	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1398.3.0:     	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1400.3.0:     	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1411.3.0:     	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1414.3.0:     	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1415.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1415.3.1:     	( 0.002895s |  0.00% |  0.00% )   ( 0.003369s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1416.3.0:     	( 0.002819s |  0.00% |  0.00% )   ( 0.003247s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1417.3.0:     	( 71.241210s |  6.40% |  3.20% )   ( 67.802008s |  6.68% |  3.33% )    	(4x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002448s |  0.00% |  0.00% )   ( 0.002520s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  146.4.0:   	( 71.238382s |  6.40% | 99.99% )   ( 67.799057s |  6.68% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.001269s |  0.00% |  0.00% )   ( 0.001438s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.gGmzMp"
│  │  │  │  │  12.5.0: 	( 0.001322s |  0.00% |  0.00% )   ( 0.001467s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p0
│  │  │  │  │  16.5.0: 	( 0.060971s |  0.00% |  0.08% )   ( 0.060872s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.gGmzMp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.059992s |  0.00% |  0.08% )   ( 0.059906s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 143852 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.060591s |  0.00% |  0.08% )   ( 0.060499s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 143852 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.060791s |  0.00% |  0.08% )   ( 0.060687s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 143852 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.060651s |  0.00% |  0.08% )   ( 0.060549s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.018100s |  0.00% |  0.00% )   ( 0.020571s |  0.00% |  0.00% )    	(116x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.016223s |  0.00% |  0.00% )   ( 0.018665s |  0.00% |  0.00% )    	(116x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000733s |  0.00% |  0.00% )   ( 0.000847s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.gGmzMp"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000596s |  0.00% |  0.00% )   ( 0.000697s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000638s |  0.00% |  0.00% )   ( 0.000749s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.019935s |  0.00% |  0.00% )   ( 0.022360s |  0.00% |  0.00% )    	(116x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.gGmzMp"/.wait/p0
│  │  │  │  │  27.5.0: 	( 0.700199s |  0.06% |  0.03% )   ( 0.024401s |  0.00% |  0.00% )    	(116x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.016818s |  0.00% |  0.00% )   ( 0.019251s |  0.00% |  0.00% )    	(116x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.021581s |  0.00% |  0.00% )   ( 0.018300s |  0.00% |  0.00% )    	(112x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.014954s |  0.00% |  0.00% )   ( 0.017285s |  0.00% |  0.00% )    	(112x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.015935s |  0.00% |  0.00% )   ( 0.018280s |  0.00% |  0.00% )    	(112x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.140025s |  0.01% |  0.00% )   ( 0.130036s |  0.01% |  0.00% )    	(112x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.030623s |  0.00% |  0.00% )   ( 0.018884s |  0.00% |  0.00% )    	(112x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.018963s |  0.00% |  0.00% )   ( 0.021427s |  0.00% |  0.00% )    	(112x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.gGmzMp"/.wait/p0
│  │  │  │  │  40.5.0: 	( 0.018126s |  0.00% |  0.00% )   ( 0.017496s |  0.00% |  0.00% )    	(112x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.014804s |  0.00% |  0.00% )   ( 0.017150s |  0.00% |  0.00% )    	(112x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000822s |  0.00% |  0.00% )   ( 0.000950s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000742s |  0.00% |  0.00% )   ( 0.000863s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  65.5.0: 	( 69.800474s |  6.27% |  3.50% )   ( 67.035624s |  6.61% |  3.53% )    	(112x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.014104s |  0.00% |  0.02% )   ( 0.016429s |  0.00% |  0.02% )    	(112x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 4.710898s |  0.42% |  6.74% )   ( 4.518793s |  0.44% |  6.74% )    	(112x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 7.831391s |  0.70% | 11.21% )   ( 7.574422s |  0.74% | 11.29% )    	(112x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 6.672781s |  0.59% |  9.55% )   ( 6.416586s |  0.63% |  9.57% )    	(112x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 7.770831s |  0.69% | 11.13% )   ( 7.567527s |  0.74% | 11.28% )    	(112x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 6.460644s |  0.58% |  9.25% )   ( 6.209433s |  0.61% |  9.26% )    	(112x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 4.250784s |  0.38% |  6.08% )   ( 4.081296s |  0.40% |  6.08% )    	(112x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.434998s |  0.21% |  3.48% )   ( 2.282816s |  0.22% |  3.40% )    	(112x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 4.499440s |  0.40% |  6.44% )   ( 4.253037s |  0.41% |  6.34% )    	(112x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 2.182704s |  0.19% |  3.12% )   ( 2.024781s |  0.19% |  3.02% )    	(112x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 5.870522s |  0.52% |  8.41% )   ( 5.618434s |  0.55% |  8.38% )    	(112x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 12.284535s |  1.10% | 17.59% )   ( 11.912767s |  1.17% | 17.77% )    	(112x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 2.461677s |  0.22% |  3.52% )   ( 2.318889s |  0.22% |  3.45% )    	(112x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 2.355165s |  0.21% |  3.37% )   ( 2.240414s |  0.22% |  3.34% )    	(112x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  62.5.1: 	( 0.000428s |  0.00% |  0.00% )   ( 0.000499s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  24.5.1: 	( 0.015670s |  0.00% |  0.00% )   ( 0.018007s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.014368s |  0.00% |  0.00% )   ( 0.016607s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.015901s |  0.00% |  0.00% )   ( 0.018072s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.000599s |  0.00% |  0.00% )   ( 0.000689s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.000675s |  0.00% |  0.00% )   ( 0.000769s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.034863s |  0.00% |  0.04% )   ( 0.035160s |  0.00% |  0.05% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.gGmzMp"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000380s |  0.00% |  0.00% )   ( 0.000431s |  0.00% |  0.00% )    	(4x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1415.3.0:     	( 0.002874s |  0.00% |  0.00% )   ( 0.003335s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1417.3.0:     	( 437.998973s | 39.36% |  3.42% )   ( 421.455662s | 41.56% |  3.60% )    	(23x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.020892s |  0.00% |  0.00% )   ( 0.021386s |  0.00% |  0.00% )    	(23x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  146.4.0:   	( 437.975047s | 39.36% | 99.99% )   ( 421.430784s | 41.55% | 99.99% )    	(23x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.004701s |  0.00% |  0.00% )   ( 0.005330s |  0.00% |  0.00% )    	(23x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.gGmzMp"
│  │  │  │  │  12.5.0: 	( 0.004229s |  0.00% |  0.00% )   ( 0.004733s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p4
│  │  │  │  │  16.5.0: 	( 0.563995s |  0.05% |  0.12% )   ( 0.550099s |  0.05% |  0.13% )    	(23x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.gGmzMp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.521534s |  0.04% |  0.11% )   ( 0.507271s |  0.05% |  0.12% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 143852 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.533177s |  0.04% |  0.12% )   ( 0.531537s |  0.05% |  0.12% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 143852 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.550657s |  0.04% |  0.12% )   ( 0.548921s |  0.05% |  0.13% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 143852 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.550355s |  0.04% |  0.12% )   ( 0.548626s |  0.05% |  0.13% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.087250s |  0.00% |  0.00% )   ( 0.099006s |  0.00% |  0.00% )    	(550x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.079962s |  0.00% |  0.00% )   ( 0.088666s |  0.00% |  0.00% )    	(550x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.002805s |  0.00% |  0.00% )   ( 0.003205s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.gGmzMp"/.nLines
│  │  │  │  │  24.5.2: 	( 0.002472s |  0.00% |  0.00% )   ( 0.002884s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.002372s |  0.00% |  0.00% )   ( 0.002759s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.096376s |  0.00% |  0.00% )   ( 0.108006s |  0.01% |  0.00% )    	(550x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.gGmzMp"/.wait/p4
│  │  │  │  │  27.5.0: 	( 3.127649s |  0.28% |  0.02% )   ( 0.119621s |  0.01% |  0.00% )    	(550x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.083465s |  0.00% |  0.00% )   ( 0.093405s |  0.00% |  0.00% )    	(550x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.077692s |  0.00% |  0.00% )   ( 0.089100s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.071760s |  0.00% |  0.00% )   ( 0.082791s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.080405s |  0.00% |  0.00% )   ( 0.088351s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.649547s |  0.05% |  0.00% )   ( 0.636064s |  0.06% |  0.00% )    	(527x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.109580s |  0.00% |  0.00% )   ( 0.091599s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.100046s |  0.00% |  0.00% )   ( 0.102625s |  0.01% |  0.00% )    	(527x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.gGmzMp"/.wait/p4
│  │  │  │  │  40.5.0: 	( 0.072816s |  0.00% |  0.00% )   ( 0.083570s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.073656s |  0.00% |  0.00% )   ( 0.081673s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.002762s |  0.00% |  0.00% )   ( 0.003183s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.002403s |  0.00% |  0.00% )   ( 0.002804s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.002546s |  0.00% |  0.00% )   ( 0.002969s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 430.115844s | 38.66% |  4.29% )   ( 416.533219s | 41.07% |  4.33% )    	(527x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.070869s |  0.00% |  0.01% )   ( 0.079146s |  0.00% |  0.01% )    	(527x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 29.384320s |  2.64% |  6.83% )   ( 28.454688s |  2.80% |  6.83% )    	(527x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 51.503667s |  4.62% | 11.97% )   ( 50.073833s |  4.93% | 12.02% )    	(527x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 41.637318s |  3.74% |  9.68% )   ( 40.181269s |  3.96% |  9.64% )    	(527x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 50.955963s |  4.58% | 11.84% )   ( 49.589657s |  4.89% | 11.90% )    	(527x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 40.218717s |  3.61% |  9.35% )   ( 38.951045s |  3.84% |  9.35% )    	(527x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 26.476854s |  2.37% |  6.15% )   ( 25.580857s |  2.52% |  6.14% )    	(527x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 12.641904s |  1.13% |  2.93% )   ( 12.037046s |  1.18% |  2.88% )    	(527x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 27.665312s |  2.48% |  6.43% )   ( 26.762276s |  2.63% |  6.42% )    	(527x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 11.041932s |  0.99% |  2.56% )   ( 10.464300s |  1.03% |  2.51% )    	(527x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 34.830007s |  3.13% |  8.09% )   ( 33.464720s |  3.30% |  8.03% )    	(527x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 78.989687s |  7.09% | 18.36% )   ( 77.579265s |  7.65% | 18.62% )    	(527x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 12.590592s |  1.13% |  2.92% )   ( 11.942828s |  1.17% |  2.86% )    	(527x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 12.108702s |  1.08% |  2.81% )   ( 11.372289s |  1.12% |  2.73% )    	(527x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.077542s |  0.00% |  0.00% )   ( 0.086943s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.080070s |  0.00% |  0.00% )   ( 0.079553s |  0.00% |  0.00% )    	(504x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.085139s |  0.00% |  0.00% )   ( 0.087917s |  0.00% |  0.00% )    	(504x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  29.5.0: 	( 0.002328s |  0.00% |  0.00% )   ( 0.002690s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  30.5.0: 	( 0.002503s |  0.00% |  0.00% )   ( 0.002886s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.157409s |  0.01% |  0.03% )   ( 0.158778s |  0.01% |  0.03% )    	(23x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.gGmzMp"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.003034s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(23x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1417.3.0:     	( 17.167455s |  1.54% |  3.08% )   ( 16.306847s |  1.60% |  3.21% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p22 p22_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000998s |  0.00% |  0.00% )   ( 0.001025s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p22 p22_PID (&)
│  │  │  │  146.4.0:   	( 17.166290s |  1.54% | 99.99% )   ( 16.305628s |  1.60% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 146.5.0:  	( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.gGmzMp"
│  │  │  │  │  12.5.0: 	( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p22
│  │  │  │  │  16.5.0: 	( 0.029368s |  0.00% |  0.17% )   ( 0.029264s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun/forkrun.gGmzMp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  18.5.0: 	( 0.029509s |  0.00% |  0.17% )   ( 0.029393s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 143852 ${BASHPID}' INT
│  │  │  │  │  19.5.0: 	( 0.029299s |  0.00% |  0.17% )   ( 0.029200s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 143852 ${BASHPID}' TERM
│  │  │  │  │  20.5.0: 	( 0.029457s |  0.00% |  0.17% )   ( 0.029350s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 143852 ${BASHPID}' HUP
│  │  │  │  │  21.5.0: 	( 0.032305s |  0.00% |  0.18% )   ( 0.032188s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  23.5.0: 	( 0.004857s |  0.00% |  0.00% )   ( 0.005505s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ true
│  │  │  │  │  24.5.0: 	( 0.007307s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  24.5.1: 	( 0.000094s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.gGmzMp"/.nLines
│  │  │  │  │  24.5.2: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  24.5.3: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  26.5.0: 	( 0.005275s |  0.00% |  0.00% )   ( 0.005889s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.gGmzMp"/.wait/p22
│  │  │  │  │  27.5.0: 	( 0.175601s |  0.01% |  0.03% )   ( 0.006926s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  28.5.0: 	( 0.004744s |  0.00% |  0.00% )   ( 0.005402s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.quit ]]
│  │  │  │  │  32.5.0: 	( 0.004577s |  0.00% |  0.00% )   ( 0.005251s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.done ]]
│  │  │  │  │  32.5.1: 	( 0.004203s |  0.00% |  0.00% )   ( 0.004851s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  34.5.0: 	( 0.004477s |  0.00% |  0.00% )   ( 0.005121s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  35.5.0: 	( 0.041337s |  0.00% |  0.00% )   ( 0.035889s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  38.5.0: 	( 0.010838s |  0.00% |  0.00% )   ( 0.005509s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  39.5.0: 	( 0.005342s |  0.00% |  0.00% )   ( 0.006025s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.gGmzMp"/.wait/p22
│  │  │  │  │  40.5.0: 	( 0.004383s |  0.00% |  0.00% )   ( 0.005030s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  60.5.0: 	( 0.004062s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  61.5.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  62.5.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  62.5.1: 	( 0.000098s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  65.5.0: 	( 16.713355s |  1.50% |  3.35% )   ( 16.030179s |  1.58% |  3.39% )    	(29x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003772s |  0.00% |  0.02% )   ( 0.004410s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  12.6.0:    	( 1.097871s |  0.09% |  6.56% )   ( 1.086642s |  0.10% |  6.77% )    	(29x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.840662s |  0.16% | 11.01% )   ( 1.774117s |  0.17% | 11.06% )    	(29x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.581929s |  0.14% |  9.46% )   ( 1.531476s |  0.15% |  9.55% )    	(29x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.777611s |  0.15% | 10.63% )   ( 1.744799s |  0.17% | 10.88% )    	(29x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.545711s |  0.13% |  9.24% )   ( 1.467065s |  0.14% |  9.15% )    	(29x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.069903s |  0.09% |  6.40% )   ( 0.997586s |  0.09% |  6.22% )    	(29x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 0.628014s |  0.05% |  3.75% )   ( 0.597601s |  0.05% |  3.72% )    	(29x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.099955s |  0.09% |  6.58% )   ( 1.014763s |  0.10% |  6.33% )    	(29x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  20.6.0:    	( 0.596126s |  0.05% |  3.56% )   ( 0.528483s |  0.05% |  3.29% )    	(29x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  21.6.0:    	( 1.424404s |  0.12% |  8.52% )   ( 1.359961s |  0.13% |  8.48% )    	(29x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  22.6.0:    	( 2.799233s |  0.25% | 16.74% )   ( 2.722128s |  0.26% | 16.98% )    	(29x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  23.6.0:    	( 0.625271s |  0.05% |  3.74% )   ( 0.611210s |  0.06% |  3.81% )    	(29x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 24.6.0:    	( 0.622893s |  0.05% |  3.72% )   ( 0.589938s |  0.05% |  3.68% )    	(29x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  24.5.1: 	( 0.003989s |  0.00% |  0.00% )   ( 0.004581s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  60.5.1: 	( 0.003958s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  63.5.0: 	( 0.007475s |  0.00% |  0.00% )   ( 0.005076s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  41.5.0: 	( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  50.5.0: 	( 0.000126s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  51.5.0: 	( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  53.5.0: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.gGmzMp"/.quit
│  │  │  │  │  54.5.0: 	( 0.000196s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p* 1>&21
│  │  │  │  │  55.5.0: 	( 0.000145s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 6.5.0:  	( 0.008621s |  0.00% |  0.05% )   ( 0.008590s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.gGmzMp"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.gGmzMp"/.run/p22\; \$\\nprintf \n >&21'
│  │  │  └─ 207.4.0:   	( 0.000167s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p22_PID})
│  │  │  1419.3.0:     	( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1420.3.0:     	( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1421.3.0:     	( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1424.3.0:     	( 0.000123s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1429.3.0:     	( 0.001304s |  0.00% |  0.00% )   ( 0.001322s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1434.3.0:     	( 0.000137s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1496.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1499.3.0:     	( 0.000128s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1506.3.0:     	( 24.553033s |  2.20% |  4.41% )   ( 0.001636s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1510.3.0:     	( 0.000293s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1515.3.0:     	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1521.2.0:        	( 0.000155s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -335.2.0:        	( 0.005066s |  0.00% |  0.00% )   ( 0.003352s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.gGmzMp" 2>/dev/null'

TOTAL RUN TIME: 1112.532011s
TOTAL CPU TIME: 1014.067208s
