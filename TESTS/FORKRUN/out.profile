LINE.DEPTH.CMD NUMBER           	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:           	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
________________________________	________________________________	________________________________	____________________________________
9.0.0:                          	( 548.545023s |100.00% )          	( 502.134341s |100.00% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.1.0:                      	( 0.000614s |  0.00% |  0.00% )   	( 0.000313s |  0.00% |  0.00% )    	(1x)	|-- forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   421.1.0:                    	( 548.544409s | 99.99% | 99.99% )   	( 502.134028s | 99.99% | 99.99% )    	(1x)	|   << (SUBSHELL) >>
|   |-- 421.2.0:                	( 0.023108s |  0.00% |  0.00% )   	( 0.023043s |  0.00% |  0.00% )    	(1x)	|   |-- trap - EXIT INT TERM HUP USR1
|   |   106.2.0:                	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   shopt -s extglob
|   |   109.2.0:                	( 0.000071s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   110.2.0:                	( 0.000124s |  0.00% |  0.00% )   	( 0.000138s |  0.00% |  0.00% )    	(1x)	|   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   111.2.0:                	( 0.000094s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	|   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   112.2.0:                	( 0.000077s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   113.2.0:                	( 0.000068s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   118.2.0:                	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   121.2.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ $# == 0 ]]
|   |   121.2.1:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   optParseFlag=true
|   |   122.2.0:                	( 0.000125s |  0.00% |  0.00% )   	( 0.000147s |  0.00% |  0.00% )    	(2x)	|   |   ${optParseFlag}
|   |   122.2.1:                	( 0.000118s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(2x)	|   |   (( $# > 0  ))
|   |   122.2.2:                	( 0.000124s |  0.00% |  0.00% )   	( 0.000148s |  0.00% |  0.00% )    	(2x)	|   |   [[ "$1" == [-+]* ]]
|   |   123.2.0:                	( 0.000091s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   case "${1}" in
|   |   250.2.0:                	( 0.000060s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   [[ "${1:0:1}" == '-' ]]
|   |   250.2.1:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   nullDelimiterFlag=true
|   |   314.2.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   shift 1
|   |   315.2.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ ${#} == 0 ]]
|   |   319.2.0:                	( 0.000069s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   [ -t "${fd_stdin0}" ]
|   |   328.2.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${tmpDirRoot} ]]
|   |   328.2.1:                	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${TMPDIR} ]]
|   |   328.2.2:                	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   [[ -d '/dev/shm' ]]
|   |   328.2.3:                	( 0.000060s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   tmpDirRoot='/dev/shm'
|   |   330.2.0:                	( 0.000718s |  0.00% |  0.00% )   	( 0.000344s |  0.00% |  0.00% )    	(1x)	|   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   330.2.1:                	( 0.002896s |  0.00% |  0.00% )   	( 0.002896s |  0.00% |  0.00% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 330.3.0:            	( 0.002896s |100.00% |  0.00% )   	( 0.002896s |100.00% |  0.00% )    	(1x)	|   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   331.2.0:                	( 0.000063s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   fPath="${tmpDir}"/.stdin
|   |   333.2.0:                	( 0.001173s |  0.00% |  0.00% )   	( 0.001242s |  0.00% |  0.00% )    	(1x)	|   |   mkdir -p "${tmpDir}"/.run
|   |   334.2.0:                	( 0.000084s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   : > "${fPath}"
|   |   336.2.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   ${rmTmpDirFlag}
|   |   336.2.1:                	( 0.013938s |  0.00% |  0.00% )   	( 0.000265s |  0.00% |  0.00% )    	(1x)	|   |   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1498.2.0:               	( 548.497416s | 99.99% | 99.99% )   	( 502.101823s | 99.99% | 99.99% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 344.3.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1498.3.0:           	( 0.000075s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1498.4.0:       	( 0.000450s |100.00% |  0.00% )   	( 0.000539s |100.00% |  0.00% )    	(6x)	|   |   |   |-- :
|   |   |   1498.3.1:           	( 0.000075s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.2:           	( 0.000078s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.3:           	( 0.000074s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.4:           	( 0.000073s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1498.3.5:           	( 0.000075s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   359.3.0:            	( 0.000082s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   |   LC_ALL=C
|   |   |   360.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   LANG=C
|   |   |   361.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   IFS=
|   |   |   363.3.0:            	( 0.000231s |  0.00% |  0.00% )   	( 0.000245s |  0.00% |  0.00% )    	(1x)	|   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   365.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   366.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   367.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   369.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   PID0="${BASHPID}"
|   |   |   371.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   shopt -s nullglob
|   |   |   374.3.0:            	( 0.000073s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   376.3.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   enable lseek &> /dev/null
|   |   |   377.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekFlag:=true}"
|   |   |   382.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   383.3.0:            	( 0.003005s |  0.00% |  0.00% )   	( 0.003061s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   383.3.1:            	( 0.000136s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 383.4.0:        	( 0.000136s |100.00% |  0.00% )   	( 0.000146s |100.00% |  0.00% )    	(1x)	|   |   |   |-- lseek $fd_read 0
|   |   |   383.3.2:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekPosFlag:=true}"
|   |   |   387.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   392.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   runCmd=("${@//''/}")
|   |   |   394.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   395.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   395.3.1:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   noFuncFlag=false
|   |   |   396.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   397.3.0:            	( 0.000093s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	|   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   401.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   463.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nLines} ]]
|   |   |   463.3.1:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   464.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${nLines} ]]
|   |   |   464.3.1:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   nLines=1
|   |   |   468.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == '-'* ]]
|   |   |   473.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == *','* ]]
|   |   |   477.3.0:            	( 0.000839s |  0.00% |  0.00% )   	( 0.000975s |  0.00% |  0.00% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.4.0:          	( 0.000058s |  6.91% |  0.00% )   	( 0.000069s |  7.07% |  0.00% )    	(1x)	|   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.4.0:          	( 0.000065s |  7.74% |  0.00% )   	( 0.000076s |  7.79% |  0.00% )    	(1x)	|   |   |   |   local +i -l nn
|   |   |   |   9.4.0:          	( 0.000062s |  7.38% |  0.00% )   	( 0.000074s |  7.58% |  0.00% )    	(1x)	|   |   |   |   local vOut
|   |   |   |   11.4.0:         	( 0.000064s |  7.62% |  0.00% )   	( 0.000076s |  7.79% |  0.00% )    	(1x)	|   |   |   |   local -n vOut="$1"
|   |   |   |   12.4.0:         	( 0.000067s |  7.98% |  0.00% )   	( 0.000076s |  7.79% |  0.00% )    	(1x)	|   |   |   |   shift 1
|   |   |   |   13.4.0:         	( 0.000065s |  7.74% |  0.00% )   	( 0.000077s |  7.89% |  0.00% )    	(1x)	|   |   |   |   local -g vOut
|   |   |   |   15.4.0:         	( 0.000062s |  7.38% |  0.00% )   	( 0.000073s |  7.48% |  0.00% )    	(1x)	|   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.4.1:         	( 0.000144s | 17.16% |  0.00% )   	( 0.000156s | 16.00% |  0.00% )    	(1x)	|   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.4.0:         	( 0.000061s |  7.27% |  0.00% )   	( 0.000072s |  7.38% |  0.00% )    	(1x)	|   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.4.0:         	( 0.000060s |  7.15% |  0.00% )   	( 0.000073s |  7.48% |  0.00% )    	(1x)	|   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.4.1:         	( 0.000064s |  7.62% |  0.00% )   	( 0.000075s |  7.69% |  0.00% )    	(1x)	|   |   |   |   continue
|   |   |   |-- 28.4.0:         	( 0.000067s |  7.98% |  0.00% )   	( 0.000078s |  8.00% |  0.00% )    	(1x)	|   |   |   |-- local +n vOut
|   |   |   479.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   481.3.0:            	( 0.005210s |  0.00% |  0.00% )   	( 0.005311s |  0.00% |  0.00% )    	(1x)	|   |   |   nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   481.3.1:            	( 0.001682s |  0.00% |  0.00% )   	( 0.001768s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 481.4.0:        	( 0.000175s | 10.40% |  0.00% )   	( 0.000186s | 10.52% |  0.00% )    	(1x)	|   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 481.4.1:        	( 0.001507s | 89.59% |  0.00% )   	( 0.001582s | 89.47% |  0.00% )    	(1x)	|   |   |   |-- nproc
|   |   |   482.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nCPU < 1 ))
|   |   |   483.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nProcs} ]]
|   |   |   483.3.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   483.3.2:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   nProcs=${nCPU}
|   |   |   485.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   489.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   489.3.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   495.3.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   497.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   500.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   500.3.1:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   500.3.2:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < nLines ))
|   |   |   502.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   doneIndicatorFlag=false
|   |   |   505.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   511.3.0:            	( 0.000149s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   type -a fallocate &> /dev/null
|   |   |   511.3.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   511.3.2:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${fallocateFlag:=true}"
|   |   |   514.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ${exportOrderFlag}
|   |   |   517.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   518.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   519.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nullDelimiterFlag}
|   |   |   520.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   delimiterReadStr="-d ''"
|   |   |   521.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   521.3.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:='lseek'}"
|   |   |   522.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:=bash}"
|   |   |   523.3.0:            	( 0.000101s |  0.00% |  0.00% )   	( 0.000112s |  0.00% |  0.00% )    	(1x)	|   |   |   type -p dd &> /dev/null
|   |   |   524.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ddAvailableFlag=true
|   |   |   525.3.0:            	( 0.002609s |  0.00% |  0.00% )   	( 0.003482s |  0.00% |  0.00% )    	(1x)	|   |   |   dd --version | grep -qF 'coreutils'
|   |   |   526.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ddQuietStr='status=none'
|   |   |   533.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   534.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   535.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   nullDelimiterProg=''
|   |   |   553.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${unescapeFlag}
|   |   |   562.3.0:            	( 0.002779s |  0.00% |  0.00% )   	( 0.002888s |  0.00% |  0.00% )    	(1x)	|   |   |   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   562.3.1:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 562.4.0:        	( 0.000079s |100.00% |  0.00% )   	( 0.000092s |100.00% |  0.00% )    	(1x)	|   |   |   |-- printf '%q\n' "${runCmd[@]}"
|   |   |   563.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringFlag}
|   |   |   566.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringIDFlag}
|   |   |   572.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   nLinesCur=${nLines}
|   |   |   574.3.0:            	( 0.001344s |  0.00% |  0.00% )   	( 0.001415s |  0.00% |  0.00% )    	(1x)	|   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   575.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   578.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${rmTmpDirFlag}
|   |   |   580.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 0 ))
|   |   |   611.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   613.3.0:            	( 0.000078s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   evfd_init
|   |   |   618.3.0:            	( 0.000071s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   620.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   624.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   634.3.0:            	( 0.000510s |  0.00% |  0.00% )   	( 0.000527s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   640.3.0:            	( 0.078820s |  0.01% |  0.01% )   	( 0.078697s |  0.01% |  0.01% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 640.4.0:        	( 0.000080s |  0.10% |  0.00% )   	( 0.000093s |  0.11% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   642.4.0:        	( 0.011313s | 14.35% |  0.00% )   	( 0.011289s | 14.34% |  0.00% )    	(1x)	|   |   |   |   trap - EXIT
|   |   |   |   643.4.0:        	( 0.012297s | 15.60% |  0.00% )   	( 0.012277s | 15.60% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   644.4.0:        	( 0.012209s | 15.48% |  0.00% )   	( 0.012170s | 15.46% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   645.4.0:        	( 0.012148s | 15.41% |  0.00% )   	( 0.012118s | 15.39% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   646.4.0:        	( 0.012167s | 15.43% |  0.00% )   	( 0.012144s | 15.43% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   648.4.0:        	( 0.000060s |  0.07% |  0.00% )   	( 0.000071s |  0.09% |  0.00% )    	(1x)	|   |   |   |   case ${writeFileProgType} in
|   |   |   |   649.4.0:        	( 0.018328s | 23.25% |  0.00% )   	( 0.018283s | 23.23% |  0.00% )    	(1x)	|   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   654.4.0:        	( 0.000089s |  0.11% |  0.00% )   	( 0.000100s |  0.12% |  0.00% )    	(1x)	|   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   655.4.0:        	( 0.000062s |  0.07% |  0.00% )   	( 0.000074s |  0.09% |  0.00% )    	(1x)	|   |   |   |   evfd_signal
|   |   |   |-- 656.4.0:        	( 0.000067s |  0.08% |  0.00% )   	( 0.000078s |  0.09% |  0.00% )    	(1x)	|   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   664.3.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   669.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   711.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   outStr='>&'"${fd_stdout}"
|   |   |   715.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   717.3.0:            	( 0.000420s |  0.00% |  0.00% )   	( 0.000448s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   727.3.0:            	( 5.223350s |  0.95% |  0.95% )   	( 1.725055s |  0.34% |  0.34% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 727.4.0:        	( 0.000082s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   729.4.0:        	( 0.012225s |  0.23% |  0.00% )   	( 0.012204s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   730.4.0:        	( 0.012129s |  0.23% |  0.00% )   	( 0.012107s |  0.70% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   731.4.0:        	( 0.012018s |  0.23% |  0.00% )   	( 0.011980s |  0.69% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   732.4.0:        	( 0.012375s |  0.23% |  0.00% )   	( 0.012035s |  0.69% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   733.4.0:        	( 0.012097s |  0.23% |  0.00% )   	( 0.012074s |  0.69% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   735.4.0:        	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   736.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   737.4.0:        	( 0.000059s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fd_read_pos_old=0
|   |   |   |   739.4.0:        	( 0.000058s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=0
|   |   |   |   741.4.0:        	( 0.086541s |  1.65% |  0.01% )   	( 0.099804s |  5.78% |  0.01% )    	(677x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   743.4.0:        	( 3.799176s | 72.73% |  0.69% )   	( 0.117944s |  6.83% |  0.02% )    	(676x)	|   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   743.4.1:        	( 0.001187s |  0.02% |  0.00% )   	( 0.001351s |  0.07% |  0.00% )    	(9x)	|   |   |   |   continue
|   |   |   |   745.4.0:        	( 0.085926s |  1.64% |  0.01% )   	( 0.098208s |  5.69% |  0.01% )    	(667x)	|   |   |   |   case ${REPLY} in
|   |   |   |   759.4.0:        	( 0.086738s |  1.66% |  0.01% )   	( 0.097543s |  5.65% |  0.01% )    	(666x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   760.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   763.4.0:        	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   769.4.0:        	( 0.084317s |  1.61% |  0.01% )   	( 0.097432s |  5.64% |  0.01% )    	(667x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   770.4.0:        	( 0.087904s |  1.68% |  0.01% )   	( 0.100827s |  5.84% |  0.02% )    	(667x)	|   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   771.4.0:        	( 0.090530s |  1.73% |  0.01% )   	( 0.100000s |  5.79% |  0.01% )    	(667x)	|   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   778.4.0:        	( 0.084264s |  1.61% |  0.01% )   	( 0.097355s |  5.64% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   778.4.1:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   780.4.0:        	( 0.084084s |  1.60% |  0.01% )   	( 0.097049s |  5.62% |  0.01% )    	(667x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   782.4.0:        	( 0.083814s |  1.60% |  0.01% )   	( 0.096684s |  5.60% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   784.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   786.4.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   787.4.0:        	( 0.006443s |  0.12% |  0.00% )   	( 0.006866s |  0.39% |  0.00% )    	(1x)	|   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   787.4.1:        	( 0.002985s |  0.05% |  0.00% )   	( 0.003361s |  0.19% |  0.00% )    	(1x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 787.5.0:    	( 0.002985s |100.00% |  0.00% )   	( 0.003361s |100.00% |  0.00% )    	(1x)	|   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   788.4.0:        	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   789.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   792.4.0:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   794.4.0:        	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   796.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   796.4.1:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   796.4.2:        	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   798.4.0:        	( 0.000084s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   |   |   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   801.4.0:        	( 0.000065s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   803.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   807.4.0:        	( 0.083285s |  1.59% |  0.01% )   	( 0.096224s |  5.57% |  0.01% )    	(667x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   808.4.0:        	( 0.082325s |  1.57% |  0.01% )   	( 0.095233s |  5.52% |  0.01% )    	(667x)	|   |   |   |   case ${nWait} in
|   |   |   |   819.4.0:        	( 0.080922s |  1.54% |  0.01% )   	( 0.093462s |  5.41% |  0.01% )    	(646x)	|   |   |   |   ((nWait--))
|   |   |   |   824.4.0:        	( 0.086329s |  1.65% |  0.01% )   	( 0.099411s |  5.76% |  0.01% )    	(667x)	|   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   759.4.1:        	( 0.085255s |  1.63% |  0.01% )   	( 0.098220s |  5.69% |  0.01% )    	(665x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   778.4.1:        	( 0.084466s |  1.61% |  0.01% )   	( 0.097363s |  5.64% |  0.01% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   810.4.0:        	( 0.002806s |  0.05% |  0.00% )   	( 0.003209s |  0.18% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   811.4.0:        	( 0.002647s |  0.05% |  0.00% )   	( 0.003060s |  0.17% |  0.00% )    	(21x)	|   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   812.4.0:        	( 0.055469s |  1.06% |  0.01% )   	( 0.047267s |  2.74% |  0.00% )    	(21x)	|   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   813.4.0:        	( 0.002808s |  0.05% |  0.00% )   	( 0.003225s |  0.18% |  0.00% )    	(21x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   814.4.0:        	( 0.002764s |  0.05% |  0.00% )   	( 0.003176s |  0.18% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   816.4.0:        	( 0.002800s |  0.05% |  0.00% )   	( 0.003216s |  0.18% |  0.00% )    	(21x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   753.4.0:        	( 0.000169s |  0.00% |  0.00% )   	( 0.000196s |  0.01% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   825.4.0:        	( 0.000123s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   826.4.0:        	( 0.000115s |  0.00% |  0.00% )   	( 0.000133s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fallocateFlag=false
|   |   |   |   827.4.0:        	( 0.000112s |  0.00% |  0.00% )   	( 0.000131s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nSpawnFlag=false
|   |   |   |   741.4.1:        	( 0.000117s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   741.4.2:        	( 0.000135s |  0.00% |  0.00% )   	( 0.000154s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- -248.4.0:       	( 0.004652s |  0.08% |  0.00% )   	( 0.004747s |  0.27% |  0.00% )    	(1x)	|   |   |   |-- -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.VEuxJM"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/pAuto'
|   |   |   835.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   836.3.0:            	( 0.000093s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   872.3.0:            	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1341.3.0:           	( 0.047248s |  0.00% |  0.00% )   	( 0.047324s |  0.00% |  0.00% )    	(1x)	|   |   |   coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1358.3.0:           	( 0.004610s |  0.00% |  0.00% )   	( 0.005304s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1358.4.0:       	( 0.000144s |  3.12% |  0.00% )   	( 0.000140s |  2.63% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1359.4.0:       	( 0.000069s |  1.49% |  0.00% )   	( 0.000081s |  1.52% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1359.4.1:       	( 0.000075s |  1.62% |  0.00% )   	( 0.000086s |  1.62% |  0.00% )    	(1x)	|   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1367.4.0:       	( 0.000216s |  4.68% |  0.00% )   	( 0.000229s |  4.31% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1368.4.0:       	( 0.000061s |  1.32% |  0.00% )   	( 0.000074s |  1.39% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1440.4.0:       	( 0.000058s |  1.25% |  0.00% )   	( 0.000069s |  1.30% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1443.4.0:       	( 0.000065s |  1.40% |  0.00% )   	( 0.000076s |  1.43% |  0.00% )    	(1x)	|   |   |   |   echo "{"
|   |   |   |   1444.4.0:       	( 0.000061s |  1.32% |  0.00% )   	( 0.000072s |  1.35% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1445.4.0:       	( 0.000060s |  1.30% |  0.00% )   	( 0.000072s |  1.35% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1445.4.1:       	( 0.000065s |  1.40% |  0.00% )   	( 0.000077s |  1.45% |  0.00% )    	(1x)	|   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1446.4.0:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000076s |  1.43% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "mapfile"
|   |   |   |   1447.4.0:       	( 0.000061s |  1.32% |  0.00% )   	( 0.000073s |  1.37% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1447.4.1:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000076s |  1.43% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1448.4.0:       	( 0.000066s |  1.43% |  0.00% )   	( 0.000077s |  1.45% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1449.4.0:       	( 0.000059s |  1.27% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1449.4.1:       	( 0.000063s |  1.36% |  0.00% )   	( 0.000075s |  1.41% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' ${fd_read}
|   |   |   |   1450.4.0:       	( 0.000060s |  1.30% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1450.4.1:       	( 0.000062s |  1.34% |  0.00% )   	( 0.000073s |  1.37% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1450.4.2:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000076s |  1.43% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1452.4.0:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000075s |  1.41% |  0.00% )    	(1x)	|   |   |   |   echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1453.4.0:       	( 0.000061s |  1.32% |  0.00% )   	( 0.000073s |  1.37% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1453.4.1:       	( 0.000060s |  1.30% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1453.4.2:       	( 0.000092s |  1.99% |  0.00% )   	( 0.000103s |  1.94% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1510.4.0:       	( 0.000065s |  1.40% |  0.00% )   	( 0.000073s |  1.37% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1510.4.1:       	( 0.000060s |  1.30% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1510.4.2:       	( 0.000068s |  1.47% |  0.00% )   	( 0.000079s |  1.48% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1511.4.0:       	( 0.000069s |  1.49% |  0.00% )   	( 0.000078s |  1.47% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1524.4.0:       	( 0.000086s |  1.86% |  0.00% )   	( 0.000097s |  1.82% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1525.4.0:       	( 0.000062s |  1.34% |  0.00% )   	( 0.000074s |  1.39% |  0.00% )    	(1x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   1528.4.0:       	( 0.000083s |  1.80% |  0.00% )   	( 0.000094s |  1.77% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1539.4.0:       	( 0.000070s |  1.51% |  0.00% )   	( 0.000082s |  1.54% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1540.4.0:       	( 0.000059s |  1.27% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1540.4.1:       	( 0.000066s |  1.43% |  0.00% )   	( 0.000077s |  1.45% |  0.00% )    	(1x)	|   |   |   |   echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1541.4.0:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000075s |  1.41% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1542.4.0:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000075s |  1.41% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   1547.4.0:       	( 0.000074s |  1.60% |  0.00% )   	( 0.000086s |  1.62% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1548.4.0:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000076s |  1.43% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1552.4.0:       	( 0.000073s |  1.58% |  0.00% )   	( 0.000085s |  1.60% |  0.00% )    	(1x)	|   |   |   |   echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1553.4.0:       	( 0.000060s |  1.30% |  0.00% )   	( 0.000072s |  1.35% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1553.4.1:       	( 0.000069s |  1.49% |  0.00% )   	( 0.000080s |  1.50% |  0.00% )    	(1x)	|   |   |   |   printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1558.4.0:       	( 0.000062s |  1.34% |  0.00% )   	( 0.000072s |  1.35% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1558.4.1:       	( 0.000068s |  1.47% |  0.00% )   	( 0.000079s |  1.48% |  0.00% )    	(1x)	|   |   |   |   printf '%s' ' || '
|   |   |   |   1559.4.0:       	( 0.000062s |  1.34% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1559.4.1:       	( 0.000074s |  1.60% |  0.00% )   	( 0.000086s |  1.62% |  0.00% )    	(1x)	|   |   |   |   echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1560.4.0:       	( 0.000059s |  1.27% |  0.00% )   	( 0.000070s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1560.4.1:       	( 0.000069s |  1.49% |  0.00% )   	( 0.000077s |  1.45% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1568.4.0:       	( 0.000059s |  1.27% |  0.00% )   	( 0.000070s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1568.4.1:       	( 0.000067s |  1.45% |  0.00% )   	( 0.000079s |  1.48% |  0.00% )    	(1x)	|   |   |   |   echo '{'
|   |   |   |   1569.4.0:       	( 0.000063s |  1.36% |  0.00% )   	( 0.000072s |  1.35% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1569.4.1:       	( 0.000062s |  1.34% |  0.00% )   	( 0.000074s |  1.39% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1570.4.0:       	( 0.000061s |  1.32% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1571.4.0:       	( 0.000104s |  2.25% |  0.00% )   	( 0.000112s |  2.11% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "${runCmd[@]}"
|   |   |   |   1572.4.0:       	( 0.000060s |  1.30% |  0.00% )   	( 0.000071s |  1.33% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1579.4.0:       	( 0.000059s |  1.27% |  0.00% )   	( 0.000070s |  1.31% |  0.00% )    	(1x)	|   |   |   |   ${stdinRunFlag}
|   |   |   |   1582.4.0:       	( 0.000064s |  1.38% |  0.00% )   	( 0.000072s |  1.35% |  0.00% )    	(1x)	|   |   |   |   ${noFuncFlag}
|   |   |   |   1585.4.0:       	( 0.000059s |  1.27% |  0.00% )   	( 0.000069s |  1.30% |  0.00% )    	(1x)	|   |   |   |   ${substituteStringFlag}
|   |   |   |   1586.4.0:       	( 0.000077s |  1.67% |  0.00% )   	( 0.000089s |  1.67% |  0.00% )    	(1x)	|   |   |   |   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1591.4.0:       	( 0.000103s |  2.23% |  0.00% )   	( 0.000102s |  1.92% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1603.4.0:       	( 0.000065s |  1.40% |  0.00% )   	( 0.000076s |  1.43% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1604.4.0:       	( 0.000061s |  1.32% |  0.00% )   	( 0.000072s |  1.35% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1604.4.1:       	( 0.000094s |  2.03% |  0.00% )   	( 0.000105s |  1.97% |  0.00% )    	(1x)	|   |   |   |   printf '\n%s ' '}'
|   |   |   |   1605.4.0:       	( 0.000065s |  1.40% |  0.00% )   	( 0.000077s |  1.45% |  0.00% )    	(1x)	|   |   |   |   echo "${outStr}"
|   |   |   |   1606.4.0:       	( 0.000063s |  1.36% |  0.00% )   	( 0.000074s |  1.39% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1607.4.0:       	( 0.000063s |  1.36% |  0.00% )   	( 0.000074s |  1.39% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1612.4.0:       	( 0.000097s |  2.10% |  0.00% )   	( 0.000109s |  2.05% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1346.3.0:           	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1351.3.0:           	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1356.3.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1358.3.0:           	( 0.012389s |  0.00% |  0.00% )   	( 0.012369s |  0.00% |  0.00% )    	(1x)	|   |   |   trap "${exitTrapStr}" EXIT
|   |   |   1363.3.0:           	( 0.012238s |  0.00% |  0.00% )   	( 0.012222s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1368.3.0:           	( 0.012115s |  0.00% |  0.00% )   	( 0.099151s |  0.01% |  0.01% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1373.3.0:           	( 0.012084s |  0.00% |  0.00% )   	( 0.012065s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1375.3.0:           	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1376.3.0:           	( 0.000074s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1378.3.0:           	( 0.000059s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1389.3.0:           	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '\n' >&${fd_continue}
|   |   |   1392.3.0:           	( 0.000058s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1393.3.0:           	( 0.000059s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	|   |   |   ((kkProcs=0 ))
|   |   |   1393.3.1:           	( 0.002827s |  0.00% |  0.00% )   	( 0.003246s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs<28 ))
|   |   |   1394.3.0:           	( 0.002600s |  0.00% |  0.00% )   	( 0.003029s |  0.00% |  0.00% )    	(28x)	|   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1395.3.0:           	( 17.253131s |  3.14% |  3.14% )   	( 16.370908s |  3.26% |  3.26% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p0 p0_PID >>
|   |   |   |-- 1.4.0:          	( 0.000597s |  0.00% |  0.00% )   	( 0.000607s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p0 p0_PID (&)
|   |   |   |   73.4.0:         	( 519.236496s | 99.99% | 94.65% )   	( 500.041313s | 99.99% | 99.58% )    	(28x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 73.5.0:     	( 0.003419s |  0.00% |  0.00% )   	( 0.003871s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.VEuxJM"
|   |   |   |   |   8.5.0:      	( 0.000096s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p0
|   |   |   |   |   12.5.0:     	( 0.012038s |  0.06% |  0.00% )   	( 0.012018s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.5.0:     	( 0.511434s |  0.09% |  0.09% )   	( 0.509135s |  0.09% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT 3472985 ${BASHPID}' INT
|   |   |   |   |   15.5.0:     	( 0.519876s |  0.09% |  0.09% )   	( 0.518344s |  0.09% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM 3472985 ${BASHPID}' TERM
|   |   |   |   |   16.5.0:     	( 0.526052s |  0.09% |  0.09% )   	( 0.524502s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP 3472985 ${BASHPID}' HUP
|   |   |   |   |   17.5.0:     	( 0.529360s |  0.09% |  0.09% )   	( 0.527586s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.5.0:     	( 0.111536s |  0.01% |  0.02% )   	( 0.122672s |  0.02% |  0.02% )    	(694x)	|   |   |   |   |   true
|   |   |   |   |   20.5.0:     	( 0.094322s |  0.01% |  0.01% )   	( 0.107776s |  0.01% |  0.02% )    	(694x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.5.1:     	( 0.003603s |  0.00% |  0.00% )   	( 0.004108s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   read -r < "/dev/shm/.forkrun.VEuxJM"/.nLines
|   |   |   |   |   20.5.2:     	( 0.002963s |  0.00% |  0.00% )   	( 0.003435s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.5.3:     	( 0.002926s |  0.00% |  0.00% )   	( 0.003401s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.5.0:     	( 0.005693s |  0.03% |  0.00% )   	( 0.006375s |  0.03% |  0.00% )    	(33x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p0
|   |   |   |   |   23.5.0:     	( 3.247863s |  0.63% |  0.59% )   	( 0.141762s |  0.02% |  0.02% )    	(694x)	|   |   |   |   |   read -r -u 21 _
|   |   |   |   |   24.5.0:     	( 0.100208s |  0.01% |  0.01% )   	( 0.114485s |  0.01% |  0.02% )    	(694x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.VEuxJM"/.quit ]]
|   |   |   |   |   28.5.0:     	( 0.094023s |  0.01% |  0.01% )   	( 0.107686s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.VEuxJM"/.done ]]
|   |   |   |   |   28.5.1:     	( 0.089758s |  0.01% |  0.01% )   	( 0.102444s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.5.0:     	( 0.094659s |  0.01% |  0.01% )   	( 0.108127s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   evfd_wait 25
|   |   |   |   |   31.5.0:     	( 0.826433s |  0.15% |  0.15% )   	( 0.801715s |  0.15% |  0.15% )    	(668x)	|   |   |   |   |   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.5.0:     	( 0.152128s |  0.02% |  0.02% )   	( 0.112457s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   35.5.0:     	( 0.005029s |  0.02% |  0.00% )   	( 0.005677s |  0.03% |  0.00% )    	(32x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p0
|   |   |   |   |   36.5.0:     	( 0.088924s |  0.01% |  0.01% )   	( 0.102310s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.5.0:     	( 0.092437s |  0.01% |  0.01% )   	( 0.100724s |  0.01% |  0.02% )    	(666x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   57.5.0:     	( 0.003534s |  0.00% |  0.00% )   	( 0.004060s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.5.0:     	( 0.003125s |  0.00% |  0.00% )   	( 0.003625s |  0.00% |  0.00% )    	(32x)	|   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.5.0:     	( 510.911309s | 98.37% | 93.13% )   	( 494.758041s | 98.92% | 98.53% )    	(666x)	|   |   |   |   |   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
|   |   |   |   |   |-- 1.6.0:  	( 0.083733s |  0.02% |  0.01% )   	( 0.097192s |  0.02% |  0.01% )    	(666x)	|   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.6.0:  	( 35.076243s |  6.86% |  6.39% )   	( 33.875272s |  6.88% |  6.74% )    	(666x)	|   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.6.0:  	( 60.550171s | 10.45% | 11.03% )   	( 58.940094s | 10.49% | 11.73% )    	(666x)	|   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.6.0: 	( 49.362770s |  9.64% |  8.99% )   	( 47.715060s |  9.62% |  9.50% )    	(666x)	|   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.6.0: 	( 60.052573s | 10.34% | 10.94% )   	( 58.427187s | 10.36% | 11.63% )    	(666x)	|   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.6.0: 	( 47.490799s |  9.16% |  8.65% )   	( 46.151334s |  9.18% |  9.19% )    	(666x)	|   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.6.0: 	( 31.481883s |  6.45% |  5.73% )   	( 30.372626s |  6.43% |  6.04% )    	(666x)	|   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.6.0: 	( 15.568586s |  4.18% |  2.83% )   	( 14.681257s |  4.13% |  2.92% )    	(666x)	|   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.6.0: 	( 33.110433s |  6.38% |  6.03% )   	( 31.807245s |  6.31% |  6.33% )    	(666x)	|   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.6.0: 	( 13.546278s |  3.90% |  2.46% )   	( 12.852632s |  3.88% |  2.55% )    	(666x)	|   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.6.0: 	( 41.405217s |  8.66% |  7.54% )   	( 39.932067s |  8.63% |  7.95% )    	(666x)	|   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.6.0: 	( 92.884585s | 15.05% | 16.93% )   	( 91.337615s | 15.24% | 18.18% )    	(666x)	|   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.6.0: 	( 15.404493s |  4.40% |  2.80% )   	( 14.604612s |  4.37% |  2.90% )    	(666x)	|   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.6.0: 	( 14.893545s |  4.38% |  2.71% )   	( 13.963848s |  4.33% |  2.78% )    	(666x)	|   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   58.5.1:     	( 0.002995s |  0.00% |  0.00% )   	( 0.003464s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   20.5.1:     	( 0.093181s |  0.01% |  0.01% )   	( 0.106642s |  0.01% |  0.02% )    	(662x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   56.5.1:     	( 0.090558s |  0.01% |  0.01% )   	( 0.097137s |  0.01% |  0.01% )    	(634x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   59.5.0:     	( 0.120234s |  0.01% |  0.02% )   	( 0.107947s |  0.01% |  0.02% )    	(634x)	|   |   |   |   |   printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.5.0:     	( 0.002435s |  0.00% |  0.00% )   	( 0.002814s |  0.00% |  0.00% )    	(26x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   26.5.0:     	( 0.002603s |  0.00% |  0.00% )   	( 0.002996s |  0.00% |  0.00% )    	(26x)	|   |   |   |   |   break
|   |   |   |   |-- 2.5.0:      	( 0.172802s |  0.02% |  0.03% )   	( 0.174649s |  0.03% |  0.03% )    	(28x)	|   |   |   |   |-- break
|   |   |   |-- 134.4.0:        	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p0_PID})
|   |   |   1393.3.0:           	( 0.002572s |  0.00% |  0.00% )   	( 0.002984s |  0.00% |  0.00% )    	(28x)	|   |   |   ((kkProcs++ ))
|   |   |   1395.3.0:           	( 17.748558s |  3.23% |  3.23% )   	( 17.084194s |  3.40% |  3.40% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p1 p1_PID >>
|   |   |   |-- 1.4.0:          	( 0.000557s |  0.00% |  0.00% )   	( 0.000574s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000081s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p1
|   |   |   |   |   12.5.0:     	( 0.012028s |  0.06% |  0.00% )   	( 0.012008s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004189s |  0.02% |  0.00% )   	( 0.004684s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p1
|   |   |   |   |   35.5.0:     	( 0.003954s |  0.02% |  0.00% )   	( 0.004453s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p1
|   |   |   |-- 134.4.0:        	( 0.000084s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p1_PID})
|   |   |   1395.3.0:           	( 17.380157s |  3.16% |  3.16% )   	( 16.632289s |  3.31% |  3.31% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p2 p2_PID >>
|   |   |   |-- 1.4.0:          	( 0.000566s |  0.00% |  0.00% )   	( 0.000583s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000084s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p2
|   |   |   |   |   12.5.0:     	( 0.012157s |  0.06% |  0.00% )   	( 0.012141s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004882s |  0.02% |  0.00% )   	( 0.005469s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p2
|   |   |   |   |   35.5.0:     	( 0.004721s |  0.02% |  0.00% )   	( 0.005308s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p2
|   |   |   |-- 134.4.0:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p2_PID})
|   |   |   1395.3.0:           	( 17.580435s |  3.20% |  3.20% )   	( 16.866761s |  3.35% |  3.35% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p3 p3_PID >>
|   |   |   |-- 1.4.0:          	( 0.000571s |  0.00% |  0.00% )   	( 0.000587s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p3
|   |   |   |   |   12.5.0:     	( 0.012242s |  0.06% |  0.00% )   	( 0.012226s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005093s |  0.02% |  0.00% )   	( 0.005705s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p3
|   |   |   |   |   35.5.0:     	( 0.004814s |  0.02% |  0.00% )   	( 0.005402s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p3
|   |   |   |-- 134.4.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p3_PID})
|   |   |   1395.3.0:           	( 18.170869s |  3.31% |  3.31% )   	( 17.447659s |  3.47% |  3.47% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p4 p4_PID >>
|   |   |   |-- 1.4.0:          	( 0.000574s |  0.00% |  0.00% )   	( 0.000590s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000084s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p4
|   |   |   |   |   12.5.0:     	( 0.012210s |  0.06% |  0.00% )   	( 0.012193s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003490s |  0.01% |  0.00% )   	( 0.003905s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p4
|   |   |   |   |   35.5.0:     	( 0.003216s |  0.01% |  0.00% )   	( 0.003626s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p4
|   |   |   |-- 134.4.0:        	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p4_PID})
|   |   |   1395.3.0:           	( 18.478237s |  3.36% |  3.36% )   	( 17.865817s |  3.55% |  3.55% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p5 p5_PID >>
|   |   |   |-- 1.4.0:          	( 0.000582s |  0.00% |  0.00% )   	( 0.000592s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p5
|   |   |   |   |   12.5.0:     	( 0.012308s |  0.06% |  0.00% )   	( 0.012292s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004276s |  0.02% |  0.00% )   	( 0.004779s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p5
|   |   |   |   |   35.5.0:     	( 0.006233s |  0.03% |  0.00% )   	( 0.004436s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p5
|   |   |   |-- 134.4.0:        	( 0.000087s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p5_PID})
|   |   |   1395.3.0:           	( 18.539192s |  3.37% |  3.37% )   	( 17.899730s |  3.56% |  3.56% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p6 p6_PID >>
|   |   |   |-- 1.4.0:          	( 0.000584s |  0.00% |  0.00% )   	( 0.000595s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000099s |  0.00% |  0.00% )   	( 0.000112s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p6
|   |   |   |   |   12.5.0:     	( 0.012455s |  0.06% |  0.00% )   	( 0.012435s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004391s |  0.02% |  0.00% )   	( 0.004911s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p6
|   |   |   |   |   35.5.0:     	( 0.007123s |  0.03% |  0.00% )   	( 0.004604s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p6
|   |   |   |-- 134.4.0:        	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p6_PID})
|   |   |   1395.3.0:           	( 20.300253s |  3.70% |  3.70% )   	( 19.623413s |  3.90% |  3.90% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p7 p7_PID >>
|   |   |   |-- 1.4.0:          	( 0.000585s |  0.00% |  0.00% )   	( 0.000597s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p7
|   |   |   |   |   12.5.0:     	( 0.012502s |  0.06% |  0.00% )   	( 0.012485s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005038s |  0.02% |  0.00% )   	( 0.005630s |  0.02% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p7
|   |   |   |   |   35.5.0:     	( 0.004612s |  0.02% |  0.00% )   	( 0.005179s |  0.02% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p7
|   |   |   |-- 134.4.0:        	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p7_PID})
|   |   |   1395.3.0:           	( 19.026980s |  3.46% |  3.46% )   	( 18.391523s |  3.66% |  3.66% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p8 p8_PID >>
|   |   |   |-- 1.4.0:          	( 0.000580s |  0.00% |  0.00% )   	( 0.000595s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p8
|   |   |   |   |   12.5.0:     	( 0.012505s |  0.06% |  0.00% )   	( 0.012489s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003261s |  0.01% |  0.00% )   	( 0.003648s |  0.01% |  0.00% )    	(20x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p8
|   |   |   |   |   35.5.0:     	( 0.003149s |  0.01% |  0.00% )   	( 0.003547s |  0.01% |  0.00% )    	(19x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p8
|   |   |   |-- 134.4.0:        	( 0.000092s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p8_PID})
|   |   |   1395.3.0:           	( 17.399660s |  3.17% |  3.17% )   	( 16.704359s |  3.32% |  3.32% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p9 p9_PID >>
|   |   |   |-- 1.4.0:          	( 0.000611s |  0.00% |  0.00% )   	( 0.000623s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000090s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p9
|   |   |   |   |   12.5.0:     	( 0.012522s |  0.07% |  0.00% )   	( 0.012499s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004964s |  0.02% |  0.00% )   	( 0.005565s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p9
|   |   |   |   |   35.5.0:     	( 0.004793s |  0.02% |  0.00% )   	( 0.005375s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p9
|   |   |   |-- 134.4.0:        	( 0.000090s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p9_PID})
|   |   |   1395.3.0:           	( 23.049840s |  4.20% |  4.20% )   	( 22.467775s |  4.47% |  4.47% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p10 p10_PID >>
|   |   |   |-- 1.4.0:          	( 0.000598s |  0.00% |  0.00% )   	( 0.000611s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p10
|   |   |   |   |   12.5.0:     	( 0.012582s |  0.05% |  0.00% )   	( 0.012560s |  0.05% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003083s |  0.01% |  0.00% )   	( 0.003431s |  0.01% |  0.00% )    	(19x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p10
|   |   |   |   |   35.5.0:     	( 0.003103s |  0.01% |  0.00% )   	( 0.003461s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p10
|   |   |   |-- 134.4.0:        	( 0.000091s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p10_PID})
|   |   |   1395.3.0:           	( 20.896322s |  3.80% |  3.80% )   	( 20.011411s |  3.98% |  3.98% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p11 p11_PID >>
|   |   |   |-- 1.4.0:          	( 0.000668s |  0.00% |  0.00% )   	( 0.000686s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p11
|   |   |   |   |   12.5.0:     	( 0.012531s |  0.05% |  0.00% )   	( 0.012503s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004391s |  0.02% |  0.00% )   	( 0.004909s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p11
|   |   |   |   |   35.5.0:     	( 0.004040s |  0.01% |  0.00% )   	( 0.004538s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p11
|   |   |   |-- 134.4.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p11_PID})
|   |   |   1395.3.0:           	( 18.013694s |  3.28% |  3.28% )   	( 17.296621s |  3.44% |  3.44% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p12 p12_PID >>
|   |   |   |-- 1.4.0:          	( 0.000668s |  0.00% |  0.00% )   	( 0.000681s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p12
|   |   |   |   |   12.5.0:     	( 0.013513s |  0.07% |  0.00% )   	( 0.013477s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005287s |  0.02% |  0.00% )   	( 0.005927s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p12
|   |   |   |   |   35.5.0:     	( 0.005249s |  0.02% |  0.00% )   	( 0.005812s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p12
|   |   |   |-- 134.4.0:        	( 0.000104s |  0.00% |  0.00% )   	( 0.000117s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p12_PID})
|   |   |   1395.3.0:           	( 17.439952s |  3.17% |  3.17% )   	( 16.486408s |  3.28% |  3.28% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p13 p13_PID >>
|   |   |   |-- 1.4.0:          	( 0.000830s |  0.00% |  0.00% )   	( 0.000852s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000147s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p13
|   |   |   |   |   12.5.0:     	( 0.023998s |  0.13% |  0.00% )   	( 0.023920s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004396s |  0.02% |  0.00% )   	( 0.004923s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p13
|   |   |   |   |   35.5.0:     	( 0.004364s |  0.02% |  0.00% )   	( 0.004890s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p13
|   |   |   |   |   37.5.0:     	( 0.000226s |  0.00% |  0.00% )   	( 0.000262s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.5.0:     	( 0.000268s |  0.00% |  0.00% )   	( 0.000308s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   47.5.0:     	( 0.000250s |  0.00% |  0.00% )   	( 0.000289s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.5.0:     	( 0.000304s |  0.00% |  0.00% )   	( 0.000342s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   : > "/dev/shm/.forkrun.VEuxJM"/.quit
|   |   |   |   |   50.5.0:     	( 0.000406s |  0.00% |  0.00% )   	( 0.000444s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   printf '%.0s\n' "/dev/shm/.forkrun.VEuxJM"/.run/p* 1>&21
|   |   |   |   |   51.5.0:     	( 0.000258s |  0.00% |  0.00% )   	( 0.000295s |  0.00% |  0.00% )    	(2x)	|   |   |   |   |   break
|   |   |   |-- 134.4.0:        	( 0.000168s |  0.00% |  0.00% )   	( 0.000188s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p13_PID})
|   |   |   1395.3.0:           	( 18.255825s |  3.32% |  3.32% )   	( 17.933757s |  3.57% |  3.57% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p14 p14_PID >>
|   |   |   |-- 1.4.0:          	( 0.000914s |  0.00% |  0.00% )   	( 0.000936s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000091s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p14
|   |   |   |   |   12.5.0:     	( 0.012592s |  0.06% |  0.00% )   	( 0.012555s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.001995s |  0.01% |  0.00% )   	( 0.002207s |  0.01% |  0.00% )    	(12x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p14
|   |   |   |   |   35.5.0:     	( 0.001690s |  0.00% |  0.00% )   	( 0.001906s |  0.01% |  0.00% )    	(11x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p14
|   |   |   |-- 134.4.0:        	( 0.000146s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p14_PID})
|   |   |   1395.3.0:           	( 19.804679s |  3.61% |  3.61% )   	( 19.063526s |  3.79% |  3.79% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p15 p15_PID >>
|   |   |   |-- 1.4.0:          	( 0.000968s |  0.00% |  0.00% )   	( 0.000980s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000162s |  0.00% |  0.00% )   	( 0.000182s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p15
|   |   |   |   |   12.5.0:     	( 0.023140s |  0.11% |  0.00% )   	( 0.023073s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004028s |  0.02% |  0.00% )   	( 0.004492s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p15
|   |   |   |   |   35.5.0:     	( 0.003757s |  0.01% |  0.00% )   	( 0.004213s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p15
|   |   |   |-- 134.4.0:        	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p15_PID})
|   |   |   1395.3.0:           	( 18.318068s |  3.33% |  3.33% )   	( 17.769159s |  3.53% |  3.53% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p16 p16_PID >>
|   |   |   |-- 1.4.0:          	( 0.000948s |  0.00% |  0.00% )   	( 0.000970s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000173s |  0.00% |  0.00% )   	( 0.000196s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p16
|   |   |   |   |   12.5.0:     	( 0.020423s |  0.11% |  0.00% )   	( 0.020362s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002654s |  0.01% |  0.00% )   	( 0.002978s |  0.01% |  0.00% )    	(16x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p16
|   |   |   |   |   35.5.0:     	( 0.002571s |  0.01% |  0.00% )   	( 0.002877s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p16
|   |   |   |-- 134.4.0:        	( 0.000153s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p16_PID})
|   |   |   1395.3.0:           	( 17.349331s |  3.16% |  3.16% )   	( 16.562146s |  3.29% |  3.29% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p17 p17_PID >>
|   |   |   |-- 1.4.0:          	( 0.000997s |  0.00% |  0.00% )   	( 0.001013s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000150s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p17
|   |   |   |   |   12.5.0:     	( 0.023778s |  0.13% |  0.00% )   	( 0.023705s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005546s |  0.03% |  0.00% )   	( 0.006176s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p17
|   |   |   |   |   35.5.0:     	( 0.005062s |  0.02% |  0.00% )   	( 0.005692s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p17
|   |   |   |-- 134.4.0:        	( 0.000157s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p17_PID})
|   |   |   1395.3.0:           	( 20.393762s |  3.71% |  3.71% )   	( 19.823024s |  3.94% |  3.94% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p18 p18_PID >>
|   |   |   |-- 1.4.0:          	( 0.001020s |  0.00% |  0.00% )   	( 0.001037s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000181s |  0.00% |  0.00% )   	( 0.000205s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p18
|   |   |   |   |   12.5.0:     	( 0.022472s |  0.11% |  0.00% )   	( 0.022414s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004128s |  0.02% |  0.00% )   	( 0.004589s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p18
|   |   |   |   |   35.5.0:     	( 0.003836s |  0.01% |  0.00% )   	( 0.004286s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p18
|   |   |   |-- 134.4.0:        	( 0.000151s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p18_PID})
|   |   |   1395.3.0:           	( 17.632965s |  3.21% |  3.21% )   	( 16.970666s |  3.37% |  3.37% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p19 p19_PID >>
|   |   |   |-- 1.4.0:          	( 0.000967s |  0.00% |  0.00% )   	( 0.000987s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000155s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p19
|   |   |   |   |   12.5.0:     	( 0.024801s |  0.14% |  0.00% )   	( 0.024719s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004910s |  0.02% |  0.00% )   	( 0.005523s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p19
|   |   |   |   |   35.5.0:     	( 0.004855s |  0.02% |  0.00% )   	( 0.005438s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p19
|   |   |   |-- 134.4.0:        	( 0.000162s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p19_PID})
|   |   |   1395.3.0:           	( 17.348544s |  3.16% |  3.16% )   	( 16.704338s |  3.32% |  3.32% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p20 p20_PID >>
|   |   |   |-- 1.4.0:          	( 0.000966s |  0.00% |  0.00% )   	( 0.000988s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000158s |  0.00% |  0.00% )   	( 0.000178s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p20
|   |   |   |   |   12.5.0:     	( 0.015555s |  0.08% |  0.00% )   	( 0.015504s |  0.09% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005057s |  0.02% |  0.00% )   	( 0.005670s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p20
|   |   |   |   |   35.5.0:     	( 0.004748s |  0.02% |  0.00% )   	( 0.005328s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p20
|   |   |   |-- 134.4.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p20_PID})
|   |   |   1395.3.0:           	( 17.474763s |  3.18% |  3.18% )   	( 16.786565s |  3.34% |  3.34% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p21 p21_PID >>
|   |   |   |-- 1.4.0:          	( 0.001066s |  0.00% |  0.00% )   	( 0.001089s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000153s |  0.00% |  0.00% )   	( 0.000173s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p21
|   |   |   |   |   12.5.0:     	( 0.021580s |  0.12% |  0.00% )   	( 0.021509s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004136s |  0.02% |  0.00% )   	( 0.004570s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p21
|   |   |   |   |   35.5.0:     	( 0.003823s |  0.02% |  0.00% )   	( 0.004311s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p21
|   |   |   |-- 134.4.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p21_PID})
|   |   |   1395.3.0:           	( 19.952659s |  3.63% |  3.63% )   	( 19.254006s |  3.83% |  3.83% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p22 p22_PID >>
|   |   |   |-- 1.4.0:          	( 0.001066s |  0.00% |  0.00% )   	( 0.001078s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000160s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p22
|   |   |   |   |   12.5.0:     	( 0.023702s |  0.11% |  0.00% )   	( 0.023638s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003300s |  0.01% |  0.00% )   	( 0.003692s |  0.01% |  0.00% )    	(19x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p22
|   |   |   |   |   35.5.0:     	( 0.003183s |  0.01% |  0.00% )   	( 0.003581s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p22
|   |   |   |-- 134.4.0:        	( 0.000156s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p22_PID})
|   |   |   1395.3.0:           	( 21.226954s |  3.87% |  3.86% )   	( 20.676886s |  4.11% |  4.11% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p23 p23_PID >>
|   |   |   |-- 1.4.0:          	( 0.001029s |  0.00% |  0.00% )   	( 0.001049s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000148s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p23
|   |   |   |   |   12.5.0:     	( 0.023939s |  0.11% |  0.00% )   	( 0.023797s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003871s |  0.01% |  0.00% )   	( 0.004336s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p23
|   |   |   |   |   35.5.0:     	( 0.003568s |  0.01% |  0.00% )   	( 0.003999s |  0.01% |  0.00% )    	(21x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p23
|   |   |   |-- 134.4.0:        	( 0.000155s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p23_PID})
|   |   |   1395.3.0:           	( 16.990634s |  3.09% |  3.09% )   	( 15.858001s |  3.15% |  3.15% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p24 p24_PID >>
|   |   |   |-- 1.4.0:          	( 0.001110s |  0.00% |  0.00% )   	( 0.001123s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000146s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p24
|   |   |   |   |   12.5.0:     	( 0.026207s |  0.15% |  0.00% )   	( 0.026119s |  0.16% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005284s |  0.03% |  0.00% )   	( 0.005916s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p24
|   |   |   |   |   35.5.0:     	( 0.005027s |  0.02% |  0.00% )   	( 0.005658s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p24
|   |   |   |-- 134.4.0:        	( 0.000185s |  0.00% |  0.00% )   	( 0.000210s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p24_PID})
|   |   |   1395.3.0:           	( 17.375348s |  3.16% |  3.16% )   	( 16.401090s |  3.26% |  3.26% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p25 p25_PID >>
|   |   |   |-- 1.4.0:          	( 0.001199s |  0.00% |  0.00% )   	( 0.001223s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000148s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p25
|   |   |   |   |   12.5.0:     	( 0.023850s |  0.13% |  0.00% )   	( 0.023761s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004802s |  0.02% |  0.00% )   	( 0.005406s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p25
|   |   |   |   |   35.5.0:     	( 0.004627s |  0.02% |  0.00% )   	( 0.005202s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p25
|   |   |   |-- 134.4.0:        	( 0.000150s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p25_PID})
|   |   |   1395.3.0:           	( 18.218642s |  3.32% |  3.32% )   	( 17.833093s |  3.55% |  3.55% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p26 p26_PID >>
|   |   |   |-- 1.4.0:          	( 0.001211s |  0.00% |  0.00% )   	( 0.001225s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000164s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p26
|   |   |   |   |   12.5.0:     	( 0.028896s |  0.15% |  0.00% )   	( 0.028760s |  0.16% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002838s |  0.01% |  0.00% )   	( 0.003177s |  0.01% |  0.00% )    	(16x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p26
|   |   |   |   |   35.5.0:     	( 0.002659s |  0.01% |  0.00% )   	( 0.002977s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p26
|   |   |   |-- 134.4.0:        	( 0.000158s |  0.00% |  0.00% )   	( 0.000178s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p26_PID})
|   |   |   1395.3.0:           	( 17.643719s |  3.21% |  3.21% )   	( 17.283775s |  3.44% |  3.44% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p27 p27_PID >>
|   |   |   |-- 1.4.0:          	( 0.001135s |  0.00% |  0.00% )   	( 0.001158s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000155s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.VEuxJM"/.run/p27
|   |   |   |   |   12.5.0:     	( 0.024580s |  0.13% |  0.00% )   	( 0.024486s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.VEuxJM"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.VEuxJM"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.VEuxJM"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003462s |  0.01% |  0.00% )   	( 0.003884s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.VEuxJM"/.wait/p27
|   |   |   |   |   35.5.0:     	( 0.003292s |  0.01% |  0.00% )   	( 0.003677s |  0.02% |  0.00% )    	(19x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.VEuxJM"/.wait/p27
|   |   |   |-- 134.4.0:        	( 0.000165s |  0.00% |  0.00% )   	( 0.000185s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1397.3.0:           	( 0.000151s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1398.3.0:           	( 0.000142s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   : > "${tmpDir}"/.spawned
|   |   |   1399.3.0:           	( 0.000123s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1402.3.0:           	( 0.000116s |  0.00% |  0.00% )   	( 0.000135s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1407.3.0:           	( 0.001237s |  0.00% |  0.00% )   	( 0.001252s |  0.00% |  0.00% )    	(1x)	|   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1412.3.0:           	( 0.000127s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1474.3.0:           	( 0.000125s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1477.3.0:           	( 0.000115s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1484.3.0:           	( 23.795939s |  4.33% |  4.33% )   	( 0.001250s |  0.00% |  0.00% )    	(1x)	|   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1488.3.0:           	( 0.000071s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |-- 1493.3.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |-- ${nSpawnFlag}
|   |   1499.2.0:               	( 0.000082s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   wait
|-- |-- -248.2.0:               	( 0.003171s |  0.00% |  0.00% )   	( 0.002061s |  0.00% |  0.00% )    	(1x)	|-- |-- -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.VEuxJM" 2>/dev/null'

TOTAL RUN TIME: 548.545023s
TOTAL CPU TIME: 502.134341s
