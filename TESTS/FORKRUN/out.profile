LINE.DEPTH.CMD NUMBER           	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:           	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
________________________________	________________________________	________________________________	____________________________________
9.0.0:                          	( 554.193418s | 50.24% )          	( 501.476216s | 50.00% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0.0:                      	( 0.001067s |  0.00% |  0.00% )   	( 0.000760s |  0.00% |  0.00% )    	(1x)	|-- forkrun ff < /mnt/ramdisk/flist > /dev/null
|   425.0.0:                    	( 554.192351s | 99.99% | 50.24% )   	( 501.475456s | 99.99% | 50.00% )    	(1x)	|   << (SUBSHELL) >>
|   |-- 425.0.0:                	( 0.023578s |  0.00% |  0.00% )   	( 0.023516s |  0.00% |  0.00% )    	(1x)	|   |-- trap - EXIT INT TERM HUP USR1
|   |   110.0.0:                	( 0.000068s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   shopt -s extglob
|   |   113.0.0:                	( 0.000067s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   114.0.0:                	( 0.000119s |  0.00% |  0.00% )   	( 0.000132s |  0.00% |  0.00% )    	(1x)	|   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   115.0.0:                	( 0.000094s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	|   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   116.0.0:                	( 0.000075s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	|   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   117.0.0:                	( 0.000070s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   122.0.0:                	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   125.0.0:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   [[ $# == 0 ]]
|   |   125.0.1:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   optParseFlag=true
|   |   126.0.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   ${optParseFlag}
|   |   126.0.1:                	( 0.000057s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   (( $# > 0  ))
|   |   126.0.2:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   [[ "$1" == [-+]* ]]
|   |   323.0.0:                	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   [ -t "${fd_stdin0}" ]
|   |   332.0.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${tmpDirRoot} ]]
|   |   332.0.1:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${TMPDIR} ]]
|   |   332.0.2:                	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   [[ -d '/dev/shm' ]]
|   |   332.0.3:                	( 0.000063s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   tmpDirRoot='/dev/shm'
|   |   334.0.0:                	( 0.001328s |  0.00% |  0.00% )   	( 0.001037s |  0.00% |  0.00% )    	(1x)	|   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   334.0.1:                	( 0.004815s |  0.00% |  0.00% )   	( 0.004815s |  0.00% |  0.00% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 334.0.0:            	( 0.004815s |100.00% |  0.00% )   	( 0.004815s |100.00% |  0.00% )    	(1x)	|   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   335.0.0:                	( 0.000064s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   fPath="${tmpDir}"/.stdin
|   |   337.0.0:                	( 0.001648s |  0.00% |  0.00% )   	( 0.001730s |  0.00% |  0.00% )    	(1x)	|   |   mkdir -p "${tmpDir}"/.run
|   |   338.0.0:                	( 0.000082s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   : > "${fPath}"
|   |   340.0.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   ${rmTmpDirFlag}
|   |   340.0.1:                	( 0.014057s |  0.00% |  0.00% )   	( 0.000660s |  0.00% |  0.00% )    	(1x)	|   |   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   348.0.0:                	( 554.139685s | 99.99% | 50.23% )   	( 501.439604s | 99.99% | 50.00% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 348.0.0:            	( 0.000096s |  0.00% |  0.00% )   	( 0.000114s |  0.00% |  0.00% )    	(1x)	|   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1502.0.0:           	( 0.000192s |  0.00% |  0.00% )   	( 0.000225s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1502.0.0:       	( 0.001665s |100.00% |  0.00% )   	( 0.001941s |100.00% |  0.00% )    	(6x)	|   |   |   |-- :
|   |   |   1502.0.1:           	( 0.000292s |  0.00% |  0.00% )   	( 0.000342s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.2:           	( 0.000292s |  0.00% |  0.00% )   	( 0.000343s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.3:           	( 0.000302s |  0.00% |  0.00% )   	( 0.000345s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.4:           	( 0.000294s |  0.00% |  0.00% )   	( 0.000344s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.0.5:           	( 0.000293s |  0.00% |  0.00% )   	( 0.000342s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   363.0.0:            	( 0.000104s |  0.00% |  0.00% )   	( 0.000121s |  0.00% |  0.00% )    	(1x)	|   |   |   LC_ALL=C
|   |   |   364.0.0:            	( 0.000092s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   LANG=C
|   |   |   365.0.0:            	( 0.000088s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   IFS=
|   |   |   367.0.0:            	( 0.000220s |  0.00% |  0.00% )   	( 0.000239s |  0.00% |  0.00% )    	(1x)	|   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   369.0.0:            	( 0.000096s |  0.00% |  0.00% )   	( 0.000111s |  0.00% |  0.00% )    	(1x)	|   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   370.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   371.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   373.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   PID0="${BASHPID}"
|   |   |   375.0.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   shopt -s nullglob
|   |   |   378.0.0:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   380.0.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   enable lseek &> /dev/null
|   |   |   381.0.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekFlag:=true}"
|   |   |   386.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   387.0.0:            	( 0.002932s |  0.00% |  0.00% )   	( 0.002983s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   387.0.1:            	( 0.000107s |  0.00% |  0.00% )   	( 0.000121s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 387.0.0:        	( 0.000107s |100.00% |  0.00% )   	( 0.000121s |100.00% |  0.00% )    	(1x)	|   |   |   |-- lseek $fd_read 0
|   |   |   387.0.2:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekPosFlag:=true}"
|   |   |   391.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   396.0.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   |   runCmd=("${@//''/}")
|   |   |   398.0.0:            	( 0.000083s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.0.1:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   noFuncFlag=false
|   |   |   400.0.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   401.0.0:            	( 0.000082s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   405.0.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   467.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nLines} ]]
|   |   |   467.0.1:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   468.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${nLines} ]]
|   |   |   468.0.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   nLines=1
|   |   |   472.0.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == '-'* ]]
|   |   |   477.0.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == *','* ]]
|   |   |   481.0.0:            	( 0.000789s |  0.00% |  0.00% )   	( 0.000913s |  0.00% |  0.00% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0.0:          	( 0.000061s |  7.73% |  0.00% )   	( 0.000069s |  7.55% |  0.00% )    	(1x)	|   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0.0:          	( 0.000063s |  7.98% |  0.00% )   	( 0.000074s |  8.10% |  0.00% )    	(1x)	|   |   |   |   local +i -l nn
|   |   |   |   9.0.0:          	( 0.000061s |  7.73% |  0.00% )   	( 0.000072s |  7.88% |  0.00% )    	(1x)	|   |   |   |   local vOut
|   |   |   |   11.0.0:         	( 0.000066s |  8.36% |  0.00% )   	( 0.000074s |  8.10% |  0.00% )    	(1x)	|   |   |   |   local -n vOut="$1"
|   |   |   |   12.0.0:         	( 0.000059s |  7.47% |  0.00% )   	( 0.000070s |  7.66% |  0.00% )    	(1x)	|   |   |   |   shift 1
|   |   |   |   13.0.0:         	( 0.000063s |  7.98% |  0.00% )   	( 0.000074s |  8.10% |  0.00% )    	(1x)	|   |   |   |   local -g vOut
|   |   |   |   15.0.0:         	( 0.000064s |  8.11% |  0.00% )   	( 0.000072s |  7.88% |  0.00% )    	(1x)	|   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.0.1:         	( 0.000108s | 13.68% |  0.00% )   	( 0.000119s | 13.03% |  0.00% )    	(1x)	|   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0.0:         	( 0.000059s |  7.47% |  0.00% )   	( 0.000070s |  7.66% |  0.00% )    	(1x)	|   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.0.0:         	( 0.000059s |  7.47% |  0.00% )   	( 0.000070s |  7.66% |  0.00% )    	(1x)	|   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.0.1:         	( 0.000061s |  7.73% |  0.00% )   	( 0.000072s |  7.88% |  0.00% )    	(1x)	|   |   |   |   continue
|   |   |   |-- 28.0.0:         	( 0.000065s |  8.23% |  0.00% )   	( 0.000077s |  8.43% |  0.00% )    	(1x)	|   |   |   |-- local +n vOut
|   |   |   483.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   485.0.0:            	( 0.008322s |  0.00% |  0.00% )   	( 0.008425s |  0.00% |  0.00% )    	(1x)	|   |   |   nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   485.0.1:            	( 0.002559s |  0.00% |  0.00% )   	( 0.002700s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 485.0.0:        	( 0.000298s | 11.64% |  0.00% )   	( 0.000321s | 11.88% |  0.00% )    	(1x)	|   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 485.0.1:        	( 0.002261s | 88.35% |  0.00% )   	( 0.002379s | 88.11% |  0.00% )    	(1x)	|   |   |   |-- nproc
|   |   |   486.0.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nCPU < 1 ))
|   |   |   487.0.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nProcs} ]]
|   |   |   487.0.1:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   487.0.2:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   nProcs=${nCPU}
|   |   |   489.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   499.0.0:            	( 0.000078s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   501.0.0:            	( 0.000082s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   504.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   504.0.1:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   504.0.2:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < nLines ))
|   |   |   506.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   doneIndicatorFlag=false
|   |   |   509.0.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.0.0:            	( 0.000149s |  0.00% |  0.00% )   	( 0.000161s |  0.00% |  0.00% )    	(1x)	|   |   |   type -a fallocate &> /dev/null
|   |   |   515.0.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.0.2:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${fallocateFlag:=true}"
|   |   |   518.0.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${exportOrderFlag}
|   |   |   521.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   522.0.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   523.0.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nullDelimiterFlag}
|   |   |   544.0.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${delimiterVal} ]]
|   |   |   545.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   delimiterVal='$'"'"'\n'"'"
|   |   |   546.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   546.0.1:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   557.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${unescapeFlag}
|   |   |   566.0.0:            	( 0.002712s |  0.00% |  0.00% )   	( 0.002818s |  0.00% |  0.00% )    	(1x)	|   |   |   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   566.0.1:            	( 0.000083s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 566.0.0:        	( 0.000083s |100.00% |  0.00% )   	( 0.000092s |100.00% |  0.00% )    	(1x)	|   |   |   |-- printf '%q\n' "${runCmd[@]}"
|   |   |   567.0.0:            	( 0.000077s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringFlag}
|   |   |   570.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringIDFlag}
|   |   |   576.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   nLinesCur=${nLines}
|   |   |   578.0.0:            	( 0.001395s |  0.00% |  0.00% )   	( 0.001463s |  0.00% |  0.00% )    	(1x)	|   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   579.0.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   582.0.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${rmTmpDirFlag}
|   |   |   584.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 0 ))
|   |   |   615.0.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   617.0.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   evfd_init
|   |   |   622.0.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   624.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   628.0.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   638.0.0:            	( 0.000506s |  0.00% |  0.00% )   	( 0.000524s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   644.0.0:            	( 0.078847s |  0.01% |  0.00% )   	( 0.078721s |  0.01% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 644.0.0:        	( 0.000077s |  0.09% |  0.00% )   	( 0.000089s |  0.11% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   646.0.0:        	( 0.011298s | 14.32% |  0.00% )   	( 0.011256s | 14.29% |  0.00% )    	(1x)	|   |   |   |   trap - EXIT
|   |   |   |   647.0.0:        	( 0.012276s | 15.56% |  0.00% )   	( 0.012248s | 15.55% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   648.0.0:        	( 0.012226s | 15.50% |  0.00% )   	( 0.012204s | 15.50% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   649.0.0:        	( 0.012248s | 15.53% |  0.00% )   	( 0.012225s | 15.52% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   650.0.0:        	( 0.012169s | 15.43% |  0.00% )   	( 0.012144s | 15.42% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   652.0.0:        	( 0.000069s |  0.08% |  0.00% )   	( 0.000077s |  0.09% |  0.00% )    	(1x)	|   |   |   |   case ${writeFileProgType} in
|   |   |   |   653.0.0:        	( 0.018264s | 23.16% |  0.00% )   	( 0.018223s | 23.14% |  0.00% )    	(1x)	|   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   658.0.0:        	( 0.000088s |  0.11% |  0.00% )   	( 0.000101s |  0.12% |  0.00% )    	(1x)	|   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   659.0.0:        	( 0.000066s |  0.08% |  0.00% )   	( 0.000077s |  0.09% |  0.00% )    	(1x)	|   |   |   |   evfd_signal
|   |   |   |-- 660.0.0:        	( 0.000066s |  0.08% |  0.00% )   	( 0.000077s |  0.09% |  0.00% )    	(1x)	|   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   668.0.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   673.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   715.0.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   outStr='>&'"${fd_stdout}"
|   |   |   719.0.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   721.0.0:            	( 0.000393s |  0.00% |  0.00% )   	( 0.000420s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   731.0.0:            	( 5.584679s |  1.00% |  0.50% )   	( 1.716390s |  0.34% |  0.17% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 731.0.0:        	( 0.000165s |  0.00% |  0.00% )   	( 0.000188s |  0.01% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   733.0.0:        	( 0.013097s |  0.23% |  0.00% )   	( 0.013076s |  0.76% |  0.00% )    	(1x)	|   |   |   |   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   734.0.0:        	( 0.012241s |  0.21% |  0.00% )   	( 0.012223s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   735.0.0:        	( 0.012238s |  0.21% |  0.00% )   	( 0.012217s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   736.0.0:        	( 0.012234s |  0.21% |  0.00% )   	( 0.012214s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   737.0.0:        	( 0.012188s |  0.21% |  0.00% )   	( 0.012170s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   739.0.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   740.0.0:        	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   741.0.0:        	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fd_read_pos_old=0
|   |   |   |   743.0.0:        	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=0
|   |   |   |   745.0.0:        	( 0.087074s |  1.55% |  0.00% )   	( 0.100451s |  5.85% |  0.01% )    	(683x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   747.0.0:        	( 4.165439s | 74.58% |  0.37% )   	( 0.118535s |  6.90% |  0.01% )    	(682x)	|   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   747.0.1:        	( 0.002169s |  0.03% |  0.00% )   	( 0.002483s |  0.14% |  0.00% )    	(15x)	|   |   |   |   continue
|   |   |   |   749.0.0:        	( 0.083257s |  1.49% |  0.00% )   	( 0.096278s |  5.60% |  0.00% )    	(667x)	|   |   |   |   case ${REPLY} in
|   |   |   |   763.0.0:        	( 0.086151s |  1.54% |  0.00% )   	( 0.096213s |  5.60% |  0.00% )    	(666x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   764.0.0:        	( 0.000068s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   767.0.0:        	( 0.000070s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   773.0.0:        	( 0.083153s |  1.48% |  0.00% )   	( 0.096040s |  5.59% |  0.00% )    	(667x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   774.0.0:        	( 0.086831s |  1.55% |  0.00% )   	( 0.099613s |  5.80% |  0.00% )    	(667x)	|   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   775.0.0:        	( 0.086452s |  1.54% |  0.00% )   	( 0.099260s |  5.78% |  0.00% )    	(667x)	|   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   782.0.0:        	( 0.083348s |  1.49% |  0.00% )   	( 0.096398s |  5.61% |  0.00% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   782.0.1:        	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   784.0.0:        	( 0.082909s |  1.48% |  0.00% )   	( 0.095860s |  5.58% |  0.00% )    	(667x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   786.0.0:        	( 0.082841s |  1.48% |  0.00% )   	( 0.095768s |  5.57% |  0.00% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   788.0.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   790.0.0:        	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   791.0.0:        	( 0.005781s |  0.10% |  0.00% )   	( 0.006483s |  0.37% |  0.00% )    	(1x)	|   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   791.0.1:        	( 0.003045s |  0.05% |  0.00% )   	( 0.003621s |  0.21% |  0.00% )    	(1x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 791.0.0:    	( 0.003045s |100.00% |  0.00% )   	( 0.003621s |100.00% |  0.00% )    	(1x)	|   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   792.0.0:        	( 0.000071s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   793.0.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   796.0.0:        	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   798.0.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   800.0.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   800.0.1:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   800.0.2:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   802.0.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   805.0.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   807.0.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   811.0.0:        	( 0.082703s |  1.48% |  0.00% )   	( 0.095551s |  5.56% |  0.00% )    	(667x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   812.0.0:        	( 0.081915s |  1.46% |  0.00% )   	( 0.094737s |  5.51% |  0.00% )    	(667x)	|   |   |   |   case ${nWait} in
|   |   |   |   823.0.0:        	( 0.079967s |  1.43% |  0.00% )   	( 0.092391s |  5.38% |  0.00% )    	(646x)	|   |   |   |   ((nWait--))
|   |   |   |   828.0.0:        	( 0.086106s |  1.54% |  0.00% )   	( 0.099259s |  5.78% |  0.00% )    	(667x)	|   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   763.0.1:        	( 0.084529s |  1.51% |  0.00% )   	( 0.097445s |  5.67% |  0.00% )    	(665x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   782.0.1:        	( 0.083997s |  1.50% |  0.00% )   	( 0.096923s |  5.64% |  0.00% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   814.0.0:        	( 0.002627s |  0.04% |  0.00% )   	( 0.003025s |  0.17% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   815.0.0:        	( 0.002579s |  0.04% |  0.00% )   	( 0.002969s |  0.17% |  0.00% )    	(21x)	|   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   816.0.0:        	( 0.062228s |  1.11% |  0.00% )   	( 0.045863s |  2.67% |  0.00% )    	(21x)	|   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   817.0.0:        	( 0.002756s |  0.04% |  0.00% )   	( 0.003187s |  0.18% |  0.00% )    	(21x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   818.0.0:        	( 0.002891s |  0.05% |  0.00% )   	( 0.003323s |  0.19% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   820.0.0:        	( 0.002764s |  0.04% |  0.00% )   	( 0.003177s |  0.18% |  0.00% )    	(21x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   757.0.0:        	( 0.000120s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   829.0.0:        	( 0.000104s |  0.00% |  0.00% )   	( 0.000121s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   830.0.0:        	( 0.000140s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fallocateFlag=false
|   |   |   |   831.0.0:        	( 0.000162s |  0.00% |  0.00% )   	( 0.000188s |  0.01% |  0.00% )    	(1x)	|   |   |   |   nSpawnFlag=false
|   |   |   |   745.0.1:        	( 0.000158s |  0.00% |  0.00% )   	( 0.000182s |  0.01% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   745.0.2:        	( 0.000165s |  0.00% |  0.00% )   	( 0.000190s |  0.01% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- -248.0.0:       	( 0.006898s |  0.12% |  0.00% )   	( 0.006994s |  0.40% |  0.00% )    	(1x)	|   |   |   |-- -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.fPBNR8"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/pAuto'
|   |   |   839.0.0:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   840.0.0:            	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   876.0.0:            	( 0.000094s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1345.0.0:           	( 0.061659s |  0.01% |  0.00% )   	( 0.061865s |  0.01% |  0.00% )    	(1x)	|   |   |   coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1362.0.0:           	( 0.006070s |  0.00% |  0.00% )   	( 0.006995s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1362.0.0:       	( 0.000218s |  3.59% |  0.00% )   	( 0.000241s |  3.44% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1363.0.0:       	( 0.000130s |  2.14% |  0.00% )   	( 0.000150s |  2.14% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1363.0.1:       	( 0.000150s |  2.47% |  0.00% )   	( 0.000170s |  2.43% |  0.00% )    	(1x)	|   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1371.0.0:       	( 0.000405s |  6.67% |  0.00% )   	( 0.000422s |  6.03% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1372.0.0:       	( 0.000123s |  2.02% |  0.00% )   	( 0.000144s |  2.05% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1444.0.0:       	( 0.000120s |  1.97% |  0.00% )   	( 0.000140s |  2.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1447.0.0:       	( 0.000126s |  2.07% |  0.00% )   	( 0.000147s |  2.10% |  0.00% )    	(1x)	|   |   |   |   echo "{"
|   |   |   |   1448.0.0:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1449.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1449.0.1:       	( 0.000066s |  1.08% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1450.0.0:       	( 0.000064s |  1.05% |  0.00% )   	( 0.000075s |  1.07% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "mapfile"
|   |   |   |   1451.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1451.0.1:       	( 0.000065s |  1.07% |  0.00% )   	( 0.000076s |  1.08% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1452.0.0:       	( 0.000066s |  1.08% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1453.0.0:       	( 0.000064s |  1.05% |  0.00% )   	( 0.000075s |  1.07% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1453.0.1:       	( 0.000065s |  1.07% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' ${fd_read}
|   |   |   |   1454.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1454.0.1:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000074s |  1.05% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1456.0.0:       	( 0.000067s |  1.10% |  0.00% )   	( 0.000079s |  1.12% |  0.00% )    	(1x)	|   |   |   |   echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1457.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1457.0.1:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000073s |  1.04% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1457.0.2:       	( 0.000065s |  1.07% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1458.0.0:       	( 0.000066s |  1.08% |  0.00% )   	( 0.000074s |  1.05% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1461.0.0:       	( 0.000068s |  1.12% |  0.00% )   	( 0.000081s |  1.15% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1462.0.0:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000073s |  1.04% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1465.0.0:       	( 0.000066s |  1.08% |  0.00% )   	( 0.000078s |  1.11% |  0.00% )    	(1x)	|   |   |   |   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1503.0.0:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000073s |  1.04% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1508.0.0:       	( 0.000069s |  1.13% |  0.00% )   	( 0.000081s |  1.15% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1509.0.0:       	( 0.000065s |  1.07% |  0.00% )   	( 0.000076s |  1.08% |  0.00% )    	(1x)	|   |   |   |   printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1510.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1510.0.1:       	( 0.000065s |  1.07% |  0.00% )   	( 0.000076s |  1.08% |  0.00% )    	(1x)	|   |   |   |   printf '\n'
|   |   |   |   1511.0.0:       	( 0.000063s |  1.03% |  0.00% )   	( 0.000075s |  1.07% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1512.0.0:       	( 0.000097s |  1.59% |  0.00% )   	( 0.000109s |  1.55% |  0.00% )    	(1x)	|   |   |   |   echo "}"
|   |   |   |   1514.0.0:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1514.0.1:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000073s |  1.04% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1514.0.2:       	( 0.000062s |  1.02% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1514.0.3:       	( 0.000072s |  1.18% |  0.00% )   	( 0.000084s |  1.20% |  0.00% )    	(1x)	|   |   |   |   echo "}"
|   |   |   |   1515.0.0:       	( 0.000068s |  1.12% |  0.00% )   	( 0.000080s |  1.14% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1528.0.0:       	( 0.000084s |  1.38% |  0.00% )   	( 0.000093s |  1.32% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1529.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000073s |  1.04% |  0.00% )    	(1x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   1532.0.0:       	( 0.000088s |  1.44% |  0.00% )   	( 0.000099s |  1.41% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1543.0.0:       	( 0.000073s |  1.20% |  0.00% )   	( 0.000084s |  1.20% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1544.0.0:       	( 0.000060s |  0.98% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1544.0.1:       	( 0.000083s |  1.36% |  0.00% )   	( 0.000094s |  1.34% |  0.00% )    	(1x)	|   |   |   |   echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1545.0.0:       	( 0.000065s |  1.07% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1546.0.0:       	( 0.000066s |  1.08% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   1551.0.0:       	( 0.000071s |  1.16% |  0.00% )   	( 0.000083s |  1.18% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1552.0.0:       	( 0.000063s |  1.03% |  0.00% )   	( 0.000074s |  1.05% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1556.0.0:       	( 0.000074s |  1.21% |  0.00% )   	( 0.000086s |  1.22% |  0.00% )    	(1x)	|   |   |   |   echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1557.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1557.0.1:       	( 0.000071s |  1.16% |  0.00% )   	( 0.000082s |  1.17% |  0.00% )    	(1x)	|   |   |   |   printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1562.0.0:       	( 0.000064s |  1.05% |  0.00% )   	( 0.000073s |  1.04% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1562.0.1:       	( 0.000067s |  1.10% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   printf '%s' ' || '
|   |   |   |   1563.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000071s |  1.01% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1563.0.1:       	( 0.000095s |  1.56% |  0.00% )   	( 0.000103s |  1.47% |  0.00% )    	(1x)	|   |   |   |   echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1564.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1564.0.1:       	( 0.000060s |  0.98% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1564.0.2:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000073s |  1.04% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1564.0.3:       	( 0.000064s |  1.05% |  0.00% )   	( 0.000076s |  1.08% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1572.0.0:       	( 0.000060s |  0.98% |  0.00% )   	( 0.000070s |  1.00% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1572.0.1:       	( 0.000084s |  1.38% |  0.00% )   	( 0.000096s |  1.37% |  0.00% )    	(1x)	|   |   |   |   echo '{'
|   |   |   |   1573.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000071s |  1.01% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1573.0.1:       	( 0.000066s |  1.08% |  0.00% )   	( 0.000077s |  1.10% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1574.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1575.0.0:       	( 0.000085s |  1.40% |  0.00% )   	( 0.000096s |  1.37% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "${runCmd[@]}"
|   |   |   |   1576.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1583.0.0:       	( 0.000058s |  0.95% |  0.00% )   	( 0.000069s |  0.98% |  0.00% )    	(1x)	|   |   |   |   ${stdinRunFlag}
|   |   |   |   1586.0.0:       	( 0.000060s |  0.98% |  0.00% )   	( 0.000071s |  1.01% |  0.00% )    	(1x)	|   |   |   |   ${noFuncFlag}
|   |   |   |   1589.0.0:       	( 0.000061s |  1.00% |  0.00% )   	( 0.000072s |  1.02% |  0.00% )    	(1x)	|   |   |   |   ${substituteStringFlag}
|   |   |   |   1590.0.0:       	( 0.000094s |  1.54% |  0.00% )   	( 0.000106s |  1.51% |  0.00% )    	(1x)	|   |   |   |   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1595.0.0:       	( 0.000068s |  1.12% |  0.00% )   	( 0.000080s |  1.14% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1607.0.0:       	( 0.000064s |  1.05% |  0.00% )   	( 0.000075s |  1.07% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1608.0.0:       	( 0.000059s |  0.97% |  0.00% )   	( 0.000070s |  1.00% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1608.0.1:       	( 0.000086s |  1.41% |  0.00% )   	( 0.000094s |  1.34% |  0.00% )    	(1x)	|   |   |   |   printf '\n%s ' '}'
|   |   |   |   1609.0.0:       	( 0.000067s |  1.10% |  0.00% )   	( 0.000078s |  1.11% |  0.00% )    	(1x)	|   |   |   |   echo "${outStr}"
|   |   |   |   1610.0.0:       	( 0.000063s |  1.03% |  0.00% )   	( 0.000074s |  1.05% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1611.0.0:       	( 0.000067s |  1.10% |  0.00% )   	( 0.000076s |  1.08% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1616.0.0:       	( 0.000098s |  1.61% |  0.00% )   	( 0.000110s |  1.57% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1350.0.0:           	( 0.000199s |  0.00% |  0.00% )   	( 0.000227s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1355.0.0:           	( 0.000188s |  0.00% |  0.00% )   	( 0.000216s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1360.0.0:           	( 0.000169s |  0.00% |  0.00% )   	( 0.000196s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1362.0.0:           	( 0.014557s |  0.00% |  0.00% )   	( 0.101539s |  0.02% |  0.01% )    	(1x)	|   |   |   trap "${exitTrapStr}" EXIT
|   |   |   1367.0.0:           	( 0.012274s |  0.00% |  0.00% )   	( 0.012254s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1372.0.0:           	( 0.012095s |  0.00% |  0.00% )   	( 0.012061s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1377.0.0:           	( 0.011836s |  0.00% |  0.00% )   	( 0.011818s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1379.0.0:           	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1380.0.0:           	( 0.000064s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1382.0.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1393.0.0:           	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '\n' >&${fd_continue}
|   |   |   1396.0.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1397.0.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   ((kkProcs=0 ))
|   |   |   1397.0.1:           	( 0.002810s |  0.00% |  0.00% )   	( 0.003243s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs<28 ))
|   |   |   1398.0.0:           	( 0.002627s |  0.00% |  0.00% )   	( 0.003044s |  0.00% |  0.00% )    	(28x)	|   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1399.0.0:           	( 18.202239s |  3.28% |  1.65% )   	( 17.475971s |  3.48% |  1.74% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p0 p0_PID >>
|   |   |   |-- 1.0.0:          	( 0.000560s |  0.00% |  0.00% )   	( 0.000577s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p0 p0_PID (&)
|   |   |   |   73.0.0:         	( 524.240601s | 99.99% | 47.52% )   	( 499.365763s | 99.99% | 49.79% )    	(28x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 73.0.0:     	( 0.004882s |  0.00% |  0.00% )   	( 0.005487s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.fPBNR8"
|   |   |   |   |   8.0.0:      	( 0.000160s |  0.00% |  0.00% )   	( 0.000183s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p0
|   |   |   |   |   12.0.0:     	( 0.012136s |  0.06% |  0.00% )   	( 0.012119s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p0; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0.0:     	( 0.496952s |  0.09% |  0.04% )   	( 0.495531s |  0.09% |  0.04% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT 503357 ${BASHPID}' INT
|   |   |   |   |   15.0.0:     	( 0.514783s |  0.09% |  0.04% )   	( 0.513425s |  0.09% |  0.05% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM 503357 ${BASHPID}' TERM
|   |   |   |   |   16.0.0:     	( 0.537478s |  0.09% |  0.04% )   	( 0.536065s |  0.10% |  0.05% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP 503357 ${BASHPID}' HUP
|   |   |   |   |   17.0.0:     	( 0.531867s |  0.09% |  0.04% )   	( 0.530445s |  0.10% |  0.05% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0.0:     	( 0.106127s |  0.01% |  0.00% )   	( 0.120205s |  0.01% |  0.01% )    	(694x)	|   |   |   |   |   true
|   |   |   |   |   20.0.0:     	( 0.093341s |  0.01% |  0.00% )   	( 0.107097s |  0.01% |  0.01% )    	(694x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.0.1:     	( 0.003719s |  0.00% |  0.00% )   	( 0.004217s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   read -r < "/dev/shm/.forkrun.fPBNR8"/.nLines
|   |   |   |   |   20.0.2:     	( 0.003040s |  0.00% |  0.00% )   	( 0.003525s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.0.3:     	( 0.003116s |  0.00% |  0.00% )   	( 0.003609s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.0.0:     	( 0.003358s |  0.01% |  0.00% )   	( 0.003761s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p0
|   |   |   |   |   23.0.0:     	( 7.157117s |  1.36% |  0.64% )   	( 0.154715s |  0.02% |  0.01% )    	(694x)	|   |   |   |   |   read -r -u 20 _
|   |   |   |   |   24.0.0:     	( 0.101754s |  0.01% |  0.00% )   	( 0.114150s |  0.01% |  0.01% )    	(694x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.fPBNR8"/.quit ]]
|   |   |   |   |   28.0.0:     	( 0.098217s |  0.01% |  0.00% )   	( 0.107873s |  0.01% |  0.01% )    	(669x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.fPBNR8"/.done ]]
|   |   |   |   |   28.0.1:     	( 0.093099s |  0.01% |  0.00% )   	( 0.102661s |  0.01% |  0.01% )    	(669x)	|   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.0.0:     	( 0.098032s |  0.01% |  0.00% )   	( 0.107957s |  0.01% |  0.01% )    	(669x)	|   |   |   |   |   evfd_wait 24
|   |   |   |   |   31.0.0:     	( 0.825506s |  0.15% |  0.07% )   	( 0.795478s |  0.15% |  0.07% )    	(669x)	|   |   |   |   |   mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0.0:     	( 0.089764s |  0.01% |  0.00% )   	( 0.103198s |  0.01% |  0.01% )    	(669x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.0.1:     	( 0.092168s |  0.01% |  0.00% )   	( 0.102398s |  0.01% |  0.01% )    	(666x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.0.0:     	( 0.177986s |  0.02% |  0.01% )   	( 0.110449s |  0.01% |  0.01% )    	(669x)	|   |   |   |   |   printf '\n' 1>&20
|   |   |   |   |   47.0.0:     	( 0.003177s |  0.01% |  0.00% )   	( 0.003592s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p0
|   |   |   |   |   48.0.0:     	( 0.090499s |  0.01% |  0.00% )   	( 0.101950s |  0.01% |  0.01% )    	(669x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0.0:     	( 0.089498s |  0.01% |  0.00% )   	( 0.100996s |  0.01% |  0.01% )    	(666x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   69.0.0:     	( 0.003721s |  0.00% |  0.00% )   	( 0.004290s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0.0:     	( 0.003231s |  0.00% |  0.00% )   	( 0.003763s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0.0:     	( 511.773408s | 97.59% | 46.39% )   	( 493.876218s | 98.88% | 49.25% )    	(666x)	|   |   |   |   |   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0.0:  	( 0.083505s |  0.02% |  0.00% )   	( 0.096921s |  0.02% |  0.00% )    	(666x)	|   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.0.0:  	( 35.378312s |  6.95% |  3.20% )   	( 33.717672s |  6.88% |  3.36% )    	(666x)	|   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.0.0:  	( 60.895997s | 10.51% |  5.52% )   	( 58.603763s | 10.46% |  5.84% )    	(666x)	|   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.0.0: 	( 49.099462s |  9.56% |  4.45% )   	( 47.544960s |  9.61% |  4.74% )    	(666x)	|   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.0.0: 	( 60.101510s | 10.31% |  5.44% )   	( 58.259232s | 10.35% |  5.80% )    	(666x)	|   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.0.0: 	( 47.615261s |  9.12% |  4.31% )   	( 46.236221s |  9.16% |  4.61% )    	(666x)	|   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.0.0: 	( 31.520720s |  6.41% |  2.85% )   	( 30.275118s |  6.40% |  3.01% )    	(666x)	|   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.0.0: 	( 15.463204s |  4.16% |  1.40% )   	( 14.678760s |  4.13% |  1.46% )    	(666x)	|   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.0.0: 	( 32.967370s |  6.33% |  2.98% )   	( 31.776032s |  6.31% |  3.16% )    	(666x)	|   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.0.0: 	( 13.459346s |  3.88% |  1.22% )   	( 12.851844s |  3.88% |  1.28% )    	(666x)	|   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.0.0: 	( 41.626177s |  8.70% |  3.77% )   	( 39.907138s |  8.65% |  3.97% )    	(666x)	|   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.0.0: 	( 93.318940s | 15.15% |  8.45% )   	( 91.242454s | 15.28% |  9.09% )    	(666x)	|   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0.0: 	( 15.419031s |  4.39% |  1.39% )   	( 14.656076s |  4.38% |  1.46% )    	(666x)	|   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.0.0: 	( 14.824573s |  4.39% |  1.34% )   	( 14.030027s |  4.35% |  1.39% )    	(666x)	|   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   70.0.1:     	( 0.003011s |  0.00% |  0.00% )   	( 0.003489s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   20.0.1:     	( 0.092903s |  0.01% |  0.00% )   	( 0.105013s |  0.01% |  0.01% )    	(662x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   68.0.1:     	( 0.084326s |  0.01% |  0.00% )   	( 0.097111s |  0.01% |  0.00% )    	(634x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   71.0.0:     	( 0.117875s |  0.01% |  0.01% )   	( 0.108794s |  0.01% |  0.01% )    	(634x)	|   |   |   |   |   printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0.0:     	( 0.002493s |  0.00% |  0.00% )   	( 0.002851s |  0.00% |  0.00% )    	(25x)	|   |   |   |   |   printf '\n' 1>&20
|   |   |   |   |   26.0.0:     	( 0.002482s |  0.00% |  0.00% )   	( 0.002852s |  0.00% |  0.00% )    	(25x)	|   |   |   |   |   break
|   |   |   |   |-- 2.0.0:      	( 0.185585s |  0.03% |  0.01% )   	( 0.181958s |  0.03% |  0.01% )    	(28x)	|   |   |   |   |-- break
|   |   |   |-- 146.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p0_PID})
|   |   |   1397.0.0:           	( 0.002635s |  0.00% |  0.00% )   	( 0.003057s |  0.00% |  0.00% )    	(28x)	|   |   |   ((kkProcs++ ))
|   |   |   1399.0.0:           	( 17.915086s |  3.23% |  1.62% )   	( 16.920757s |  3.37% |  1.68% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p1 p1_PID >>
|   |   |   |-- 1.0.0:          	( 0.000562s |  0.00% |  0.00% )   	( 0.000582s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000162s |  0.00% |  0.00% )   	( 0.000184s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p1
|   |   |   |   |   12.0.0:     	( 0.012817s |  0.07% |  0.00% )   	( 0.012800s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p1; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004805s |  0.02% |  0.00% )   	( 0.005363s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p1
|   |   |   |   |   47.0.0:     	( 0.006175s |  0.03% |  0.00% )   	( 0.005216s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p1
|   |   |   |-- 146.0.0:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p1_PID})
|   |   |   1399.0.0:           	( 21.496237s |  3.87% |  1.94% )   	( 20.780748s |  4.14% |  2.07% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p2 p2_PID >>
|   |   |   |-- 1.0.0:          	( 0.000566s |  0.00% |  0.00% )   	( 0.000584s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000348s |  0.00% |  0.00% )   	( 0.000385s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p2
|   |   |   |   |   12.0.0:     	( 0.012298s |  0.05% |  0.00% )   	( 0.012283s |  0.05% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p2; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004259s |  0.01% |  0.00% )   	( 0.004739s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p2
|   |   |   |   |   47.0.0:     	( 0.003919s |  0.01% |  0.00% )   	( 0.004406s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p2
|   |   |   |-- 146.0.0:        	( 0.000091s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p2_PID})
|   |   |   1399.0.0:           	( 18.577025s |  3.35% |  1.68% )   	( 18.172988s |  3.62% |  1.81% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p3 p3_PID >>
|   |   |   |-- 1.0.0:          	( 0.000588s |  0.00% |  0.00% )   	( 0.000607s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000347s |  0.00% |  0.00% )   	( 0.000384s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p3
|   |   |   |   |   12.0.0:     	( 0.012766s |  0.06% |  0.00% )   	( 0.012757s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p3; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.002000s |  0.01% |  0.00% )   	( 0.002250s |  0.01% |  0.00% )    	(12x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p3
|   |   |   |   |   47.0.0:     	( 0.001840s |  0.00% |  0.00% )   	( 0.002083s |  0.01% |  0.00% )    	(12x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p3
|   |   |   |   |   49.0.0:     	( 0.000468s |  0.00% |  0.00% )   	( 0.000541s |  0.00% |  0.00% )    	(3x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   58.0.0:     	( 0.000478s |  0.00% |  0.00% )   	( 0.000542s |  0.00% |  0.00% )    	(3x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   59.0.0:     	( 0.000510s |  0.00% |  0.00% )   	( 0.000579s |  0.00% |  0.00% )    	(3x)	|   |   |   |   |   printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0.0:     	( 0.000502s |  0.00% |  0.00% )   	( 0.000564s |  0.00% |  0.00% )    	(3x)	|   |   |   |   |   : > "/dev/shm/.forkrun.fPBNR8"/.quit
|   |   |   |   |   62.0.0:     	( 0.000668s |  0.00% |  0.00% )   	( 0.000734s |  0.00% |  0.00% )    	(3x)	|   |   |   |   |   printf '%.0s\n' "/dev/shm/.forkrun.fPBNR8"/.run/p* 1>&20
|   |   |   |   |   63.0.0:     	( 0.000466s |  0.00% |  0.00% )   	( 0.000534s |  0.00% |  0.00% )    	(3x)	|   |   |   |   |   break
|   |   |   |-- 146.0.0:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p3_PID})
|   |   |   1399.0.0:           	( 20.876018s |  3.76% |  1.89% )   	( 20.463044s |  4.08% |  2.04% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p4 p4_PID >>
|   |   |   |-- 1.0.0:          	( 0.000573s |  0.00% |  0.00% )   	( 0.000593s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000149s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p4
|   |   |   |   |   12.0.0:     	( 0.015028s |  0.07% |  0.00% )   	( 0.015003s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p4; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.002630s |  0.01% |  0.00% )   	( 0.002962s |  0.01% |  0.00% )    	(16x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p4
|   |   |   |   |   47.0.0:     	( 0.002422s |  0.01% |  0.00% )   	( 0.002727s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p4
|   |   |   |-- 146.0.0:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p4_PID})
|   |   |   1399.0.0:           	( 20.553624s |  3.70% |  1.86% )   	( 19.933894s |  3.97% |  1.98% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p5 p5_PID >>
|   |   |   |-- 1.0.0:          	( 0.000607s |  0.00% |  0.00% )   	( 0.000624s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p5
|   |   |   |   |   12.0.0:     	( 0.012498s |  0.06% |  0.00% )   	( 0.012481s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p5; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004439s |  0.02% |  0.00% )   	( 0.004960s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p5
|   |   |   |   |   47.0.0:     	( 0.004249s |  0.02% |  0.00% )   	( 0.004791s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p5
|   |   |   |-- 146.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p5_PID})
|   |   |   1399.0.0:           	( 22.777311s |  4.11% |  2.06% )   	( 21.773130s |  4.34% |  2.17% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p6 p6_PID >>
|   |   |   |-- 1.0.0:          	( 0.000602s |  0.00% |  0.00% )   	( 0.000617s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p6
|   |   |   |   |   12.0.0:     	( 0.012501s |  0.05% |  0.00% )   	( 0.012485s |  0.05% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p6; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004642s |  0.02% |  0.00% )   	( 0.005125s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p6
|   |   |   |   |   47.0.0:     	( 0.004314s |  0.01% |  0.00% )   	( 0.004835s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p6
|   |   |   |-- 146.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p6_PID})
|   |   |   1399.0.0:           	( 18.495663s |  3.33% |  1.67% )   	( 17.516279s |  3.49% |  1.74% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p7 p7_PID >>
|   |   |   |-- 1.0.0:          	( 0.000599s |  0.00% |  0.00% )   	( 0.000617s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000337s |  0.00% |  0.00% )   	( 0.000373s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p7
|   |   |   |   |   12.0.0:     	( 0.012527s |  0.06% |  0.00% )   	( 0.012504s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p7; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004782s |  0.02% |  0.00% )   	( 0.005376s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p7
|   |   |   |   |   47.0.0:     	( 0.004523s |  0.02% |  0.00% )   	( 0.005088s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p7
|   |   |   |-- 146.0.0:        	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p7_PID})
|   |   |   1399.0.0:           	( 18.001414s |  3.24% |  1.63% )   	( 17.297062s |  3.44% |  1.72% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p8 p8_PID >>
|   |   |   |-- 1.0.0:          	( 0.000615s |  0.00% |  0.00% )   	( 0.000625s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000348s |  0.00% |  0.00% )   	( 0.000385s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p8
|   |   |   |   |   12.0.0:     	( 0.012599s |  0.06% |  0.00% )   	( 0.012592s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p8; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.003733s |  0.02% |  0.00% )   	( 0.004159s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p8
|   |   |   |   |   47.0.0:     	( 0.003333s |  0.01% |  0.00% )   	( 0.003781s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p8
|   |   |   |-- 146.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p8_PID})
|   |   |   1399.0.0:           	( 17.800341s |  3.21% |  1.61% )   	( 16.872756s |  3.36% |  1.68% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p9 p9_PID >>
|   |   |   |-- 1.0.0:          	( 0.000631s |  0.00% |  0.00% )   	( 0.000642s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000286s |  0.00% |  0.00% )   	( 0.000327s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p9
|   |   |   |   |   12.0.0:     	( 0.014913s |  0.08% |  0.00% )   	( 0.014884s |  0.08% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p9; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004812s |  0.02% |  0.00% )   	( 0.005415s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p9
|   |   |   |   |   47.0.0:     	( 0.004581s |  0.02% |  0.00% )   	( 0.005138s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p9
|   |   |   |-- 146.0.0:        	( 0.000095s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p9_PID})
|   |   |   1399.0.0:           	( 17.671547s |  3.18% |  1.60% )   	( 16.462281s |  3.28% |  1.64% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p10 p10_PID >>
|   |   |   |-- 1.0.0:          	( 0.000604s |  0.00% |  0.00% )   	( 0.000625s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000096s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p10
|   |   |   |   |   12.0.0:     	( 0.012726s |  0.07% |  0.00% )   	( 0.012707s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p10; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.005037s |  0.02% |  0.00% )   	( 0.005631s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p10
|   |   |   |   |   47.0.0:     	( 0.004965s |  0.02% |  0.00% )   	( 0.005572s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p10
|   |   |   |-- 146.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p10_PID})
|   |   |   1399.0.0:           	( 18.068794s |  3.26% |  1.63% )   	( 17.421815s |  3.47% |  1.73% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p11 p11_PID >>
|   |   |   |-- 1.0.0:          	( 0.000663s |  0.00% |  0.00% )   	( 0.000680s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p11
|   |   |   |   |   12.0.0:     	( 0.019915s |  0.11% |  0.00% )   	( 0.019848s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p11; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.003230s |  0.01% |  0.00% )   	( 0.003630s |  0.02% |  0.00% )    	(19x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p11
|   |   |   |   |   47.0.0:     	( 0.003006s |  0.01% |  0.00% )   	( 0.003379s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p11
|   |   |   |-- 146.0.0:        	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p11_PID})
|   |   |   1399.0.0:           	( 20.080287s |  3.62% |  1.82% )   	( 19.106605s |  3.81% |  1.90% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p12 p12_PID >>
|   |   |   |-- 1.0.0:          	( 0.000666s |  0.00% |  0.00% )   	( 0.000683s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000198s |  0.00% |  0.00% )   	( 0.000219s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p12
|   |   |   |   |   12.0.0:     	( 0.014054s |  0.06% |  0.00% )   	( 0.013942s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p12; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.003540s |  0.01% |  0.00% )   	( 0.004000s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p12
|   |   |   |   |   47.0.0:     	( 0.003314s |  0.01% |  0.00% )   	( 0.003721s |  0.01% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p12
|   |   |   |-- 146.0.0:        	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p12_PID})
|   |   |   1399.0.0:           	( 18.391487s |  3.31% |  1.66% )   	( 17.405617s |  3.47% |  1.73% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p13 p13_PID >>
|   |   |   |-- 1.0.0:          	( 0.000809s |  0.00% |  0.00% )   	( 0.000832s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000152s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p13
|   |   |   |   |   12.0.0:     	( 0.024064s |  0.13% |  0.00% )   	( 0.023992s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p13; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004706s |  0.02% |  0.00% )   	( 0.005282s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p13
|   |   |   |   |   47.0.0:     	( 0.004326s |  0.02% |  0.00% )   	( 0.004866s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p13
|   |   |   |-- 146.0.0:        	( 0.000162s |  0.00% |  0.00% )   	( 0.000181s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p13_PID})
|   |   |   1399.0.0:           	( 17.738602s |  3.20% |  1.60% )   	( 16.664756s |  3.32% |  1.66% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p14 p14_PID >>
|   |   |   |-- 1.0.0:          	( 0.000943s |  0.00% |  0.00% )   	( 0.000966s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p14
|   |   |   |   |   12.0.0:     	( 0.017047s |  0.09% |  0.00% )   	( 0.016886s |  0.10% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p14; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004878s |  0.02% |  0.00% )   	( 0.005473s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p14
|   |   |   |   |   47.0.0:     	( 0.007777s |  0.04% |  0.00% )   	( 0.005370s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p14
|   |   |   |-- 146.0.0:        	( 0.000153s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p14_PID})
|   |   |   1399.0.0:           	( 18.019402s |  3.25% |  1.63% )   	( 17.164257s |  3.42% |  1.71% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p15 p15_PID >>
|   |   |   |-- 1.0.0:          	( 0.000976s |  0.00% |  0.00% )   	( 0.000998s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000163s |  0.00% |  0.00% )   	( 0.000179s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p15
|   |   |   |   |   12.0.0:     	( 0.025117s |  0.13% |  0.00% )   	( 0.025019s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p15; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004392s |  0.02% |  0.00% )   	( 0.004934s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p15
|   |   |   |   |   47.0.0:     	( 0.004326s |  0.02% |  0.00% )   	( 0.004884s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p15
|   |   |   |-- 146.0.0:        	( 0.000148s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p15_PID})
|   |   |   1399.0.0:           	( 18.684336s |  3.37% |  1.69% )   	( 17.909362s |  3.57% |  1.78% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p16 p16_PID >>
|   |   |   |-- 1.0.0:          	( 0.001072s |  0.00% |  0.00% )   	( 0.001098s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000150s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p16
|   |   |   |   |   12.0.0:     	( 0.016808s |  0.08% |  0.00% )   	( 0.016719s |  0.09% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p16; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.003756s |  0.02% |  0.00% )   	( 0.004184s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p16
|   |   |   |   |   47.0.0:     	( 0.003521s |  0.01% |  0.00% )   	( 0.003960s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p16
|   |   |   |-- 146.0.0:        	( 0.000170s |  0.00% |  0.00% )   	( 0.000189s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p16_PID})
|   |   |   1399.0.0:           	( 17.417327s |  3.14% |  1.57% )   	( 15.826724s |  3.15% |  1.57% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p17 p17_PID >>
|   |   |   |-- 1.0.0:          	( 0.000962s |  0.00% |  0.00% )   	( 0.000983s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000091s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p17
|   |   |   |   |   12.0.0:     	( 0.012525s |  0.07% |  0.00% )   	( 0.012507s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p17; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004916s |  0.02% |  0.00% )   	( 0.005504s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p17
|   |   |   |   |   47.0.0:     	( 0.004657s |  0.02% |  0.00% )   	( 0.005249s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p17
|   |   |   |-- 146.0.0:        	( 0.000151s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p17_PID})
|   |   |   1399.0.0:           	( 17.517969s |  3.16% |  1.58% )   	( 16.522244s |  3.29% |  1.64% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p18 p18_PID >>
|   |   |   |-- 1.0.0:          	( 0.000969s |  0.00% |  0.00% )   	( 0.000991s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000092s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p18
|   |   |   |   |   12.0.0:     	( 0.015256s |  0.08% |  0.00% )   	( 0.015211s |  0.09% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p18; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004779s |  0.02% |  0.00% )   	( 0.005312s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p18
|   |   |   |   |   47.0.0:     	( 0.004604s |  0.02% |  0.00% )   	( 0.005121s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p18
|   |   |   |-- 146.0.0:        	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p18_PID})
|   |   |   1399.0.0:           	( 18.052534s |  3.25% |  1.63% )   	( 17.395483s |  3.46% |  1.73% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p19 p19_PID >>
|   |   |   |-- 1.0.0:          	( 0.001046s |  0.00% |  0.00% )   	( 0.001062s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p19
|   |   |   |   |   12.0.0:     	( 0.012591s |  0.06% |  0.00% )   	( 0.012556s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p19; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.003357s |  0.01% |  0.00% )   	( 0.003751s |  0.02% |  0.00% )    	(19x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p19
|   |   |   |   |   47.0.0:     	( 0.003047s |  0.01% |  0.00% )   	( 0.003419s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p19
|   |   |   |-- 146.0.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p19_PID})
|   |   |   1399.0.0:           	( 17.295457s |  3.12% |  1.56% )   	( 16.253512s |  3.24% |  1.62% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p20 p20_PID >>
|   |   |   |-- 1.0.0:          	( 0.000988s |  0.00% |  0.00% )   	( 0.001010s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000087s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p20
|   |   |   |   |   12.0.0:     	( 0.016591s |  0.09% |  0.00% )   	( 0.016534s |  0.10% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p20; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.005025s |  0.02% |  0.00% )   	( 0.005599s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p20
|   |   |   |   |   47.0.0:     	( 0.004849s |  0.02% |  0.00% )   	( 0.005444s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p20
|   |   |   |-- 146.0.0:        	( 0.000153s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p20_PID})
|   |   |   1399.0.0:           	( 17.787475s |  3.20% |  1.61% )   	( 16.843176s |  3.35% |  1.67% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p21 p21_PID >>
|   |   |   |-- 1.0.0:          	( 0.001054s |  0.00% |  0.00% )   	( 0.001077s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000146s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p21
|   |   |   |   |   12.0.0:     	( 0.023795s |  0.13% |  0.00% )   	( 0.023725s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p21; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004483s |  0.02% |  0.00% )   	( 0.005041s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p21
|   |   |   |   |   47.0.0:     	( 0.004367s |  0.02% |  0.00% )   	( 0.004916s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p21
|   |   |   |-- 146.0.0:        	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p21_PID})
|   |   |   1399.0.0:           	( 20.379092s |  3.67% |  1.84% )   	( 19.432221s |  3.87% |  1.93% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p22 p22_PID >>
|   |   |   |-- 1.0.0:          	( 0.001038s |  0.00% |  0.00% )   	( 0.001055s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000157s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p22
|   |   |   |   |   12.0.0:     	( 0.030160s |  0.14% |  0.00% )   	( 0.026813s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p22; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.005264s |  0.02% |  0.00% )   	( 0.005927s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p22
|   |   |   |   |   47.0.0:     	( 0.005008s |  0.02% |  0.00% )   	( 0.005638s |  0.02% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p22
|   |   |   |-- 146.0.0:        	( 0.000148s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p22_PID})
|   |   |   1399.0.0:           	( 17.726423s |  3.19% |  1.60% )   	( 16.877045s |  3.36% |  1.68% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p23 p23_PID >>
|   |   |   |-- 1.0.0:          	( 0.001030s |  0.00% |  0.00% )   	( 0.001053s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000150s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p23
|   |   |   |   |   12.0.0:     	( 0.023922s |  0.13% |  0.00% )   	( 0.023841s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p23; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004529s |  0.02% |  0.00% )   	( 0.005114s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p23
|   |   |   |   |   47.0.0:     	( 0.004250s |  0.02% |  0.00% )   	( 0.004749s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p23
|   |   |   |-- 146.0.0:        	( 0.000145s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p23_PID})
|   |   |   1399.0.0:           	( 18.016242s |  3.25% |  1.63% )   	( 17.272578s |  3.44% |  1.72% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p24 p24_PID >>
|   |   |   |-- 1.0.0:          	( 0.001028s |  0.00% |  0.00% )   	( 0.001052s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000151s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p24
|   |   |   |   |   12.0.0:     	( 0.023803s |  0.13% |  0.00% )   	( 0.023716s |  0.13% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p24; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004190s |  0.02% |  0.00% )   	( 0.004676s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p24
|   |   |   |   |   47.0.0:     	( 0.003771s |  0.02% |  0.00% )   	( 0.004253s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p24
|   |   |   |-- 146.0.0:        	( 0.000161s |  0.00% |  0.00% )   	( 0.000183s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p24_PID})
|   |   |   1399.0.0:           	( 17.604445s |  3.17% |  1.59% )   	( 16.626649s |  3.31% |  1.65% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p25 p25_PID >>
|   |   |   |-- 1.0.0:          	( 0.001229s |  0.00% |  0.00% )   	( 0.001260s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000152s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p25
|   |   |   |   |   12.0.0:     	( 0.023809s |  0.13% |  0.00% )   	( 0.023741s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p25; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004832s |  0.02% |  0.00% )   	( 0.005427s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p25
|   |   |   |   |   47.0.0:     	( 0.004410s |  0.02% |  0.00% )   	( 0.004968s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p25
|   |   |   |-- 146.0.0:        	( 0.000175s |  0.00% |  0.00% )   	( 0.000197s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p25_PID})
|   |   |   1399.0.0:           	( 21.677482s |  3.91% |  1.96% )   	( 20.683226s |  4.12% |  2.06% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p26 p26_PID >>
|   |   |   |-- 1.0.0:          	( 0.001180s |  0.00% |  0.00% )   	( 0.001200s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000157s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p26
|   |   |   |   |   12.0.0:     	( 0.053802s |  0.24% |  0.00% )   	( 0.029621s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p26; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.003404s |  0.01% |  0.00% )   	( 0.003576s |  0.01% |  0.00% )    	(19x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p26
|   |   |   |   |   47.0.0:     	( 0.002915s |  0.01% |  0.00% )   	( 0.003275s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p26
|   |   |   |-- 146.0.0:        	( 0.000192s |  0.00% |  0.00% )   	( 0.000218s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p26_PID})
|   |   |   1399.0.0:           	( 17.443732s |  3.14% |  1.58% )   	( 16.319591s |  3.25% |  1.62% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p27 p27_PID >>
|   |   |   |-- 1.0.0:          	( 0.001272s |  0.00% |  0.00% )   	( 0.001295s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.0.0:      	( 0.000148s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.fPBNR8"/.run/p27
|   |   |   |   |   12.0.0:     	( 0.024093s |  0.13% |  0.00% )   	( 0.024000s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.fPBNR8"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.fPBNR8"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.fPBNR8"/.run/p27; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0.0:     	( 0.004866s |  0.02% |  0.00% )   	( 0.005414s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.fPBNR8"/.wait/p27
|   |   |   |   |   47.0.0:     	( 0.004405s |  0.02% |  0.00% )   	( 0.004936s |  0.03% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.fPBNR8"/.wait/p27
|   |   |   |-- 146.0.0:        	( 0.000208s |  0.00% |  0.00% )   	( 0.000232s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1401.0.0:           	( 0.000206s |  0.00% |  0.00% )   	( 0.000227s |  0.00% |  0.00% )    	(1x)	|   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1402.0.0:           	( 0.000190s |  0.00% |  0.00% )   	( 0.000217s |  0.00% |  0.00% )    	(1x)	|   |   |   : > "${tmpDir}"/.spawned
|   |   |   1403.0.0:           	( 0.000158s |  0.00% |  0.00% )   	( 0.000182s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1406.0.0:           	( 0.000151s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1411.0.0:           	( 0.001659s |  0.00% |  0.00% )   	( 0.001680s |  0.00% |  0.00% )    	(1x)	|   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1416.0.0:           	( 0.000160s |  0.00% |  0.00% )   	( 0.000185s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1478.0.0:           	( 0.000156s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1481.0.0:           	( 0.000118s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1488.0.0:           	( 24.051003s |  4.34% |  2.18% )   	( 0.001657s |  0.00% |  0.00% )    	(1x)	|   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1492.0.0:           	( 0.000288s |  0.00% |  0.00% )   	( 0.000324s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |-- 1497.0.0:           	( 0.000270s |  0.00% |  0.00% )   	( 0.000312s |  0.00% |  0.00% )    	(1x)	|   |   |-- ${nSpawnFlag}
|   |   1503.0.0:               	( 0.000098s |  0.00% |  0.00% )   	( 0.000114s |  0.00% |  0.00% )    	(1x)	|   |   wait
|-- |-- -248.0.0:               	( 0.005770s |  0.00% |  0.00% )   	( 0.002352s |  0.00% |  0.00% )    	(1x)	|-- |-- -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.fPBNR8" 2>/dev/null'

TOTAL RUN TIME: 1103.088124s
TOTAL CPU TIME: 1002.774987s
