LINE.DEPTH.CMD NUMBER           	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:           	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
________________________________	________________________________	________________________________	____________________________________
9.0.0:                          	( 548.768811s |100.00% )          	( 499.321868s |100.00% )             	(1x)	<< (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.1.0:                      	( 0.000583s |  0.00% |  0.00% )   	( 0.000287s |  0.00% |  0.00% )    	(1x)	|-- forkrun ff < /mnt/ramdisk/flist > /dev/null
|   421.1.0:                    	( 548.768228s | 99.99% | 99.99% )   	( 499.321581s | 99.99% | 99.99% )    	(1x)	|   << (SUBSHELL) >>
|   |-- 421.2.0:                	( 0.023072s |  0.00% |  0.00% )   	( 0.023023s |  0.00% |  0.00% )    	(1x)	|   |-- trap - EXIT INT TERM HUP USR1
|   |   106.2.0:                	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   shopt -s extglob
|   |   109.2.0:                	( 0.000077s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   110.2.0:                	( 0.000122s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	|   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   111.2.0:                	( 0.000093s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	|   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   112.2.0:                	( 0.000080s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   113.2.0:                	( 0.000080s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	|   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   118.2.0:                	( 0.000069s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   121.2.0:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   [[ $# == 0 ]]
|   |   121.2.1:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   optParseFlag=true
|   |   122.2.0:                	( 0.000067s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   ${optParseFlag}
|   |   122.2.1:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   (( $# > 0  ))
|   |   122.2.2:                	( 0.000064s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   [[ "$1" == [-+]* ]]
|   |   319.2.0:                	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   [ -t "${fd_stdin0}" ]
|   |   328.2.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${tmpDirRoot} ]]
|   |   328.2.1:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${TMPDIR} ]]
|   |   328.2.2:                	( 0.000060s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   [[ -d '/dev/shm' ]]
|   |   328.2.3:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   tmpDirRoot='/dev/shm'
|   |   330.2.0:                	( 0.000741s |  0.00% |  0.00% )   	( 0.000360s |  0.00% |  0.00% )    	(1x)	|   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   330.2.1:                	( 0.002797s |  0.00% |  0.00% )   	( 0.002797s |  0.00% |  0.00% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 330.3.0:            	( 0.002797s |100.00% |  0.00% )   	( 0.002797s |100.00% |  0.00% )    	(1x)	|   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   331.2.0:                	( 0.000064s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   fPath="${tmpDir}"/.stdin
|   |   333.2.0:                	( 0.001270s |  0.00% |  0.00% )   	( 0.001359s |  0.00% |  0.00% )    	(1x)	|   |   mkdir -p "${tmpDir}"/.run
|   |   334.2.0:                	( 0.000083s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   : > "${fPath}"
|   |   336.2.0:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   ${rmTmpDirFlag}
|   |   336.2.1:                	( 0.013739s |  0.00% |  0.00% )   	( 0.000270s |  0.00% |  0.00% )    	(1x)	|   |   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1498.2.0:               	( 548.721934s | 99.99% | 99.99% )   	( 499.289995s | 99.99% | 99.99% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 344.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1498.3.0:           	( 0.000076s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1498.4.0:       	( 0.000457s |100.00% |  0.00% )   	( 0.000542s |100.00% |  0.00% )    	(6x)	|   |   |   |-- :
|   |   |   1498.3.1:           	( 0.000074s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.2:           	( 0.000077s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.3:           	( 0.000074s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.4:           	( 0.000081s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.5:           	( 0.000075s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   359.3.0:            	( 0.000084s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   LC_ALL=C
|   |   |   360.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   LANG=C
|   |   |   361.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   IFS=
|   |   |   363.3.0:            	( 0.000227s |  0.00% |  0.00% )   	( 0.000242s |  0.00% |  0.00% )    	(1x)	|   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   365.3.0:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   366.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   367.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   369.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   PID0="${BASHPID}"
|   |   |   371.3.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   shopt -s nullglob
|   |   |   374.3.0:            	( 0.000073s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   376.3.0:            	( 0.000078s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   enable lseek &> /dev/null
|   |   |   377.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekFlag:=true}"
|   |   |   382.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   383.3.0:            	( 0.002940s |  0.00% |  0.00% )   	( 0.002997s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   383.3.1:            	( 0.000110s |  0.00% |  0.00% )   	( 0.000124s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 383.4.0:        	( 0.000110s |100.00% |  0.00% )   	( 0.000124s |100.00% |  0.00% )    	(1x)	|   |   |   |-- lseek $fd_read 0
|   |   |   383.3.2:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekPosFlag:=true}"
|   |   |   387.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   392.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   runCmd=("${@//''/}")
|   |   |   394.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   395.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   395.3.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   noFuncFlag=false
|   |   |   396.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   397.3.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   401.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   463.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nLines} ]]
|   |   |   463.3.1:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   464.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${nLines} ]]
|   |   |   464.3.1:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   nLines=1
|   |   |   468.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == '-'* ]]
|   |   |   473.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == *','* ]]
|   |   |   477.3.0:            	( 0.000806s |  0.00% |  0.00% )   	( 0.000946s |  0.00% |  0.00% )    	(1x)	|   |   |   << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.4.0:          	( 0.000058s |  7.19% |  0.00% )   	( 0.000070s |  7.39% |  0.00% )    	(1x)	|   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.4.0:          	( 0.000070s |  8.68% |  0.00% )   	( 0.000078s |  8.24% |  0.00% )    	(1x)	|   |   |   |   local +i -l nn
|   |   |   |   9.4.0:          	( 0.000061s |  7.56% |  0.00% )   	( 0.000073s |  7.71% |  0.00% )    	(1x)	|   |   |   |   local vOut
|   |   |   |   11.4.0:         	( 0.000063s |  7.81% |  0.00% )   	( 0.000075s |  7.92% |  0.00% )    	(1x)	|   |   |   |   local -n vOut="$1"
|   |   |   |   12.4.0:         	( 0.000062s |  7.69% |  0.00% )   	( 0.000073s |  7.71% |  0.00% )    	(1x)	|   |   |   |   shift 1
|   |   |   |   13.4.0:         	( 0.000064s |  7.94% |  0.00% )   	( 0.000075s |  7.92% |  0.00% )    	(1x)	|   |   |   |   local -g vOut
|   |   |   |   15.4.0:         	( 0.000060s |  7.44% |  0.00% )   	( 0.000073s |  7.71% |  0.00% )    	(1x)	|   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.4.1:         	( 0.000113s | 14.01% |  0.00% )   	( 0.000126s | 13.31% |  0.00% )    	(1x)	|   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.4.0:         	( 0.000061s |  7.56% |  0.00% )   	( 0.000073s |  7.71% |  0.00% )    	(1x)	|   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.4.0:         	( 0.000061s |  7.56% |  0.00% )   	( 0.000073s |  7.71% |  0.00% )    	(1x)	|   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.4.1:         	( 0.000063s |  7.81% |  0.00% )   	( 0.000075s |  7.92% |  0.00% )    	(1x)	|   |   |   |   continue
|   |   |   |-- 28.4.0:         	( 0.000070s |  8.68% |  0.00% )   	( 0.000082s |  8.66% |  0.00% )    	(1x)	|   |   |   |-- local +n vOut
|   |   |   479.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   481.3.0:            	( 0.005177s |  0.00% |  0.00% )   	( 0.005262s |  0.00% |  0.00% )    	(1x)	|   |   |   nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   481.3.1:            	( 0.001714s |  0.00% |  0.00% )   	( 0.001783s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 481.4.0:        	( 0.000177s | 10.32% |  0.00% )   	( 0.000187s | 10.48% |  0.00% )    	(1x)	|   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 481.4.1:        	( 0.001537s | 89.67% |  0.00% )   	( 0.001596s | 89.51% |  0.00% )    	(1x)	|   |   |   |-- nproc
|   |   |   482.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nCPU < 1 ))
|   |   |   483.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nProcs} ]]
|   |   |   483.3.1:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   483.3.2:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   nProcs=${nCPU}
|   |   |   485.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   489.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   489.3.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   495.3.0:            	( 0.000076s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   497.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   500.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   500.3.1:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   500.3.2:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < nLines ))
|   |   |   502.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   doneIndicatorFlag=false
|   |   |   505.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   511.3.0:            	( 0.000172s |  0.00% |  0.00% )   	( 0.000180s |  0.00% |  0.00% )    	(1x)	|   |   |   type -a fallocate &> /dev/null
|   |   |   511.3.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   511.3.2:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${fallocateFlag:=true}"
|   |   |   514.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   ${exportOrderFlag}
|   |   |   517.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   518.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   519.3.0:            	( 0.000085s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nullDelimiterFlag}
|   |   |   540.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${delimiterVal} ]]
|   |   |   541.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   delimiterVal='$'"'"'\n'"'"
|   |   |   542.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   542.3.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   553.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${unescapeFlag}
|   |   |   562.3.0:            	( 0.002811s |  0.00% |  0.00% )   	( 0.002935s |  0.00% |  0.00% )    	(1x)	|   |   |   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   562.3.1:            	( 0.000077s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 562.4.0:        	( 0.000077s |100.00% |  0.00% )   	( 0.000090s |100.00% |  0.00% )    	(1x)	|   |   |   |-- printf '%q\n' "${runCmd[@]}"
|   |   |   563.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringFlag}
|   |   |   566.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringIDFlag}
|   |   |   572.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   nLinesCur=${nLines}
|   |   |   574.3.0:            	( 0.001495s |  0.00% |  0.00% )   	( 0.001578s |  0.00% |  0.00% )    	(1x)	|   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   575.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   578.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${rmTmpDirFlag}
|   |   |   580.3.0:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 0 ))
|   |   |   611.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   613.3.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   evfd_init
|   |   |   618.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   620.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   624.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   634.3.0:            	( 0.000510s |  0.00% |  0.00% )   	( 0.000526s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   640.3.0:            	( 0.078446s |  0.01% |  0.01% )   	( 0.078366s |  0.01% |  0.01% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 640.4.0:        	( 0.000073s |  0.09% |  0.00% )   	( 0.000086s |  0.10% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   642.4.0:        	( 0.011217s | 14.29% |  0.00% )   	( 0.011196s | 14.28% |  0.00% )    	(1x)	|   |   |   |   trap - EXIT
|   |   |   |   643.4.0:        	( 0.012287s | 15.66% |  0.00% )   	( 0.012269s | 15.65% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   644.4.0:        	( 0.012265s | 15.63% |  0.00% )   	( 0.012238s | 15.61% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   645.4.0:        	( 0.012244s | 15.60% |  0.00% )   	( 0.012227s | 15.60% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   646.4.0:        	( 0.012133s | 15.46% |  0.00% )   	( 0.012112s | 15.45% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   648.4.0:        	( 0.000059s |  0.07% |  0.00% )   	( 0.000070s |  0.08% |  0.00% )    	(1x)	|   |   |   |   case ${writeFileProgType} in
|   |   |   |   649.4.0:        	( 0.017952s | 22.88% |  0.00% )   	( 0.017917s | 22.86% |  0.00% )    	(1x)	|   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   654.4.0:        	( 0.000087s |  0.11% |  0.00% )   	( 0.000098s |  0.12% |  0.00% )    	(1x)	|   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   655.4.0:        	( 0.000065s |  0.08% |  0.00% )   	( 0.000077s |  0.09% |  0.00% )    	(1x)	|   |   |   |   evfd_signal
|   |   |   |-- 656.4.0:        	( 0.000064s |  0.08% |  0.00% )   	( 0.000076s |  0.09% |  0.00% )    	(1x)	|   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   664.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   669.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   711.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   outStr='>&'"${fd_stdout}"
|   |   |   715.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   717.3.0:            	( 0.000392s |  0.00% |  0.00% )   	( 0.000425s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   727.3.0:            	( 5.534396s |  1.00% |  1.00% )   	( 1.693794s |  0.33% |  0.33% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 727.4.0:        	( 0.000080s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   729.4.0:        	( 0.012243s |  0.22% |  0.00% )   	( 0.012211s |  0.72% |  0.00% )    	(1x)	|   |   |   |   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   730.4.0:        	( 0.012334s |  0.22% |  0.00% )   	( 0.012316s |  0.72% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   731.4.0:        	( 0.012359s |  0.22% |  0.00% )   	( 0.012329s |  0.72% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   732.4.0:        	( 0.012190s |  0.22% |  0.00% )   	( 0.012172s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   733.4.0:        	( 0.012119s |  0.21% |  0.00% )   	( 0.012095s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   735.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   736.4.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   737.4.0:        	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fd_read_pos_old=0
|   |   |   |   739.4.0:        	( 0.000060s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=0
|   |   |   |   741.4.0:        	( 0.084916s |  1.53% |  0.01% )   	( 0.097858s |  5.77% |  0.01% )    	(679x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   743.4.0:        	( 4.122147s | 74.48% |  0.75% )   	( 0.115626s |  6.82% |  0.02% )    	(678x)	|   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   743.4.1:        	( 0.001419s |  0.02% |  0.00% )   	( 0.001628s |  0.09% |  0.00% )    	(11x)	|   |   |   |   continue
|   |   |   |   745.4.0:        	( 0.081844s |  1.47% |  0.01% )   	( 0.094721s |  5.59% |  0.01% )    	(667x)	|   |   |   |   case ${REPLY} in
|   |   |   |   759.4.0:        	( 0.091500s |  1.65% |  0.01% )   	( 0.095394s |  5.63% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   760.4.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   763.4.0:        	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   769.4.0:        	( 0.082011s |  1.48% |  0.01% )   	( 0.094647s |  5.58% |  0.01% )    	(667x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   770.4.0:        	( 0.085377s |  1.54% |  0.01% )   	( 0.097947s |  5.78% |  0.01% )    	(667x)	|   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   771.4.0:        	( 0.085255s |  1.54% |  0.01% )   	( 0.097926s |  5.78% |  0.01% )    	(667x)	|   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   778.4.0:        	( 0.081881s |  1.47% |  0.01% )   	( 0.094704s |  5.59% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   778.4.1:        	( 0.082723s |  1.49% |  0.01% )   	( 0.095576s |  5.64% |  0.01% )    	(667x)	|   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   780.4.0:        	( 0.082708s |  1.49% |  0.01% )   	( 0.095625s |  5.64% |  0.01% )    	(667x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   782.4.0:        	( 0.082514s |  1.49% |  0.01% )   	( 0.095310s |  5.62% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   784.4.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   786.4.0:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   787.4.0:        	( 0.005808s |  0.10% |  0.00% )   	( 0.006443s |  0.38% |  0.00% )    	(1x)	|   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   787.4.1:        	( 0.003023s |  0.05% |  0.00% )   	( 0.003565s |  0.21% |  0.00% )    	(1x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 787.5.0:    	( 0.003023s |100.00% |  0.00% )   	( 0.003565s |100.00% |  0.00% )    	(1x)	|   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   788.4.0:        	( 0.000122s |  0.00% |  0.00% )   	( 0.000141s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   789.4.0:        	( 0.000114s |  0.00% |  0.00% )   	( 0.000133s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   792.4.0:        	( 0.000119s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   794.4.0:        	( 0.000113s |  0.00% |  0.00% )   	( 0.000132s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   796.4.0:        	( 0.000117s |  0.00% |  0.00% )   	( 0.000132s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   796.4.1:        	( 0.000112s |  0.00% |  0.00% )   	( 0.000130s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   796.4.2:        	( 0.000111s |  0.00% |  0.00% )   	( 0.000129s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   798.4.0:        	( 0.000143s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   801.4.0:        	( 0.000119s |  0.00% |  0.00% )   	( 0.000135s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   803.4.0:        	( 0.000119s |  0.00% |  0.00% )   	( 0.000138s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   807.4.0:        	( 0.081929s |  1.48% |  0.01% )   	( 0.094677s |  5.58% |  0.01% )    	(667x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   808.4.0:        	( 0.080884s |  1.46% |  0.01% )   	( 0.093513s |  5.52% |  0.01% )    	(667x)	|   |   |   |   case ${nWait} in
|   |   |   |   819.4.0:        	( 0.079903s |  1.44% |  0.01% )   	( 0.092280s |  5.44% |  0.01% )    	(646x)	|   |   |   |   ((nWait--))
|   |   |   |   824.4.0:        	( 0.084911s |  1.53% |  0.01% )   	( 0.097778s |  5.77% |  0.01% )    	(667x)	|   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   759.4.1:        	( 0.082934s |  1.49% |  0.01% )   	( 0.095752s |  5.65% |  0.01% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   778.4.1:        	( 0.082723s |  1.49% |  0.01% )   	( 0.095576s |  5.64% |  0.01% )    	(667x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   810.4.0:        	( 0.002604s |  0.04% |  0.00% )   	( 0.002993s |  0.17% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   811.4.0:        	( 0.002626s |  0.04% |  0.00% )   	( 0.003037s |  0.17% |  0.00% )    	(21x)	|   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   812.4.0:        	( 0.067590s |  1.22% |  0.01% )   	( 0.047392s |  2.79% |  0.00% )    	(21x)	|   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   813.4.0:        	( 0.002748s |  0.04% |  0.00% )   	( 0.003165s |  0.18% |  0.00% )    	(21x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   814.4.0:        	( 0.002747s |  0.04% |  0.00% )   	( 0.003152s |  0.18% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   816.4.0:        	( 0.002800s |  0.05% |  0.00% )   	( 0.003206s |  0.18% |  0.00% )    	(21x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   825.4.0:        	( 0.000122s |  0.00% |  0.00% )   	( 0.000140s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   826.4.0:        	( 0.000128s |  0.00% |  0.00% )   	( 0.000144s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fallocateFlag=false
|   |   |   |   827.4.0:        	( 0.000122s |  0.00% |  0.00% )   	( 0.000141s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nSpawnFlag=false
|   |   |   |   741.4.1:        	( 0.000131s |  0.00% |  0.00% )   	( 0.000153s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   741.4.2:        	( 0.000142s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- -248.4.0:       	( 0.005933s |  0.10% |  0.00% )   	( 0.005964s |  0.35% |  0.00% )    	(1x)	|   |   |   |-- -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.lQLcZc"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/pAuto'
|   |   |   835.3.0:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   836.3.0:            	( 0.000091s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   872.3.0:            	( 0.000080s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1341.3.0:           	( 0.056838s |  0.01% |  0.01% )   	( 0.056850s |  0.01% |  0.01% )    	(1x)	|   |   |   coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1358.3.0:           	( 0.017814s |  0.00% |  0.00% )   	( 0.018657s |  0.00% |  0.00% )    	(2x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1358.4.0:       	( 0.000228s |  2.10% |  0.00% )   	( 0.000252s |  2.01% |  0.00% )    	(2x)	|   |   |   |-- echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1359.4.0:       	( 0.000130s |  1.20% |  0.00% )   	( 0.000152s |  1.21% |  0.00% )    	(2x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1359.4.1:       	( 0.000148s |  1.36% |  0.00% )   	( 0.000172s |  1.37% |  0.00% )    	(2x)	|   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1367.4.0:       	( 0.000430s |  3.97% |  0.00% )   	( 0.000454s |  3.62% |  0.00% )    	(2x)	|   |   |   |   echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1368.4.0:       	( 0.000124s |  1.14% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1440.4.0:       	( 0.000118s |  1.09% |  0.00% )   	( 0.000140s |  1.11% |  0.00% )    	(2x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1443.4.0:       	( 0.000126s |  1.16% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   echo "{"
|   |   |   |   1444.4.0:       	( 0.000122s |  1.12% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1445.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1445.4.1:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1446.4.0:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000152s |  1.21% |  0.00% )    	(2x)	|   |   |   |   printf '%s ' "mapfile"
|   |   |   |   1447.4.0:       	( 0.000122s |  1.12% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1447.4.1:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1448.4.0:       	( 0.000132s |  1.22% |  0.00% )   	( 0.000154s |  1.22% |  0.00% )    	(2x)	|   |   |   |   printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1449.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1449.4.1:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000152s |  1.21% |  0.00% )    	(2x)	|   |   |   |   printf '%s ' ${fd_read}
|   |   |   |   1450.4.0:       	( 0.000122s |  1.12% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1450.4.1:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1452.4.0:       	( 0.000136s |  1.25% |  0.00% )   	( 0.000160s |  1.27% |  0.00% )    	(2x)	|   |   |   |   echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1453.4.0:       	( 0.000130s |  1.20% |  0.00% )   	( 0.000156s |  1.24% |  0.00% )    	(2x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1453.4.1:       	( 0.000126s |  1.16% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1453.4.2:       	( 0.000130s |  1.20% |  0.00% )   	( 0.000154s |  1.22% |  0.00% )    	(2x)	|   |   |   |   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1454.4.0:       	( 0.000126s |  1.16% |  0.00% )   	( 0.000148s |  1.18% |  0.00% )    	(2x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1457.4.0:       	( 0.000148s |  1.36% |  0.00% )   	( 0.000166s |  1.32% |  0.00% )    	(2x)	|   |   |   |   echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1458.4.0:       	( 0.000126s |  1.16% |  0.00% )   	( 0.000148s |  1.18% |  0.00% )    	(2x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1461.4.0:       	( 0.000132s |  1.22% |  0.00% )   	( 0.000154s |  1.22% |  0.00% )    	(2x)	|   |   |   |   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1499.4.0:       	( 0.000180s |  1.66% |  0.00% )   	( 0.000202s |  1.61% |  0.00% )    	(2x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1504.4.0:       	( 0.000136s |  1.25% |  0.00% )   	( 0.000158s |  1.26% |  0.00% )    	(2x)	|   |   |   |   echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1505.4.0:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1506.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1506.4.1:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000148s |  1.18% |  0.00% )    	(2x)	|   |   |   |   printf '\n'
|   |   |   |   1507.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1508.4.0:       	( 0.000186s |  1.72% |  0.00% )   	( 0.000208s |  1.66% |  0.00% )    	(2x)	|   |   |   |   echo "}"
|   |   |   |   1510.4.0:       	( 0.000118s |  1.09% |  0.00% )   	( 0.000140s |  1.11% |  0.00% )    	(2x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1510.4.1:       	( 0.000122s |  1.12% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1510.4.2:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1510.4.3:       	( 0.000144s |  1.33% |  0.00% )   	( 0.000166s |  1.32% |  0.00% )    	(2x)	|   |   |   |   echo "}"
|   |   |   |   1511.4.0:       	( 0.000146s |  1.35% |  0.00% )   	( 0.000168s |  1.34% |  0.00% )    	(2x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1524.4.0:       	( 0.000166s |  1.53% |  0.00% )   	( 0.000190s |  1.51% |  0.00% )    	(2x)	|   |   |   |   echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1525.4.0:       	( 0.000154s |  1.42% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   1528.4.0:       	( 0.000146s |  1.35% |  0.00% )   	( 0.000168s |  1.34% |  0.00% )    	(2x)	|   |   |   |   echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1539.4.0:       	( 0.000148s |  1.36% |  0.00% )   	( 0.000170s |  1.35% |  0.00% )    	(2x)	|   |   |   |   echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1540.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1540.4.1:       	( 0.000136s |  1.25% |  0.00% )   	( 0.000156s |  1.24% |  0.00% )    	(2x)	|   |   |   |   echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1541.4.0:       	( 0.000130s |  1.20% |  0.00% )   	( 0.000154s |  1.22% |  0.00% )    	(2x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1542.4.0:       	( 0.000130s |  1.20% |  0.00% )   	( 0.000152s |  1.21% |  0.00% )    	(2x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   1547.4.0:       	( 0.000142s |  1.31% |  0.00% )   	( 0.000166s |  1.32% |  0.00% )    	(2x)	|   |   |   |   echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1548.4.0:       	( 0.000130s |  1.20% |  0.00% )   	( 0.000152s |  1.21% |  0.00% )    	(2x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1552.4.0:       	( 0.000184s |  1.70% |  0.00% )   	( 0.000208s |  1.66% |  0.00% )    	(2x)	|   |   |   |   echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1553.4.0:       	( 0.000132s |  1.22% |  0.00% )   	( 0.000148s |  1.18% |  0.00% )    	(2x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1553.4.1:       	( 0.000142s |  1.31% |  0.00% )   	( 0.000162s |  1.29% |  0.00% )    	(2x)	|   |   |   |   printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1558.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1558.4.1:       	( 0.000136s |  1.25% |  0.00% )   	( 0.000158s |  1.26% |  0.00% )    	(2x)	|   |   |   |   printf '%s' ' || '
|   |   |   |   1559.4.0:       	( 0.000122s |  1.12% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1559.4.1:       	( 0.000152s |  1.40% |  0.00% )   	( 0.000174s |  1.38% |  0.00% )    	(2x)	|   |   |   |   echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1560.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1560.4.1:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1560.4.2:       	( 0.000122s |  1.12% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1560.4.3:       	( 0.000132s |  1.22% |  0.00% )   	( 0.000154s |  1.22% |  0.00% )    	(2x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1568.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1568.4.1:       	( 0.000138s |  1.27% |  0.00% )   	( 0.000160s |  1.27% |  0.00% )    	(2x)	|   |   |   |   echo '{'
|   |   |   |   1569.4.0:       	( 0.000126s |  1.16% |  0.00% )   	( 0.000148s |  1.18% |  0.00% )    	(2x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1569.4.1:       	( 0.000164s |  1.51% |  0.00% )   	( 0.000190s |  1.51% |  0.00% )    	(2x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1570.4.0:       	( 0.000126s |  1.16% |  0.00% )   	( 0.000148s |  1.18% |  0.00% )    	(2x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1571.4.0:       	( 0.000170s |  1.57% |  0.00% )   	( 0.000192s |  1.53% |  0.00% )    	(2x)	|   |   |   |   printf '%s ' "${runCmd[@]}"
|   |   |   |   1572.4.0:       	( 0.000118s |  1.09% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1579.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${stdinRunFlag}
|   |   |   |   1582.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${noFuncFlag}
|   |   |   |   1585.4.0:       	( 0.000118s |  1.09% |  0.00% )   	( 0.000142s |  1.13% |  0.00% )    	(2x)	|   |   |   |   ${substituteStringFlag}
|   |   |   |   1586.4.0:       	( 0.000156s |  1.44% |  0.00% )   	( 0.000180s |  1.43% |  0.00% )    	(2x)	|   |   |   |   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1591.4.0:       	( 0.000134s |  1.23% |  0.00% )   	( 0.000154s |  1.22% |  0.00% )    	(2x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1603.4.0:       	( 0.000140s |  1.29% |  0.00% )   	( 0.000154s |  1.22% |  0.00% )    	(2x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1604.4.0:       	( 0.000120s |  1.10% |  0.00% )   	( 0.000144s |  1.14% |  0.00% )    	(2x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1604.4.1:       	( 0.000136s |  1.25% |  0.00% )   	( 0.000158s |  1.26% |  0.00% )    	(2x)	|   |   |   |   printf '\n%s ' '}'
|   |   |   |   1605.4.0:       	( 0.000136s |  1.25% |  0.00% )   	( 0.000156s |  1.24% |  0.00% )    	(2x)	|   |   |   |   echo "${outStr}"
|   |   |   |   1606.4.0:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000152s |  1.21% |  0.00% )    	(2x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1607.4.0:       	( 0.000128s |  1.18% |  0.00% )   	( 0.000150s |  1.19% |  0.00% )    	(2x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1612.4.0:       	( 0.000154s |  1.42% |  0.00% )   	( 0.000176s |  1.40% |  0.00% )    	(2x)	|   |   |   |-- echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1346.3.0:           	( 0.000081s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1351.3.0:           	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1356.3.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1358.3.0:           	( 0.017814s |  0.00% |  0.00% )   	( 0.018657s |  0.00% |  0.00% )    	(2x)	|   |   |   trap "${exitTrapStr}" EXIT
|   |   |   1363.3.0:           	( 0.012327s |  0.00% |  0.00% )   	( 0.098978s |  0.01% |  0.01% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1368.3.0:           	( 0.012274s |  0.00% |  0.00% )   	( 0.012246s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1373.3.0:           	( 0.012063s |  0.00% |  0.00% )   	( 0.012036s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1375.3.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1376.3.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1378.3.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1389.3.0:           	( 0.000071s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '\n' >&${fd_continue}
|   |   |   1392.3.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1393.3.0:           	( 0.002583s |  0.00% |  0.00% )   	( 0.003009s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs=0 ))
|   |   |   1393.3.1:           	( 0.002691s |  0.00% |  0.00% )   	( 0.003119s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs<28 ))
|   |   |   1394.3.0:           	( 0.002476s |  0.00% |  0.00% )   	( 0.002879s |  0.00% |  0.00% )    	(28x)	|   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.4.0:          	( 0.016072s |  0.00% |  0.00% )   	( 0.016520s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p0 p0_PID (&)
|   |   |   |   73.4.0:         	( 14534.110220s | 99.99% |264.849% )   	( 13923.156184s | 99.99% |278.841% )    	(784x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 73.5.0:     	( 14194.883808s | 97.64% |258.667% )   	( 13772.849636s | 98.90% |275.831% )    	(19460x)	|   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.lQLcZc"
|   |   |   |   |   |-- 1.6.0:  	( 4.630920s |  0.02% |  0.84% )   	( 5.365528s |  0.02% |  1.07% )    	(37352x)	|   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.6.0:  	( 1951.063296s |  6.87% |355.53% )   	( 1880.808104s |  6.87% |376.67% )    	(37352x)	|   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.6.0:  	( 3362.802688s | 10.38% |612.79% )   	( 3277.716008s | 10.44% |656.43% )    	(37352x)	|   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.6.0: 	( 2740.821720s |  9.63% |499.44% )   	( 2654.658104s |  9.61% |531.65% )    	(37352x)	|   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.6.0: 	( 3339.413392s | 10.41% |608.52% )   	( 3247.041224s | 10.37% |650.29% )    	(37352x)	|   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.6.0: 	( 2648.952824s |  9.16% |482.70% )   	( 2575.095656s |  9.17% |515.71% )    	(37352x)	|   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.6.0: 	( 1740.933040s |  6.43% |317.24% )   	( 1693.815704s |  6.44% |339.22% )    	(37352x)	|   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.6.0: 	( 858.019624s |  4.18% |156.35% )   	( 820.343608s |  4.14% |164.29% )    	(37352x)	|   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.6.0: 	( 1838.632936s |  6.34% |335.04% )   	( 1777.082664s |  6.33% |355.89% )    	(37352x)	|   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.6.0: 	( 754.365640s |  3.92% |137.46% )   	( 719.711160s |  3.91% |144.13% )    	(37352x)	|   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.6.0: 	( 2309.508712s |  8.69% |420.85% )   	( 2231.231016s |  8.66% |446.85% )    	(37352x)	|   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.6.0: 	( 5152.757344s | 15.03% |938.96% )   	( 5064.081288s | 15.18% |101.419% )    	(37352x)	|   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.6.0: 	( 859.090624s |  4.40% |156.54% )   	( 815.944080s |  4.37% |163.41% )    	(37352x)	|   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.6.0: 	( 828.598680s |  4.40% |150.99% )   	( 782.605096s |  4.35% |156.73% )    	(37352x)	|   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   8.5.0:      	( 0.002296s |  0.00% |  0.00% )   	( 0.002632s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p0
|   |   |   |   |   12.5.0:     	( 0.337932s |  0.06% |  0.06% )   	( 0.337512s |  0.07% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.5.0:     	( 13.820492s |  0.09% |  2.51% )   	( 13.784988s |  0.09% |  2.76% )    	(784x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT 2300044 ${BASHPID}' INT
|   |   |   |   |   15.5.0:     	( 13.772080s |  0.09% |  2.50% )   	( 13.736380s |  0.09% |  2.75% )    	(784x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM 2300044 ${BASHPID}' TERM
|   |   |   |   |   16.5.0:     	( 13.803048s |  0.09% |  2.51% )   	( 13.767292s |  0.09% |  2.75% )    	(784x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP 2300044 ${BASHPID}' HUP
|   |   |   |   |   17.5.0:     	( 14.377748s |  0.09% |  2.62% )   	( 14.338632s |  0.09% |  2.87% )    	(784x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.5.0:     	( 2.994348s |  0.01% |  0.54% )   	( 3.389596s |  0.02% |  0.67% )    	(19460x)	|   |   |   |   |   true
|   |   |   |   |   20.5.0:     	( 2.624832s |  0.01% |  0.47% )   	( 2.999808s |  0.01% |  0.60% )    	(19460x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.5.1:     	( 2.705864s |  0.01% |  0.49% )   	( 3.042004s |  0.01% |  0.60% )    	(19460x)	|   |   |   |   |   read -r < "/dev/shm/.forkrun.lQLcZc"/.nLines
|   |   |   |   |   20.5.2:     	( 0.085400s |  0.00% |  0.01% )   	( 0.099456s |  0.00% |  0.01% )    	(924x)	|   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.5.3:     	( 0.084616s |  0.00% |  0.01% )   	( 0.098756s |  0.00% |  0.01% )    	(924x)	|   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.5.0:     	( 0.128548s |  0.02% |  0.02% )   	( 0.144564s |  0.03% |  0.02% )    	(784x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p0
|   |   |   |   |   23.5.0:     	( 194.556628s |  1.34% | 35.45% )   	( 4.243932s |  0.02% |  0.84% )    	(19460x)	|   |   |   |   |   read -r -u 21 _
|   |   |   |   |   24.5.0:     	( 2.786392s |  0.01% |  0.50% )   	( 3.174304s |  0.01% |  0.63% )    	(19460x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.lQLcZc"/.quit ]]
|   |   |   |   |   28.5.0:     	( 2.846060s |  0.01% |  0.51% )   	( 2.966852s |  0.01% |  0.59% )    	(18704x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.lQLcZc"/.done ]]
|   |   |   |   |   28.5.1:     	( 2.461732s |  0.01% |  0.44% )   	( 2.827832s |  0.01% |  0.56% )    	(18704x)	|   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.5.0:     	( 2.653056s |  0.01% |  0.48% )   	( 2.961392s |  0.01% |  0.59% )    	(18704x)	|   |   |   |   |   evfd_wait 25
|   |   |   |   |   31.5.0:     	( 22.524236s |  0.15% |  4.10% )   	( 22.108520s |  0.15% |  4.42% )    	(18704x)	|   |   |   |   |   mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.5.0:     	( 2.500736s |  0.01% |  0.45% )   	( 2.862860s |  0.01% |  0.57% )    	(18704x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.5.1:     	( 2.473436s |  0.01% |  0.45% )   	( 2.837044s |  0.01% |  0.56% )    	(18676x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.5.0:     	( 4.973836s |  0.02% |  0.90% )   	( 3.059168s |  0.01% |  0.61% )    	(18704x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   47.5.0:     	( 0.119448s |  0.02% |  0.02% )   	( 0.134456s |  0.02% |  0.02% )    	(756x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p0
|   |   |   |   |   48.5.0:     	( 2.607220s |  0.01% |  0.47% )   	( 2.810248s |  0.01% |  0.56% )    	(18704x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.5.0:     	( 2.426228s |  0.01% |  0.44% )   	( 2.792440s |  0.01% |  0.55% )    	(18676x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   69.5.0:     	( 0.101696s |  0.00% |  0.01% )   	( 0.116116s |  0.00% |  0.02% )    	(924x)	|   |   |   |   |   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.5.0:     	( 0.089572s |  0.00% |  0.01% )   	( 0.104580s |  0.00% |  0.02% )    	(924x)	|   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.5.0:     	( 14194.883808s | 97.64% |258.667% )   	( 13772.849636s | 98.90% |275.831% )    	(19460x)	|   |   |   |   |   << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   70.5.1:     	( 0.085456s |  0.00% |  0.01% )   	( 0.098476s |  0.00% |  0.01% )    	(784x)	|   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   20.5.1:     	( 2.705864s |  0.01% |  0.49% )   	( 3.042004s |  0.01% |  0.60% )    	(19460x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   68.5.1:     	( 2.410016s |  0.01% |  0.43% )   	( 2.679180s |  0.01% |  0.53% )    	(17752x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   71.5.0:     	( 3.729012s |  0.02% |  0.67% )   	( 3.005604s |  0.01% |  0.60% )    	(17752x)	|   |   |   |   |   printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.5.0:     	( 0.078932s |  0.00% |  0.01% )   	( 0.090776s |  0.00% |  0.01% )    	(756x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   26.5.0:     	( 0.083552s |  0.00% |  0.01% )   	( 0.095200s |  0.00% |  0.01% )    	(756x)	|   |   |   |   |   break
|   |   |   |   |-- 2.5.0:      	( 5.164908s |  0.03% |  0.94% )   	( 5.219452s |  0.03% |  1.04% )    	(784x)	|   |   |   |   |-- break
|   |   |   |-- 146.4.0:        	( 0.002268s |  0.00% |  0.00% )   	( 0.002576s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p0_PID})
|   |   |   |-- 1.4.0:          	( 0.016100s |  0.00% |  0.00% )   	( 0.016492s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002324s |  0.00% |  0.00% )   	( 0.002660s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p1
|   |   |   |   |   12.5.0:     	( 0.341236s |  0.06% |  0.06% )   	( 0.340704s |  0.06% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.089432s |  0.01% |  0.01% )   	( 0.100100s |  0.02% |  0.02% )    	(532x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p1
|   |   |   |   |   47.5.0:     	( 0.079044s |  0.01% |  0.01% )   	( 0.088620s |  0.01% |  0.01% )    	(504x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p1
|   |   |   |-- 146.4.0:        	( 0.002268s |  0.00% |  0.00% )   	( 0.002604s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p1_PID})
|   |   |   |-- 1.4.0:          	( 0.017416s |  0.00% |  0.00% )   	( 0.017808s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002380s |  0.00% |  0.00% )   	( 0.002744s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p2
|   |   |   |   |   12.5.0:     	( 0.342188s |  0.07% |  0.06% )   	( 0.341796s |  0.07% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.137872s |  0.02% |  0.02% )   	( 0.153636s |  0.03% |  0.03% )    	(812x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p2
|   |   |   |   |   47.5.0:     	( 0.212100s |  0.04% |  0.03% )   	( 0.146524s |  0.03% |  0.02% )    	(784x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p2
|   |   |   |-- 146.4.0:        	( 0.002296s |  0.00% |  0.00% )   	( 0.002632s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p2_PID})
|   |   |   |-- 1.4.0:          	( 0.016492s |  0.00% |  0.00% )   	( 0.016884s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002352s |  0.00% |  0.00% )   	( 0.002716s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p3
|   |   |   |   |   12.5.0:     	( 0.342188s |  0.06% |  0.06% )   	( 0.341796s |  0.06% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.090328s |  0.01% |  0.01% )   	( 0.100800s |  0.02% |  0.02% )    	(560x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p3
|   |   |   |   |   47.5.0:     	( 0.082684s |  0.01% |  0.01% )   	( 0.093408s |  0.01% |  0.01% )    	(532x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p3
|   |   |   |-- 146.4.0:        	( 0.002324s |  0.00% |  0.00% )   	( 0.002660s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p3_PID})
|   |   |   |-- 1.4.0:          	( 0.016352s |  0.00% |  0.00% )   	( 0.016800s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002380s |  0.00% |  0.00% )   	( 0.002716s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p4
|   |   |   |   |   12.5.0:     	( 0.343056s |  0.07% |  0.06% )   	( 0.342608s |  0.07% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.136164s |  0.02% |  0.02% )   	( 0.152936s |  0.03% |  0.03% )    	(812x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p4
|   |   |   |   |   47.5.0:     	( 0.132580s |  0.02% |  0.02% )   	( 0.149548s |  0.03% |  0.02% )    	(812x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p4
|   |   |   |   |   49.5.0:     	( 0.003444s |  0.00% |  0.00% )   	( 0.003976s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   58.5.0:     	( 0.003304s |  0.00% |  0.00% )   	( 0.003836s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   59.5.0:     	( 0.003556s |  0.00% |  0.00% )   	( 0.004116s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.5.0:     	( 0.004144s |  0.00% |  0.00% )   	( 0.004704s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   : > "/dev/shm/.forkrun.lQLcZc"/.quit
|   |   |   |   |   62.5.0:     	( 0.005544s |  0.00% |  0.00% )   	( 0.006076s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   printf '%.0s\n' "/dev/shm/.forkrun.lQLcZc"/.run/p* 1>&21
|   |   |   |   |   63.5.0:     	( 0.003612s |  0.00% |  0.00% )   	( 0.004144s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   break
|   |   |   |-- 146.4.0:        	( 0.002240s |  0.00% |  0.00% )   	( 0.002576s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p4_PID})
|   |   |   |-- 1.4.0:          	( 0.016464s |  0.00% |  0.00% )   	( 0.016912s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002324s |  0.00% |  0.00% )   	( 0.002660s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p5
|   |   |   |   |   12.5.0:     	( 0.348992s |  0.06% |  0.06% )   	( 0.348572s |  0.07% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.129472s |  0.02% |  0.02% )   	( 0.144732s |  0.03% |  0.02% )    	(812x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p5
|   |   |   |   |   47.5.0:     	( 0.124712s |  0.02% |  0.02% )   	( 0.140448s |  0.02% |  0.02% )    	(784x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p5
|   |   |   |-- 146.4.0:        	( 0.002296s |  0.00% |  0.00% )   	( 0.002660s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p5_PID})
|   |   |   |-- 1.4.0:          	( 0.017052s |  0.00% |  0.00% )   	( 0.017556s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002436s |  0.00% |  0.00% )   	( 0.002800s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p6
|   |   |   |   |   12.5.0:     	( 0.352548s |  0.06% |  0.06% )   	( 0.352044s |  0.06% |  0.07% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.113932s |  0.01% |  0.02% )   	( 0.127512s |  0.02% |  0.02% )    	(700x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p6
|   |   |   |   |   47.5.0:     	( 0.109956s |  0.01% |  0.02% )   	( 0.123816s |  0.02% |  0.02% )    	(672x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p6
|   |   |   |-- 146.4.0:        	( 0.002436s |  0.00% |  0.00% )   	( 0.002772s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p6_PID})
|   |   |   |-- 1.4.0:          	( 0.016968s |  0.00% |  0.00% )   	( 0.017388s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002492s |  0.00% |  0.00% )   	( 0.002828s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p7
|   |   |   |   |   12.5.0:     	( 0.349888s |  0.05% |  0.06% )   	( 0.349440s |  0.05% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.128828s |  0.02% |  0.02% )   	( 0.142912s |  0.02% |  0.02% )    	(784x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p7
|   |   |   |   |   47.5.0:     	( 0.123508s |  0.01% |  0.02% )   	( 0.139468s |  0.02% |  0.02% )    	(756x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p7
|   |   |   |-- 146.4.0:        	( 0.002464s |  0.00% |  0.00% )   	( 0.002744s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p7_PID})
|   |   |   |-- 1.4.0:          	( 0.016856s |  0.00% |  0.00% )   	( 0.017304s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002408s |  0.00% |  0.00% )   	( 0.002744s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p8
|   |   |   |   |   12.5.0:     	( 0.349972s |  0.06% |  0.06% )   	( 0.349496s |  0.06% |  0.06% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.107576s |  0.01% |  0.01% )   	( 0.120680s |  0.02% |  0.02% )    	(616x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p8
|   |   |   |   |   47.5.0:     	( 0.093576s |  0.01% |  0.01% )   	( 0.105364s |  0.01% |  0.02% )    	(588x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p8
|   |   |   |-- 146.4.0:        	( 0.002464s |  0.00% |  0.00% )   	( 0.002800s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p8_PID})
|   |   |   |-- 1.4.0:          	( 0.016912s |  0.00% |  0.00% )   	( 0.017388s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002436s |  0.00% |  0.00% )   	( 0.002772s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p9
|   |   |   |   |   12.5.0:     	( 0.350952s |  0.07% |  0.06% )   	( 0.350364s |  0.07% |  0.07% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.138404s |  0.02% |  0.02% )   	( 0.154812s |  0.03% |  0.03% )    	(812x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p9
|   |   |   |   |   47.5.0:     	( 0.126252s |  0.02% |  0.02% )   	( 0.142744s |  0.03% |  0.02% )    	(784x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p9
|   |   |   |-- 146.4.0:        	( 0.002380s |  0.00% |  0.00% )   	( 0.002716s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p9_PID})
|   |   |   |-- 1.4.0:          	( 0.017668s |  0.00% |  0.00% )   	( 0.017892s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002548s |  0.00% |  0.00% )   	( 0.002884s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p10
|   |   |   |   |   12.5.0:     	( 0.350252s |  0.06% |  0.06% )   	( 0.349636s |  0.07% |  0.07% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.107268s |  0.02% |  0.01% )   	( 0.120204s |  0.02% |  0.02% )    	(644x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p10
|   |   |   |   |   47.5.0:     	( 0.103152s |  0.02% |  0.01% )   	( 0.115668s |  0.02% |  0.02% )    	(616x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p10
|   |   |   |-- 146.4.0:        	( 0.002520s |  0.00% |  0.00% )   	( 0.002884s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p10_PID})
|   |   |   |-- 1.4.0:          	( 0.018508s |  0.00% |  0.00% )   	( 0.018984s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002492s |  0.00% |  0.00% )   	( 0.002856s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p11
|   |   |   |   |   12.5.0:     	( 0.622076s |  0.12% |  0.11% )   	( 0.620088s |  0.12% |  0.12% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.086576s |  0.01% |  0.01% )   	( 0.096432s |  0.01% |  0.01% )    	(504x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p11
|   |   |   |   |   47.5.0:     	( 0.076440s |  0.01% |  0.01% )   	( 0.085680s |  0.01% |  0.01% )    	(476x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p11
|   |   |   |-- 146.4.0:        	( 0.002464s |  0.00% |  0.00% )   	( 0.002800s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p11_PID})
|   |   |   |-- 1.4.0:          	( 0.018592s |  0.00% |  0.00% )   	( 0.018956s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002492s |  0.00% |  0.00% )   	( 0.002884s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p12
|   |   |   |   |   12.5.0:     	( 0.354480s |  0.07% |  0.06% )   	( 0.352828s |  0.07% |  0.07% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.112364s |  0.02% |  0.02% )   	( 0.125860s |  0.02% |  0.02% )    	(700x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p12
|   |   |   |   |   47.5.0:     	( 0.112224s |  0.02% |  0.02% )   	( 0.126056s |  0.02% |  0.02% )    	(672x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p12
|   |   |   |-- 146.4.0:        	( 0.002548s |  0.00% |  0.00% )   	( 0.002772s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p12_PID})
|   |   |   |-- 1.4.0:          	( 0.024164s |  0.00% |  0.00% )   	( 0.024780s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004256s |  0.00% |  0.00% )   	( 0.004816s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p13
|   |   |   |   |   12.5.0:     	( 0.673708s |  0.13% |  0.12% )   	( 0.671608s |  0.14% |  0.13% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.137228s |  0.02% |  0.02% )   	( 0.154084s |  0.03% |  0.03% )    	(784x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p13
|   |   |   |   |   47.5.0:     	( 0.124824s |  0.02% |  0.02% )   	( 0.140952s |  0.03% |  0.02% )    	(756x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p13
|   |   |   |-- 146.4.0:        	( 0.004620s |  0.00% |  0.00% )   	( 0.005152s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p13_PID})
|   |   |   |-- 1.4.0:          	( 0.027608s |  0.00% |  0.00% )   	( 0.028140s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002576s |  0.00% |  0.00% )   	( 0.002940s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p14
|   |   |   |   |   12.5.0:     	( 0.359632s |  0.07% |  0.06% )   	( 0.358820s |  0.07% |  0.07% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.105196s |  0.02% |  0.01% )   	( 0.118132s |  0.02% |  0.02% )    	(644x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p14
|   |   |   |   |   47.5.0:     	( 0.103292s |  0.02% |  0.01% )   	( 0.115864s |  0.02% |  0.02% )    	(616x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p14
|   |   |   |-- 146.4.0:        	( 0.003976s |  0.00% |  0.00% )   	( 0.004564s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p14_PID})
|   |   |   |-- 1.4.0:          	( 0.027048s |  0.00% |  0.00% )   	( 0.027748s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002548s |  0.00% |  0.00% )   	( 0.002884s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p15
|   |   |   |   |   12.5.0:     	( 0.356328s |  0.07% |  0.06% )   	( 0.352800s |  0.07% |  0.07% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.128184s |  0.02% |  0.02% )   	( 0.143220s |  0.03% |  0.02% )    	(784x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p15
|   |   |   |   |   47.5.0:     	( 0.123872s |  0.02% |  0.02% )   	( 0.139664s |  0.02% |  0.02% )    	(756x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p15
|   |   |   |-- 146.4.0:        	( 0.004004s |  0.00% |  0.00% )   	( 0.004536s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p15_PID})
|   |   |   |-- 1.4.0:          	( 0.026796s |  0.00% |  0.00% )   	( 0.027412s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002520s |  0.00% |  0.00% )   	( 0.002884s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p16
|   |   |   |   |   12.5.0:     	( 0.354144s |  0.06% |  0.06% )   	( 0.352296s |  0.06% |  0.07% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.092148s |  0.01% |  0.01% )   	( 0.103236s |  0.02% |  0.02% )    	(532x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p16
|   |   |   |   |   47.5.0:     	( 0.085064s |  0.01% |  0.01% )   	( 0.095368s |  0.01% |  0.01% )    	(504x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p16
|   |   |   |-- 146.4.0:        	( 0.004144s |  0.00% |  0.00% )   	( 0.004564s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p16_PID})
|   |   |   |-- 1.4.0:          	( 0.027776s |  0.00% |  0.00% )   	( 0.028392s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004200s |  0.00% |  0.00% )   	( 0.004788s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p17
|   |   |   |   |   12.5.0:     	( 0.641732s |  0.11% |  0.11% )   	( 0.639632s |  0.11% |  0.12% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.121296s |  0.02% |  0.02% )   	( 0.135492s |  0.02% |  0.02% )    	(728x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p17
|   |   |   |   |   47.5.0:     	( 0.117096s |  0.02% |  0.02% )   	( 0.132496s |  0.02% |  0.02% )    	(700x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p17
|   |   |   |-- 146.4.0:        	( 0.004452s |  0.00% |  0.00% )   	( 0.005012s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p17_PID})
|   |   |   |-- 1.4.0:          	( 0.026880s |  0.00% |  0.00% )   	( 0.027356s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.5.0:      	( 0.002548s |  0.00% |  0.00% )   	( 0.002912s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p18
|   |   |   |   |   12.5.0:     	( 0.606788s |  0.11% |  0.11% )   	( 0.604016s |  0.12% |  0.12% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.119616s |  0.02% |  0.02% )   	( 0.134400s |  0.02% |  0.02% )    	(728x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p18
|   |   |   |   |   47.5.0:     	( 0.117040s |  0.02% |  0.02% )   	( 0.131656s |  0.02% |  0.02% )    	(700x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p18
|   |   |   |-- 146.4.0:        	( 0.004144s |  0.00% |  0.00% )   	( 0.004592s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p18_PID})
|   |   |   |-- 1.4.0:          	( 0.028560s |  0.00% |  0.00% )   	( 0.029092s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.5.0:      	( 0.005292s |  0.00% |  0.00% )   	( 0.005992s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p19
|   |   |   |   |   12.5.0:     	( 0.713916s |  0.14% |  0.13% )   	( 0.710612s |  0.14% |  0.14% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.108164s |  0.02% |  0.01% )   	( 0.121436s |  0.02% |  0.02% )    	(644x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p19
|   |   |   |   |   47.5.0:     	( 0.096348s |  0.01% |  0.01% )   	( 0.108752s |  0.02% |  0.02% )    	(616x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p19
|   |   |   |-- 146.4.0:        	( 0.003948s |  0.00% |  0.00% )   	( 0.004480s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p19_PID})
|   |   |   |-- 1.4.0:          	( 0.029792s |  0.00% |  0.00% )   	( 0.030352s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004228s |  0.00% |  0.00% )   	( 0.004760s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p20
|   |   |   |   |   12.5.0:     	( 0.667968s |  0.13% |  0.12% )   	( 0.665812s |  0.13% |  0.13% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.141008s |  0.02% |  0.02% )   	( 0.157836s |  0.03% |  0.03% )    	(840x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p20
|   |   |   |   |   47.5.0:     	( 0.136304s |  0.02% |  0.02% )   	( 0.152572s |  0.03% |  0.03% )    	(812x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p20
|   |   |   |-- 146.4.0:        	( 0.004144s |  0.00% |  0.00% )   	( 0.004676s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p20_PID})
|   |   |   |-- 1.4.0:          	( 0.031528s |  0.00% |  0.00% )   	( 0.032032s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004060s |  0.00% |  0.00% )   	( 0.004592s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p21
|   |   |   |   |   12.5.0:     	( 0.546756s |  0.09% |  0.09% )   	( 0.544880s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.123116s |  0.02% |  0.02% )   	( 0.138404s |  0.02% |  0.02% )    	(728x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p21
|   |   |   |   |   47.5.0:     	( 0.117628s |  0.02% |  0.02% )   	( 0.131544s |  0.02% |  0.02% )    	(700x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p21
|   |   |   |-- 146.4.0:        	( 0.004172s |  0.00% |  0.00% )   	( 0.004704s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p21_PID})
|   |   |   |-- 1.4.0:          	( 0.021560s |  0.00% |  0.00% )   	( 0.022120s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.5.0:      	( 0.005376s |  0.00% |  0.00% )   	( 0.005908s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p22
|   |   |   |   |   12.5.0:     	( 0.688492s |  0.13% |  0.12% )   	( 0.685860s |  0.13% |  0.13% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.069972s |  0.01% |  0.01% )   	( 0.079100s |  0.01% |  0.01% )    	(420x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p22
|   |   |   |   |   47.5.0:     	( 0.064316s |  0.01% |  0.01% )   	( 0.072296s |  0.01% |  0.01% )    	(392x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p22
|   |   |   |-- 146.4.0:        	( 0.002352s |  0.00% |  0.00% )   	( 0.002688s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p22_PID})
|   |   |   |-- 1.4.0:          	( 0.030492s |  0.00% |  0.00% )   	( 0.031024s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004508s |  0.00% |  0.00% )   	( 0.005180s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p23
|   |   |   |   |   12.5.0:     	( 0.660296s |  0.11% |  0.12% )   	( 0.657832s |  0.11% |  0.13% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.121464s |  0.02% |  0.02% )   	( 0.135604s |  0.02% |  0.02% )    	(700x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p23
|   |   |   |   |   47.5.0:     	( 0.117852s |  0.01% |  0.02% )   	( 0.132328s |  0.02% |  0.02% )    	(672x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p23
|   |   |   |-- 146.4.0:        	( 0.004200s |  0.00% |  0.00% )   	( 0.004536s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p23_PID})
|   |   |   |-- 1.4.0:          	( 0.031024s |  0.00% |  0.00% )   	( 0.031612s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004032s |  0.00% |  0.00% )   	( 0.004592s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p24
|   |   |   |   |   12.5.0:     	( 0.669396s |  0.12% |  0.12% )   	( 0.667156s |  0.12% |  0.13% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.087948s |  0.01% |  0.01% )   	( 0.098616s |  0.01% |  0.01% )    	(532x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p24
|   |   |   |   |   47.5.0:     	( 0.084644s |  0.01% |  0.01% )   	( 0.094584s |  0.01% |  0.01% )    	(504x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p24
|   |   |   |-- 146.4.0:        	( 0.004200s |  0.00% |  0.00% )   	( 0.004788s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p24_PID})
|   |   |   |-- 1.4.0:          	( 0.025928s |  0.00% |  0.00% )   	( 0.026348s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004116s |  0.00% |  0.00% )   	( 0.004648s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p25
|   |   |   |   |   12.5.0:     	( 0.676452s |  0.14% |  0.12% )   	( 0.674100s |  0.15% |  0.13% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.145404s |  0.03% |  0.02% )   	( 0.163072s |  0.03% |  0.03% )    	(840x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p25
|   |   |   |   |   47.5.0:     	( 0.133056s |  0.02% |  0.02% )   	( 0.148960s |  0.03% |  0.02% )    	(812x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p25
|   |   |   |-- 146.4.0:        	( 0.004340s |  0.00% |  0.00% )   	( 0.004900s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p25_PID})
|   |   |   |-- 1.4.0:          	( 0.029596s |  0.00% |  0.00% )   	( 0.030156s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004088s |  0.00% |  0.00% )   	( 0.004592s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p26
|   |   |   |   |   12.5.0:     	( 0.663740s |  0.13% |  0.12% )   	( 0.661528s |  0.14% |  0.13% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.138376s |  0.02% |  0.02% )   	( 0.155680s |  0.03% |  0.03% )    	(840x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p26
|   |   |   |   |   47.5.0:     	( 0.137228s |  0.02% |  0.02% )   	( 0.154616s |  0.03% |  0.03% )    	(812x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p26
|   |   |   |-- 146.4.0:        	( 0.003948s |  0.00% |  0.00% )   	( 0.004508s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p26_PID})
|   |   |   |-- 1.4.0:          	( 0.031052s |  0.00% |  0.00% )   	( 0.031612s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.5.0:      	( 0.004816s |  0.00% |  0.00% )   	( 0.005488s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.lQLcZc"/.run/p27
|   |   |   |   |   12.5.0:     	( 0.807520s |  0.15% |  0.14% )   	( 0.729960s |  0.14% |  0.14% )    	(28x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.lQLcZc"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.lQLcZc"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.lQLcZc"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.113232s |  0.02% |  0.02% )   	( 0.127092s |  0.02% |  0.02% )    	(644x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.lQLcZc"/.wait/p27
|   |   |   |   |   47.5.0:     	( 0.105168s |  0.02% |  0.01% )   	( 0.118104s |  0.02% |  0.02% )    	(616x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.lQLcZc"/.wait/p27
|   |   |   |-- 146.4.0:        	( 0.004144s |  0.00% |  0.00% )   	( 0.004704s |  0.00% |  0.00% )    	(28x)	|   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1393.3.0:           	( 0.002583s |  0.00% |  0.00% )   	( 0.003009s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs++ ))
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p1 p1_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p2 p2_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p3 p3_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p4 p4_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p5 p5_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p6 p6_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p7 p7_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p8 p8_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p9 p9_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p10 p10_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p11 p11_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p12 p12_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p13 p13_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p14 p14_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p15 p15_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p16 p16_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p17 p17_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p18 p18_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p19 p19_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p20 p20_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p21 p21_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p22 p22_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p23 p23_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p24 p24_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p25 p25_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p26 p26_PID >>
|   |   |   1395.3.0:           	( 519.101544s | 94.60% | 94.59% )   	( 497.282673s | 99.59% | 99.59% )    	(28x)	|   |   |   << (FUNCTION): local p27 p27_PID >>
|   |   |   1397.3.0:           	( 0.000158s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1398.3.0:           	( 0.000143s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   : > "${tmpDir}"/.spawned
|   |   |   1399.3.0:           	( 0.000120s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1402.3.0:           	( 0.000121s |  0.00% |  0.00% )   	( 0.000140s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1407.3.0:           	( 0.001219s |  0.00% |  0.00% )   	( 0.001236s |  0.00% |  0.00% )    	(1x)	|   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1412.3.0:           	( 0.000132s |  0.00% |  0.00% )   	( 0.000147s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1474.3.0:           	( 0.000119s |  0.00% |  0.00% )   	( 0.000138s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1477.3.0:           	( 0.000115s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1484.3.0:           	( 23.864072s |  4.34% |  4.34% )   	( 0.001165s |  0.00% |  0.00% )    	(1x)	|   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1488.3.0:           	( 0.000076s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |-- 1493.3.0:           	( 0.000064s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |-- ${nSpawnFlag}
|   |   1499.2.0:               	( 0.000080s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   wait
|-- |-- -248.2.0:               	( 0.003182s |  0.00% |  0.00% )   	( 0.002014s |  0.00% |  0.00% )    	(1x)	|-- |-- -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.lQLcZc" 2>/dev/null'

TOTAL RUN TIME: 548.768811s
TOTAL CPU TIME: 499.321868s
