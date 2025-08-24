LINE.DEPTH.CMD NUMBER	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:	( time | total % | cur depth % )   	( time | total % | cur depth % )   	(count) <command>
_____________________	________________________________	________________________________	____________________________________
9.0.0:                 	( 462.609774s | 50.07% )            ( 419.849929s | 49.93% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:              	( 0.001204s |  0.00% |  0.00% )   ( 0.000962s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
│  425.1.0:            	( 462.608570s | 50.07% | 99.99% )   ( 419.848967s | 49.93% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 425.2.0:         	( 0.024784s |  0.00% |  0.00% )   ( 0.024689s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000127s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
│  │  323.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.001243s |  0.00% |  0.00% )   ( 0.000948s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.007619s |  0.00% |  0.00% )   ( 0.007619s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.007619s |  0.00% |100.00% )   ( 0.007619s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.002487s |  0.00% |  0.00% )   ( 0.002542s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000082s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.014281s |  0.00% |  0.00% )   ( 0.000981s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  348.2.0:         	( 462.548770s | 50.07% | 99.98% )   ( 419.806037s | 49.93% | 99.98% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 348.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.000484s |  0.00% |  0.00% )   ( 0.000580s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.000484s |  0.00% |100.00% )   ( 0.000580s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000206s |  0.00% |  0.00% )   ( 0.010008s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.002988s |  0.00% |  0.00% )   ( 0.003036s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000106s |  0.00% |100.00% )   ( 0.000120s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000816s |  0.00% |  0.00% )   ( 0.000956s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000056s |  0.00% |  6.86% )   ( 0.000068s |  0.00% |  7.11% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000064s |  0.00% |  7.84% )   ( 0.000076s |  0.00% |  7.94% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000061s |  0.00% |  7.47% )   ( 0.000072s |  0.00% |  7.53% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000063s |  0.00% |  7.72% )   ( 0.000075s |  0.00% |  7.84% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000062s |  0.00% |  7.59% )   ( 0.000074s |  0.00% |  7.74% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000065s |  0.00% |  7.96% )   ( 0.000078s |  0.00% |  8.15% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000061s |  0.00% |  7.47% )   ( 0.000072s |  0.00% |  7.53% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000113s |  0.00% | 13.84% )   ( 0.000126s |  0.00% | 13.17% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000060s |  0.00% |  7.35% )   ( 0.000072s |  0.00% |  7.53% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000078s |  0.00% |  9.55% )   ( 0.000087s |  0.00% |  9.10% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000062s |  0.00% |  7.59% )   ( 0.000074s |  0.00% |  7.74% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000071s |  0.00% |  8.70% )   ( 0.000082s |  0.00% |  8.57% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.006298s |  0.00% |  0.00% )   ( 0.006410s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.002131s |  0.00% |  0.00% )   ( 0.002241s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:   	( 0.000217s |  0.00% | 10.18% )   ( 0.000230s |  0.00% | 10.26% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.001914s |  0.00% | 89.81% )   ( 0.002011s |  0.00% | 89.73% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000142s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  544.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
│  │  │  545.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  546.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  557.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.003507s |  0.00% |  0.00% )   ( 0.003624s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000107s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000107s |  0.00% |100.00% )   ( 0.000124s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.001634s |  0.00% |  0.00% )   ( 0.001709s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000509s |  0.00% |  0.00% )   ( 0.000528s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.079867s |  0.00% |  0.01% )   ( 0.079789s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:   	( 0.000214s |  0.00% |  0.26% )   ( 0.000244s |  0.00% |  0.30% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.012602s |  0.00% | 15.77% )   ( 0.012582s |  0.00% | 15.76% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012140s |  0.00% | 15.20% )   ( 0.012126s |  0.00% | 15.19% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012207s |  0.00% | 15.28% )   ( 0.012190s |  0.00% | 15.27% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012196s |  0.00% | 15.27% )   ( 0.012174s |  0.00% | 15.25% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012061s |  0.00% | 15.10% )   ( 0.012022s |  0.00% | 15.06% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000059s |  0.00% |  0.07% )   ( 0.000070s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.018171s |  0.00% | 22.75% )   ( 0.018132s |  0.00% | 22.72% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000083s |  0.00% |  0.10% )   ( 0.000095s |  0.00% |  0.11% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000064s |  0.00% |  0.08% )   ( 0.000076s |  0.00% |  0.09% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000070s |  0.00% |  0.08% )   ( 0.000078s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000441s |  0.00% |  0.00% )   ( 0.000466s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.389187s |  0.36% |  0.73% )   ( 1.689106s |  0.20% |  0.40% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:   	( 0.000111s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.012416s |  0.00% |  0.36% )   ( 0.012399s |  0.00% |  0.73% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012130s |  0.00% |  0.35% )   ( 0.012115s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012248s |  0.00% |  0.36% )   ( 0.012232s |  0.00% |  0.72% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012163s |  0.00% |  0.35% )   ( 0.012148s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012165s |  0.00% |  0.35% )   ( 0.012151s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.084491s |  0.00% |  0.00% )   ( 0.097605s |  0.01% |  0.00% )    	(674x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 2.000477s |  0.21% |  0.08% )   ( 0.111572s |  0.01% |  0.00% )    	(673x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000762s |  0.00% |  0.00% )   ( 0.000876s |  0.00% |  0.00% )    	(6x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.082400s |  0.00% |  0.00% )   ( 0.095455s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.082521s |  0.00% |  0.00% )   ( 0.095610s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.082292s |  0.00% |  0.00% )   ( 0.095268s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.084926s |  0.00% |  0.00% )   ( 0.097835s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.085089s |  0.00% |  0.00% )   ( 0.097958s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.082107s |  0.00% |  0.00% )   ( 0.095131s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.081698s |  0.00% |  0.00% )   ( 0.094612s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.081983s |  0.00% |  0.00% )   ( 0.094894s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.005746s |  0.00% |  0.16% )   ( 0.006339s |  0.00% |  0.37% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.002986s |  0.00% |  0.08% )   ( 0.003455s |  0.00% |  0.20% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:  	( 0.002986s |  0.00% |100.00% )   ( 0.003455s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000078s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000113s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000112s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000148s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.081737s |  0.00% |  0.00% )   ( 0.094503s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.081023s |  0.00% |  0.00% )   ( 0.094044s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.079284s |  0.00% |  0.00% )   ( 0.091728s |  0.01% |  0.00% )    	(646x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.084947s |  0.00% |  0.00% )   ( 0.098017s |  0.01% |  0.00% )    	(667x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.083588s |  0.00% |  0.00% )   ( 0.096524s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.082179s |  0.00% |  0.00% )   ( 0.095098s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002779s |  0.00% |  0.00% )   ( 0.003208s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002798s |  0.00% |  0.00% )   ( 0.003141s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.055193s |  0.00% |  0.07% )   ( 0.046435s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002799s |  0.00% |  0.00% )   ( 0.003233s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002866s |  0.00% |  0.00% )   ( 0.003293s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.002889s |  0.00% |  0.00% )   ( 0.003335s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  829.4.0:   	( 0.000122s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000116s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000119s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.006312s |  0.00% |  0.18% )   ( 0.006355s |  0.00% |  0.37% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.wkzhyJ"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.wkzhyJ"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000107s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.059019s |  0.00% |  0.01% )   ( 0.059152s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.005722s |  0.00% |  0.00% )   ( 0.006592s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:  	( 0.000159s |  0.00% |  2.77% )   ( 0.000176s |  0.00% |  2.66% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000090s |  0.00% |  1.57% )   ( 0.000106s |  0.00% |  1.60% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000108s |  0.00% |  1.88% )   ( 0.000125s |  0.00% |  1.89% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000292s |  0.00% |  5.10% )   ( 0.000308s |  0.00% |  4.67% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000088s |  0.00% |  1.53% )   ( 0.000104s |  0.00% |  1.57% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000084s |  0.00% |  1.46% )   ( 0.000099s |  0.00% |  1.50% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000090s |  0.00% |  1.57% )   ( 0.000105s |  0.00% |  1.59% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000086s |  0.00% |  1.50% )   ( 0.000100s |  0.00% |  1.51% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000069s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000082s |  0.00% |  1.43% )   ( 0.000091s |  0.00% |  1.38% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000073s |  0.00% |  1.10% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000075s |  0.00% |  1.13% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000062s |  0.00% |  1.08% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000061s |  0.00% |  1.06% )   ( 0.000073s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.13% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000061s |  0.00% |  1.06% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1456.4.0:  	( 0.000074s |  0.00% |  1.29% )   ( 0.000084s |  0.00% |  1.27% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000069s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000058s |  0.00% |  1.01% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.13% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1461.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1465.4.0:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0:  	( 0.000075s |  0.00% |  1.31% )   ( 0.000086s |  0.00% |  1.30% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0:  	( 0.000070s |  0.00% |  1.22% )   ( 0.000081s |  0.00% |  1.22% )    	(1x)	│  │  │  │ echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.13% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0:  	( 0.000061s |  0.00% |  1.06% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1510.4.1:  	( 0.000062s |  0.00% |  1.08% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ printf '\n'
│  │  │  │  1511.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0:  	( 0.000093s |  0.00% |  1.62% )   ( 0.000103s |  0.00% |  1.56% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1514.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000065s |  0.00% |  1.13% )   ( 0.000073s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1514.4.3:  	( 0.000081s |  0.00% |  1.41% )   ( 0.000094s |  0.00% |  1.42% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1515.4.0:  	( 0.000082s |  0.00% |  1.43% )   ( 0.000093s |  0.00% |  1.41% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000095s |  0.00% |  1.66% )   ( 0.000106s |  0.00% |  1.60% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000086s |  0.00% |  1.50% )   ( 0.000098s |  0.00% |  1.48% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000072s |  0.00% |  1.25% )   ( 0.000082s |  0.00% |  1.24% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.13% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000073s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000062s |  0.00% |  1.08% )   ( 0.000073s |  0.00% |  1.10% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000085s |  0.00% |  1.48% )   ( 0.000097s |  0.00% |  1.47% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000067s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000089s |  0.00% |  1.55% )   ( 0.000100s |  0.00% |  1.51% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000058s |  0.00% |  1.01% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000084s |  0.00% |  1.46% )   ( 0.000095s |  0.00% |  1.44% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000082s |  0.00% |  1.43% )   ( 0.000092s |  0.00% |  1.39% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000079s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000073s |  0.00% |  1.27% )   ( 0.000085s |  0.00% |  1.28% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000069s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1564.4.2:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1564.4.3:  	( 0.000066s |  0.00% |  1.15% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1572.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000068s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000060s |  0.00% |  1.04% )   ( 0.000071s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000072s |  0.00% |  1.25% )   ( 0.000083s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000098s |  0.00% |  1.71% )   ( 0.000111s |  0.00% |  1.68% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000069s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000062s |  0.00% |  1.08% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000057s |  0.00% |  0.99% )   ( 0.000067s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000058s |  0.00% |  1.01% )   ( 0.000069s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000096s |  0.00% |  1.67% )   ( 0.000090s |  0.00% |  1.36% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000066s |  0.00% |  1.15% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000061s |  0.00% |  1.06% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000065s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.13% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000066s |  0.00% |  1.15% )   ( 0.000077s |  0.00% |  1.16% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.13% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000064s |  0.00% |  1.11% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000080s |  0.00% |  1.39% )   ( 0.000091s |  0.00% |  1.38% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.014711s |  0.00% |  0.00% )   ( 0.014685s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012327s |  0.00% |  0.00% )   ( 0.103297s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012147s |  0.00% |  0.00% )   ( 0.012129s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.012016s |  0.00% |  0.00% )   ( 0.011998s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000063s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000067s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002760s |  0.00% |  0.00% )   ( 0.003198s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002593s |  0.00% |  0.00% )   ( 0.003016s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 79.901353s |  8.64% |  3.45% )   ( 75.974584s |  9.03% |  3.61% )    	(5x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002892s |  0.00% |  0.00% )   ( 0.002988s |  0.00% |  0.00% )    	(5x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 79.898048s |  8.64% | 99.99% )   ( 75.971123s |  9.03% | 99.99% )    	(5x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.001020s |  0.00% |  0.00% )   ( 0.001155s |  0.00% |  0.00% )    	(5x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.wkzhyJ"
│  │  │  │  │  8.5.0:  	( 0.000845s |  0.00% |  0.00% )   ( 0.000949s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.wkzhyJ"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.065519s |  0.00% |  0.08% )   ( 0.065427s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.wkzhyJ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.wkzhyJ"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.wkzhyJ"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.061738s |  0.00% |  0.07% )   ( 0.061653s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 146379 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.062261s |  0.00% |  0.07% )   ( 0.062176s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 146379 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.062364s |  0.00% |  0.07% )   ( 0.062265s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 146379 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.062314s |  0.00% |  0.07% )   ( 0.062218s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.019146s |  0.00% |  0.00% )   ( 0.021776s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.017204s |  0.00% |  0.00% )   ( 0.019710s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000977s |  0.00% |  0.00% )   ( 0.001111s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.wkzhyJ"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000818s |  0.00% |  0.00% )   ( 0.000945s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000741s |  0.00% |  0.00% )   ( 0.000865s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.021527s |  0.00% |  0.00% )   ( 0.024209s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.wkzhyJ"/.wait/p0
│  │  │  │  │  23.5.0: 	( 1.488167s |  0.16% |  0.07% )   ( 0.028296s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.018488s |  0.00% |  0.00% )   ( 0.021097s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wkzhyJ"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.017445s |  0.00% |  0.00% )   ( 0.019724s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wkzhyJ"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.016729s |  0.00% |  0.00% )   ( 0.019257s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.017086s |  0.00% |  0.00% )   ( 0.019546s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.142398s |  0.01% |  0.00% )   ( 0.144434s |  0.01% |  0.00% )    	(127x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.016285s |  0.00% |  0.00% )   ( 0.018706s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.016312s |  0.00% |  0.00% )   ( 0.018748s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.025835s |  0.00% |  0.00% )   ( 0.020240s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.020403s |  0.00% |  0.00% )   ( 0.023007s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.wkzhyJ"/.wait/p0
│  │  │  │  │  48.5.0: 	( 0.016140s |  0.00% |  0.00% )   ( 0.018578s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.015901s |  0.00% |  0.00% )   ( 0.018348s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000827s |  0.00% |  0.00% )   ( 0.000956s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000741s |  0.00% |  0.00% )   ( 0.000872s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 77.629526s |  8.40% |  3.83% )   ( 75.128642s |  8.93% |  3.90% )    	(127x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.015499s |  0.00% |  0.01% )   ( 0.018023s |  0.00% |  0.02% )    	(127x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 5.179554s |  0.56% |  6.67% )   ( 5.065177s |  0.60% |  6.74% )    	(127x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 8.754307s |  0.94% | 11.27% )   ( 8.469593s |  1.00% | 11.27% )    	(127x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 7.428077s |  0.80% |  9.56% )   ( 7.151110s |  0.85% |  9.51% )    	(127x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 8.685886s |  0.94% | 11.18% )   ( 8.437253s |  1.00% | 11.23% )    	(127x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 7.178230s |  0.77% |  9.24% )   ( 6.960735s |  0.82% |  9.26% )    	(127x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 4.868008s |  0.52% |  6.27% )   ( 4.674640s |  0.55% |  6.22% )    	(127x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.684456s |  0.29% |  3.45% )   ( 2.578700s |  0.30% |  3.43% )    	(127x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 5.016929s |  0.54% |  6.46% )   ( 4.830397s |  0.57% |  6.42% )    	(127x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.351366s |  0.25% |  3.02% )   ( 2.298741s |  0.27% |  3.05% )    	(127x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 6.559927s |  0.71% |  8.45% )   ( 6.299476s |  0.74% |  8.38% )    	(127x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 13.471554s |  1.45% | 17.35% )   ( 13.221214s |  1.57% | 17.59% )    	(127x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.753055s |  0.29% |  3.54% )   ( 2.601426s |  0.30% |  3.46% )    	(127x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 2.682678s |  0.29% |  3.45% )   ( 2.522157s |  0.29% |  3.35% )    	(127x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000438s |  0.00% |  0.00% )   ( 0.000509s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.016572s |  0.00% |  0.00% )   ( 0.018984s |  0.00% |  0.00% )    	(122x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.015167s |  0.00% |  0.00% )   ( 0.017481s |  0.00% |  0.00% )    	(117x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.017849s |  0.00% |  0.00% )   ( 0.019564s |  0.00% |  0.00% )    	(117x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000548s |  0.00% |  0.00% )   ( 0.000546s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000497s |  0.00% |  0.00% )   ( 0.000572s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.028220s |  0.00% |  0.03% )   ( 0.028557s |  0.00% |  0.03% )    	(5x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.wkzhyJ"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.wkzhyJ"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.wkzhyJ"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.000413s |  0.00% |  0.00% )   ( 0.000473s |  0.00% |  0.00% )    	(5x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002623s |  0.00% |  0.00% )   ( 0.003028s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 329.162776s | 35.63% |  3.38% )   ( 311.890355s | 37.09% |  3.53% )    	(21x)	│  │  │ << (FUNCTION): .local p5 p5_PID >>
│  │  │  ├─ 1.4.0:     	( 0.018481s |  0.00% |  0.00% )   ( 0.018899s |  0.00% |  0.00% )    	(21x)	│  │  │  ├─local p5 p5_PID (&)
│  │  │  │  73.4.0:    	( 329.141699s | 35.63% | 99.99% )   ( 311.868516s | 37.09% | 99.99% )    	(21x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003438s |  0.00% |  0.00% )   ( 0.003880s |  0.00% |  0.00% )    	(21x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.wkzhyJ"
│  │  │  │  │  8.5.0:  	( 0.002949s |  0.00% |  0.00% )   ( 0.003346s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.wkzhyJ"/.run/p5
│  │  │  │  │  12.5.0: 	( 0.429222s |  0.04% |  0.13% )   ( 0.411003s |  0.04% |  0.13% )    	(21x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.wkzhyJ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.wkzhyJ"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.wkzhyJ"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.405446s |  0.04% |  0.12% )   ( 0.404230s |  0.04% |  0.12% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 146379 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.412739s |  0.04% |  0.12% )   ( 0.411508s |  0.04% |  0.13% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 146379 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.410815s |  0.04% |  0.12% )   ( 0.409617s |  0.04% |  0.13% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 146379 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.415867s |  0.04% |  0.12% )   ( 0.414564s |  0.04% |  0.13% )    	(21x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.081147s |  0.00% |  0.00% )   ( 0.092064s |  0.01% |  0.00% )    	(527x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.071997s |  0.00% |  0.00% )   ( 0.082507s |  0.00% |  0.00% )    	(527x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002634s |  0.00% |  0.00% )   ( 0.002986s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.wkzhyJ"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002139s |  0.00% |  0.00% )   ( 0.002489s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002268s |  0.00% |  0.00% )   ( 0.002629s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.089092s |  0.00% |  0.00% )   ( 0.100050s |  0.01% |  0.00% )    	(527x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.wkzhyJ"/.wait/p5
│  │  │  │  │  23.5.0: 	( 5.593832s |  0.60% |  0.06% )   ( 0.118868s |  0.01% |  0.00% )    	(527x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.077023s |  0.00% |  0.00% )   ( 0.087588s |  0.01% |  0.00% )    	(527x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wkzhyJ"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.071220s |  0.00% |  0.00% )   ( 0.081732s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wkzhyJ"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.067683s |  0.00% |  0.00% )   ( 0.077703s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.071294s |  0.00% |  0.00% )   ( 0.081465s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.613025s |  0.06% |  0.00% )   ( 0.607948s |  0.07% |  0.00% )    	(506x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.067403s |  0.00% |  0.00% )   ( 0.077594s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.067238s |  0.00% |  0.00% )   ( 0.077274s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.123316s |  0.01% |  0.00% )   ( 0.084005s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.084989s |  0.00% |  0.00% )   ( 0.094425s |  0.01% |  0.00% )    	(506x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.wkzhyJ"/.wait/p5
│  │  │  │  │  48.5.0: 	( 0.067274s |  0.00% |  0.00% )   ( 0.077407s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.065875s |  0.00% |  0.00% )   ( 0.076012s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.002534s |  0.00% |  0.00% )   ( 0.002907s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.002357s |  0.00% |  0.00% )   ( 0.002735s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.002405s |  0.00% |  0.00% )   ( 0.002783s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 319.471850s | 34.58% |  4.03% )   ( 307.596212s | 36.58% |  4.10% )    	(506x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.063208s |  0.00% |  0.01% )   ( 0.073356s |  0.00% |  0.02% )    	(506x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 21.629319s |  2.34% |  6.77% )   ( 20.855503s |  2.48% |  6.78% )    	(506x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 35.965746s |  3.89% | 11.25% )   ( 34.635613s |  4.11% | 11.26% )    	(506x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 30.703775s |  3.32% |  9.61% )   ( 29.398541s |  3.49% |  9.55% )    	(506x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 35.453563s |  3.83% | 11.09% )   ( 34.237599s |  4.07% | 11.13% )    	(506x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 29.320688s |  3.17% |  9.17% )   ( 28.327025s |  3.36% |  9.20% )    	(506x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 19.842441s |  2.14% |  6.21% )   ( 19.037114s |  2.26% |  6.18% )    	(506x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 11.270896s |  1.22% |  3.52% )   ( 10.641161s |  1.26% |  3.45% )    	(506x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 20.642302s |  2.23% |  6.46% )   ( 19.641250s |  2.33% |  6.38% )    	(506x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 9.918291s |  1.07% |  3.10% )   ( 9.420291s |  1.12% |  3.06% )    	(506x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 26.909535s |  2.91% |  8.42% )   ( 25.789388s |  3.06% |  8.38% )    	(506x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 55.543642s |  6.01% | 17.38% )   ( 54.347074s |  6.46% | 17.66% )    	(506x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 11.275151s |  1.22% |  3.52% )   ( 10.743884s |  1.27% |  3.49% )    	(506x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 10.933293s |  1.18% |  3.42% )   ( 10.448413s |  1.24% |  3.39% )    	(506x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.070421s |  0.00% |  0.00% )   ( 0.080550s |  0.00% |  0.00% )    	(506x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.064380s |  0.00% |  0.00% )   ( 0.074161s |  0.00% |  0.00% )    	(485x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.085314s |  0.00% |  0.00% )   ( 0.082641s |  0.00% |  0.00% )    	(485x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002209s |  0.00% |  0.00% )   ( 0.002542s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002279s |  0.00% |  0.00% )   ( 0.002621s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.138025s |  0.01% |  0.04% )   ( 0.138470s |  0.01% |  0.04% )    	(21x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.wkzhyJ"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.wkzhyJ"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.wkzhyJ"/.run/p5\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.002596s |  0.00% |  0.00% )   ( 0.002940s |  0.00% |  0.00% )    	(21x)	│  │  │  └─p_PID+=(${p5_PID})
│  │  │  1399.3.0:     	( 31.126232s |  3.36% |  3.36% )   ( 29.914148s |  3.55% |  3.56% )    	(2x)	│  │  │ << (FUNCTION): .local p13 p13_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002061s |  0.00% |  0.00% )   ( 0.002108s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─local p13 p13_PID (&)
│  │  │  │  73.4.0:    	( 31.123885s |  3.36% | 99.99% )   ( 29.911724s |  3.55% | 99.99% )    	(2x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000241s |  0.00% |  0.00% )   ( 0.000275s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.wkzhyJ"
│  │  │  │  │  8.5.0:  	( 0.000239s |  0.00% |  0.00% )   ( 0.000273s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.wkzhyJ"/.run/p13
│  │  │  │  │  12.5.0: 	( 0.048467s |  0.00% |  0.15% )   ( 0.041472s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.wkzhyJ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.wkzhyJ"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.wkzhyJ"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.044028s |  0.00% |  0.14% )   ( 0.043842s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 146379 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.040529s |  0.00% |  0.13% )   ( 0.040419s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 146379 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.040974s |  0.00% |  0.13% )   ( 0.040872s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 146379 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.042253s |  0.00% |  0.13% )   ( 0.040764s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.005729s |  0.00% |  0.00% )   ( 0.006497s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.005254s |  0.00% |  0.00% )   ( 0.006029s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000261s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.wkzhyJ"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000224s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000220s |  0.00% |  0.00% )   ( 0.000257s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.006400s |  0.00% |  0.00% )   ( 0.007168s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.wkzhyJ"/.wait/p13
│  │  │  │  │  23.5.0: 	( 0.458740s |  0.04% |  0.08% )   ( 0.008583s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.005304s |  0.00% |  0.00% )   ( 0.006061s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wkzhyJ"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.005247s |  0.00% |  0.00% )   ( 0.006003s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.wkzhyJ"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.004814s |  0.00% |  0.00% )   ( 0.005527s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.004985s |  0.00% |  0.00% )   ( 0.005690s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.042997s |  0.00% |  0.00% )   ( 0.041584s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.004958s |  0.00% |  0.00% )   ( 0.005699s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.004616s |  0.00% |  0.00% )   ( 0.005327s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.009085s |  0.00% |  0.00% )   ( 0.005879s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.005843s |  0.00% |  0.00% )   ( 0.006578s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.wkzhyJ"/.wait/p13
│  │  │  │  │  48.5.0: 	( 0.004727s |  0.00% |  0.00% )   ( 0.005464s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.004534s |  0.00% |  0.00% )   ( 0.005243s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000249s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000226s |  0.00% |  0.00% )   ( 0.000265s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.000230s |  0.00% |  0.00% )   ( 0.000267s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 30.298125s |  3.27% |  5.75% )   ( 29.539239s |  3.51% |  5.85% )    	(34x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.004247s |  0.00% |  0.01% )   ( 0.004930s |  0.00% |  0.01% )    	(34x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 2.004605s |  0.21% |  6.61% )   ( 1.941347s |  0.23% |  6.57% )    	(34x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 3.598044s |  0.38% | 11.87% )   ( 3.527846s |  0.41% | 11.94% )    	(34x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 2.902702s |  0.31% |  9.58% )   ( 2.796921s |  0.33% |  9.46% )    	(34x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 3.573739s |  0.38% | 11.79% )   ( 3.518168s |  0.41% | 11.91% )    	(34x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 2.769418s |  0.29% |  9.14% )   ( 2.715626s |  0.32% |  9.19% )    	(34x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.811100s |  0.19% |  5.97% )   ( 1.765843s |  0.21% |  5.97% )    	(34x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.819082s |  0.08% |  2.70% )   ( 0.778733s |  0.09% |  2.63% )    	(34x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.958419s |  0.21% |  6.46% )   ( 1.913732s |  0.22% |  6.47% )    	(34x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.740520s |  0.08% |  2.44% )   ( 0.694343s |  0.08% |  2.35% )    	(34x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 2.433466s |  0.26% |  8.03% )   ( 2.380229s |  0.28% |  8.05% )    	(34x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 6.066811s |  0.65% | 20.02% )   ( 5.954418s |  0.70% | 20.15% )    	(34x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.825816s |  0.08% |  2.72% )   ( 0.787727s |  0.09% |  2.66% )    	(34x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.790156s |  0.08% |  2.60% )   ( 0.759376s |  0.09% |  2.57% )    	(34x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.005217s |  0.00% |  0.00% )   ( 0.005943s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.004277s |  0.00% |  0.00% )   ( 0.004937s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.004855s |  0.00% |  0.00% )   ( 0.005526s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000281s |  0.00% |  0.00% )   ( 0.000322s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000267s |  0.00% |  0.00% )   ( 0.000309s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000334s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000312s |  0.00% |  0.00% )   ( 0.000354s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ : > "/dev/shm/.forkrun.wkzhyJ"/.quit
│  │  │  │  │  62.5.0: 	( 0.000377s |  0.00% |  0.00% )   ( 0.000410s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.wkzhyJ"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000313s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.018153s |  0.00% |  0.05% )   ( 0.017063s |  0.00% |  0.05% )    	(2x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.wkzhyJ"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.wkzhyJ"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.wkzhyJ"/.run/p13\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.000286s |  0.00% |  0.00% )   ( 0.000316s |  0.00% |  0.00% )    	(2x)	│  │  │  └─p_PID+=(${p13_PID})
│  │  │  1401.3.0:     	( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001250s |  0.00% |  0.00% )   ( 0.001266s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000123s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.737976s |  2.02% |  4.05% )   ( 0.001780s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000286s |  0.00% |  0.00% )   ( 0.000316s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000268s |  0.00% |  0.00% )   ( 0.000310s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000305s |  0.00% |  0.00% )   ( 0.000352s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.007667s |  0.00% |  0.00% )   ( 0.004130s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.wkzhyJ" 2>/dev/null'

10.0.0:                	( 461.153134s | 49.92% )            ( 420.877316s | 50.06% )             	(1x)	<< (FUNCTION): .forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
├─ 1.1.0:              	( 0.001263s |  0.00% |  0.00% )   ( 0.001017s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  425.1.0:            	( 461.151871s | 49.92% | 99.99% )   ( 420.876299s | 50.06% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 425.2.0:         	( 0.024170s |  0.00% |  0.00% )   ( 0.024133s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000129s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000097s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000118s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000127s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
│  │  127.2.0:         	( 0.000100s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
│  │  254.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
│  │  254.2.1:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
│  │  318.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
│  │  319.2.0:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
│  │  323.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.001625s |  0.00% |  0.00% )   ( 0.001335s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.007575s |  0.00% |  0.00% )   ( 0.007575s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.007575s |  0.00% |100.00% )   ( 0.007575s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.001166s |  0.00% |  0.00% )   ( 0.001240s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.013632s |  0.00% |  0.00% )   ( 0.000509s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  348.2.0:         	( 461.096258s | 49.91% | 99.98% )   ( 420.834651s | 50.05% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 348.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.000934s |  0.00% |  0.00% )   ( 0.001106s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.000934s |  0.00% |100.00% )   ( 0.001106s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000176s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.002926s |  0.00% |  0.00% )   ( 0.002982s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000104s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000104s |  0.00% |100.00% )   ( 0.000120s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000791s |  0.00% |  0.00% )   ( 0.000928s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000057s |  0.00% |  7.20% )   ( 0.000068s |  0.00% |  7.32% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000063s |  0.00% |  7.96% )   ( 0.000076s |  0.00% |  8.18% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000061s |  0.00% |  7.71% )   ( 0.000073s |  0.00% |  7.86% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000061s |  0.00% |  7.71% )   ( 0.000073s |  0.00% |  7.86% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000062s |  0.00% |  7.83% )   ( 0.000074s |  0.00% |  7.97% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000066s |  0.00% |  8.34% )   ( 0.000077s |  0.00% |  8.29% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000066s |  0.00% |  8.34% )   ( 0.000075s |  0.00% |  8.08% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000111s |  0.00% | 14.03% )   ( 0.000124s |  0.00% | 13.36% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000060s |  0.00% |  7.58% )   ( 0.000071s |  0.00% |  7.65% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000059s |  0.00% |  7.45% )   ( 0.000070s |  0.00% |  7.54% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000061s |  0.00% |  7.71% )   ( 0.000071s |  0.00% |  7.65% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000064s |  0.00% |  8.09% )   ( 0.000076s |  0.00% |  8.18% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.006636s |  0.00% |  0.00% )   ( 0.006709s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.002524s |  0.00% |  0.00% )   ( 0.002595s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:   	( 0.000214s |  0.00% |  8.47% )   ( 0.000230s |  0.00% |  8.86% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.002310s |  0.00% | 91.52% )   ( 0.002365s |  0.00% | 91.13% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000150s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  524.3.0:      	( 0.000056s |  0.00% |  0.00% )   ( 0.000067s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
│  │  │  525.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  525.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
│  │  │  526.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
│  │  │  527.3.0:      	( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
│  │  │  528.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
│  │  │  529.3.0:      	( 0.002857s |  0.00% |  0.00% )   ( 0.003938s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep -qF 'coreutils'
│  │  │  530.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
│  │  │  537.3.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  538.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  539.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
│  │  │  557.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.003064s |  0.00% |  0.00% )   ( 0.003179s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000076s |  0.00% |100.00% )   ( 0.000091s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.001193s |  0.00% |  0.00% )   ( 0.001267s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000563s |  0.00% |  0.00% )   ( 0.000571s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.078333s |  0.00% |  0.01% )   ( 0.078183s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:   	( 0.000078s |  0.00% |  0.09% )   ( 0.000091s |  0.00% |  0.11% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.011198s |  0.00% | 14.29% )   ( 0.011167s |  0.00% | 14.28% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012206s |  0.00% | 15.58% )   ( 0.012161s |  0.00% | 15.55% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012141s |  0.00% | 15.49% )   ( 0.012122s |  0.00% | 15.50% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012169s |  0.00% | 15.53% )   ( 0.012132s |  0.00% | 15.51% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012139s |  0.00% | 15.49% )   ( 0.012116s |  0.00% | 15.49% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000062s |  0.00% |  0.07% )   ( 0.000074s |  0.00% |  0.09% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.018130s |  0.00% | 23.14% )   ( 0.018075s |  0.00% | 23.11% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000084s |  0.00% |  0.10% )   ( 0.000096s |  0.00% |  0.12% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000062s |  0.00% |  0.07% )   ( 0.000073s |  0.00% |  0.09% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000064s |  0.00% |  0.08% )   ( 0.000076s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000417s |  0.00% |  0.00% )   ( 0.000444s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.281157s |  0.35% |  0.71% )   ( 1.694883s |  0.20% |  0.40% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:   	( 0.000105s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.012738s |  0.00% |  0.38% )   ( 0.012660s |  0.00% |  0.74% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012261s |  0.00% |  0.37% )   ( 0.012193s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012302s |  0.00% |  0.37% )   ( 0.012215s |  0.00% |  0.72% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012142s |  0.00% |  0.37% )   ( 0.012075s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012141s |  0.00% |  0.37% )   ( 0.012124s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.084395s |  0.00% |  0.00% )   ( 0.097389s |  0.01% |  0.00% )    	(671x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 1.878667s |  0.20% |  0.08% )   ( 0.111108s |  0.01% |  0.00% )    	(670x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000656s |  0.00% |  0.00% )   ( 0.000760s |  0.00% |  0.01% )    	(4x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.082351s |  0.00% |  0.00% )   ( 0.095420s |  0.01% |  0.00% )    	(666x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.082058s |  0.00% |  0.00% )   ( 0.094986s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.082194s |  0.00% |  0.00% )   ( 0.095054s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.085843s |  0.00% |  0.00% )   ( 0.098609s |  0.01% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.085539s |  0.00% |  0.00% )   ( 0.098486s |  0.01% |  0.00% )    	(666x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.081621s |  0.00% |  0.00% )   ( 0.094598s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.082719s |  0.00% |  0.00% )   ( 0.095768s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.083379s |  0.00% |  0.00% )   ( 0.096390s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.005901s |  0.00% |  0.17% )   ( 0.006469s |  0.00% |  0.38% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.003029s |  0.00% |  0.09% )   ( 0.003532s |  0.00% |  0.20% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:  	( 0.003029s |  0.00% |100.00% )   ( 0.003532s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.082641s |  0.00% |  0.00% )   ( 0.095530s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.082026s |  0.00% |  0.00% )   ( 0.095018s |  0.01% |  0.00% )    	(666x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.080521s |  0.00% |  0.00% )   ( 0.092937s |  0.01% |  0.00% )    	(645x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.086331s |  0.00% |  0.00% )   ( 0.099565s |  0.01% |  0.00% )    	(666x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.082933s |  0.00% |  0.00% )   ( 0.095820s |  0.01% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.082940s |  0.00% |  0.00% )   ( 0.095901s |  0.01% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002678s |  0.00% |  0.00% )   ( 0.003092s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002661s |  0.00% |  0.00% )   ( 0.003044s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.062280s |  0.00% |  0.09% )   ( 0.046413s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002783s |  0.00% |  0.00% )   ( 0.003229s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002771s |  0.00% |  0.00% )   ( 0.003191s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.002791s |  0.00% |  0.00% )   ( 0.003203s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  829.4.0:   	( 0.000112s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000128s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.005948s |  0.00% |  0.18% )   ( 0.005858s |  0.00% |  0.34% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.WXKWdc"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.WXKWdc"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000089s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.052209s |  0.00% |  0.01% )   ( 0.052325s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.005019s |  0.00% |  0.00% )   ( 0.005782s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:  	( 0.000211s |  0.00% |  4.20% )   ( 0.000237s |  0.00% |  4.09% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000132s |  0.00% |  2.63% )   ( 0.000153s |  0.00% |  2.64% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000145s |  0.00% |  2.88% )   ( 0.000165s |  0.00% |  2.85% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000395s |  0.00% |  7.87% )   ( 0.000414s |  0.00% |  7.16% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000123s |  0.00% |  2.45% )   ( 0.000143s |  0.00% |  2.47% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000117s |  0.00% |  2.33% )   ( 0.000138s |  0.00% |  2.38% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000072s |  0.00% |  1.24% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000057s |  0.00% |  1.13% )   ( 0.000068s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000056s |  0.00% |  1.11% )   ( 0.000068s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.29% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000074s |  0.00% |  1.27% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000070s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000075s |  0.00% |  1.29% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000074s |  0.00% |  1.27% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000070s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000074s |  0.00% |  1.27% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000072s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1454.4.2:  	( 0.000063s |  0.00% |  1.25% )   ( 0.000074s |  0.00% |  1.27% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1456.4.0:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.29% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000061s |  0.00% |  1.21% )   ( 0.000072s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000089s |  0.00% |  1.77% )   ( 0.000100s |  0.00% |  1.72% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1514.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.33% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1515.4.0:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000081s |  0.00% |  1.61% )   ( 0.000092s |  0.00% |  1.59% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000072s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000073s |  0.00% |  1.45% )   ( 0.000083s |  0.00% |  1.43% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000073s |  0.00% |  1.45% )   ( 0.000084s |  0.00% |  1.45% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000070s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.34% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000076s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000072s |  0.00% |  1.43% )   ( 0.000082s |  0.00% |  1.41% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000067s |  0.00% |  1.33% )   ( 0.000076s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000089s |  0.00% |  1.77% )   ( 0.000100s |  0.00% |  1.72% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000072s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000075s |  0.00% |  1.49% )   ( 0.000087s |  0.00% |  1.50% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000083s |  0.00% |  1.65% )   ( 0.000094s |  0.00% |  1.62% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000068s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000073s |  0.00% |  1.45% )   ( 0.000084s |  0.00% |  1.45% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000070s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1572.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.36% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000069s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000062s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000070s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000085s |  0.00% |  1.69% )   ( 0.000097s |  0.00% |  1.67% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000060s |  0.00% |  1.19% )   ( 0.000071s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000068s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000069s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000068s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000093s |  0.00% |  1.85% )   ( 0.000104s |  0.00% |  1.79% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000066s |  0.00% |  1.31% )   ( 0.000076s |  0.00% |  1.31% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000068s |  0.00% |  1.35% )   ( 0.000076s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000058s |  0.00% |  1.15% )   ( 0.000068s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000080s |  0.00% |  1.59% )   ( 0.000091s |  0.00% |  1.57% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000069s |  0.00% |  1.37% )   ( 0.000078s |  0.00% |  1.34% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000064s |  0.00% |  1.27% )   ( 0.000076s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000078s |  0.00% |  1.55% )   ( 0.000090s |  0.00% |  1.55% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000265s |  0.00% |  0.00% )   ( 0.000301s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000252s |  0.00% |  0.00% )   ( 0.000289s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000248s |  0.00% |  0.00% )   ( 0.000285s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.012497s |  0.00% |  0.00% )   ( 0.012474s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012388s |  0.00% |  0.00% )   ( 0.098844s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012184s |  0.00% |  0.00% )   ( 0.012160s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.012116s |  0.00% |  0.00% )   ( 0.012092s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002718s |  0.00% |  0.00% )   ( 0.003161s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002586s |  0.00% |  0.00% )   ( 0.002996s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 64.390777s |  6.97% |  3.49% )   ( 61.663426s |  7.33% |  3.66% )    	(4x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002264s |  0.00% |  0.00% )   ( 0.002337s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 64.388178s |  6.97% | 99.99% )   ( 61.660706s |  7.33% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000943s |  0.00% |  0.00% )   ( 0.001051s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.WXKWdc"
│  │  │  │  │  8.5.0:  	( 0.000593s |  0.00% |  0.00% )   ( 0.000673s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.WXKWdc"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.049545s |  0.00% |  0.07% )   ( 0.049472s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.WXKWdc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.WXKWdc"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.WXKWdc"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.049242s |  0.00% |  0.07% )   ( 0.049172s |  0.00% |  0.07% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 155169 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.049727s |  0.00% |  0.07% )   ( 0.049652s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 155169 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.049832s |  0.00% |  0.07% )   ( 0.049750s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 155169 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.049811s |  0.00% |  0.07% )   ( 0.049716s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.014928s |  0.00% |  0.00% )   ( 0.016978s |  0.00% |  0.00% )    	(100x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.013118s |  0.00% |  0.00% )   ( 0.015038s |  0.00% |  0.00% )    	(100x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000709s |  0.00% |  0.00% )   ( 0.000813s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.WXKWdc"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000557s |  0.00% |  0.00% )   ( 0.000652s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000562s |  0.00% |  0.00% )   ( 0.000659s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.016535s |  0.00% |  0.00% )   ( 0.018576s |  0.00% |  0.00% )    	(100x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.WXKWdc"/.wait/p0
│  │  │  │  │  23.5.0: 	( 0.621156s |  0.06% |  0.03% )   ( 0.021115s |  0.00% |  0.00% )    	(100x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.013921s |  0.00% |  0.00% )   ( 0.015963s |  0.00% |  0.00% )    	(100x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.WXKWdc"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.013427s |  0.00% |  0.00% )   ( 0.015384s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.WXKWdc"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.012501s |  0.00% |  0.00% )   ( 0.014369s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.013412s |  0.00% |  0.00% )   ( 0.015360s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.118718s |  0.01% |  0.00% )   ( 0.111931s |  0.01% |  0.00% )    	(96x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.019935s |  0.00% |  0.00% )   ( 0.016108s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.016625s |  0.00% |  0.00% )   ( 0.017574s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.WXKWdc"/.wait/p0
│  │  │  │  │  36.5.0: 	( 0.015488s |  0.00% |  0.00% )   ( 0.014355s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.012456s |  0.00% |  0.00% )   ( 0.014373s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000757s |  0.00% |  0.00% )   ( 0.000873s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000650s |  0.00% |  0.00% )   ( 0.000754s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  61.5.0: 	( 63.164993s |  6.83% |  4.07% )   ( 61.029222s |  7.25% |  4.11% )    	(96x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.011744s |  0.00% |  0.01% )   ( 0.013667s |  0.00% |  0.02% )    	(96x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 4.324146s |  0.46% |  6.84% )   ( 4.174578s |  0.49% |  6.84% )    	(96x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 7.205022s |  0.77% | 11.40% )   ( 6.975218s |  0.82% | 11.42% )    	(96x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 6.061536s |  0.65% |  9.59% )   ( 5.805453s |  0.69% |  9.51% )    	(96x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 7.127917s |  0.77% | 11.28% )   ( 6.899847s |  0.82% | 11.30% )    	(96x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 5.779263s |  0.62% |  9.14% )   ( 5.598541s |  0.66% |  9.17% )    	(96x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 3.927077s |  0.42% |  6.21% )   ( 3.741543s |  0.44% |  6.13% )    	(96x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.048389s |  0.22% |  3.24% )   ( 1.991121s |  0.23% |  3.26% )    	(96x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 4.091834s |  0.44% |  6.47% )   ( 3.942504s |  0.46% |  6.46% )    	(96x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.813438s |  0.19% |  2.87% )   ( 1.754784s |  0.20% |  2.87% )    	(96x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 5.253753s |  0.56% |  8.31% )   ( 5.073878s |  0.60% |  8.31% )    	(96x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 11.322800s |  1.22% | 17.92% )   ( 11.110842s |  1.32% | 18.20% )    	(96x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.164280s |  0.23% |  3.42% )   ( 2.011787s |  0.23% |  3.29% )    	(96x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 2.033794s |  0.22% |  3.21% )   ( 1.935459s |  0.23% |  3.17% )    	(96x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  58.5.1: 	( 0.000366s |  0.00% |  0.00% )   ( 0.000425s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.012744s |  0.00% |  0.00% )   ( 0.014622s |  0.00% |  0.00% )    	(92x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.011917s |  0.00% |  0.00% )   ( 0.013687s |  0.00% |  0.00% )    	(88x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.016134s |  0.00% |  0.00% )   ( 0.015105s |  0.00% |  0.00% )    	(88x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000417s |  0.00% |  0.00% )   ( 0.000479s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000421s |  0.00% |  0.00% )   ( 0.000486s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.026038s |  0.00% |  0.04% )   ( 0.026319s |  0.00% |  0.04% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.WXKWdc"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.WXKWdc"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.WXKWdc"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.000335s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(4x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002619s |  0.00% |  0.00% )   ( 0.003050s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 359.560243s | 38.92% |  3.39% )   ( 342.749743s | 40.76% |  3.54% )    	(23x)	│  │  │ << (FUNCTION): .local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.020068s |  0.00% |  0.00% )   ( 0.020541s |  0.00% |  0.00% )    	(23x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  73.4.0:    	( 359.537137s | 38.92% | 99.99% )   ( 342.725770s | 40.76% | 99.99% )    	(23x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003617s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(23x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.WXKWdc"
│  │  │  │  │  8.5.0:  	( 0.003742s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.WXKWdc"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.462536s |  0.05% |  0.12% )   ( 0.451855s |  0.05% |  0.13% )    	(23x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.WXKWdc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.WXKWdc"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.WXKWdc"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.472224s |  0.05% |  0.13% )   ( 0.462604s |  0.05% |  0.13% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 155169 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.502244s |  0.05% |  0.13% )   ( 0.493079s |  0.05% |  0.14% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 155169 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.489814s |  0.05% |  0.13% )   ( 0.488382s |  0.05% |  0.14% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 155169 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.474461s |  0.05% |  0.13% )   ( 0.473047s |  0.05% |  0.13% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.087909s |  0.00% |  0.00% )   ( 0.099666s |  0.01% |  0.00% )    	(565x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.076496s |  0.00% |  0.00% )   ( 0.087689s |  0.01% |  0.00% )    	(565x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002852s |  0.00% |  0.00% )   ( 0.003242s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.WXKWdc"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002320s |  0.00% |  0.00% )   ( 0.002694s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002343s |  0.00% |  0.00% )   ( 0.002724s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.095903s |  0.01% |  0.00% )   ( 0.107377s |  0.01% |  0.00% )    	(565x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.WXKWdc"/.wait/p4
│  │  │  │  │  23.5.0: 	( 3.440680s |  0.37% |  0.03% )   ( 0.119280s |  0.01% |  0.00% )    	(565x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.081503s |  0.00% |  0.00% )   ( 0.093018s |  0.01% |  0.00% )    	(565x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.WXKWdc"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.080346s |  0.00% |  0.00% )   ( 0.087537s |  0.01% |  0.00% )    	(542x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.WXKWdc"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.074658s |  0.00% |  0.00% )   ( 0.083680s |  0.00% |  0.00% )    	(542x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.080065s |  0.00% |  0.00% )   ( 0.087964s |  0.01% |  0.00% )    	(542x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.663174s |  0.07% |  0.00% )   ( 0.657813s |  0.07% |  0.00% )    	(542x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.137150s |  0.01% |  0.00% )   ( 0.092012s |  0.01% |  0.00% )    	(542x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.092924s |  0.01% |  0.00% )   ( 0.101353s |  0.01% |  0.00% )    	(542x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.WXKWdc"/.wait/p4
│  │  │  │  │  36.5.0: 	( 0.078252s |  0.00% |  0.00% )   ( 0.083210s |  0.00% |  0.00% )    	(542x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.071485s |  0.00% |  0.00% )   ( 0.082313s |  0.00% |  0.00% )    	(542x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.002858s |  0.00% |  0.00% )   ( 0.003282s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.002443s |  0.00% |  0.00% )   ( 0.002855s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.002593s |  0.00% |  0.00% )   ( 0.002994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 351.657400s | 38.06% |  4.15% )   ( 338.136845s | 40.21% |  4.19% )    	(542x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.068322s |  0.00% |  0.01% )   ( 0.079240s |  0.00% |  0.02% )    	(542x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 23.739845s |  2.56% |  6.75% )   ( 22.875299s |  2.72% |  6.76% )    	(542x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 39.461539s |  4.27% | 11.22% )   ( 38.232221s |  4.54% | 11.30% )    	(542x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 33.643183s |  3.64% |  9.56% )   ( 32.309356s |  3.84% |  9.55% )    	(542x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 39.322247s |  4.25% | 11.18% )   ( 38.027086s |  4.52% | 11.24% )    	(542x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 32.408914s |  3.50% |  9.21% )   ( 31.160362s |  3.70% |  9.21% )    	(542x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 21.866324s |  2.36% |  6.21% )   ( 20.898075s |  2.48% |  6.18% )    	(542x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 12.152305s |  1.31% |  3.45% )   ( 11.479951s |  1.36% |  3.39% )    	(542x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 22.630081s |  2.44% |  6.43% )   ( 21.651579s |  2.57% |  6.40% )    	(542x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 10.982660s |  1.18% |  3.12% )   ( 10.195615s |  1.21% |  3.01% )    	(542x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 29.584411s |  3.20% |  8.41% )   ( 28.257503s |  3.36% |  8.35% )    	(542x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 61.716118s |  6.68% | 17.55% )   ( 60.181850s |  7.15% | 17.79% )    	(542x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 12.182212s |  1.31% |  3.46% )   ( 11.565218s |  1.37% |  3.42% )    	(542x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 11.899239s |  1.28% |  3.38% )   ( 11.223490s |  1.33% |  3.31% )    	(542x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.074447s |  0.00% |  0.00% )   ( 0.085443s |  0.01% |  0.00% )    	(542x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.071140s |  0.00% |  0.00% )   ( 0.079360s |  0.00% |  0.00% )    	(519x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.090315s |  0.00% |  0.00% )   ( 0.087971s |  0.01% |  0.00% )    	(519x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002600s |  0.00% |  0.00% )   ( 0.002982s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002728s |  0.00% |  0.00% )   ( 0.003122s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.153915s |  0.01% |  0.04% )   ( 0.152035s |  0.01% |  0.04% )    	(23x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.WXKWdc"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.WXKWdc"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.WXKWdc"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.003038s |  0.00% |  0.00% )   ( 0.003432s |  0.00% |  0.00% )    	(23x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1399.3.0:     	( 15.021655s |  1.62% |  3.25% )   ( 14.409388s |  1.71% |  3.42% )    	(1x)	│  │  │ << (FUNCTION): .local p9 p9_PID >>
│  │  │  ├─ 1.4.0:     	( 0.000623s |  0.00% |  0.00% )   ( 0.000639s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p9 p9_PID (&)
│  │  │  │  73.4.0:    	( 15.020947s |  1.62% | 99.99% )   ( 14.408651s |  1.71% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000314s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.WXKWdc"
│  │  │  │  │  8.5.0:  	( 0.000335s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.WXKWdc"/.run/p9
│  │  │  │  │  12.5.0: 	( 0.012514s |  0.00% |  0.08% )   ( 0.012492s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.WXKWdc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.WXKWdc"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.WXKWdc"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.012472s |  0.00% |  0.08% )   ( 0.012457s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 155169 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.012486s |  0.00% |  0.08% )   ( 0.012469s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 155169 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.012460s |  0.00% |  0.08% )   ( 0.012444s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 155169 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.012521s |  0.00% |  0.08% )   ( 0.012504s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.004368s |  0.00% |  0.00% )   ( 0.004942s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.004127s |  0.00% |  0.00% )   ( 0.004723s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.WXKWdc"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.005075s |  0.00% |  0.00% )   ( 0.005693s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.WXKWdc"/.wait/p9
│  │  │  │  │  23.5.0: 	( 0.102873s |  0.01% |  0.02% )   ( 0.005931s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.004171s |  0.00% |  0.00% )   ( 0.004804s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.WXKWdc"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.004093s |  0.00% |  0.00% )   ( 0.004742s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.WXKWdc"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003940s |  0.00% |  0.00% )   ( 0.004512s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.004054s |  0.00% |  0.00% )   ( 0.004672s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.034140s |  0.00% |  0.00% )   ( 0.034286s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.004222s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.004764s |  0.00% |  0.00% )   ( 0.005388s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.WXKWdc"/.wait/p9
│  │  │  │  │  36.5.0: 	( 0.003858s |  0.00% |  0.00% )   ( 0.004439s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.003672s |  0.00% |  0.00% )   ( 0.004264s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000112s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 14.748926s |  1.59% |  3.50% )   ( 14.227787s |  1.69% |  3.52% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003581s |  0.00% |  0.02% )   ( 0.004080s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 1.004759s |  0.10% |  6.81% )   ( 0.969620s |  0.11% |  6.81% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.580491s |  0.17% | 10.71% )   ( 1.524263s |  0.18% | 10.71% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.417050s |  0.15% |  9.60% )   ( 1.366516s |  0.16% |  9.60% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.547612s |  0.16% | 10.49% )   ( 1.509235s |  0.17% | 10.60% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.319856s |  0.14% |  8.94% )   ( 1.298561s |  0.15% |  9.12% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.942802s |  0.10% |  6.39% )   ( 0.904264s |  0.10% |  6.35% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.579630s |  0.06% |  3.92% )   ( 0.547932s |  0.06% |  3.85% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.939203s |  0.10% |  6.36% )   ( 0.893710s |  0.10% |  6.28% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.532137s |  0.05% |  3.60% )   ( 0.503038s |  0.05% |  3.53% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.252913s |  0.13% |  8.49% )   ( 1.214617s |  0.14% |  8.53% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.442246s |  0.26% | 16.55% )   ( 2.352812s |  0.27% | 16.53% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.591460s |  0.06% |  4.01% )   ( 0.571318s |  0.06% |  4.01% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.595186s |  0.06% |  4.03% )   ( 0.567821s |  0.06% |  3.99% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.003987s |  0.00% |  0.00% )   ( 0.004547s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.003647s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.006979s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  37.5.0: 	( 0.000167s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  47.5.0: 	( 0.000170s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000200s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.WXKWdc"/.quit
│  │  │  │  │  50.5.0: 	( 0.000251s |  0.00% |  0.00% )   ( 0.000278s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.WXKWdc"/.run/p* 1>&21
│  │  │  │  │  51.5.0: 	( 0.000176s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.009251s |  0.00% |  0.06% )   ( 0.009223s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.WXKWdc"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.WXKWdc"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.WXKWdc"/.run/p9\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p9_PID})
│  │  │  1401.3.0:     	( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000143s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001254s |  0.00% |  0.00% )   ( 0.001262s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000116s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.618403s |  2.01% |  4.03% )   ( 0.001590s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000264s |  0.00% |  0.00% )   ( 0.000306s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000271s |  0.00% |  0.00% )   ( 0.000313s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000311s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.005170s |  0.00% |  0.00% )   ( 0.004185s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.WXKWdc" 2>/dev/null'

TOTAL RUN TIME: 923.762908s
TOTAL CPU TIME: 840.727245s
