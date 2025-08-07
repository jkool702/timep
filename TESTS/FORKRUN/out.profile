LINE.DEPTH.CMD NUMBER           	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:           	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
________________________________	________________________________	________________________________	____________________________________
9.0.0:                          	( 568.033846s |100.00% )          	( 504.843717s |100.00% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0.0:                      	( 0.001247s |  0.00% |  0.00% )   	( 0.001009s |  0.00% |  0.00% )    	(1x)	|-- forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   425.0.0:                    	( 568.032599s | 99.99% | 99.99% )   	( 504.842708s | 99.99% | 99.99% )    	(1x)	|   << (SUBSHELL) >>
|   |-- 425.0.0:                	( 0.025404s |  0.00% |  0.00% )   	( 0.025347s |  0.00% |  0.00% )    	(1x)	|   |-- trap - EXIT INT TERM HUP USR1
|   |   110.0.0:                	( 0.000070s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   shopt -s extglob
|   |   113.0.0:                	( 0.000072s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   114.0.0:                	( 0.000122s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	|   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   115.0.0:                	( 0.000096s |  0.00% |  0.00% )   	( 0.000110s |  0.00% |  0.00% )    	(1x)	|   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   116.0.0:                	( 0.000081s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   117.0.0:                	( 0.000067s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   122.0.0:                	( 0.000069s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   125.0.0:                	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   [[ $# == 0 ]]
|   |   125.0.1:                	( 0.000064s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   optParseFlag=true
|   |   126.0.0:                	( 0.000122s |  0.00% |  0.00% )   	( 0.000148s |  0.00% |  0.00% )    	(2x)	|   |   ${optParseFlag}
|   |   126.0.1:                	( 0.000121s |  0.00% |  0.00% )   	( 0.000148s |  0.00% |  0.00% )    	(2x)	|   |   (( $# > 0  ))
|   |   126.0.2:                	( 0.000120s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(2x)	|   |   [[ "$1" == [-+]* ]]
|   |   127.0.0:                	( 0.000098s |  0.00% |  0.00% )   	( 0.000113s |  0.00% |  0.00% )    	(1x)	|   |   case "${1}" in
|   |   254.0.0:                	( 0.000072s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   [[ "${1:0:1}" == '-' ]]
|   |   254.0.1:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   nullDelimiterFlag=true
|   |   318.0.0:                	( 0.000065s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   shift 1
|   |   319.0.0:                	( 0.000066s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   [[ ${#} == 0 ]]
|   |   323.0.0:                	( 0.000063s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   [ -t "${fd_stdin0}" ]
|   |   332.0.0:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${tmpDirRoot} ]]
|   |   332.0.1:                	( 0.000063s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${TMPDIR} ]]
|   |   332.0.2:                	( 0.000061s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   [[ -d '/dev/shm' ]]
|   |   332.0.3:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   tmpDirRoot='/dev/shm'
|   |   334.0.0:                	( 0.001275s |  0.00% |  0.00% )   	( 0.000988s |  0.00% |  0.00% )    	(1x)	|   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   334.0.1:                	( 0.006169s |  0.00% |  0.00% )   	( 0.006169s |  0.00% |  0.00% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 334.0.0:            	( 0.006169s |100.00% |  0.00% )   	( 0.006169s |100.00% |  0.00% )    	(1x)	|   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   335.0.0:                	( 0.000068s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   fPath="${tmpDir}"/.stdin
|   |   337.0.0:                	( 0.001242s |  0.00% |  0.00% )   	( 0.001313s |  0.00% |  0.00% )    	(1x)	|   |   mkdir -p "${tmpDir}"/.run
|   |   338.0.0:                	( 0.000087s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   : > "${fPath}"
|   |   340.0.0:                	( 0.000073s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	|   |   ${rmTmpDirFlag}
|   |   340.0.1:                	( 0.014086s |  0.00% |  0.00% )   	( 0.000521s |  0.00% |  0.00% )    	(1x)	|   |   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1502.0.0:               	( 567.975827s | 99.99% | 99.98% )   	( 504.801121s | 99.99% | 99.99% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 348.0.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1502.0.0:           	( 0.000186s |  0.00% |  0.00% )   	( 0.000219s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1502.0.0:       	( 0.001233s |100.00% |  0.00% )   	( 0.001439s |100.00% |  0.00% )    	(6x)	|   |   |   |-- :
|   |   |   1502.0.1:           	( 0.000299s |  0.00% |  0.00% )   	( 0.000340s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.2:           	( 0.000284s |  0.00% |  0.00% )   	( 0.000334s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.3:           	( 0.000284s |  0.00% |  0.00% )   	( 0.000333s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.4:           	( 0.000077s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.5:           	( 0.000103s |  0.00% |  0.00% )   	( 0.000122s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   363.0.0:            	( 0.000085s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   |   LC_ALL=C
|   |   |   364.0.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   LANG=C
|   |   |   365.0.0:            	( 0.000082s |  0.00% |  0.00% )   	( 0.003653s |  0.00% |  0.00% )    	(1x)	|   |   |   IFS=
|   |   |   367.0.0:            	( 0.000193s |  0.00% |  0.00% )   	( 0.006028s |  0.00% |  0.00% )    	(1x)	|   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   369.0.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   370.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   371.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   373.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   PID0="${BASHPID}"
|   |   |   375.0.0:            	( 0.000073s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |   shopt -s nullglob
|   |   |   378.0.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   380.0.0:            	( 0.000077s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   enable lseek &> /dev/null
|   |   |   381.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekFlag:=true}"
|   |   |   386.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   387.0.0:            	( 0.002956s |  0.00% |  0.00% )   	( 0.003014s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   387.0.1:            	( 0.000104s |  0.00% |  0.00% )   	( 0.000117s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 387.0.0:        	( 0.000104s |100.00% |  0.00% )   	( 0.000117s |100.00% |  0.00% )    	(1x)	|   |   |   |-- lseek $fd_read 0
|   |   |   387.0.2:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekPosFlag:=true}"
|   |   |   391.0.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   396.0.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   runCmd=("${@//''/}")
|   |   |   398.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.0.1:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   noFuncFlag=false
|   |   |   400.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   401.0.0:            	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   405.0.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   467.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nLines} ]]
|   |   |   467.0.1:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   468.0.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${nLines} ]]
|   |   |   468.0.1:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   nLines=1
|   |   |   472.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == '-'* ]]
|   |   |   477.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == *','* ]]
|   |   |   481.0.0:            	( 0.000809s |  0.00% |  0.00% )   	( 0.000954s |  0.00% |  0.00% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0.0:          	( 0.000058s |  7.16% |  0.00% )   	( 0.000070s |  7.33% |  0.00% )    	(1x)	|   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0.0:          	( 0.000066s |  8.15% |  0.00% )   	( 0.000078s |  8.17% |  0.00% )    	(1x)	|   |   |   |   local +i -l nn
|   |   |   |   9.0.0:          	( 0.000064s |  7.91% |  0.00% )   	( 0.000076s |  7.96% |  0.00% )    	(1x)	|   |   |   |   local vOut
|   |   |   |   11.0.0:         	( 0.000063s |  7.78% |  0.00% )   	( 0.000075s |  7.86% |  0.00% )    	(1x)	|   |   |   |   local -n vOut="$1"
|   |   |   |   12.0.0:         	( 0.000061s |  7.54% |  0.00% )   	( 0.000074s |  7.75% |  0.00% )    	(1x)	|   |   |   |   shift 1
|   |   |   |   13.0.0:         	( 0.000063s |  7.78% |  0.00% )   	( 0.000076s |  7.96% |  0.00% )    	(1x)	|   |   |   |   local -g vOut
|   |   |   |   15.0.0:         	( 0.000063s |  7.78% |  0.00% )   	( 0.000075s |  7.86% |  0.00% )    	(1x)	|   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.0.1:         	( 0.000115s | 14.21% |  0.00% )   	( 0.000128s | 13.41% |  0.00% )    	(1x)	|   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0.0:         	( 0.000063s |  7.78% |  0.00% )   	( 0.000075s |  7.86% |  0.00% )    	(1x)	|   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.0.0:         	( 0.000063s |  7.78% |  0.00% )   	( 0.000074s |  7.75% |  0.00% )    	(1x)	|   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.0.1:         	( 0.000064s |  7.91% |  0.00% )   	( 0.000076s |  7.96% |  0.00% )    	(1x)	|   |   |   |   continue
|   |   |   |-- 28.0.0:         	( 0.000066s |  8.15% |  0.00% )   	( 0.000077s |  8.07% |  0.00% )    	(1x)	|   |   |   |-- local +n vOut
|   |   |   483.0.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   485.0.0:            	( 0.006110s |  0.00% |  0.00% )   	( 0.006223s |  0.00% |  0.00% )    	(1x)	|   |   |   nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/'$'\n''}") && tmpA=("${tmpA[@]//!('$'\n'')/}") && tmpA=("${tmpA[@]//'$'\n''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   485.0.1:            	( 0.002230s |  0.00% |  0.00% )   	( 0.002322s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 485.0.0:        	( 0.000167s |  7.48% |  0.00% )   	( 0.000180s |  7.75% |  0.00% )    	(1x)	|   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 485.0.1:        	( 0.002063s | 92.51% |  0.00% )   	( 0.002142s | 92.24% |  0.00% )    	(1x)	|   |   |   |-- nproc
|   |   |   486.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nCPU < 1 ))
|   |   |   487.0.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nProcs} ]]
|   |   |   487.0.1:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   487.0.2:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   nProcs=${nCPU}
|   |   |   489.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   493.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   493.0.1:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   499.0.0:            	( 0.000078s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   501.0.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   504.0.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   504.0.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   504.0.2:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < nLines ))
|   |   |   506.0.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   doneIndicatorFlag=false
|   |   |   509.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.0.0:            	( 0.000151s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   type -a fallocate &> /dev/null
|   |   |   515.0.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.0.2:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${fallocateFlag:=true}"
|   |   |   518.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${exportOrderFlag}
|   |   |   521.0.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   522.0.0:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   523.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nullDelimiterFlag}
|   |   |   524.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   delimiterReadStr="-d ''"
|   |   |   525.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   525.0.1:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:='lseek'}"
|   |   |   526.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:=bash}"
|   |   |   527.0.0:            	( 0.000104s |  0.00% |  0.00% )   	( 0.000117s |  0.00% |  0.00% )    	(1x)	|   |   |   type -p dd &> /dev/null
|   |   |   528.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ddAvailableFlag=true
|   |   |   529.0.0:            	( 0.002755s |  0.00% |  0.00% )   	( 0.003877s |  0.00% |  0.00% )    	(1x)	|   |   |   dd --version | grep -qF 'coreutils'
|   |   |   530.0.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ddQuietStr='status=none'
|   |   |   537.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   538.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   539.0.0:            	( 0.000077s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   nullDelimiterProg=''
|   |   |   557.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${unescapeFlag}
|   |   |   566.0.0:            	( 0.003814s |  0.00% |  0.00% )   	( 0.003934s |  0.00% |  0.00% )    	(1x)	|   |   |   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   566.0.1:            	( 0.000153s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 566.0.0:        	( 0.000153s |100.00% |  0.00% )   	( 0.000176s |100.00% |  0.00% )    	(1x)	|   |   |   |-- printf '%q\n' "${runCmd[@]}"
|   |   |   567.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringFlag}
|   |   |   570.0.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringIDFlag}
|   |   |   576.0.0:            	( 0.000076s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	|   |   |   nLinesCur=${nLines}
|   |   |   578.0.0:            	( 0.002148s |  0.00% |  0.00% )   	( 0.002221s |  0.00% |  0.00% )    	(1x)	|   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   579.0.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   582.0.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${rmTmpDirFlag}
|   |   |   584.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 0 ))
|   |   |   615.0.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   617.0.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   evfd_init
|   |   |   622.0.0:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   624.0.0:            	( 0.000091s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   628.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   638.0.0:            	( 0.000547s |  0.00% |  0.00% )   	( 0.000567s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   644.0.0:            	( 0.079297s |  0.01% |  0.01% )   	( 0.079210s |  0.01% |  0.01% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 644.0.0:        	( 0.000084s |  0.10% |  0.00% )   	( 0.000097s |  0.12% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   646.0.0:        	( 0.011509s | 14.51% |  0.00% )   	( 0.011473s | 14.48% |  0.00% )    	(1x)	|   |   |   |   trap - EXIT
|   |   |   |   647.0.0:        	( 0.012262s | 15.46% |  0.00% )   	( 0.012242s | 15.45% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   648.0.0:        	( 0.012168s | 15.34% |  0.00% )   	( 0.012149s | 15.33% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   649.0.0:        	( 0.012242s | 15.43% |  0.00% )   	( 0.012225s | 15.43% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   650.0.0:        	( 0.012271s | 15.47% |  0.00% )   	( 0.012251s | 15.46% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   652.0.0:        	( 0.000063s |  0.07% |  0.00% )   	( 0.000074s |  0.09% |  0.00% )    	(1x)	|   |   |   |   case ${writeFileProgType} in
|   |   |   |   653.0.0:        	( 0.018451s | 23.26% |  0.00% )   	( 0.018419s | 23.25% |  0.00% )    	(1x)	|   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   658.0.0:        	( 0.000086s |  0.10% |  0.00% )   	( 0.000099s |  0.12% |  0.00% )    	(1x)	|   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   659.0.0:        	( 0.000094s |  0.11% |  0.00% )   	( 0.000103s |  0.13% |  0.00% )    	(1x)	|   |   |   |   evfd_signal
|   |   |   |-- 660.0.0:        	( 0.000067s |  0.08% |  0.00% )   	( 0.000078s |  0.09% |  0.00% )    	(1x)	|   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   668.0.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   673.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   715.0.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   outStr='>&'"${fd_stdout}"
|   |   |   719.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   721.0.0:            	( 0.000428s |  0.00% |  0.00% )   	( 0.000459s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   731.0.0:            	( 5.755880s |  1.01% |  1.01% )   	( 1.721116s |  0.34% |  0.34% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 731.0.0:        	( 0.000155s |  0.00% |  0.00% )   	( 0.000177s |  0.01% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   733.0.0:        	( 0.015108s |  0.26% |  0.00% )   	( 0.015072s |  0.87% |  0.00% )    	(1x)	|   |   |   |   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   734.0.0:        	( 0.012210s |  0.21% |  0.00% )   	( 0.012191s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   735.0.0:        	( 0.012183s |  0.21% |  0.00% )   	( 0.012161s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   736.0.0:        	( 0.012214s |  0.21% |  0.00% )   	( 0.012189s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   737.0.0:        	( 0.012208s |  0.21% |  0.00% )   	( 0.012187s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   739.0.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   740.0.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   741.0.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fd_read_pos_old=0
|   |   |   |   743.0.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=0
|   |   |   |   745.0.0:        	( 0.086912s |  1.50% |  0.01% )   	( 0.098951s |  5.74% |  0.01% )    	(675x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   747.0.0:        	( 4.257585s | 73.96% |  0.74% )   	( 0.118020s |  6.85% |  0.02% )    	(674x)	|   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   747.0.1:        	( 0.001125s |  0.01% |  0.00% )   	( 0.001278s |  0.07% |  0.00% )    	(8x)	|   |   |   |   continue
|   |   |   |   749.0.0:        	( 0.088830s |  1.54% |  0.01% )   	( 0.096702s |  5.61% |  0.01% )    	(666x)	|   |   |   |   case ${REPLY} in
|   |   |   |   763.0.0:        	( 0.089078s |  1.54% |  0.01% )   	( 0.096144s |  5.58% |  0.01% )    	(666x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   764.0.0:        	( 0.000153s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   767.0.0:        	( 0.000131s |  0.00% |  0.00% )   	( 0.000153s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   773.0.0:        	( 0.114209s |  1.98% |  0.02% )   	( 0.098187s |  5.70% |  0.01% )    	(666x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   774.0.0:        	( 0.086849s |  1.50% |  0.01% )   	( 0.099762s |  5.79% |  0.01% )    	(666x)	|   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   775.0.0:        	( 0.089617s |  1.55% |  0.01% )   	( 0.099294s |  5.76% |  0.01% )    	(666x)	|   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   782.0.0:        	( 0.083691s |  1.45% |  0.01% )   	( 0.095498s |  5.54% |  0.01% )    	(666x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   782.0.1:        	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   784.0.0:        	( 0.095744s |  1.66% |  0.01% )   	( 0.095788s |  5.56% |  0.01% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   786.0.0:        	( 0.083373s |  1.44% |  0.01% )   	( 0.096211s |  5.59% |  0.01% )    	(666x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   788.0.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   790.0.0:        	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   791.0.0:        	( 0.006229s |  0.10% |  0.00% )   	( 0.006884s |  0.39% |  0.00% )    	(1x)	|   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   791.0.1:        	( 0.003386s |  0.05% |  0.00% )   	( 0.003910s |  0.22% |  0.00% )    	(1x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 791.0.0:    	( 0.003386s |100.00% |  0.00% )   	( 0.003910s |100.00% |  0.00% )    	(1x)	|   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   792.0.0:        	( 0.000106s |  0.00% |  0.00% )   	( 0.000123s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   793.0.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   796.0.0:        	( 0.000070s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   798.0.0:        	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   800.0.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   800.0.1:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   800.0.2:        	( 0.000140s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   802.0.0:        	( 0.000092s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   805.0.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   807.0.0:        	( 0.000156s |  0.00% |  0.00% )   	( 0.000183s |  0.01% |  0.00% )    	(1x)	|   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   811.0.0:        	( 0.089539s |  1.55% |  0.01% )   	( 0.097488s |  5.66% |  0.01% )    	(666x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   812.0.0:        	( 0.082565s |  1.43% |  0.01% )   	( 0.095015s |  5.52% |  0.01% )    	(666x)	|   |   |   |   case ${nWait} in
|   |   |   |   823.0.0:        	( 0.080135s |  1.39% |  0.01% )   	( 0.092627s |  5.38% |  0.01% )    	(645x)	|   |   |   |   ((nWait--))
|   |   |   |   828.0.0:        	( 0.086246s |  1.49% |  0.01% )   	( 0.099314s |  5.77% |  0.01% )    	(666x)	|   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   763.0.1:        	( 0.087057s |  1.51% |  0.01% )   	( 0.097294s |  5.65% |  0.01% )    	(665x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   782.0.1:        	( 0.086667s |  1.50% |  0.01% )   	( 0.096703s |  5.61% |  0.01% )    	(665x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   814.0.0:        	( 0.002618s |  0.04% |  0.00% )   	( 0.003013s |  0.17% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   815.0.0:        	( 0.002545s |  0.04% |  0.00% )   	( 0.002956s |  0.17% |  0.00% )    	(21x)	|   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   816.0.0:        	( 0.071473s |  1.24% |  0.01% )   	( 0.048089s |  2.79% |  0.00% )    	(21x)	|   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   817.0.0:        	( 0.002781s |  0.04% |  0.00% )   	( 0.003183s |  0.18% |  0.00% )    	(21x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   818.0.0:        	( 0.002784s |  0.04% |  0.00% )   	( 0.003211s |  0.18% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   820.0.0:        	( 0.002693s |  0.04% |  0.00% )   	( 0.003099s |  0.18% |  0.00% )    	(21x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   829.0.0:        	( 0.000128s |  0.00% |  0.00% )   	( 0.000144s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   830.0.0:        	( 0.000122s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fallocateFlag=false
|   |   |   |   831.0.0:        	( 0.000123s |  0.00% |  0.00% )   	( 0.000145s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nSpawnFlag=false
|   |   |   |   745.0.1:        	( 0.000124s |  0.00% |  0.00% )   	( 0.000144s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   745.0.2:        	( 0.000141s |  0.00% |  0.00% )   	( 0.000161s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- -248.0.0:       	( 0.005826s |  0.10% |  0.00% )   	( 0.005908s |  0.34% |  0.00% )    	(1x)	|   |   |   |-- -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.jyefgp"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/pAuto'
|   |   |   839.0.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   840.0.0:            	( 0.000112s |  0.00% |  0.00% )   	( 0.000124s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   876.0.0:            	( 0.000095s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1345.0.0:           	( 0.001875s |  0.00% |  0.00% )   	( 0.001108s |  0.00% |  0.00% )    	(1x)	|   |   |   coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1362.0.0:           	( 0.004811s |  0.00% |  0.00% )   	( 0.005560s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1362.0.0:       	( 0.000404s |  8.39% |  0.00% )   	( 0.000451s |  8.11% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1363.0.0:       	( 0.000071s |  1.47% |  0.00% )   	( 0.000084s |  1.51% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1363.0.1:       	( 0.000079s |  1.64% |  0.00% )   	( 0.000092s |  1.65% |  0.00% )    	(1x)	|   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1371.0.0:       	( 0.000215s |  4.46% |  0.00% )   	( 0.000228s |  4.10% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1372.0.0:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000074s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1444.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000073s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1447.0.0:       	( 0.000074s |  1.53% |  0.00% )   	( 0.000085s |  1.52% |  0.00% )    	(1x)	|   |   |   |   echo "{"
|   |   |   |   1448.0.0:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1449.0.0:       	( 0.000059s |  1.22% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1449.0.1:       	( 0.000063s |  1.30% |  0.00% )   	( 0.000074s |  1.33% |  0.00% )    	(1x)	|   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1450.0.0:       	( 0.000063s |  1.30% |  0.00% )   	( 0.000075s |  1.34% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "mapfile"
|   |   |   |   1451.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1451.0.1:       	( 0.000063s |  1.30% |  0.00% )   	( 0.000075s |  1.34% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1452.0.0:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000076s |  1.36% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1453.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000072s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1453.0.1:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000075s |  1.34% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' ${fd_read}
|   |   |   |   1454.0.0:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1454.0.1:       	( 0.000062s |  1.28% |  0.00% )   	( 0.000072s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1454.0.2:       	( 0.000063s |  1.30% |  0.00% )   	( 0.000074s |  1.33% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1456.0.0:       	( 0.000065s |  1.35% |  0.00% )   	( 0.000076s |  1.36% |  0.00% )    	(1x)	|   |   |   |   echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1457.0.0:       	( 0.000059s |  1.22% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1457.0.1:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1457.0.2:       	( 0.000088s |  1.82% |  0.00% )   	( 0.000100s |  1.79% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1514.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000072s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1514.0.1:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000073s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1514.0.2:       	( 0.000067s |  1.39% |  0.00% )   	( 0.000078s |  1.40% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1515.0.0:       	( 0.000074s |  1.53% |  0.00% )   	( 0.000086s |  1.54% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1528.0.0:       	( 0.000083s |  1.72% |  0.00% )   	( 0.000095s |  1.70% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1529.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000072s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   1532.0.0:       	( 0.000072s |  1.49% |  0.00% )   	( 0.000083s |  1.49% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1543.0.0:       	( 0.000072s |  1.49% |  0.00% )   	( 0.000084s |  1.51% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1544.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000072s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1544.0.1:       	( 0.000066s |  1.37% |  0.00% )   	( 0.000078s |  1.40% |  0.00% )    	(1x)	|   |   |   |   echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1545.0.0:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000076s |  1.36% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1546.0.0:       	( 0.000065s |  1.35% |  0.00% )   	( 0.000075s |  1.34% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   1551.0.0:       	( 0.000072s |  1.49% |  0.00% )   	( 0.000084s |  1.51% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1552.0.0:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000075s |  1.34% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1556.0.0:       	( 0.000079s |  1.64% |  0.00% )   	( 0.000087s |  1.56% |  0.00% )    	(1x)	|   |   |   |   echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1557.0.0:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1557.0.1:       	( 0.000070s |  1.45% |  0.00% )   	( 0.000082s |  1.47% |  0.00% )    	(1x)	|   |   |   |   printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1562.0.0:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000073s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1562.0.1:       	( 0.000068s |  1.41% |  0.00% )   	( 0.000079s |  1.42% |  0.00% )    	(1x)	|   |   |   |   printf '%s' ' || '
|   |   |   |   1563.0.0:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1563.0.1:       	( 0.000077s |  1.60% |  0.00% )   	( 0.000088s |  1.58% |  0.00% )    	(1x)	|   |   |   |   echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1564.0.0:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000072s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1564.0.1:       	( 0.000066s |  1.37% |  0.00% )   	( 0.000077s |  1.38% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1572.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000073s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1572.0.1:       	( 0.000070s |  1.45% |  0.00% )   	( 0.000082s |  1.47% |  0.00% )    	(1x)	|   |   |   |   echo '{'
|   |   |   |   1573.0.0:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000072s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1573.0.1:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000076s |  1.36% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1574.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000073s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1575.0.0:       	( 0.000084s |  1.74% |  0.00% )   	( 0.000096s |  1.72% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "${runCmd[@]}"
|   |   |   |   1576.0.0:       	( 0.000062s |  1.28% |  0.00% )   	( 0.000074s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1583.0.0:       	( 0.000061s |  1.26% |  0.00% )   	( 0.000074s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${stdinRunFlag}
|   |   |   |   1586.0.0:       	( 0.000059s |  1.22% |  0.00% )   	( 0.000070s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${noFuncFlag}
|   |   |   |   1589.0.0:       	( 0.000060s |  1.24% |  0.00% )   	( 0.000070s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${substituteStringFlag}
|   |   |   |   1590.0.0:       	( 0.000108s |  2.24% |  0.00% )   	( 0.000097s |  1.74% |  0.00% )    	(1x)	|   |   |   |   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1595.0.0:       	( 0.000066s |  1.37% |  0.00% )   	( 0.000077s |  1.38% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1607.0.0:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000076s |  1.36% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1608.0.0:       	( 0.000059s |  1.22% |  0.00% )   	( 0.000071s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1608.0.1:       	( 0.000066s |  1.37% |  0.00% )   	( 0.000076s |  1.36% |  0.00% )    	(1x)	|   |   |   |   printf '\n%s ' '}'
|   |   |   |   1609.0.0:       	( 0.000065s |  1.35% |  0.00% )   	( 0.000076s |  1.36% |  0.00% )    	(1x)	|   |   |   |   echo "${outStr}"
|   |   |   |   1610.0.0:       	( 0.000063s |  1.30% |  0.00% )   	( 0.000075s |  1.34% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1611.0.0:       	( 0.000064s |  1.33% |  0.00% )   	( 0.000075s |  1.34% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1616.0.0:       	( 0.000081s |  1.68% |  0.00% )   	( 0.000092s |  1.65% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1350.0.0:           	( 0.000227s |  0.00% |  0.00% )   	( 0.000256s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1355.0.0:           	( 0.000235s |  0.00% |  0.00% )   	( 0.000261s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1360.0.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1362.0.0:           	( 0.012513s |  0.00% |  0.00% )   	( 0.012488s |  0.00% |  0.00% )    	(1x)	|   |   |   trap "${exitTrapStr}" EXIT
|   |   |   1367.0.0:           	( 0.012628s |  0.00% |  0.00% )   	( 0.100397s |  0.01% |  0.01% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1372.0.0:           	( 0.012379s |  0.00% |  0.00% )   	( 0.012355s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1377.0.0:           	( 0.012315s |  0.00% |  0.00% )   	( 0.012291s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1379.0.0:           	( 0.000060s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1380.0.0:           	( 0.000069s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1382.0.0:           	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1393.0.0:           	( 0.000072s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '\n' >&${fd_continue}
|   |   |   1396.0.0:           	( 0.000065s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1397.0.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   ((kkProcs=0 ))
|   |   |   1397.0.1:           	( 0.002804s |  0.00% |  0.00% )   	( 0.003225s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs<28 ))
|   |   |   1398.0.0:           	( 0.002652s |  0.00% |  0.00% )   	( 0.003049s |  0.00% |  0.00% )    	(28x)	|   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1399.0.0:           	( 18.104244s |  3.18% |  3.18% )   	( 16.806017s |  3.32% |  3.32% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p0 p0_PID >>
|   |   |   |-- 1.0.0:          	( 0.000581s |  0.00% |  0.00% )   	( 0.000600s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p0 p0_PID (&)
|   |   |   |   73.0.0:         	( 537.310048s | 99.99% | 94.59% )   	( 502.773698s | 99.99% | 99.58% )    	(28x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 73.0.0:     	( 0.004537s |  0.00% |  0.00% )   	( 0.005114s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.jyefgp"
|   |   |   |   |   8.0.0:      	( 0.000218s |  0.00% |  0.00% )   	( 0.000239s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p0
|   |   |   |   |   12.0.0:     	( 0.015202s |  0.08% |  0.00% )   	( 0.015168s |  0.09% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0.0:     	( 0.527454s |  0.09% |  0.09% )   	( 0.524542s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT 871616 ${BASHPID}' INT
|   |   |   |   |   15.0.0:     	( 0.552062s |  0.09% |  0.09% )   	( 0.549258s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM 871616 ${BASHPID}' TERM
|   |   |   |   |   16.0.0:     	( 0.539870s |  0.09% |  0.09% )   	( 0.537236s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP 871616 ${BASHPID}' HUP
|   |   |   |   |   17.0.0:     	( 0.544727s |  0.09% |  0.09% )   	( 0.541502s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0.0:     	( 0.113295s |  0.01% |  0.01% )   	( 0.124017s |  0.02% |  0.02% )    	(694x)	|   |   |   |   |   true
|   |   |   |   |   20.0.0:     	( 0.095680s |  0.01% |  0.01% )   	( 0.109318s |  0.01% |  0.02% )    	(694x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.0.1:     	( 0.003812s |  0.00% |  0.00% )   	( 0.004336s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   read -r < "/dev/shm/.forkrun.jyefgp"/.nLines
|   |   |   |   |   20.0.2:     	( 0.003200s |  0.00% |  0.00% )   	( 0.003708s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.0.3:     	( 0.003177s |  0.00% |  0.00% )   	( 0.003695s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.0.0:     	( 0.004931s |  0.02% |  0.00% )   	( 0.005501s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p0
|   |   |   |   |   23.0.0:     	( 4.757868s |  0.88% |  0.83% )   	( 0.152055s |  0.02% |  0.03% )    	(694x)	|   |   |   |   |   read -r -u 21 _
|   |   |   |   |   24.0.0:     	( 0.114213s |  0.01% |  0.02% )   	( 0.116587s |  0.01% |  0.02% )    	(694x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.jyefgp"/.quit ]]
|   |   |   |   |   28.0.0:     	( 0.116150s |  0.01% |  0.02% )   	( 0.110388s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.jyefgp"/.done ]]
|   |   |   |   |   28.0.1:     	( 0.091786s |  0.01% |  0.01% )   	( 0.105169s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.0.0:     	( 0.096089s |  0.01% |  0.01% )   	( 0.109468s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   evfd_wait 25
|   |   |   |   |   31.0.0:     	( 0.833697s |  0.15% |  0.14% )   	( 0.801383s |  0.15% |  0.15% )    	(668x)	|   |   |   |   |   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0.0:     	( 0.174305s |  0.02% |  0.03% )   	( 0.115493s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   35.0.0:     	( 0.004725s |  0.02% |  0.00% )   	( 0.005322s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p0
|   |   |   |   |   36.0.0:     	( 0.102790s |  0.01% |  0.01% )   	( 0.104245s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0.0:     	( 0.095211s |  0.01% |  0.01% )   	( 0.102776s |  0.01% |  0.02% )    	(666x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   57.0.0:     	( 0.003591s |  0.00% |  0.00% )   	( 0.004128s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0.0:     	( 0.003319s |  0.00% |  0.00% )   	( 0.003867s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0.0:     	( 527.242346s | 98.10% | 92.81% )   	( 497.340410s | 98.90% | 98.51% )    	(666x)	|   |   |   |   |   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0.0:  	( 0.086596s |  0.02% |  0.01% )   	( 0.098945s |  0.02% |  0.01% )    	(666x)	|   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.0.0:  	( 36.900768s |  7.03% |  6.49% )   	( 34.032117s |  6.91% |  6.74% )    	(666x)	|   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.0.0:  	( 62.762566s | 10.50% | 11.04% )   	( 59.248897s | 10.50% | 11.73% )    	(666x)	|   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.0.0: 	( 50.929245s |  9.57% |  8.96% )   	( 47.904858s |  9.58% |  9.48% )    	(666x)	|   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.0.0: 	( 61.244177s | 10.25% | 10.78% )   	( 58.257991s | 10.31% | 11.53% )    	(666x)	|   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.0.0: 	( 48.658024s |  9.09% |  8.56% )   	( 46.485071s |  9.16% |  9.20% )    	(666x)	|   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.0.0: 	( 32.372638s |  6.39% |  5.69% )   	( 30.569534s |  6.41% |  6.05% )    	(666x)	|   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.0.0: 	( 16.098239s |  4.16% |  2.83% )   	( 14.852461s |  4.14% |  2.94% )    	(666x)	|   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.0.0: 	( 34.002593s |  6.30% |  5.98% )   	( 32.045224s |  6.30% |  6.34% )    	(666x)	|   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.0.0: 	( 14.351320s |  3.97% |  2.52% )   	( 13.044229s |  3.90% |  2.58% )    	(666x)	|   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.0.0: 	( 43.284153s |  8.74% |  7.61% )   	( 40.405194s |  8.68% |  8.00% )    	(666x)	|   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.0.0: 	( 95.039516s | 15.00% | 16.73% )   	( 91.337790s | 15.19% | 18.09% )    	(666x)	|   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0.0: 	( 15.895468s |  4.38% |  2.79% )   	( 14.811855s |  4.39% |  2.93% )    	(666x)	|   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.0.0: 	( 15.617043s |  4.45% |  2.74% )   	( 14.246244s |  4.36% |  2.82% )    	(666x)	|   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   58.0.1:     	( 0.003115s |  0.00% |  0.00% )   	( 0.003608s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   20.0.1:     	( 0.093631s |  0.01% |  0.01% )   	( 0.106225s |  0.01% |  0.02% )    	(662x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   56.0.1:     	( 0.086746s |  0.01% |  0.01% )   	( 0.099168s |  0.01% |  0.01% )    	(634x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   59.0.0:     	( 0.125363s |  0.01% |  0.02% )   	( 0.109466s |  0.01% |  0.02% )    	(634x)	|   |   |   |   |   printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0.0:     	( 0.002687s |  0.00% |  0.00% )   	( 0.003089s |  0.00% |  0.00% )    	(26x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   26.0.0:     	( 0.002899s |  0.00% |  0.00% )   	( 0.003308s |  0.00% |  0.00% )    	(26x)	|   |   |   |   |   break
|   |   |   |   |-- 2.0.0:      	( 0.187959s |  0.03% |  0.03% )   	( 0.189652s |  0.03% |  0.03% )    	(28x)	|   |   |   |   |-- break
|   |   |   |-- 134.0.0:        	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p0_PID})
|   |   |   1397.0.0:           	( 0.002581s |  0.00% |  0.00% )   	( 0.003007s |  0.00% |  0.00% )    	(28x)	|   |   |   ((kkProcs++ ))
|   |   |   1399.0.0:           	( 18.544208s |  3.26% |  3.26% )   	( 17.372288s |  3.44% |  3.44% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p1 p1_PID >>
|   |   |   |-- 1.0.0:          	( 0.000549s |  0.00% |  0.00% )   	( 0.000569s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000087s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p1
|   |   |   |   |   12.0.0:     	( 0.012678s |  0.06% |  0.00% )   	( 0.012656s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.003378s |  0.01% |  0.00% )   	( 0.003802s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p1
|   |   |   |   |   35.0.0:     	( 0.003136s |  0.01% |  0.00% )   	( 0.003519s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p1
|   |   |   |-- 134.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p1_PID})
|   |   |   1399.0.0:           	( 18.139622s |  3.19% |  3.19% )   	( 17.022494s |  3.37% |  3.37% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p2 p2_PID >>
|   |   |   |-- 1.0.0:          	( 0.000538s |  0.00% |  0.00% )   	( 0.000559s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000114s |  0.00% |  0.00% )   	( 0.000131s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p2
|   |   |   |   |   12.0.0:     	( 0.012695s |  0.06% |  0.00% )   	( 0.012672s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004865s |  0.02% |  0.00% )   	( 0.005448s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p2
|   |   |   |   |   35.0.0:     	( 0.006884s |  0.03% |  0.00% )   	( 0.005062s |  0.02% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p2
|   |   |   |-- 134.0.0:        	( 0.000092s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p2_PID})
|   |   |   1399.0.0:           	( 22.091496s |  3.88% |  3.88% )   	( 21.390571s |  4.23% |  4.23% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p3 p3_PID >>
|   |   |   |-- 1.0.0:          	( 0.000590s |  0.00% |  0.00% )   	( 0.000603s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000141s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p3
|   |   |   |   |   12.0.0:     	( 0.012389s |  0.05% |  0.00% )   	( 0.012368s |  0.05% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.002412s |  0.01% |  0.00% )   	( 0.002740s |  0.01% |  0.00% )    	(16x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p3
|   |   |   |   |   35.0.0:     	( 0.002433s |  0.01% |  0.00% )   	( 0.002750s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p3
|   |   |   |-- 134.0.0:        	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p3_PID})
|   |   |   1399.0.0:           	( 21.199307s |  3.73% |  3.73% )   	( 20.158665s |  3.99% |  3.99% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p4 p4_PID >>
|   |   |   |-- 1.0.0:          	( 0.000556s |  0.00% |  0.00% )   	( 0.000575s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000334s |  0.00% |  0.00% )   	( 0.000377s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p4
|   |   |   |   |   12.0.0:     	( 0.012538s |  0.05% |  0.00% )   	( 0.012528s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.003924s |  0.01% |  0.00% )   	( 0.004433s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p4
|   |   |   |   |   35.0.0:     	( 0.003943s |  0.01% |  0.00% )   	( 0.004437s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p4
|   |   |   |-- 134.0.0:        	( 0.000096s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p4_PID})
|   |   |   1399.0.0:           	( 18.297948s |  3.22% |  3.22% )   	( 16.866816s |  3.34% |  3.34% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p5 p5_PID >>
|   |   |   |-- 1.0.0:          	( 0.000587s |  0.00% |  0.00% )   	( 0.000602s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000340s |  0.00% |  0.00% )   	( 0.000383s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p5
|   |   |   |   |   12.0.0:     	( 0.013779s |  0.07% |  0.00% )   	( 0.013750s |  0.08% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.005260s |  0.02% |  0.00% )   	( 0.005881s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p5
|   |   |   |   |   35.0.0:     	( 0.006060s |  0.03% |  0.00% )   	( 0.005667s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p5
|   |   |   |-- 134.0.0:        	( 0.000091s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p5_PID})
|   |   |   1399.0.0:           	( 18.651975s |  3.28% |  3.28% )   	( 17.836145s |  3.53% |  3.53% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p6 p6_PID >>
|   |   |   |-- 1.0.0:          	( 0.000582s |  0.00% |  0.00% )   	( 0.000602s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000108s |  0.00% |  0.00% )   	( 0.000122s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p6
|   |   |   |   |   12.0.0:     	( 0.013867s |  0.07% |  0.00% )   	( 0.013137s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.003458s |  0.01% |  0.00% )   	( 0.003799s |  0.02% |  0.00% )    	(18x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p6
|   |   |   |   |   35.0.0:     	( 0.003789s |  0.02% |  0.00% )   	( 0.003265s |  0.01% |  0.00% )    	(17x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p6
|   |   |   |-- 134.0.0:        	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p6_PID})
|   |   |   1399.0.0:           	( 18.022138s |  3.17% |  3.17% )   	( 16.477548s |  3.26% |  3.26% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p7 p7_PID >>
|   |   |   |-- 1.0.0:          	( 0.000599s |  0.00% |  0.00% )   	( 0.000612s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p7
|   |   |   |   |   12.0.0:     	( 0.012515s |  0.06% |  0.00% )   	( 0.012496s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.005105s |  0.02% |  0.00% )   	( 0.005700s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p7
|   |   |   |   |   35.0.0:     	( 0.004638s |  0.02% |  0.00% )   	( 0.005214s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p7
|   |   |   |-- 134.0.0:        	( 0.000093s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p7_PID})
|   |   |   1399.0.0:           	( 20.428007s |  3.59% |  3.59% )   	( 19.117254s |  3.78% |  3.78% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p8 p8_PID >>
|   |   |   |-- 1.0.0:          	( 0.000589s |  0.00% |  0.00% )   	( 0.000605s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p8
|   |   |   |   |   12.0.0:     	( 0.014304s |  0.07% |  0.00% )   	( 0.014267s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.003954s |  0.01% |  0.00% )   	( 0.004421s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p8
|   |   |   |   |   35.0.0:     	( 0.003741s |  0.01% |  0.00% )   	( 0.004191s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p8
|   |   |   |-- 134.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p8_PID})
|   |   |   1399.0.0:           	( 20.617241s |  3.62% |  3.62% )   	( 19.567318s |  3.87% |  3.87% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p9 p9_PID >>
|   |   |   |-- 1.0.0:          	( 0.000596s |  0.00% |  0.00% )   	( 0.000617s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000124s |  0.00% |  0.00% )   	( 0.000142s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p9
|   |   |   |   |   12.0.0:     	( 0.013881s |  0.06% |  0.00% )   	( 0.013851s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004016s |  0.01% |  0.00% )   	( 0.004509s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p9
|   |   |   |   |   35.0.0:     	( 0.003826s |  0.01% |  0.00% )   	( 0.004301s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p9
|   |   |   |-- 134.0.0:        	( 0.000091s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p9_PID})
|   |   |   1399.0.0:           	( 19.071135s |  3.35% |  3.35% )   	( 17.839225s |  3.53% |  3.53% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p10 p10_PID >>
|   |   |   |-- 1.0.0:          	( 0.000613s |  0.00% |  0.00% )   	( 0.000630s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000316s |  0.00% |  0.00% )   	( 0.000357s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p10
|   |   |   |   |   12.0.0:     	( 0.014731s |  0.07% |  0.00% )   	( 0.014699s |  0.08% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004595s |  0.02% |  0.00% )   	( 0.005086s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p10
|   |   |   |   |   35.0.0:     	( 0.004398s |  0.02% |  0.00% )   	( 0.004963s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p10
|   |   |   |-- 134.0.0:        	( 0.000096s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p10_PID})
|   |   |   1399.0.0:           	( 18.217796s |  3.20% |  3.20% )   	( 16.819422s |  3.33% |  3.33% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p11 p11_PID >>
|   |   |   |-- 1.0.0:          	( 0.000631s |  0.00% |  0.00% )   	( 0.000652s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000134s |  0.00% |  0.00% )   	( 0.000153s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p11
|   |   |   |   |   12.0.0:     	( 0.018320s |  0.10% |  0.00% )   	( 0.018235s |  0.10% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004932s |  0.02% |  0.00% )   	( 0.005554s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p11
|   |   |   |   |   35.0.0:     	( 0.004875s |  0.02% |  0.00% )   	( 0.005459s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p11
|   |   |   |-- 134.0.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p11_PID})
|   |   |   1399.0.0:           	( 18.962712s |  3.33% |  3.33% )   	( 17.102111s |  3.38% |  3.38% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p12 p12_PID >>
|   |   |   |-- 1.0.0:          	( 0.000695s |  0.00% |  0.00% )   	( 0.000709s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000109s |  0.00% |  0.00% )   	( 0.000131s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p12
|   |   |   |   |   12.0.0:     	( 0.020911s |  0.11% |  0.00% )   	( 0.020829s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004566s |  0.02% |  0.00% )   	( 0.005067s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p12
|   |   |   |   |   35.0.0:     	( 0.004305s |  0.02% |  0.00% )   	( 0.004773s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p12
|   |   |   |-- 134.0.0:        	( 0.000093s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p12_PID})
|   |   |   1399.0.0:           	( 23.514728s |  4.14% |  4.13% )   	( 22.366391s |  4.43% |  4.43% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p13 p13_PID >>
|   |   |   |-- 1.0.0:          	( 0.000849s |  0.00% |  0.00% )   	( 0.000873s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000151s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p13
|   |   |   |   |   12.0.0:     	( 0.024086s |  0.10% |  0.00% )   	( 0.024006s |  0.10% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004152s |  0.01% |  0.00% )   	( 0.004648s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p13
|   |   |   |   |   35.0.0:     	( 0.004125s |  0.01% |  0.00% )   	( 0.004576s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p13
|   |   |   |-- 134.0.0:        	( 0.000162s |  0.00% |  0.00% )   	( 0.000181s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p13_PID})
|   |   |   1399.0.0:           	( 17.821294s |  3.13% |  3.13% )   	( 16.233233s |  3.21% |  3.21% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p14 p14_PID >>
|   |   |   |-- 1.0.0:          	( 0.000961s |  0.00% |  0.00% )   	( 0.000982s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000154s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p14
|   |   |   |   |   12.0.0:     	( 0.024109s |  0.13% |  0.00% )   	( 0.024019s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.005218s |  0.02% |  0.00% )   	( 0.005700s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p14
|   |   |   |   |   35.0.0:     	( 0.005140s |  0.02% |  0.00% )   	( 0.005753s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p14
|   |   |   |   |   37.0.0:     	( 0.000247s |  0.00% |  0.00% )   	( 0.000288s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.0.0:     	( 0.000253s |  0.00% |  0.00% )   	( 0.000291s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   47.0.0:     	( 0.000271s |  0.00% |  0.00% )   	( 0.000310s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0.0:     	( 0.000304s |  0.00% |  0.00% )   	( 0.000339s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   : > "/dev/shm/.forkrun.jyefgp"/.quit
|   |   |   |   |   50.0.0:     	( 0.000403s |  0.00% |  0.00% )   	( 0.000447s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   printf '%.0s\n' "/dev/shm/.forkrun.jyefgp"/.run/p* 1>&21
|   |   |   |   |   51.0.0:     	( 0.000281s |  0.00% |  0.00% )   	( 0.000322s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   break
|   |   |   |-- 134.0.0:        	( 0.000144s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p14_PID})
|   |   |   1399.0.0:           	( 21.812896s |  3.84% |  3.84% )   	( 20.557155s |  4.07% |  4.07% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p15 p15_PID >>
|   |   |   |-- 1.0.0:          	( 0.000950s |  0.00% |  0.00% )   	( 0.000971s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p15
|   |   |   |   |   12.0.0:     	( 0.012715s |  0.05% |  0.00% )   	( 0.012683s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004372s |  0.02% |  0.00% )   	( 0.004919s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p15
|   |   |   |   |   35.0.0:     	( 0.004159s |  0.01% |  0.00% )   	( 0.004692s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p15
|   |   |   |-- 134.0.0:        	( 0.000148s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p15_PID})
|   |   |   1399.0.0:           	( 17.880683s |  3.14% |  3.14% )   	( 16.318407s |  3.23% |  3.23% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p16 p16_PID >>
|   |   |   |-- 1.0.0:          	( 0.000922s |  0.00% |  0.00% )   	( 0.000944s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000093s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p16
|   |   |   |   |   12.0.0:     	( 0.013029s |  0.07% |  0.00% )   	( 0.012993s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004828s |  0.02% |  0.00% )   	( 0.005335s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p16
|   |   |   |   |   35.0.0:     	( 0.004698s |  0.02% |  0.00% )   	( 0.005208s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p16
|   |   |   |-- 134.0.0:        	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p16_PID})
|   |   |   1399.0.0:           	( 18.263395s |  3.21% |  3.21% )   	( 17.333187s |  3.43% |  3.43% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p17 p17_PID >>
|   |   |   |-- 1.0.0:          	( 0.000947s |  0.00% |  0.00% )   	( 0.000970s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000092s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p17
|   |   |   |   |   12.0.0:     	( 0.015918s |  0.08% |  0.00% )   	( 0.015867s |  0.09% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004036s |  0.02% |  0.00% )   	( 0.004542s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p17
|   |   |   |   |   35.0.0:     	( 0.003902s |  0.02% |  0.00% )   	( 0.004393s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p17
|   |   |   |-- 134.0.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p17_PID})
|   |   |   1399.0.0:           	( 18.797403s |  3.30% |  3.30% )   	( 17.764007s |  3.51% |  3.51% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p18 p18_PID >>
|   |   |   |-- 1.0.0:          	( 0.000940s |  0.00% |  0.00% )   	( 0.000959s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000163s |  0.00% |  0.00% )   	( 0.000186s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p18
|   |   |   |   |   12.0.0:     	( 0.023864s |  0.12% |  0.00% )   	( 0.023764s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.003067s |  0.01% |  0.00% )   	( 0.003392s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p18
|   |   |   |   |   35.0.0:     	( 0.002839s |  0.01% |  0.00% )   	( 0.003161s |  0.01% |  0.00% )    	(17x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p18
|   |   |   |-- 134.0.0:        	( 0.000163s |  0.00% |  0.00% )   	( 0.000184s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p18_PID})
|   |   |   1399.0.0:           	( 18.365418s |  3.23% |  3.23% )   	( 17.175293s |  3.40% |  3.40% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p19 p19_PID >>
|   |   |   |-- 1.0.0:          	( 0.000956s |  0.00% |  0.00% )   	( 0.000977s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000162s |  0.00% |  0.00% )   	( 0.000163s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p19
|   |   |   |   |   12.0.0:     	( 0.025473s |  0.13% |  0.00% )   	( 0.024493s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.005174s |  0.02% |  0.00% )   	( 0.005235s |  0.03% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p19
|   |   |   |   |   35.0.0:     	( 0.004117s |  0.02% |  0.00% )   	( 0.004628s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p19
|   |   |   |-- 134.0.0:        	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p19_PID})
|   |   |   1399.0.0:           	( 18.396257s |  3.23% |  3.23% )   	( 17.157003s |  3.39% |  3.39% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p20 p20_PID >>
|   |   |   |-- 1.0.0:          	( 0.001009s |  0.00% |  0.00% )   	( 0.001034s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000146s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p20
|   |   |   |   |   12.0.0:     	( 0.022756s |  0.12% |  0.00% )   	( 0.022673s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.003927s |  0.02% |  0.00% )   	( 0.004425s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p20
|   |   |   |   |   35.0.0:     	( 0.003933s |  0.02% |  0.00% )   	( 0.004441s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p20
|   |   |   |-- 134.0.0:        	( 0.000143s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p20_PID})
|   |   |   1399.0.0:           	( 17.918434s |  3.15% |  3.15% )   	( 16.441783s |  3.25% |  3.25% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p21 p21_PID >>
|   |   |   |-- 1.0.0:          	( 0.001019s |  0.00% |  0.00% )   	( 0.001039s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000144s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p21
|   |   |   |   |   12.0.0:     	( 0.023977s |  0.13% |  0.00% )   	( 0.023894s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.005299s |  0.02% |  0.00% )   	( 0.005906s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p21
|   |   |   |   |   35.0.0:     	( 0.008351s |  0.04% |  0.00% )   	( 0.005702s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p21
|   |   |   |-- 134.0.0:        	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p21_PID})
|   |   |   1399.0.0:           	( 21.844730s |  3.84% |  3.84% )   	( 20.754759s |  4.11% |  4.11% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p22 p22_PID >>
|   |   |   |-- 1.0.0:          	( 0.000968s |  0.00% |  0.00% )   	( 0.000994s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000156s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p22
|   |   |   |   |   12.0.0:     	( 0.024224s |  0.11% |  0.00% )   	( 0.024137s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004372s |  0.02% |  0.00% )   	( 0.004455s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p22
|   |   |   |   |   35.0.0:     	( 0.003815s |  0.01% |  0.00% )   	( 0.004294s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p22
|   |   |   |-- 134.0.0:        	( 0.000168s |  0.00% |  0.00% )   	( 0.000187s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p22_PID})
|   |   |   1399.0.0:           	( 17.938559s |  3.15% |  3.15% )   	( 16.768102s |  3.32% |  3.32% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p23 p23_PID >>
|   |   |   |-- 1.0.0:          	( 0.001042s |  0.00% |  0.00% )   	( 0.001062s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000140s |  0.00% |  0.00% )   	( 0.000154s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p23
|   |   |   |   |   12.0.0:     	( 0.025742s |  0.14% |  0.00% )   	( 0.025650s |  0.15% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.005061s |  0.02% |  0.00% )   	( 0.005679s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p23
|   |   |   |   |   35.0.0:     	( 0.004600s |  0.02% |  0.00% )   	( 0.005138s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p23
|   |   |   |-- 134.0.0:        	( 0.000145s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p23_PID})
|   |   |   1399.0.0:           	( 18.567186s |  3.26% |  3.26% )   	( 17.266939s |  3.42% |  3.42% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p24 p24_PID >>
|   |   |   |-- 1.0.0:          	( 0.001061s |  0.00% |  0.00% )   	( 0.001082s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000171s |  0.00% |  0.00% )   	( 0.000194s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p24
|   |   |   |   |   12.0.0:     	( 0.027906s |  0.15% |  0.00% )   	( 0.025379s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.005004s |  0.02% |  0.00% )   	( 0.004788s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p24
|   |   |   |   |   35.0.0:     	( 0.003645s |  0.01% |  0.00% )   	( 0.004097s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p24
|   |   |   |-- 134.0.0:        	( 0.000161s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p24_PID})
|   |   |   1399.0.0:           	( 18.624335s |  3.27% |  3.27% )   	( 17.543448s |  3.47% |  3.47% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p25 p25_PID >>
|   |   |   |-- 1.0.0:          	( 0.001034s |  0.00% |  0.00% )   	( 0.001054s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000171s |  0.00% |  0.00% )   	( 0.000192s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p25
|   |   |   |   |   12.0.0:     	( 0.031306s |  0.16% |  0.00% )   	( 0.026537s |  0.15% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004259s |  0.02% |  0.00% )   	( 0.004739s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p25
|   |   |   |   |   35.0.0:     	( 0.004807s |  0.02% |  0.00% )   	( 0.004535s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p25
|   |   |   |-- 134.0.0:        	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p25_PID})
|   |   |   1399.0.0:           	( 19.351102s |  3.40% |  3.40% )   	( 18.646315s |  3.69% |  3.69% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p26 p26_PID >>
|   |   |   |-- 1.0.0:          	( 0.001063s |  0.00% |  0.00% )   	( 0.001085s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000158s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p26
|   |   |   |   |   12.0.0:     	( 0.024060s |  0.12% |  0.00% )   	( 0.023965s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.002761s |  0.01% |  0.00% )   	( 0.003088s |  0.01% |  0.00% )    	(16x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p26
|   |   |   |   |   35.0.0:     	( 0.002539s |  0.01% |  0.00% )   	( 0.002841s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p26
|   |   |   |-- 134.0.0:        	( 0.000149s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p26_PID})
|   |   |   1399.0.0:           	( 17.891737s |  3.15% |  3.14% )   	( 16.098730s |  3.18% |  3.18% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p27 p27_PID >>
|   |   |   |-- 1.0.0:          	( 0.001062s |  0.00% |  0.00% )   	( 0.001082s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000157s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.jyefgp"/.run/p27
|   |   |   |   |   12.0.0:     	( 0.029907s |  0.16% |  0.00% )   	( 0.024708s |  0.15% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.jyefgp"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.jyefgp"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.jyefgp"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0.0:     	( 0.004995s |  0.02% |  0.00% )   	( 0.005519s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.jyefgp"/.wait/p27
|   |   |   |   |   35.0.0:     	( 0.006136s |  0.03% |  0.00% )   	( 0.005470s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.jyefgp"/.wait/p27
|   |   |   |-- 134.0.0:        	( 0.000144s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1401.0.0:           	( 0.000149s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1402.0.0:           	( 0.000151s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   : > "${tmpDir}"/.spawned
|   |   |   1403.0.0:           	( 0.000114s |  0.00% |  0.00% )   	( 0.000132s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1406.0.0:           	( 0.000115s |  0.00% |  0.00% )   	( 0.000133s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1411.0.0:           	( 0.001237s |  0.00% |  0.00% )   	( 0.001249s |  0.00% |  0.00% )    	(1x)	|   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1416.0.0:           	( 0.000124s |  0.00% |  0.00% )   	( 0.000142s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1478.0.0:           	( 0.000116s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1481.0.0:           	( 0.000121s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1488.0.0:           	( 24.707770s |  4.35% |  4.34% )   	( 0.001732s |  0.00% |  0.00% )    	(1x)	|   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1492.0.0:           	( 0.000271s |  0.00% |  0.00% )   	( 0.000312s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |-- 1497.0.0:           	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |-- ${nSpawnFlag}
|   |   1503.0.0:               	( 0.000244s |  0.00% |  0.00% )   	( 0.000283s |  0.00% |  0.00% )    	(1x)	|   |   wait
|-- |-- -248.0.0:               	( 0.006385s |  0.00% |  0.00% )   	( 0.004617s |  0.00% |  0.00% )    	(1x)	|-- |-- -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.jyefgp" 2>/dev/null'

TOTAL RUN TIME: 568.033846s
TOTAL CPU TIME: 504.843717s
