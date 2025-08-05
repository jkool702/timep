LINE.DEPTH.CMD NUMBER           	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:           	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
________________________________	________________________________	________________________________	____________________________________
9.0.0:                          	( 548.737350s |100.00% )          	( 501.670409s |100.00% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.1.0:                      	( 0.001203s |  0.00% |  0.00% )   	( 0.000988s |  0.00% |  0.00% )    	(1x)	|-- forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   425.1.0:                    	( 548.736147s | 99.99% | 99.99% )   	( 501.669421s | 99.99% | 99.99% )    	(1x)	|   << (SUBSHELL) >>
|   |-- 425.2.0:                	( 0.022988s |  0.00% |  0.00% )   	( 0.022918s |  0.00% |  0.00% )    	(1x)	|   |-- trap - EXIT INT TERM HUP USR1
|   |   110.2.0:                	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   shopt -s extglob
|   |   113.2.0:                	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   114.2.0:                	( 0.000138s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(1x)	|   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   115.2.0:                	( 0.000098s |  0.00% |  0.00% )   	( 0.000112s |  0.00% |  0.00% )    	(1x)	|   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   116.2.0:                	( 0.000070s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   117.2.0:                	( 0.000068s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   122.2.0:                	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   125.2.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ $# == 0 ]]
|   |   125.2.1:                	( 0.000060s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   optParseFlag=true
|   |   126.2.0:                	( 0.000121s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(2x)	|   |   ${optParseFlag}
|   |   126.2.1:                	( 0.000118s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(2x)	|   |   (( $# > 0  ))
|   |   126.2.2:                	( 0.000117s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(2x)	|   |   [[ "$1" == [-+]* ]]
|   |   127.2.0:                	( 0.000092s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	|   |   case "${1}" in
|   |   254.2.0:                	( 0.000061s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   [[ "${1:0:1}" == '-' ]]
|   |   254.2.1:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   nullDelimiterFlag=true
|   |   318.2.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   shift 1
|   |   319.2.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   [[ ${#} == 0 ]]
|   |   323.2.0:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   [ -t "${fd_stdin0}" ]
|   |   332.2.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${tmpDirRoot} ]]
|   |   332.2.1:                	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${TMPDIR} ]]
|   |   332.2.2:                	( 0.000060s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   [[ -d '/dev/shm' ]]
|   |   332.2.3:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   tmpDirRoot='/dev/shm'
|   |   334.2.0:                	( 0.001037s |  0.00% |  0.00% )   	( 0.000689s |  0.00% |  0.00% )    	(1x)	|   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   334.2.1:                	( 0.005365s |  0.00% |  0.00% )   	( 0.005365s |  0.00% |  0.00% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 334.3.0:            	( 0.005365s |100.00% |  0.00% )   	( 0.005365s |100.00% |  0.00% )    	(1x)	|   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   335.2.0:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   fPath="${tmpDir}"/.stdin
|   |   337.2.0:                	( 0.002116s |  0.00% |  0.00% )   	( 0.002181s |  0.00% |  0.00% )    	(1x)	|   |   mkdir -p "${tmpDir}"/.run
|   |   338.2.0:                	( 0.000085s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   : > "${fPath}"
|   |   340.2.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   ${rmTmpDirFlag}
|   |   340.2.1:                	( 0.013984s |  0.00% |  0.00% )   	( 0.000946s |  0.00% |  0.00% )    	(1x)	|   |   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   348.2.0:                	( 548.681200s | 99.98% | 99.98% )   	( 501.629768s | 99.99% | 99.99% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 348.3.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1502.3.0:           	( 0.000207s |  0.00% |  0.00% )   	( 0.000220s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1502.4.0:       	( 0.000700s |100.00% |  0.00% )   	( 0.000807s |100.00% |  0.00% )    	(6x)	|   |   |   |-- :
|   |   |   1502.3.1:           	( 0.000074s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.2:           	( 0.000074s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.3:           	( 0.000196s |  0.00% |  0.00% )   	( 0.000231s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.4:           	( 0.000074s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.5:           	( 0.000075s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   363.3.0:            	( 0.000080s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   LC_ALL=C
|   |   |   364.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   LANG=C
|   |   |   365.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   IFS=
|   |   |   367.3.0:            	( 0.000171s |  0.00% |  0.00% )   	( 0.000185s |  0.00% |  0.00% )    	(1x)	|   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   369.3.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   370.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   371.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   373.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   PID0="${BASHPID}"
|   |   |   375.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   shopt -s nullglob
|   |   |   378.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   380.3.0:            	( 0.000077s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   enable lseek &> /dev/null
|   |   |   381.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekFlag:=true}"
|   |   |   386.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   387.3.0:            	( 0.002930s |  0.00% |  0.00% )   	( 0.002982s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   387.3.1:            	( 0.000110s |  0.00% |  0.00% )   	( 0.000124s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 387.4.0:        	( 0.000110s |100.00% |  0.00% )   	( 0.000124s |100.00% |  0.00% )    	(1x)	|   |   |   |-- lseek $fd_read 0
|   |   |   387.3.2:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekPosFlag:=true}"
|   |   |   391.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   396.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   runCmd=("${@//''/}")
|   |   |   398.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.3.1:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   noFuncFlag=false
|   |   |   400.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   401.3.0:            	( 0.000086s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   405.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   467.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nLines} ]]
|   |   |   467.3.1:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   468.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${nLines} ]]
|   |   |   468.3.1:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   nLines=1
|   |   |   472.3.0:            	( 0.000077s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == '-'* ]]
|   |   |   477.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == *','* ]]
|   |   |   481.3.0:            	( 0.000786s |  0.00% |  0.00% )   	( 0.000930s |  0.00% |  0.00% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.4.0:          	( 0.000060s |  7.63% |  0.00% )   	( 0.000081s |  8.70% |  0.00% )    	(1x)	|   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.4.0:          	( 0.000064s |  8.14% |  0.00% )   	( 0.000075s |  8.06% |  0.00% )    	(1x)	|   |   |   |   local +i -l nn
|   |   |   |   9.4.0:          	( 0.000063s |  8.01% |  0.00% )   	( 0.000075s |  8.06% |  0.00% )    	(1x)	|   |   |   |   local vOut
|   |   |   |   11.4.0:         	( 0.000064s |  8.14% |  0.00% )   	( 0.000075s |  8.06% |  0.00% )    	(1x)	|   |   |   |   local -n vOut="$1"
|   |   |   |   12.4.0:         	( 0.000061s |  7.76% |  0.00% )   	( 0.000072s |  7.74% |  0.00% )    	(1x)	|   |   |   |   shift 1
|   |   |   |   13.4.0:         	( 0.000063s |  8.01% |  0.00% )   	( 0.000074s |  7.95% |  0.00% )    	(1x)	|   |   |   |   local -g vOut
|   |   |   |   15.4.0:         	( 0.000059s |  7.50% |  0.00% )   	( 0.000070s |  7.52% |  0.00% )    	(1x)	|   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.4.1:         	( 0.000108s | 13.74% |  0.00% )   	( 0.000120s | 12.90% |  0.00% )    	(1x)	|   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.4.0:         	( 0.000059s |  7.50% |  0.00% )   	( 0.000070s |  7.52% |  0.00% )    	(1x)	|   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.4.0:         	( 0.000060s |  7.63% |  0.00% )   	( 0.000071s |  7.63% |  0.00% )    	(1x)	|   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.4.1:         	( 0.000061s |  7.76% |  0.00% )   	( 0.000072s |  7.74% |  0.00% )    	(1x)	|   |   |   |   continue
|   |   |   |-- 28.4.0:         	( 0.000064s |  8.14% |  0.00% )   	( 0.000075s |  8.06% |  0.00% )    	(1x)	|   |   |   |-- local +n vOut
|   |   |   483.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   485.3.0:            	( 0.006532s |  0.00% |  0.00% )   	( 0.006628s |  0.00% |  0.00% )    	(1x)	|   |   |   nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   485.3.1:            	( 0.002453s |  0.00% |  0.00% )   	( 0.002545s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 485.4.0:        	( 0.000221s |  9.00% |  0.00% )   	( 0.000233s |  9.15% |  0.00% )    	(1x)	|   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 485.4.1:        	( 0.002232s | 90.99% |  0.00% )   	( 0.002312s | 90.84% |  0.00% )    	(1x)	|   |   |   |-- nproc
|   |   |   486.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nCPU < 1 ))
|   |   |   487.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nProcs} ]]
|   |   |   487.3.1:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   487.3.2:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   nProcs=${nCPU}
|   |   |   489.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   493.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   493.3.1:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   499.3.0:            	( 0.000095s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   501.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   504.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   504.3.1:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   504.3.2:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < nLines ))
|   |   |   506.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   doneIndicatorFlag=false
|   |   |   509.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.3.0:            	( 0.000153s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   type -a fallocate &> /dev/null
|   |   |   515.3.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.3.2:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${fallocateFlag:=true}"
|   |   |   518.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${exportOrderFlag}
|   |   |   521.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   522.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   523.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nullDelimiterFlag}
|   |   |   524.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   delimiterReadStr="-d ''"
|   |   |   525.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   525.3.1:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:='lseek'}"
|   |   |   526.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:=bash}"
|   |   |   527.3.0:            	( 0.000104s |  0.00% |  0.00% )   	( 0.000115s |  0.00% |  0.00% )    	(1x)	|   |   |   type -p dd &> /dev/null
|   |   |   528.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ddAvailableFlag=true
|   |   |   529.3.0:            	( 0.003444s |  0.00% |  0.00% )   	( 0.004523s |  0.00% |  0.00% )    	(1x)	|   |   |   dd --version | grep -qF 'coreutils'
|   |   |   530.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ddQuietStr='status=none'
|   |   |   537.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   538.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   539.3.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   nullDelimiterProg=''
|   |   |   557.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${unescapeFlag}
|   |   |   566.3.0:            	( 0.003641s |  0.00% |  0.00% )   	( 0.003755s |  0.00% |  0.00% )    	(1x)	|   |   |   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   566.3.1:            	( 0.000111s |  0.00% |  0.00% )   	( 0.000129s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 566.4.0:        	( 0.000111s |100.00% |  0.00% )   	( 0.000129s |100.00% |  0.00% )    	(1x)	|   |   |   |-- printf '%q\n' "${runCmd[@]}"
|   |   |   567.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringFlag}
|   |   |   570.3.0:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringIDFlag}
|   |   |   576.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   nLinesCur=${nLines}
|   |   |   578.3.0:            	( 0.001976s |  0.00% |  0.00% )   	( 0.002052s |  0.00% |  0.00% )    	(1x)	|   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   579.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   582.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   ${rmTmpDirFlag}
|   |   |   584.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 0 ))
|   |   |   615.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   617.3.0:            	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   evfd_init
|   |   |   622.3.0:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   624.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   628.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   638.3.0:            	( 0.000540s |  0.00% |  0.00% )   	( 0.000550s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   644.3.0:            	( 0.078335s |  0.01% |  0.01% )   	( 0.078253s |  0.01% |  0.01% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 644.4.0:        	( 0.000083s |  0.10% |  0.00% )   	( 0.000095s |  0.12% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   646.4.0:        	( 0.011362s | 14.50% |  0.00% )   	( 0.011330s | 14.47% |  0.00% )    	(1x)	|   |   |   |   trap - EXIT
|   |   |   |   647.4.0:        	( 0.012218s | 15.59% |  0.00% )   	( 0.012203s | 15.59% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   648.4.0:        	( 0.012191s | 15.56% |  0.00% )   	( 0.012174s | 15.55% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   649.4.0:        	( 0.012197s | 15.57% |  0.00% )   	( 0.012177s | 15.56% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   650.4.0:        	( 0.012118s | 15.46% |  0.00% )   	( 0.012098s | 15.46% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   652.4.0:        	( 0.000062s |  0.07% |  0.00% )   	( 0.000073s |  0.09% |  0.00% )    	(1x)	|   |   |   |   case ${writeFileProgType} in
|   |   |   |   653.4.0:        	( 0.017883s | 22.82% |  0.00% )   	( 0.017849s | 22.80% |  0.00% )    	(1x)	|   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   658.4.0:        	( 0.000087s |  0.11% |  0.00% )   	( 0.000099s |  0.12% |  0.00% )    	(1x)	|   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   659.4.0:        	( 0.000068s |  0.08% |  0.00% )   	( 0.000078s |  0.09% |  0.00% )    	(1x)	|   |   |   |   evfd_signal
|   |   |   |-- 660.4.0:        	( 0.000066s |  0.08% |  0.00% )   	( 0.000077s |  0.09% |  0.00% )    	(1x)	|   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   668.3.0:            	( 0.000073s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   673.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   715.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   outStr='>&'"${fd_stdout}"
|   |   |   719.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   721.3.0:            	( 0.000409s |  0.00% |  0.00% )   	( 0.000440s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   731.3.0:            	( 5.299637s |  0.96% |  0.96% )   	( 1.706594s |  0.34% |  0.34% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 731.4.0:        	( 0.000146s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   733.4.0:        	( 0.012587s |  0.23% |  0.00% )   	( 0.012572s |  0.73% |  0.00% )    	(1x)	|   |   |   |   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   734.4.0:        	( 0.012132s |  0.22% |  0.00% )   	( 0.012114s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   735.4.0:        	( 0.012205s |  0.23% |  0.00% )   	( 0.012183s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   736.4.0:        	( 0.012123s |  0.22% |  0.00% )   	( 0.012104s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   737.4.0:        	( 0.012154s |  0.22% |  0.00% )   	( 0.012135s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   739.4.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   740.4.0:        	( 0.000068s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   741.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fd_read_pos_old=0
|   |   |   |   743.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=0
|   |   |   |   745.4.0:        	( 0.085951s |  1.62% |  0.01% )   	( 0.099013s |  5.80% |  0.01% )    	(676x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   747.4.0:        	( 3.883698s | 73.28% |  0.70% )   	( 0.116123s |  6.80% |  0.02% )    	(675x)	|   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   747.4.1:        	( 0.001246s |  0.02% |  0.00% )   	( 0.001424s |  0.08% |  0.00% )    	(8x)	|   |   |   |   continue
|   |   |   |   749.4.0:        	( 0.083530s |  1.57% |  0.01% )   	( 0.096707s |  5.66% |  0.01% )    	(667x)	|   |   |   |   case ${REPLY} in
|   |   |   |   763.4.0:        	( 0.083281s |  1.57% |  0.01% )   	( 0.096450s |  5.65% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   764.4.0:        	( 0.000125s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   767.4.0:        	( 0.000129s |  0.00% |  0.00% )   	( 0.000151s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   773.4.0:        	( 0.083139s |  1.56% |  0.01% )   	( 0.096088s |  5.63% |  0.01% )    	(667x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   774.4.0:        	( 0.086120s |  1.62% |  0.01% )   	( 0.098955s |  5.79% |  0.01% )    	(667x)	|   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   775.4.0:        	( 0.085709s |  1.61% |  0.01% )   	( 0.098571s |  5.77% |  0.01% )    	(667x)	|   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   782.4.0:        	( 0.085439s |  1.61% |  0.01% )   	( 0.095432s |  5.59% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   782.4.1:        	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   784.4.0:        	( 0.082612s |  1.55% |  0.01% )   	( 0.095570s |  5.60% |  0.01% )    	(667x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   786.4.0:        	( 0.082874s |  1.56% |  0.01% )   	( 0.095816s |  5.61% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   788.4.0:        	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   790.4.0:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   791.4.0:        	( 0.006209s |  0.11% |  0.00% )   	( 0.006820s |  0.39% |  0.00% )    	(1x)	|   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   791.4.1:        	( 0.003176s |  0.05% |  0.00% )   	( 0.003691s |  0.21% |  0.00% )    	(1x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 791.5.0:    	( 0.003176s |100.00% |  0.00% )   	( 0.003691s |100.00% |  0.00% )    	(1x)	|   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   792.4.0:        	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   793.4.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   796.4.0:        	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   798.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   800.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   800.4.1:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   800.4.2:        	( 0.000065s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   802.4.0:        	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   805.4.0:        	( 0.000075s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   807.4.0:        	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   811.4.0:        	( 0.084394s |  1.59% |  0.01% )   	( 0.095780s |  5.61% |  0.01% )    	(667x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   812.4.0:        	( 0.081686s |  1.54% |  0.01% )   	( 0.094513s |  5.53% |  0.01% )    	(667x)	|   |   |   |   case ${nWait} in
|   |   |   |   823.4.0:        	( 0.079953s |  1.50% |  0.01% )   	( 0.092374s |  5.41% |  0.01% )    	(646x)	|   |   |   |   ((nWait--))
|   |   |   |   828.4.0:        	( 0.086024s |  1.62% |  0.01% )   	( 0.099046s |  5.80% |  0.01% )    	(667x)	|   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   763.4.1:        	( 0.084119s |  1.58% |  0.01% )   	( 0.097076s |  5.68% |  0.01% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   782.4.1:        	( 0.082906s |  1.56% |  0.01% )   	( 0.095855s |  5.61% |  0.01% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   814.4.0:        	( 0.002671s |  0.05% |  0.00% )   	( 0.003072s |  0.18% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   815.4.0:        	( 0.002659s |  0.05% |  0.00% )   	( 0.003063s |  0.17% |  0.00% )    	(21x)	|   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   816.4.0:        	( 0.063891s |  1.20% |  0.01% )   	( 0.045222s |  2.64% |  0.00% )    	(21x)	|   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   817.4.0:        	( 0.002787s |  0.05% |  0.00% )   	( 0.003207s |  0.18% |  0.00% )    	(21x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   818.4.0:        	( 0.002860s |  0.05% |  0.00% )   	( 0.003308s |  0.19% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   820.4.0:        	( 0.002852s |  0.05% |  0.00% )   	( 0.003289s |  0.19% |  0.00% )    	(21x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   829.4.0:        	( 0.000128s |  0.00% |  0.00% )   	( 0.000149s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   830.4.0:        	( 0.000154s |  0.00% |  0.00% )   	( 0.000181s |  0.01% |  0.00% )    	(1x)	|   |   |   |   fallocateFlag=false
|   |   |   |   831.4.0:        	( 0.000162s |  0.00% |  0.00% )   	( 0.000186s |  0.01% |  0.00% )    	(1x)	|   |   |   |   nSpawnFlag=false
|   |   |   |   745.4.1:        	( 0.000153s |  0.00% |  0.00% )   	( 0.000177s |  0.01% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   745.4.2:        	( 0.000184s |  0.00% |  0.00% )   	( 0.000201s |  0.01% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- -248.4.0:       	( 0.006333s |  0.11% |  0.00% )   	( 0.006342s |  0.37% |  0.00% )    	(1x)	|   |   |   |-- -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.na8CRx"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/pAuto'
|   |   |   839.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   840.3.0:            	( 0.000107s |  0.00% |  0.00% )   	( 0.000110s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   876.3.0:            	( 0.000084s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1345.3.0:           	( 0.001816s |  0.00% |  0.00% )   	( 0.001096s |  0.00% |  0.00% )    	(1x)	|   |   |   coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1362.3.0:           	( 0.005116s |  0.00% |  0.00% )   	( 0.005882s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1362.4.0:       	( 0.000429s |  8.38% |  0.00% )   	( 0.000467s |  7.93% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1363.4.0:       	( 0.000277s |  5.41% |  0.00% )   	( 0.000320s |  5.44% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1363.4.1:       	( 0.000080s |  1.56% |  0.00% )   	( 0.000091s |  1.54% |  0.00% )    	(1x)	|   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1371.4.0:       	( 0.000212s |  4.14% |  0.00% )   	( 0.000225s |  3.82% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1372.4.0:       	( 0.000063s |  1.23% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1444.4.0:       	( 0.000059s |  1.15% |  0.00% )   	( 0.000070s |  1.19% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1447.4.0:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000076s |  1.29% |  0.00% )    	(1x)	|   |   |   |   echo "{"
|   |   |   |   1448.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1449.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1449.4.1:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000076s |  1.29% |  0.00% )    	(1x)	|   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1450.4.0:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "mapfile"
|   |   |   |   1451.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1451.4.1:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1452.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000076s |  1.29% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1453.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1453.4.1:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000076s |  1.29% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' ${fd_read}
|   |   |   |   1454.4.0:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000070s |  1.19% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1454.4.1:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1454.4.2:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1456.4.0:       	( 0.000066s |  1.29% |  0.00% )   	( 0.000077s |  1.30% |  0.00% )    	(1x)	|   |   |   |   echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1457.4.0:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1457.4.1:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1457.4.2:       	( 0.000088s |  1.72% |  0.00% )   	( 0.000098s |  1.66% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1514.4.0:       	( 0.000059s |  1.15% |  0.00% )   	( 0.000070s |  1.19% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1514.4.1:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1514.4.2:       	( 0.000069s |  1.34% |  0.00% )   	( 0.000080s |  1.36% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1515.4.0:       	( 0.000072s |  1.40% |  0.00% )   	( 0.000079s |  1.34% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1528.4.0:       	( 0.000081s |  1.58% |  0.00% )   	( 0.000093s |  1.58% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1529.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000073s |  1.24% |  0.00% )    	(1x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   1532.4.0:       	( 0.000087s |  1.70% |  0.00% )   	( 0.000099s |  1.68% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1543.4.0:       	( 0.000072s |  1.40% |  0.00% )   	( 0.000084s |  1.42% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1544.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1544.4.1:       	( 0.000082s |  1.60% |  0.00% )   	( 0.000093s |  1.58% |  0.00% )    	(1x)	|   |   |   |   echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1545.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000077s |  1.30% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1546.4.0:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   1551.4.0:       	( 0.000087s |  1.70% |  0.00% )   	( 0.000099s |  1.68% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1552.4.0:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1556.4.0:       	( 0.000075s |  1.46% |  0.00% )   	( 0.000087s |  1.47% |  0.00% )    	(1x)	|   |   |   |   echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1557.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000073s |  1.24% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1557.4.1:       	( 0.000088s |  1.72% |  0.00% )   	( 0.000098s |  1.66% |  0.00% )    	(1x)	|   |   |   |   printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1562.4.0:       	( 0.000058s |  1.13% |  0.00% )   	( 0.000069s |  1.17% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1562.4.1:       	( 0.000084s |  1.64% |  0.00% )   	( 0.000094s |  1.59% |  0.00% )    	(1x)	|   |   |   |   printf '%s' ' || '
|   |   |   |   1563.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1563.4.1:       	( 0.000077s |  1.50% |  0.00% )   	( 0.000088s |  1.49% |  0.00% )    	(1x)	|   |   |   |   echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1564.4.0:       	( 0.000072s |  1.40% |  0.00% )   	( 0.000083s |  1.41% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1564.4.1:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000077s |  1.30% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1572.4.0:       	( 0.000059s |  1.15% |  0.00% )   	( 0.000070s |  1.19% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1572.4.1:       	( 0.000070s |  1.36% |  0.00% )   	( 0.000081s |  1.37% |  0.00% )    	(1x)	|   |   |   |   echo '{'
|   |   |   |   1573.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1573.4.1:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000076s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1574.4.0:       	( 0.000063s |  1.23% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1575.4.0:       	( 0.000086s |  1.68% |  0.00% )   	( 0.000097s |  1.64% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "${runCmd[@]}"
|   |   |   |   1576.4.0:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1583.4.0:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${stdinRunFlag}
|   |   |   |   1586.4.0:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${noFuncFlag}
|   |   |   |   1589.4.0:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${substituteStringFlag}
|   |   |   |   1590.4.0:       	( 0.000080s |  1.56% |  0.00% )   	( 0.000091s |  1.54% |  0.00% )    	(1x)	|   |   |   |   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1595.4.0:       	( 0.000066s |  1.29% |  0.00% )   	( 0.000078s |  1.32% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1607.4.0:       	( 0.000069s |  1.34% |  0.00% )   	( 0.000078s |  1.32% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1608.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1608.4.1:       	( 0.000067s |  1.30% |  0.00% )   	( 0.000079s |  1.34% |  0.00% )    	(1x)	|   |   |   |   printf '\n%s ' '}'
|   |   |   |   1609.4.0:       	( 0.000071s |  1.38% |  0.00% )   	( 0.000079s |  1.34% |  0.00% )    	(1x)	|   |   |   |   echo "${outStr}"
|   |   |   |   1610.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000076s |  1.29% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1611.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1616.4.0:       	( 0.000087s |  1.70% |  0.00% )   	( 0.000095s |  1.61% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1350.3.0:           	( 0.000256s |  0.00% |  0.00% )   	( 0.000286s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1355.3.0:           	( 0.000258s |  0.00% |  0.00% )   	( 0.000295s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1360.3.0:           	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1362.3.0:           	( 0.012431s |  0.00% |  0.00% )   	( 0.012405s |  0.00% |  0.00% )    	(1x)	|   |   |   trap "${exitTrapStr}" EXIT
|   |   |   1367.3.0:           	( 0.012316s |  0.00% |  0.00% )   	( 0.098856s |  0.01% |  0.01% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1372.3.0:           	( 0.012303s |  0.00% |  0.00% )   	( 0.012278s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1377.3.0:           	( 0.012044s |  0.00% |  0.00% )   	( 0.012021s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1379.3.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1380.3.0:           	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1382.3.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1393.3.0:           	( 0.000073s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '\n' >&${fd_continue}
|   |   |   1396.3.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1397.3.0:           	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ((kkProcs=0 ))
|   |   |   1397.3.1:           	( 0.002859s |  0.00% |  0.00% )   	( 0.003325s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs<28 ))
|   |   |   1398.3.0:           	( 0.002726s |  0.00% |  0.00% )   	( 0.003154s |  0.00% |  0.00% )    	(28x)	|   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1399.3.0:           	( 18.556259s |  3.38% |  3.38% )   	( 17.879465s |  3.56% |  3.56% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p0 p0_PID >>
|   |   |   |-- 1.4.0:          	( 0.000575s |  0.00% |  0.00% )   	( 0.000594s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p0 p0_PID (&)
|   |   |   |   73.4.0:         	( 519.313947s | 99.99% | 94.63% )   	( 499.628245s | 99.99% | 99.59% )    	(28x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 73.5.0:     	( 0.004979s |  0.00% |  0.00% )   	( 0.005676s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.na8CRx"
|   |   |   |   |   8.5.0:      	( 0.000345s |  0.00% |  0.00% )   	( 0.000388s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p0
|   |   |   |   |   12.5.0:     	( 0.012750s |  0.06% |  0.00% )   	( 0.012742s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.5.0:     	( 0.517827s |  0.09% |  0.09% )   	( 0.513137s |  0.09% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT 225041 ${BASHPID}' INT
|   |   |   |   |   15.5.0:     	( 0.522358s |  0.09% |  0.09% )   	( 0.520953s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM 225041 ${BASHPID}' TERM
|   |   |   |   |   16.5.0:     	( 0.528434s |  0.09% |  0.09% )   	( 0.521002s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP 225041 ${BASHPID}' HUP
|   |   |   |   |   17.5.0:     	( 0.525642s |  0.09% |  0.09% )   	( 0.524214s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.5.0:     	( 0.110722s |  0.01% |  0.02% )   	( 0.122793s |  0.02% |  0.02% )    	(695x)	|   |   |   |   |   true
|   |   |   |   |   20.5.0:     	( 0.097394s |  0.01% |  0.01% )   	( 0.109066s |  0.01% |  0.02% )    	(695x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.5.1:     	( 0.003759s |  0.00% |  0.00% )   	( 0.004295s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   read -r < "/dev/shm/.forkrun.na8CRx"/.nLines
|   |   |   |   |   20.5.2:     	( 0.003181s |  0.00% |  0.00% )   	( 0.003693s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.5.3:     	( 0.003187s |  0.00% |  0.00% )   	( 0.003705s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.5.0:     	( 0.003934s |  0.02% |  0.00% )   	( 0.004407s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p0
|   |   |   |   |   23.5.0:     	( 3.105287s |  0.59% |  0.56% )   	( 0.139863s |  0.02% |  0.02% )    	(695x)	|   |   |   |   |   read -r -u 21 _
|   |   |   |   |   24.5.0:     	( 0.102018s |  0.01% |  0.01% )   	( 0.113057s |  0.01% |  0.02% )    	(695x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.na8CRx"/.quit ]]
|   |   |   |   |   28.5.0:     	( 0.095674s |  0.01% |  0.01% )   	( 0.106324s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.na8CRx"/.done ]]
|   |   |   |   |   28.5.1:     	( 0.089238s |  0.01% |  0.01% )   	( 0.101822s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.5.0:     	( 0.093206s |  0.01% |  0.01% )   	( 0.106604s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   evfd_wait 25
|   |   |   |   |   31.5.0:     	( 0.800432s |  0.15% |  0.14% )   	( 0.793442s |  0.15% |  0.15% )    	(668x)	|   |   |   |   |   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.5.0:     	( 0.152505s |  0.02% |  0.02% )   	( 0.111753s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   35.5.0:     	( 0.003438s |  0.01% |  0.00% )   	( 0.003871s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p0
|   |   |   |   |   36.5.0:     	( 0.096206s |  0.01% |  0.01% )   	( 0.102066s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.5.0:     	( 0.087862s |  0.01% |  0.01% )   	( 0.101251s |  0.01% |  0.02% )    	(667x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   57.5.0:     	( 0.003508s |  0.00% |  0.00% )   	( 0.004022s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.5.0:     	( 0.003088s |  0.00% |  0.00% )   	( 0.003611s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.5.0:     	( 511.106480s | 98.39% | 93.14% )   	( 494.344592s | 98.92% | 98.53% )    	(667x)	|   |   |   |   |   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
|   |   |   |   |   |-- 1.6.0:  	( 0.083846s |  0.02% |  0.01% )   	( 0.097061s |  0.02% |  0.01% )    	(667x)	|   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.6.0:  	( 35.166598s |  6.89% |  6.40% )   	( 33.776677s |  6.89% |  6.73% )    	(667x)	|   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.6.0:  	( 60.517818s | 10.41% | 11.02% )   	( 58.836304s | 10.45% | 11.72% )    	(667x)	|   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.6.0: 	( 49.582038s |  9.63% |  9.03% )   	( 47.626337s |  9.60% |  9.49% )    	(667x)	|   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.6.0: 	( 59.553222s | 10.26% | 10.85% )   	( 58.141137s | 10.34% | 11.58% )    	(667x)	|   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.6.0: 	( 47.328406s |  9.09% |  8.62% )   	( 45.997849s |  9.13% |  9.16% )    	(667x)	|   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.6.0: 	( 31.461538s |  6.43% |  5.73% )   	( 30.362052s |  6.42% |  6.05% )    	(667x)	|   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.6.0: 	( 15.527739s |  4.18% |  2.82% )   	( 14.767012s |  4.15% |  2.94% )    	(667x)	|   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.6.0: 	( 32.963552s |  6.37% |  6.00% )   	( 31.727239s |  6.32% |  6.32% )    	(667x)	|   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.6.0: 	( 13.713809s |  3.93% |  2.49% )   	( 12.962027s |  3.90% |  2.58% )    	(667x)	|   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.6.0: 	( 41.640797s |  8.70% |  7.58% )   	( 39.979144s |  8.64% |  7.96% )    	(667x)	|   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.6.0: 	( 93.035783s | 15.11% | 16.95% )   	( 91.237169s | 15.25% | 18.18% )    	(667x)	|   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.6.0: 	( 15.506133s |  4.42% |  2.82% )   	( 14.701196s |  4.37% |  2.93% )    	(667x)	|   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.6.0: 	( 15.025201s |  4.42% |  2.73% )   	( 14.133388s |  4.37% |  2.81% )    	(667x)	|   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   58.5.1:     	( 0.002944s |  0.00% |  0.00% )   	( 0.003365s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   20.5.1:     	( 0.092425s |  0.01% |  0.01% )   	( 0.105808s |  0.01% |  0.02% )    	(662x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   56.5.1:     	( 0.087681s |  0.01% |  0.01% )   	( 0.097562s |  0.01% |  0.01% )    	(634x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   59.5.0:     	( 0.121923s |  0.02% |  0.02% )   	( 0.108175s |  0.01% |  0.02% )    	(634x)	|   |   |   |   |   printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.5.0:     	( 0.002826s |  0.00% |  0.00% )   	( 0.003230s |  0.00% |  0.00% )    	(27x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   26.5.0:     	( 0.002850s |  0.00% |  0.00% )   	( 0.003268s |  0.00% |  0.00% )    	(27x)	|   |   |   |   |   break
|   |   |   |   |-- 2.5.0:      	( 0.182326s |  0.03% |  0.03% )   	( 0.181427s |  0.03% |  0.03% )    	(28x)	|   |   |   |   |-- break
|   |   |   |-- 134.4.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p0_PID})
|   |   |   1397.3.0:           	( 0.002714s |  0.00% |  0.00% )   	( 0.003135s |  0.00% |  0.00% )    	(28x)	|   |   |   ((kkProcs++ ))
|   |   |   1399.3.0:           	( 21.281974s |  3.87% |  3.87% )   	( 20.830059s |  4.15% |  4.15% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p1 p1_PID >>
|   |   |   |-- 1.4.0:          	( 0.000550s |  0.00% |  0.00% )   	( 0.000570s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000097s |  0.00% |  0.00% )   	( 0.000111s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p1
|   |   |   |   |   12.5.0:     	( 0.013106s |  0.06% |  0.00% )   	( 0.013088s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002249s |  0.01% |  0.00% )   	( 0.002516s |  0.01% |  0.00% )    	(14x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p1
|   |   |   |   |   35.5.0:     	( 0.002032s |  0.00% |  0.00% )   	( 0.002271s |  0.01% |  0.00% )    	(13x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p1
|   |   |   |-- 134.4.0:        	( 0.000082s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p1_PID})
|   |   |   1399.3.0:           	( 17.410409s |  3.17% |  3.17% )   	( 16.626741s |  3.31% |  3.31% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p2 p2_PID >>
|   |   |   |-- 1.4.0:          	( 0.000554s |  0.00% |  0.00% )   	( 0.000571s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p2
|   |   |   |   |   12.5.0:     	( 0.012224s |  0.07% |  0.00% )   	( 0.012207s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005007s |  0.02% |  0.00% )   	( 0.005606s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p2
|   |   |   |   |   35.5.0:     	( 0.004714s |  0.02% |  0.00% )   	( 0.005296s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p2
|   |   |   |-- 134.4.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p2_PID})
|   |   |   1399.3.0:           	( 17.569083s |  3.20% |  3.20% )   	( 16.743905s |  3.33% |  3.33% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p3 p3_PID >>
|   |   |   |-- 1.4.0:          	( 0.000558s |  0.00% |  0.00% )   	( 0.000574s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000203s |  0.00% |  0.00% )   	( 0.000224s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p3
|   |   |   |   |   12.5.0:     	( 0.013187s |  0.07% |  0.00% )   	( 0.013166s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005344s |  0.03% |  0.00% )   	( 0.006013s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p3
|   |   |   |   |   35.5.0:     	( 0.005009s |  0.02% |  0.00% )   	( 0.005669s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p3
|   |   |   |-- 134.4.0:        	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p3_PID})
|   |   |   1399.3.0:           	( 17.685532s |  3.22% |  3.22% )   	( 16.934267s |  3.37% |  3.37% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p4 p4_PID >>
|   |   |   |-- 1.4.0:          	( 0.000550s |  0.00% |  0.00% )   	( 0.000566s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000354s |  0.00% |  0.00% )   	( 0.000389s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p4
|   |   |   |   |   12.5.0:     	( 0.012474s |  0.07% |  0.00% )   	( 0.012457s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004685s |  0.02% |  0.00% )   	( 0.005234s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p4
|   |   |   |   |   35.5.0:     	( 0.007501s |  0.04% |  0.00% )   	( 0.005066s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p4
|   |   |   |-- 134.4.0:        	( 0.000083s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p4_PID})
|   |   |   1399.3.0:           	( 20.574972s |  3.74% |  3.74% )   	( 20.009710s |  3.98% |  3.98% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p5 p5_PID >>
|   |   |   |-- 1.4.0:          	( 0.000556s |  0.00% |  0.00% )   	( 0.000572s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000351s |  0.00% |  0.00% )   	( 0.000385s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p5
|   |   |   |   |   12.5.0:     	( 0.013537s |  0.06% |  0.00% )   	( 0.013519s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002931s |  0.01% |  0.00% )   	( 0.003301s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p5
|   |   |   |   |   35.5.0:     	( 0.002873s |  0.01% |  0.00% )   	( 0.003223s |  0.01% |  0.00% )    	(17x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p5
|   |   |   |-- 134.4.0:        	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p5_PID})
|   |   |   1399.3.0:           	( 20.515709s |  3.73% |  3.73% )   	( 19.832387s |  3.95% |  3.95% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p6 p6_PID >>
|   |   |   |-- 1.4.0:          	( 0.000575s |  0.00% |  0.00% )   	( 0.000587s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000102s |  0.00% |  0.00% )   	( 0.000116s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p6
|   |   |   |   |   12.5.0:     	( 0.013282s |  0.06% |  0.00% )   	( 0.013261s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005278s |  0.02% |  0.00% )   	( 0.005888s |  0.02% |  0.00% )    	(32x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p6
|   |   |   |   |   35.5.0:     	( 0.005310s |  0.02% |  0.00% )   	( 0.005757s |  0.02% |  0.00% )    	(31x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p6
|   |   |   |-- 134.4.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p6_PID})
|   |   |   1399.3.0:           	( 17.582047s |  3.20% |  3.20% )   	( 16.740905s |  3.33% |  3.33% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p7 p7_PID >>
|   |   |   |-- 1.4.0:          	( 0.000579s |  0.00% |  0.00% )   	( 0.000593s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000091s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p7
|   |   |   |   |   12.5.0:     	( 0.012487s |  0.07% |  0.00% )   	( 0.012471s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005129s |  0.02% |  0.00% )   	( 0.005768s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p7
|   |   |   |   |   35.5.0:     	( 0.004708s |  0.02% |  0.00% )   	( 0.005297s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p7
|   |   |   |-- 134.4.0:        	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p7_PID})
|   |   |   1399.3.0:           	( 17.539933s |  3.19% |  3.19% )   	( 16.735228s |  3.33% |  3.33% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p8 p8_PID >>
|   |   |   |-- 1.4.0:          	( 0.000576s |  0.00% |  0.00% )   	( 0.000593s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p8
|   |   |   |   |   12.5.0:     	( 0.012506s |  0.07% |  0.00% )   	( 0.012487s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004603s |  0.02% |  0.00% )   	( 0.005151s |  0.03% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p8
|   |   |   |   |   35.5.0:     	( 0.004079s |  0.02% |  0.00% )   	( 0.004587s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p8
|   |   |   |-- 134.4.0:        	( 0.000087s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p8_PID})
|   |   |   1399.3.0:           	( 21.395220s |  3.89% |  3.89% )   	( 20.894999s |  4.16% |  4.16% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p9 p9_PID >>
|   |   |   |-- 1.4.0:          	( 0.000593s |  0.00% |  0.00% )   	( 0.000606s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000346s |  0.00% |  0.00% )   	( 0.000390s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p9
|   |   |   |   |   12.5.0:     	( 0.012515s |  0.05% |  0.00% )   	( 0.012496s |  0.05% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.007311s |  0.03% |  0.00% )   	( 0.004059s |  0.01% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p9
|   |   |   |   |   35.5.0:     	( 0.003451s |  0.01% |  0.00% )   	( 0.003889s |  0.01% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p9
|   |   |   |-- 134.4.0:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p9_PID})
|   |   |   1399.3.0:           	( 18.238419s |  3.32% |  3.32% )   	( 17.773984s |  3.54% |  3.54% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p10 p10_PID >>
|   |   |   |-- 1.4.0:          	( 0.000598s |  0.00% |  0.00% )   	( 0.000610s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000346s |  0.00% |  0.00% )   	( 0.000390s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p10
|   |   |   |   |   12.5.0:     	( 0.012507s |  0.06% |  0.00% )   	( 0.012489s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002649s |  0.01% |  0.00% )   	( 0.002946s |  0.01% |  0.00% )    	(16x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p10
|   |   |   |   |   35.5.0:     	( 0.002293s |  0.01% |  0.00% )   	( 0.002591s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p10
|   |   |   |-- 134.4.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p10_PID})
|   |   |   1399.3.0:           	( 17.531830s |  3.19% |  3.19% )   	( 16.620058s |  3.31% |  3.31% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p11 p11_PID >>
|   |   |   |-- 1.4.0:          	( 0.000678s |  0.00% |  0.00% )   	( 0.000696s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p11
|   |   |   |   |   12.5.0:     	( 0.012521s |  0.07% |  0.00% )   	( 0.012495s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004306s |  0.02% |  0.00% )   	( 0.004851s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p11
|   |   |   |   |   35.5.0:     	( 0.004139s |  0.02% |  0.00% )   	( 0.004616s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p11
|   |   |   |-- 134.4.0:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p11_PID})
|   |   |   1399.3.0:           	( 17.176608s |  3.13% |  3.13% )   	( 16.450931s |  3.27% |  3.27% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p12 p12_PID >>
|   |   |   |-- 1.4.0:          	( 0.000771s |  0.00% |  0.00% )   	( 0.000796s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000151s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p12
|   |   |   |   |   12.5.0:     	( 0.023983s |  0.13% |  0.00% )   	( 0.023887s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005315s |  0.03% |  0.00% )   	( 0.005971s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p12
|   |   |   |   |   35.5.0:     	( 0.005057s |  0.02% |  0.00% )   	( 0.005669s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p12
|   |   |   |-- 134.4.0:        	( 0.000151s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p12_PID})
|   |   |   1399.3.0:           	( 17.855658s |  3.25% |  3.25% )   	( 17.204826s |  3.42% |  3.42% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p13 p13_PID >>
|   |   |   |-- 1.4.0:          	( 0.000934s |  0.00% |  0.00% )   	( 0.000954s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000136s |  0.00% |  0.00% )   	( 0.000154s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p13
|   |   |   |   |   12.5.0:     	( 0.012908s |  0.07% |  0.00% )   	( 0.012879s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004236s |  0.02% |  0.00% )   	( 0.004774s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p13
|   |   |   |   |   35.5.0:     	( 0.004054s |  0.02% |  0.00% )   	( 0.004548s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p13
|   |   |   |-- 134.4.0:        	( 0.000149s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p13_PID})
|   |   |   1399.3.0:           	( 17.372772s |  3.16% |  3.16% )   	( 16.598471s |  3.30% |  3.30% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p14 p14_PID >>
|   |   |   |-- 1.4.0:          	( 0.000901s |  0.00% |  0.00% )   	( 0.000921s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000100s |  0.00% |  0.00% )   	( 0.000110s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p14
|   |   |   |   |   12.5.0:     	( 0.016353s |  0.09% |  0.00% )   	( 0.016247s |  0.09% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004460s |  0.02% |  0.00% )   	( 0.005018s |  0.03% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p14
|   |   |   |   |   35.5.0:     	( 0.004218s |  0.02% |  0.00% )   	( 0.004699s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p14
|   |   |   |   |   37.5.0:     	( 0.000119s |  0.00% |  0.00% )   	( 0.000140s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.5.0:     	( 0.000129s |  0.00% |  0.00% )   	( 0.000145s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   47.5.0:     	( 0.000130s |  0.00% |  0.00% )   	( 0.000150s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.5.0:     	( 0.000153s |  0.00% |  0.00% )   	( 0.000173s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   : > "/dev/shm/.forkrun.na8CRx"/.quit
|   |   |   |   |   50.5.0:     	( 0.000202s |  0.00% |  0.00% )   	( 0.000223s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   printf '%.0s\n' "/dev/shm/.forkrun.na8CRx"/.run/p* 1>&21
|   |   |   |   |   51.5.0:     	( 0.000131s |  0.00% |  0.00% )   	( 0.000150s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   break
|   |   |   |-- 134.4.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p14_PID})
|   |   |   1399.3.0:           	( 17.610180s |  3.20% |  3.20% )   	( 16.822212s |  3.35% |  3.35% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p15 p15_PID >>
|   |   |   |-- 1.4.0:          	( 0.000912s |  0.00% |  0.00% )   	( 0.000933s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p15
|   |   |   |   |   12.5.0:     	( 0.012649s |  0.07% |  0.00% )   	( 0.012547s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004599s |  0.02% |  0.00% )   	( 0.005160s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p15
|   |   |   |   |   35.5.0:     	( 0.004426s |  0.02% |  0.00% )   	( 0.004959s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p15
|   |   |   |-- 134.4.0:        	( 0.000158s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p15_PID})
|   |   |   1399.3.0:           	( 19.514393s |  3.55% |  3.55% )   	( 18.768925s |  3.74% |  3.74% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p16 p16_PID >>
|   |   |   |-- 1.4.0:          	( 0.000987s |  0.00% |  0.00% )   	( 0.001008s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000184s |  0.00% |  0.00% )   	( 0.000202s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p16
|   |   |   |   |   12.5.0:     	( 0.025011s |  0.12% |  0.00% )   	( 0.024927s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004157s |  0.02% |  0.00% )   	( 0.004657s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p16
|   |   |   |   |   35.5.0:     	( 0.003736s |  0.01% |  0.00% )   	( 0.004198s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p16
|   |   |   |-- 134.4.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p16_PID})
|   |   |   1399.3.0:           	( 17.217598s |  3.13% |  3.13% )   	( 16.337319s |  3.25% |  3.25% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p17 p17_PID >>
|   |   |   |-- 1.4.0:          	( 0.000980s |  0.00% |  0.00% )   	( 0.001002s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000168s |  0.00% |  0.00% )   	( 0.000191s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p17
|   |   |   |   |   12.5.0:     	( 0.022657s |  0.13% |  0.00% )   	( 0.022587s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005427s |  0.03% |  0.00% )   	( 0.006076s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p17
|   |   |   |   |   35.5.0:     	( 0.004866s |  0.02% |  0.00% )   	( 0.005494s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p17
|   |   |   |-- 134.4.0:        	( 0.000149s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p17_PID})
|   |   |   1399.3.0:           	( 17.800904s |  3.24% |  3.24% )   	( 16.936707s |  3.37% |  3.37% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p18 p18_PID >>
|   |   |   |-- 1.4.0:          	( 0.000959s |  0.00% |  0.00% )   	( 0.000983s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000151s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p18
|   |   |   |   |   12.5.0:     	( 0.023614s |  0.13% |  0.00% )   	( 0.023533s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004350s |  0.02% |  0.00% )   	( 0.004889s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p18
|   |   |   |   |   35.5.0:     	( 0.004307s |  0.02% |  0.00% )   	( 0.004855s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p18
|   |   |   |-- 134.4.0:        	( 0.000143s |  0.00% |  0.00% )   	( 0.000163s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p18_PID})
|   |   |   1399.3.0:           	( 17.172476s |  3.12% |  3.12% )   	( 16.294858s |  3.24% |  3.24% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p19 p19_PID >>
|   |   |   |-- 1.4.0:          	( 0.000983s |  0.00% |  0.00% )   	( 0.001005s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000188s |  0.00% |  0.00% )   	( 0.000208s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p19
|   |   |   |   |   12.5.0:     	( 0.020062s |  0.11% |  0.00% )   	( 0.019997s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004738s |  0.02% |  0.00% )   	( 0.005296s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p19
|   |   |   |   |   35.5.0:     	( 0.004572s |  0.02% |  0.00% )   	( 0.005121s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p19
|   |   |   |-- 134.4.0:        	( 0.000144s |  0.00% |  0.00% )   	( 0.000163s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p19_PID})
|   |   |   1399.3.0:           	( 18.009317s |  3.28% |  3.28% )   	( 17.312437s |  3.45% |  3.45% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p20 p20_PID >>
|   |   |   |-- 1.4.0:          	( 0.000943s |  0.00% |  0.00% )   	( 0.000964s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000094s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p20
|   |   |   |   |   12.5.0:     	( 0.021523s |  0.11% |  0.00% )   	( 0.021458s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003398s |  0.01% |  0.00% )   	( 0.003794s |  0.02% |  0.00% )    	(19x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p20
|   |   |   |   |   35.5.0:     	( 0.003021s |  0.01% |  0.00% )   	( 0.003384s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p20
|   |   |   |-- 134.4.0:        	( 0.000158s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p20_PID})
|   |   |   1399.3.0:           	( 18.741495s |  3.41% |  3.41% )   	( 18.211494s |  3.63% |  3.63% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p21 p21_PID >>
|   |   |   |-- 1.4.0:          	( 0.000969s |  0.00% |  0.00% )   	( 0.000992s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000153s |  0.00% |  0.00% )   	( 0.000173s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p21
|   |   |   |   |   12.5.0:     	( 0.024093s |  0.12% |  0.00% )   	( 0.024004s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003261s |  0.01% |  0.00% )   	( 0.003665s |  0.02% |  0.00% )    	(19x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p21
|   |   |   |   |   35.5.0:     	( 0.003034s |  0.01% |  0.00% )   	( 0.003428s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p21
|   |   |   |-- 134.4.0:        	( 0.000158s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p21_PID})
|   |   |   1399.3.0:           	( 18.007817s |  3.28% |  3.28% )   	( 17.355538s |  3.45% |  3.45% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p22 p22_PID >>
|   |   |   |-- 1.4.0:          	( 0.001009s |  0.00% |  0.00% )   	( 0.001024s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000163s |  0.00% |  0.00% )   	( 0.000179s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p22
|   |   |   |   |   12.5.0:     	( 0.024007s |  0.13% |  0.00% )   	( 0.023923s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003630s |  0.02% |  0.00% )   	( 0.004085s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p22
|   |   |   |   |   35.5.0:     	( 0.003447s |  0.01% |  0.00% )   	( 0.003870s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p22
|   |   |   |-- 134.4.0:        	( 0.000148s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p22_PID})
|   |   |   1399.3.0:           	( 17.995796s |  3.27% |  3.27% )   	( 17.281900s |  3.44% |  3.44% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p23 p23_PID >>
|   |   |   |-- 1.4.0:          	( 0.001040s |  0.00% |  0.00% )   	( 0.001059s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000150s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p23
|   |   |   |   |   12.5.0:     	( 0.023948s |  0.13% |  0.00% )   	( 0.023780s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004787s |  0.02% |  0.00% )   	( 0.005370s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p23
|   |   |   |   |   35.5.0:     	( 0.004727s |  0.02% |  0.00% )   	( 0.005322s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p23
|   |   |   |-- 134.4.0:        	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p23_PID})
|   |   |   1399.3.0:           	( 17.077486s |  3.11% |  3.11% )   	( 16.221739s |  3.23% |  3.23% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p24 p24_PID >>
|   |   |   |-- 1.4.0:          	( 0.001009s |  0.00% |  0.00% )   	( 0.001027s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000093s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p24
|   |   |   |   |   12.5.0:     	( 0.024490s |  0.14% |  0.00% )   	( 0.024407s |  0.15% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005204s |  0.03% |  0.00% )   	( 0.005872s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p24
|   |   |   |   |   35.5.0:     	( 0.005097s |  0.02% |  0.00% )   	( 0.005737s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p24
|   |   |   |-- 134.4.0:        	( 0.000143s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p24_PID})
|   |   |   1399.3.0:           	( 22.399572s |  4.08% |  4.08% )   	( 21.674747s |  4.32% |  4.32% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p25 p25_PID >>
|   |   |   |-- 1.4.0:          	( 0.000992s |  0.00% |  0.00% )   	( 0.001012s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000151s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p25
|   |   |   |   |   12.5.0:     	( 0.025542s |  0.11% |  0.00% )   	( 0.024100s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004932s |  0.02% |  0.00% )   	( 0.005524s |  0.02% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p25
|   |   |   |   |   35.5.0:     	( 0.004643s |  0.02% |  0.00% )   	( 0.005229s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p25
|   |   |   |-- 134.4.0:        	( 0.000147s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p25_PID})
|   |   |   1399.3.0:           	( 17.899897s |  3.26% |  3.26% )   	( 17.453950s |  3.47% |  3.47% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p26 p26_PID >>
|   |   |   |-- 1.4.0:          	( 0.001004s |  0.00% |  0.00% )   	( 0.001022s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000155s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p26
|   |   |   |   |   12.5.0:     	( 0.035586s |  0.19% |  0.00% )   	( 0.025111s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003526s |  0.01% |  0.00% )   	( 0.003958s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p26
|   |   |   |   |   35.5.0:     	( 0.003490s |  0.01% |  0.00% )   	( 0.003897s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p26
|   |   |   |-- 134.4.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p26_PID})
|   |   |   1399.3.0:           	( 21.606368s |  3.93% |  3.93% )   	( 21.107223s |  4.20% |  4.20% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p27 p27_PID >>
|   |   |   |-- 1.4.0:          	( 0.001024s |  0.00% |  0.00% )   	( 0.001043s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000221s |  0.00% |  0.00% )   	( 0.000235s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.na8CRx"/.run/p27
|   |   |   |   |   12.5.0:     	( 0.035786s |  0.16% |  0.00% )   	( 0.027474s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.na8CRx"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.na8CRx"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.na8CRx"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002550s |  0.01% |  0.00% )   	( 0.002851s |  0.01% |  0.00% )    	(16x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.na8CRx"/.wait/p27
|   |   |   |   |   35.5.0:     	( 0.002726s |  0.01% |  0.00% )   	( 0.003077s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.na8CRx"/.wait/p27
|   |   |   |-- 134.4.0:        	( 0.000148s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1401.3.0:           	( 0.000151s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1402.3.0:           	( 0.000149s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   : > "${tmpDir}"/.spawned
|   |   |   1403.3.0:           	( 0.000122s |  0.00% |  0.00% )   	( 0.000141s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1406.3.0:           	( 0.000114s |  0.00% |  0.00% )   	( 0.000133s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1411.3.0:           	( 0.001242s |  0.00% |  0.00% )   	( 0.001256s |  0.00% |  0.00% )    	(1x)	|   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1416.3.0:           	( 0.000127s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1478.3.0:           	( 0.000126s |  0.00% |  0.00% )   	( 0.000142s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1481.3.0:           	( 0.000117s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1488.3.0:           	( 23.866275s |  4.34% |  4.34% )   	( 0.001786s |  0.00% |  0.00% )    	(1x)	|   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1492.3.0:           	( 0.000278s |  0.00% |  0.00% )   	( 0.000321s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |-- 1497.3.0:           	( 0.000270s |  0.00% |  0.00% )   	( 0.000311s |  0.00% |  0.00% )    	(1x)	|   |   |-- ${nSpawnFlag}
|   |   1503.2.0:               	( 0.000347s |  0.00% |  0.00% )   	( 0.000420s |  0.00% |  0.00% )    	(1x)	|   |   wait
|-- |-- -248.2.0:               	( 0.007223s |  0.00% |  0.00% )   	( 0.004897s |  0.00% |  0.00% )    	(1x)	|-- |-- -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.na8CRx" 2>/dev/null'

TOTAL RUN TIME: 548.737350s
TOTAL CPU TIME: 501.670409s
