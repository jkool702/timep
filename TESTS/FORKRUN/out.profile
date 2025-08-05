LINE.DEPTH.CMD NUMBER           	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:           	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
________________________________	________________________________	________________________________	____________________________________
9.0.0:                          	( 550.801479s |100.00% )          	( 502.578821s |100.00% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.1.0:                      	( 0.001355s |  0.00% |  0.00% )   	( 0.001108s |  0.00% |  0.00% )    	(1x)	|-- forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   425.1.0:                    	( 550.800124s | 99.99% | 99.99% )   	( 502.577713s | 99.99% | 99.99% )    	(1x)	|   << (SUBSHELL) >>
|   |-- 425.2.0:                	( 0.025924s |  0.00% |  0.00% )   	( 0.025863s |  0.00% |  0.00% )    	(1x)	|   |-- trap - EXIT INT TERM HUP USR1
|   |   110.2.0:                	( 0.000071s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   shopt -s extglob
|   |   113.2.0:                	( 0.000072s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   114.2.0:                	( 0.000123s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	|   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   115.2.0:                	( 0.000094s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	|   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   116.2.0:                	( 0.000080s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   117.2.0:                	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   122.2.0:                	( 0.000067s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   125.2.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ $# == 0 ]]
|   |   125.2.1:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   optParseFlag=true
|   |   126.2.0:                	( 0.000115s |  0.00% |  0.00% )   	( 0.000141s |  0.00% |  0.00% )    	(2x)	|   |   ${optParseFlag}
|   |   126.2.1:                	( 0.000122s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(2x)	|   |   (( $# > 0  ))
|   |   126.2.2:                	( 0.000117s |  0.00% |  0.00% )   	( 0.000140s |  0.00% |  0.00% )    	(2x)	|   |   [[ "$1" == [-+]* ]]
|   |   127.2.0:                	( 0.000090s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   case "${1}" in
|   |   254.2.0:                	( 0.000060s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   [[ "${1:0:1}" == '-' ]]
|   |   254.2.1:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   nullDelimiterFlag=true
|   |   318.2.0:                	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   shift 1
|   |   319.2.0:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   [[ ${#} == 0 ]]
|   |   323.2.0:                	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   [ -t "${fd_stdin0}" ]
|   |   332.2.0:                	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${tmpDirRoot} ]]
|   |   332.2.1:                	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   [[ -n ${TMPDIR} ]]
|   |   332.2.2:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   [[ -d '/dev/shm' ]]
|   |   332.2.3:                	( 0.000064s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   tmpDirRoot='/dev/shm'
|   |   334.2.0:                	( 0.000747s |  0.00% |  0.00% )   	( 0.000441s |  0.00% |  0.00% )    	(1x)	|   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   334.2.1:                	( 0.003600s |  0.00% |  0.00% )   	( 0.003600s |  0.00% |  0.00% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 334.3.0:            	( 0.003600s |100.00% |  0.00% )   	( 0.003600s |100.00% |  0.00% )    	(1x)	|   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   335.2.0:                	( 0.000062s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	|   |   fPath="${tmpDir}"/.stdin
|   |   337.2.0:                	( 0.001465s |  0.00% |  0.00% )   	( 0.001528s |  0.00% |  0.00% )    	(1x)	|   |   mkdir -p "${tmpDir}"/.run
|   |   338.2.0:                	( 0.000077s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   : > "${fPath}"
|   |   340.2.0:                	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   ${rmTmpDirFlag}
|   |   340.2.1:                	( 0.014276s |  0.00% |  0.00% )   	( 0.000894s |  0.00% |  0.00% )    	(1x)	|   |   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   348.2.0:                	( 550.743402s | 99.98% | 99.98% )   	( 502.537546s | 99.99% | 99.99% )    	(1x)	|   |   << (SUBSHELL) >>
|   |   |-- 348.3.0:            	( 0.000105s |  0.00% |  0.00% )   	( 0.000120s |  0.00% |  0.00% )    	(1x)	|   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1502.3.0:           	( 0.000272s |  0.00% |  0.00% )   	( 0.000310s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1502.4.0:       	( 0.001640s |100.00% |  0.00% )   	( 0.001919s |100.00% |  0.00% )    	(6x)	|   |   |   |-- :
|   |   |   1502.3.1:           	( 0.000282s |  0.00% |  0.00% )   	( 0.000331s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.2:           	( 0.000259s |  0.00% |  0.00% )   	( 0.000305s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.3:           	( 0.000259s |  0.00% |  0.00% )   	( 0.000306s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.4:           	( 0.000284s |  0.00% |  0.00% )   	( 0.000333s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   1502.3.5:           	( 0.000284s |  0.00% |  0.00% )   	( 0.000334s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   363.3.0:            	( 0.000107s |  0.00% |  0.00% )   	( 0.000124s |  0.00% |  0.00% )    	(1x)	|   |   |   LC_ALL=C
|   |   |   364.3.0:            	( 0.000091s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	|   |   |   LANG=C
|   |   |   365.3.0:            	( 0.000091s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	|   |   |   IFS=
|   |   |   367.3.0:            	( 0.000226s |  0.00% |  0.00% )   	( 0.000244s |  0.00% |  0.00% )    	(1x)	|   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   369.3.0:            	( 0.000101s |  0.00% |  0.00% )   	( 0.000117s |  0.00% |  0.00% )    	(1x)	|   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   370.3.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.008112s |  0.00% |  0.00% )    	(1x)	|   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   371.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   373.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   PID0="${BASHPID}"
|   |   |   375.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   shopt -s nullglob
|   |   |   378.3.0:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   380.3.0:            	( 0.000077s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	|   |   |   enable lseek &> /dev/null
|   |   |   381.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekFlag:=true}"
|   |   |   386.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   387.3.0:            	( 0.002898s |  0.00% |  0.00% )   	( 0.002952s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   387.3.1:            	( 0.000110s |  0.00% |  0.00% )   	( 0.000123s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 387.4.0:        	( 0.000110s |100.00% |  0.00% )   	( 0.000123s |100.00% |  0.00% )    	(1x)	|   |   |   |-- lseek $fd_read 0
|   |   |   387.3.2:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${lseekPosFlag:=true}"
|   |   |   391.3.0:            	( 0.000083s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   396.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   runCmd=("${@//''/}")
|   |   |   398.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   399.3.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   noFuncFlag=false
|   |   |   400.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   ${noFuncFlag}
|   |   |   401.3.0:            	( 0.000091s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   405.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   467.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nLines} ]]
|   |   |   467.3.1:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   468.3.0:            	( 0.000082s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -z ${nLines} ]]
|   |   |   468.3.1:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   nLines=1
|   |   |   472.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == '-'* ]]
|   |   |   477.3.0:            	( 0.000076s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nProcs}" == *','* ]]
|   |   |   481.3.0:            	( 0.000822s |  0.00% |  0.00% )   	( 0.000963s |  0.00% |  0.00% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.4.0:          	( 0.000059s |  7.17% |  0.00% )   	( 0.000071s |  7.37% |  0.00% )    	(1x)	|   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.4.0:          	( 0.000065s |  7.90% |  0.00% )   	( 0.000077s |  7.99% |  0.00% )    	(1x)	|   |   |   |   local +i -l nn
|   |   |   |   9.4.0:          	( 0.000062s |  7.54% |  0.00% )   	( 0.000074s |  7.68% |  0.00% )    	(1x)	|   |   |   |   local vOut
|   |   |   |   11.4.0:         	( 0.000066s |  8.02% |  0.00% )   	( 0.000078s |  8.09% |  0.00% )    	(1x)	|   |   |   |   local -n vOut="$1"
|   |   |   |   12.4.0:         	( 0.000063s |  7.66% |  0.00% )   	( 0.000075s |  7.78% |  0.00% )    	(1x)	|   |   |   |   shift 1
|   |   |   |   13.4.0:         	( 0.000070s |  8.51% |  0.00% )   	( 0.000078s |  8.09% |  0.00% )    	(1x)	|   |   |   |   local -g vOut
|   |   |   |   15.4.0:         	( 0.000062s |  7.54% |  0.00% )   	( 0.000074s |  7.68% |  0.00% )    	(1x)	|   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.4.1:         	( 0.000117s | 14.23% |  0.00% )   	( 0.000130s | 13.49% |  0.00% )    	(1x)	|   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.4.0:         	( 0.000061s |  7.42% |  0.00% )   	( 0.000074s |  7.68% |  0.00% )    	(1x)	|   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.4.0:         	( 0.000062s |  7.54% |  0.00% )   	( 0.000074s |  7.68% |  0.00% )    	(1x)	|   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.4.1:         	( 0.000065s |  7.90% |  0.00% )   	( 0.000076s |  7.89% |  0.00% )    	(1x)	|   |   |   |   continue
|   |   |   |-- 28.4.0:         	( 0.000070s |  8.51% |  0.00% )   	( 0.000082s |  8.51% |  0.00% )    	(1x)	|   |   |   |-- local +n vOut
|   |   |   483.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   485.3.0:            	( 0.008934s |  0.00% |  0.00% )   	( 0.009052s |  0.00% |  0.00% )    	(1x)	|   |   |   nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   485.3.1:            	( 0.002960s |  0.00% |  0.00% )   	( 0.003114s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 485.4.0:        	( 0.000303s | 10.23% |  0.00% )   	( 0.000326s | 10.46% |  0.00% )    	(1x)	|   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 485.4.1:        	( 0.002657s | 89.76% |  0.00% )   	( 0.002788s | 89.53% |  0.00% )    	(1x)	|   |   |   |-- nproc
|   |   |   486.3.0:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nCPU < 1 ))
|   |   |   487.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ -n ${nProcs} ]]
|   |   |   487.3.1:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   487.3.2:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   nProcs=${nCPU}
|   |   |   489.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   493.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   493.3.1:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nSpawnFlag:=false}"
|   |   |   499.3.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   501.3.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	|   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   504.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   504.3.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   504.3.2:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   (( nLinesMax < nLines ))
|   |   |   506.3.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   doneIndicatorFlag=false
|   |   |   509.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.3.0:            	( 0.000182s |  0.00% |  0.00% )   	( 0.000195s |  0.00% |  0.00% )    	(1x)	|   |   |   type -a fallocate &> /dev/null
|   |   |   515.3.1:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   515.3.2:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${fallocateFlag:=true}"
|   |   |   518.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${exportOrderFlag}
|   |   |   521.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${readBytesFlag}
|   |   |   522.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   523.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nullDelimiterFlag}
|   |   |   524.3.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	|   |   |   delimiterReadStr="-d ''"
|   |   |   525.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   ${lseekFlag}
|   |   |   525.3.1:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:='lseek'}"
|   |   |   526.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${nullDelimiterProg:=bash}"
|   |   |   527.3.0:            	( 0.000105s |  0.00% |  0.00% )   	( 0.000116s |  0.00% |  0.00% )    	(1x)	|   |   |   type -p dd &> /dev/null
|   |   |   528.3.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   ddAvailableFlag=true
|   |   |   529.3.0:            	( 0.004977s |  0.00% |  0.00% )   	( 0.007855s |  0.00% |  0.00% )    	(1x)	|   |   |   dd --version | grep -qF 'coreutils'
|   |   |   530.3.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ddQuietStr='status=none'
|   |   |   537.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   538.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   539.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   nullDelimiterProg=''
|   |   |   557.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${unescapeFlag}
|   |   |   566.3.0:            	( 0.003027s |  0.00% |  0.00% )   	( 0.003143s |  0.00% |  0.00% )    	(1x)	|   |   |   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   566.3.1:            	( 0.000086s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 566.4.0:        	( 0.000086s |100.00% |  0.00% )   	( 0.000095s |100.00% |  0.00% )    	(1x)	|   |   |   |-- printf '%q\n' "${runCmd[@]}"
|   |   |   567.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringFlag}
|   |   |   570.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${substituteStringIDFlag}
|   |   |   576.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   nLinesCur=${nLines}
|   |   |   578.3.0:            	( 0.002392s |  0.00% |  0.00% )   	( 0.002461s |  0.00% |  0.00% )    	(1x)	|   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   579.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   582.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   ${rmTmpDirFlag}
|   |   |   584.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 0 ))
|   |   |   615.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   617.3.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	|   |   |   evfd_init
|   |   |   622.3.0:            	( 0.000073s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   624.3.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   ${pipeReadFlag}
|   |   |   628.3.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesReadLimitFlag}
|   |   |   638.3.0:            	( 0.000512s |  0.00% |  0.00% )   	( 0.000524s |  0.00% |  0.00% )    	(1x)	|   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   644.3.0:            	( 0.077716s |  0.01% |  0.01% )   	( 0.077610s |  0.01% |  0.01% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 644.4.0:        	( 0.000079s |  0.10% |  0.00% )   	( 0.000091s |  0.11% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   646.4.0:        	( 0.011245s | 14.46% |  0.00% )   	( 0.011204s | 14.43% |  0.00% )    	(1x)	|   |   |   |   trap - EXIT
|   |   |   |   647.4.0:        	( 0.012178s | 15.66% |  0.00% )   	( 0.012161s | 15.66% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   648.4.0:        	( 0.012197s | 15.69% |  0.00% )   	( 0.012176s | 15.68% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   649.4.0:        	( 0.012285s | 15.80% |  0.00% )   	( 0.012253s | 15.78% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   650.4.0:        	( 0.012177s | 15.66% |  0.00% )   	( 0.012157s | 15.66% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   652.4.0:        	( 0.000064s |  0.08% |  0.00% )   	( 0.000076s |  0.09% |  0.00% )    	(1x)	|   |   |   |   case ${writeFileProgType} in
|   |   |   |   653.4.0:        	( 0.017254s | 22.20% |  0.00% )   	( 0.017221s | 22.18% |  0.00% )    	(1x)	|   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   658.4.0:        	( 0.000089s |  0.11% |  0.00% )   	( 0.000101s |  0.13% |  0.00% )    	(1x)	|   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   659.4.0:        	( 0.000068s |  0.08% |  0.00% )   	( 0.000080s |  0.10% |  0.00% )    	(1x)	|   |   |   |   evfd_signal
|   |   |   |-- 660.4.0:        	( 0.000080s |  0.10% |  0.00% )   	( 0.000090s |  0.11% |  0.00% )    	(1x)	|   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   668.3.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   673.3.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   715.3.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   outStr='>&'"${fd_stdout}"
|   |   |   719.3.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nLinesAutoFlag}
|   |   |   721.3.0:            	( 0.000392s |  0.00% |  0.00% )   	( 0.000416s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   731.3.0:            	( 5.469397s |  0.99% |  0.99% )   	( 1.701673s |  0.33% |  0.33% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 731.4.0:        	( 0.000084s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   733.4.0:        	( 0.012242s |  0.22% |  0.00% )   	( 0.012223s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   734.4.0:        	( 0.012175s |  0.22% |  0.00% )   	( 0.012158s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   735.4.0:        	( 0.012276s |  0.22% |  0.00% )   	( 0.012258s |  0.72% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   736.4.0:        	( 0.012182s |  0.22% |  0.00% )   	( 0.012165s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   737.4.0:        	( 0.012177s |  0.22% |  0.00% )   	( 0.012160s |  0.71% |  0.00% )    	(1x)	|   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   739.4.0:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   740.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   741.4.0:        	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fd_read_pos_old=0
|   |   |   |   743.4.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=0
|   |   |   |   745.4.0:        	( 0.085802s |  1.56% |  0.01% )   	( 0.098934s |  5.81% |  0.01% )    	(679x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   747.4.0:        	( 4.060574s | 74.24% |  0.73% )   	( 0.116836s |  6.86% |  0.02% )    	(678x)	|   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   747.4.1:        	( 0.001719s |  0.03% |  0.00% )   	( 0.001963s |  0.11% |  0.00% )    	(11x)	|   |   |   |   continue
|   |   |   |   749.4.0:        	( 0.083668s |  1.52% |  0.01% )   	( 0.096714s |  5.68% |  0.01% )    	(667x)	|   |   |   |   case ${REPLY} in
|   |   |   |   763.4.0:        	( 0.082539s |  1.50% |  0.01% )   	( 0.095537s |  5.61% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   764.4.0:        	( 0.000177s |  0.00% |  0.00% )   	( 0.000205s |  0.01% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   767.4.0:        	( 0.000188s |  0.00% |  0.00% )   	( 0.000213s |  0.01% |  0.00% )    	(1x)	|   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   773.4.0:        	( 0.082814s |  1.51% |  0.01% )   	( 0.095697s |  5.62% |  0.01% )    	(667x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   774.4.0:        	( 0.086096s |  1.57% |  0.01% )   	( 0.098814s |  5.80% |  0.01% )    	(667x)	|   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   775.4.0:        	( 0.085680s |  1.56% |  0.01% )   	( 0.098493s |  5.78% |  0.01% )    	(667x)	|   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   782.4.0:        	( 0.082112s |  1.50% |  0.01% )   	( 0.095010s |  5.58% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   782.4.1:        	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   784.4.0:        	( 0.082418s |  1.50% |  0.01% )   	( 0.095253s |  5.59% |  0.01% )    	(667x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   786.4.0:        	( 0.082515s |  1.50% |  0.01% )   	( 0.095267s |  5.59% |  0.01% )    	(667x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   788.4.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   790.4.0:        	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   791.4.0:        	( 0.006625s |  0.12% |  0.00% )   	( 0.007170s |  0.42% |  0.00% )    	(1x)	|   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   791.4.1:        	( 0.003289s |  0.06% |  0.00% )   	( 0.003757s |  0.22% |  0.00% )    	(1x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 791.5.0:    	( 0.003289s |100.00% |  0.00% )   	( 0.003757s |100.00% |  0.00% )    	(1x)	|   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   792.4.0:        	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   793.4.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   796.4.0:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   798.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   800.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   800.4.1:        	( 0.000114s |  0.00% |  0.00% )   	( 0.000132s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   800.4.2:        	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   802.4.0:        	( 0.000090s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	|   |   |   |   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   805.4.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   807.4.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   811.4.0:        	( 0.082456s |  1.50% |  0.01% )   	( 0.095381s |  5.60% |  0.01% )    	(667x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   812.4.0:        	( 0.081362s |  1.48% |  0.01% )   	( 0.094147s |  5.53% |  0.01% )    	(667x)	|   |   |   |   case ${nWait} in
|   |   |   |   823.4.0:        	( 0.081037s |  1.48% |  0.01% )   	( 0.092083s |  5.41% |  0.01% )    	(646x)	|   |   |   |   ((nWait--))
|   |   |   |   828.4.0:        	( 0.085820s |  1.56% |  0.01% )   	( 0.098855s |  5.80% |  0.01% )    	(667x)	|   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   763.4.1:        	( 0.083666s |  1.52% |  0.01% )   	( 0.096489s |  5.67% |  0.01% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   782.4.1:        	( 0.082746s |  1.51% |  0.01% )   	( 0.095649s |  5.62% |  0.01% )    	(666x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   814.4.0:        	( 0.002625s |  0.04% |  0.00% )   	( 0.003028s |  0.17% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   815.4.0:        	( 0.002563s |  0.04% |  0.00% )   	( 0.002960s |  0.17% |  0.00% )    	(21x)	|   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   816.4.0:        	( 0.063155s |  1.15% |  0.01% )   	( 0.044102s |  2.59% |  0.00% )    	(21x)	|   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   817.4.0:        	( 0.002816s |  0.05% |  0.00% )   	( 0.003160s |  0.18% |  0.00% )    	(21x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   818.4.0:        	( 0.002777s |  0.05% |  0.00% )   	( 0.003188s |  0.18% |  0.00% )    	(21x)	|   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   820.4.0:        	( 0.002916s |  0.05% |  0.00% )   	( 0.003329s |  0.19% |  0.00% )    	(21x)	|   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   829.4.0:        	( 0.000099s |  0.00% |  0.00% )   	( 0.000115s |  0.00% |  0.00% )    	(1x)	|   |   |   |   nLinesAutoFlag=false
|   |   |   |   830.4.0:        	( 0.000098s |  0.00% |  0.00% )   	( 0.000115s |  0.00% |  0.00% )    	(1x)	|   |   |   |   fallocateFlag=false
|   |   |   |   831.4.0:        	( 0.000168s |  0.00% |  0.00% )   	( 0.000183s |  0.01% |  0.00% )    	(1x)	|   |   |   |   nSpawnFlag=false
|   |   |   |   745.4.1:        	( 0.000135s |  0.00% |  0.00% )   	( 0.000158s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   745.4.2:        	( 0.000146s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- -248.4.0:       	( 0.006291s |  0.11% |  0.00% )   	( 0.006271s |  0.36% |  0.00% )    	(1x)	|   |   |   |-- -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.LZ8dux"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/pAuto'
|   |   |   839.3.0:            	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   840.3.0:            	( 0.000098s |  0.00% |  0.00% )   	( 0.000111s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   876.3.0:            	( 0.000094s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1345.3.0:           	( 0.001815s |  0.00% |  0.00% )   	( 0.001069s |  0.00% |  0.00% )    	(1x)	|   |   |   coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1362.3.0:           	( 0.005116s |  0.00% |  0.00% )   	( 0.005892s |  0.00% |  0.00% )    	(1x)	|   |   |   << (SUBSHELL) >>
|   |   |   |-- 1362.4.0:       	( 0.000398s |  7.77% |  0.00% )   	( 0.000442s |  7.50% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1363.4.0:       	( 0.000266s |  5.19% |  0.00% )   	( 0.000308s |  5.22% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1363.4.1:       	( 0.000081s |  1.58% |  0.00% )   	( 0.000093s |  1.57% |  0.00% )    	(1x)	|   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1371.4.0:       	( 0.000215s |  4.20% |  0.00% )   	( 0.000227s |  3.85% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1372.4.0:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000076s |  1.28% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1444.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1447.4.0:       	( 0.000063s |  1.23% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   echo "{"
|   |   |   |   1448.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000073s |  1.23% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1449.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1449.4.1:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000076s |  1.28% |  0.00% )    	(1x)	|   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1450.4.0:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "mapfile"
|   |   |   |   1451.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000073s |  1.23% |  0.00% )    	(1x)	|   |   |   |   ${lseekFlag}
|   |   |   |   1451.4.1:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1452.4.0:       	( 0.000066s |  1.29% |  0.00% )   	( 0.000077s |  1.30% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1453.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000073s |  1.23% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1453.4.1:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' ${fd_read}
|   |   |   |   1454.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1454.4.1:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1454.4.2:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' '-t'
|   |   |   |   1456.4.0:       	( 0.000066s |  1.29% |  0.00% )   	( 0.000078s |  1.32% |  0.00% )    	(1x)	|   |   |   |   echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1457.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000073s |  1.23% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1457.4.1:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1457.4.2:       	( 0.000089s |  1.73% |  0.00% )   	( 0.000100s |  1.69% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1514.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000073s |  1.23% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1514.4.1:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1514.4.2:       	( 0.000067s |  1.30% |  0.00% )   	( 0.000078s |  1.32% |  0.00% )    	(1x)	|   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1515.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000076s |  1.28% |  0.00% )    	(1x)	|   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1528.4.0:       	( 0.000098s |  1.91% |  0.00% )   	( 0.000110s |  1.86% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1529.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000073s |  1.23% |  0.00% )    	(1x)	|   |   |   |   ${lseekPosFlag}
|   |   |   |   1532.4.0:       	( 0.000074s |  1.44% |  0.00% )   	( 0.000085s |  1.44% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1543.4.0:       	( 0.000079s |  1.54% |  0.00% )   	( 0.000086s |  1.45% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1544.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1544.4.1:       	( 0.000082s |  1.60% |  0.00% )   	( 0.000093s |  1.57% |  0.00% )    	(1x)	|   |   |   |   echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1545.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000076s |  1.28% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1546.4.0:       	( 0.000063s |  1.23% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |   1551.4.0:       	( 0.000073s |  1.42% |  0.00% )   	( 0.000085s |  1.44% |  0.00% )    	(1x)	|   |   |   |   echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1552.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1556.4.0:       	( 0.000089s |  1.73% |  0.00% )   	( 0.000101s |  1.71% |  0.00% )    	(1x)	|   |   |   |   echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1557.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1557.4.1:       	( 0.000085s |  1.66% |  0.00% )   	( 0.000096s |  1.62% |  0.00% )    	(1x)	|   |   |   |   printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1562.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000073s |  1.23% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1562.4.1:       	( 0.000083s |  1.62% |  0.00% )   	( 0.000095s |  1.61% |  0.00% )    	(1x)	|   |   |   |   printf '%s' ' || '
|   |   |   |   1563.4.0:       	( 0.000062s |  1.21% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${fallocateFlag}
|   |   |   |   1563.4.1:       	( 0.000086s |  1.68% |  0.00% )   	( 0.000090s |  1.52% |  0.00% )    	(1x)	|   |   |   |   echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1564.4.0:       	( 0.000060s |  1.17% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${pipeReadFlag}
|   |   |   |   1564.4.1:       	( 0.000064s |  1.25% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1572.4.0:       	( 0.000059s |  1.15% |  0.00% )   	( 0.000070s |  1.18% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1572.4.1:       	( 0.000069s |  1.34% |  0.00% )   	( 0.000080s |  1.35% |  0.00% )    	(1x)	|   |   |   |   echo '{'
|   |   |   |   1573.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1573.4.1:       	( 0.000066s |  1.29% |  0.00% )   	( 0.000076s |  1.28% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1574.4.0:       	( 0.000063s |  1.23% |  0.00% )   	( 0.000074s |  1.25% |  0.00% )    	(1x)	|   |   |   |   ${exportOrderFlag}
|   |   |   |   1575.4.0:       	( 0.000101s |  1.97% |  0.00% )   	( 0.000112s |  1.90% |  0.00% )    	(1x)	|   |   |   |   printf '%s ' "${runCmd[@]}"
|   |   |   |   1576.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1583.4.0:       	( 0.000058s |  1.13% |  0.00% )   	( 0.000069s |  1.17% |  0.00% )    	(1x)	|   |   |   |   ${stdinRunFlag}
|   |   |   |   1586.4.0:       	( 0.000059s |  1.15% |  0.00% )   	( 0.000071s |  1.20% |  0.00% )    	(1x)	|   |   |   |   ${noFuncFlag}
|   |   |   |   1589.4.0:       	( 0.000061s |  1.19% |  0.00% )   	( 0.000072s |  1.22% |  0.00% )    	(1x)	|   |   |   |   ${substituteStringFlag}
|   |   |   |   1590.4.0:       	( 0.000079s |  1.54% |  0.00% )   	( 0.000090s |  1.52% |  0.00% )    	(1x)	|   |   |   |   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1595.4.0:       	( 0.000066s |  1.29% |  0.00% )   	( 0.000078s |  1.32% |  0.00% )    	(1x)	|   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1607.4.0:       	( 0.000063s |  1.23% |  0.00% )   	( 0.000075s |  1.27% |  0.00% )    	(1x)	|   |   |   |   ${readBytesFlag}
|   |   |   |   1608.4.0:       	( 0.000059s |  1.15% |  0.00% )   	( 0.000069s |  1.17% |  0.00% )    	(1x)	|   |   |   |   ${subshellRunFlag}
|   |   |   |   1608.4.1:       	( 0.000080s |  1.56% |  0.00% )   	( 0.000092s |  1.56% |  0.00% )    	(1x)	|   |   |   |   printf '\n%s ' '}'
|   |   |   |   1609.4.0:       	( 0.000066s |  1.29% |  0.00% )   	( 0.000078s |  1.32% |  0.00% )    	(1x)	|   |   |   |   echo "${outStr}"
|   |   |   |   1610.4.0:       	( 0.000069s |  1.34% |  0.00% )   	( 0.000077s |  1.30% |  0.00% )    	(1x)	|   |   |   |   ${nOrderFlag}
|   |   |   |   1611.4.0:       	( 0.000065s |  1.27% |  0.00% )   	( 0.000076s |  1.28% |  0.00% )    	(1x)	|   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1616.4.0:       	( 0.000099s |  1.93% |  0.00% )   	( 0.000111s |  1.88% |  0.00% )    	(1x)	|   |   |   |-- echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1350.3.0:           	( 0.000250s |  0.00% |  0.00% )   	( 0.000289s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1355.3.0:           	( 0.000257s |  0.00% |  0.00% )   	( 0.000297s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1360.3.0:           	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	|   |   |   exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1362.3.0:           	( 0.012471s |  0.00% |  0.00% )   	( 0.012449s |  0.00% |  0.00% )    	(1x)	|   |   |   trap "${exitTrapStr}" EXIT
|   |   |   1367.3.0:           	( 0.012357s |  0.00% |  0.00% )   	( 0.098242s |  0.01% |  0.01% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1372.3.0:           	( 0.012200s |  0.00% |  0.00% )   	( 0.012182s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1377.3.0:           	( 0.012120s |  0.00% |  0.00% )   	( 0.012081s |  0.00% |  0.00% )    	(1x)	|   |   |   trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1379.3.0:           	( 0.000057s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1380.3.0:           	( 0.000057s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1382.3.0:           	( 0.000063s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1393.3.0:           	( 0.000071s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	|   |   |   printf '\n' >&${fd_continue}
|   |   |   1396.3.0:           	( 0.000057s |  0.00% |  0.00% )   	( 0.000067s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1397.3.0:           	( 0.000056s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	|   |   |   ((kkProcs=0 ))
|   |   |   1397.3.1:           	( 0.002741s |  0.00% |  0.00% )   	( 0.003162s |  0.00% |  0.00% )    	(29x)	|   |   |   ((kkProcs<28 ))
|   |   |   1398.3.0:           	( 0.002582s |  0.00% |  0.00% )   	( 0.002994s |  0.00% |  0.00% )    	(28x)	|   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1399.3.0:           	( 18.107550s |  3.28% |  3.28% )   	( 17.645651s |  3.51% |  3.51% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p0 p0_PID >>
|   |   |   |-- 1.4.0:          	( 0.000559s |  0.00% |  0.00% )   	( 0.000572s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p0 p0_PID (&)
|   |   |   |   73.4.0:         	( 521.181722s | 99.99% | 94.62% )   	( 500.526972s | 99.99% | 99.59% )    	(28x)	|   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 73.5.0:     	( 0.005347s |  0.00% |  0.00% )   	( 0.006014s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.LZ8dux"
|   |   |   |   |   8.5.0:      	( 0.000240s |  0.00% |  0.00% )   	( 0.000273s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p0
|   |   |   |   |   12.5.0:     	( 0.014878s |  0.08% |  0.00% )   	( 0.014851s |  0.08% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.5.0:     	( 0.541495s |  0.09% |  0.09% )   	( 0.538897s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -INT 61576 ${BASHPID}' INT
|   |   |   |   |   15.5.0:     	( 0.526474s |  0.09% |  0.09% )   	( 0.521423s |  0.09% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -TERM 61576 ${BASHPID}' TERM
|   |   |   |   |   16.5.0:     	( 0.535231s |  0.09% |  0.09% )   	( 0.533631s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1; kill -HUP 61576 ${BASHPID}' HUP
|   |   |   |   |   17.5.0:     	( 0.529474s |  0.09% |  0.09% )   	( 0.527784s |  0.10% |  0.10% )    	(28x)	|   |   |   |   |   trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.5.0:     	( 0.107367s |  0.01% |  0.01% )   	( 0.121476s |  0.01% |  0.02% )    	(695x)	|   |   |   |   |   true
|   |   |   |   |   20.5.0:     	( 0.094172s |  0.01% |  0.01% )   	( 0.107747s |  0.01% |  0.02% )    	(695x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.5.1:     	( 0.003882s |  0.00% |  0.00% )   	( 0.004371s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   read -r < "/dev/shm/.forkrun.LZ8dux"/.nLines
|   |   |   |   |   20.5.2:     	( 0.003210s |  0.00% |  0.00% )   	( 0.003719s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.5.3:     	( 0.003090s |  0.00% |  0.00% )   	( 0.003607s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.5.0:     	( 0.003332s |  0.01% |  0.00% )   	( 0.003759s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p0
|   |   |   |   |   23.5.0:     	( 3.577454s |  0.69% |  0.64% )   	( 0.142629s |  0.02% |  0.02% )    	(695x)	|   |   |   |   |   read -r -u 21 _
|   |   |   |   |   24.5.0:     	( 0.100364s |  0.01% |  0.01% )   	( 0.112927s |  0.01% |  0.02% )    	(695x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.LZ8dux"/.quit ]]
|   |   |   |   |   28.5.0:     	( 0.099505s |  0.01% |  0.01% )   	( 0.104832s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ -f "/dev/shm/.forkrun.LZ8dux"/.done ]]
|   |   |   |   |   28.5.1:     	( 0.093941s |  0.01% |  0.01% )   	( 0.102567s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.5.0:     	( 0.095006s |  0.01% |  0.01% )   	( 0.106250s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   evfd_wait 25
|   |   |   |   |   31.5.0:     	( 0.809764s |  0.15% |  0.14% )   	( 0.793952s |  0.15% |  0.15% )    	(668x)	|   |   |   |   |   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.5.0:     	( 0.166996s |  0.02% |  0.03% )   	( 0.112944s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   35.5.0:     	( 0.002935s |  0.01% |  0.00% )   	( 0.003296s |  0.01% |  0.00% )    	(19x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p0
|   |   |   |   |   36.5.0:     	( 0.091378s |  0.01% |  0.01% )   	( 0.102045s |  0.01% |  0.02% )    	(668x)	|   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.5.0:     	( 0.087020s |  0.01% |  0.01% )   	( 0.100141s |  0.01% |  0.01% )    	(667x)	|   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   57.5.0:     	( 0.003661s |  0.00% |  0.00% )   	( 0.004202s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.5.0:     	( 0.003275s |  0.00% |  0.00% )   	( 0.003819s |  0.00% |  0.00% )    	(33x)	|   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.5.0:     	( 512.430101s | 98.29% | 93.03% )   	( 495.163294s | 98.91% | 98.52% )    	(667x)	|   |   |   |   |   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
|   |   |   |   |   |-- 1.6.0:  	( 0.083663s |  0.02% |  0.01% )   	( 0.097009s |  0.02% |  0.01% )    	(667x)	|   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.6.0:  	( 35.236952s |  6.95% |  6.39% )   	( 33.924620s |  6.93% |  6.75% )    	(667x)	|   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.6.0:  	( 60.308128s | 10.37% | 10.94% )   	( 58.777403s | 10.45% | 11.69% )    	(667x)	|   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.6.0: 	( 49.421693s |  9.61% |  8.97% )   	( 47.751609s |  9.61% |  9.50% )    	(667x)	|   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.6.0: 	( 59.998404s | 10.32% | 10.89% )   	( 58.350964s | 10.36% | 11.61% )    	(667x)	|   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.6.0: 	( 47.615168s |  9.13% |  8.64% )   	( 46.143446s |  9.16% |  9.18% )    	(667x)	|   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.6.0: 	( 31.539794s |  6.42% |  5.72% )   	( 30.285405s |  6.41% |  6.02% )    	(667x)	|   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.6.0: 	( 15.636568s |  4.19% |  2.83% )   	( 14.720761s |  4.14% |  2.92% )    	(667x)	|   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.6.0: 	( 33.294930s |  6.37% |  6.04% )   	( 31.916509s |  6.31% |  6.35% )    	(667x)	|   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.6.0: 	( 13.783375s |  3.96% |  2.50% )   	( 12.894821s |  3.88% |  2.56% )    	(667x)	|   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.6.0: 	( 41.847661s |  8.72% |  7.59% )   	( 40.067094s |  8.65% |  7.97% )    	(667x)	|   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.6.0: 	( 93.275922s | 15.02% | 16.93% )   	( 91.553383s | 15.23% | 18.21% )    	(667x)	|   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.6.0: 	( 15.455105s |  4.40% |  2.80% )   	( 14.672412s |  4.37% |  2.91% )    	(667x)	|   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.6.0: 	( 14.932738s |  4.39% |  2.71% )   	( 14.007858s |  4.34% |  2.78% )    	(667x)	|   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   58.5.1:     	( 0.003147s |  0.00% |  0.00% )   	( 0.003603s |  0.00% |  0.00% )    	(28x)	|   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   20.5.1:     	( 0.091754s |  0.01% |  0.01% )   	( 0.105063s |  0.01% |  0.02% )    	(662x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   56.5.1:     	( 0.083875s |  0.01% |  0.01% )   	( 0.096406s |  0.01% |  0.01% )    	(634x)	|   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   59.5.0:     	( 0.114228s |  0.01% |  0.02% )   	( 0.107183s |  0.01% |  0.02% )    	(634x)	|   |   |   |   |   printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.5.0:     	( 0.002802s |  0.00% |  0.00% )   	( 0.003225s |  0.00% |  0.00% )    	(27x)	|   |   |   |   |   printf '\n' 1>&21
|   |   |   |   |   26.5.0:     	( 0.002915s |  0.00% |  0.00% )   	( 0.003329s |  0.00% |  0.00% )    	(27x)	|   |   |   |   |   break
|   |   |   |   |-- 2.5.0:      	( 0.184020s |  0.03% |  0.03% )   	( 0.183176s |  0.03% |  0.03% )    	(28x)	|   |   |   |   |-- break
|   |   |   |-- 134.4.0:        	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p0_PID})
|   |   |   1397.3.0:           	( 0.002650s |  0.00% |  0.00% )   	( 0.003078s |  0.00% |  0.00% )    	(28x)	|   |   |   ((kkProcs++ ))
|   |   |   1399.3.0:           	( 19.238195s |  3.49% |  3.49% )   	( 18.675968s |  3.71% |  3.71% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p1 p1_PID >>
|   |   |   |-- 1.4.0:          	( 0.000523s |  0.00% |  0.00% )   	( 0.000544s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000161s |  0.00% |  0.00% )   	( 0.000184s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p1
|   |   |   |   |   12.5.0:     	( 0.012119s |  0.06% |  0.00% )   	( 0.012104s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.001803s |  0.00% |  0.00% )   	( 0.002032s |  0.01% |  0.00% )    	(12x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p1
|   |   |   |   |   35.5.0:     	( 0.001651s |  0.00% |  0.00% )   	( 0.001857s |  0.00% |  0.00% )    	(11x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p1
|   |   |   |-- 134.4.0:        	( 0.000084s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p1_PID})
|   |   |   1399.3.0:           	( 18.124560s |  3.29% |  3.29% )   	( 17.455229s |  3.47% |  3.47% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p2 p2_PID >>
|   |   |   |-- 1.4.0:          	( 0.000547s |  0.00% |  0.00% )   	( 0.000565s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p2
|   |   |   |   |   12.5.0:     	( 0.012230s |  0.06% |  0.00% )   	( 0.012215s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004189s |  0.02% |  0.00% )   	( 0.004708s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p2
|   |   |   |   |   35.5.0:     	( 0.004071s |  0.02% |  0.00% )   	( 0.004580s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p2
|   |   |   |-- 134.4.0:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p2_PID})
|   |   |   1399.3.0:           	( 17.569346s |  3.19% |  3.18% )   	( 16.623338s |  3.30% |  3.30% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p3 p3_PID >>
|   |   |   |-- 1.4.0:          	( 0.000531s |  0.00% |  0.00% )   	( 0.000549s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000276s |  0.00% |  0.00% )   	( 0.000317s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p3
|   |   |   |   |   12.5.0:     	( 0.012372s |  0.07% |  0.00% )   	( 0.012354s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004643s |  0.02% |  0.00% )   	( 0.005213s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p3
|   |   |   |   |   35.5.0:     	( 0.004256s |  0.02% |  0.00% )   	( 0.004804s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p3
|   |   |   |-- 134.4.0:        	( 0.000084s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p3_PID})
|   |   |   1399.3.0:           	( 17.823266s |  3.23% |  3.23% )   	( 16.950307s |  3.37% |  3.37% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p4 p4_PID >>
|   |   |   |-- 1.4.0:          	( 0.000546s |  0.00% |  0.00% )   	( 0.000565s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000344s |  0.00% |  0.00% )   	( 0.000381s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p4
|   |   |   |   |   12.5.0:     	( 0.013188s |  0.07% |  0.00% )   	( 0.013173s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004364s |  0.02% |  0.00% )   	( 0.004872s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p4
|   |   |   |   |   35.5.0:     	( 0.004137s |  0.02% |  0.00% )   	( 0.004642s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p4
|   |   |   |-- 134.4.0:        	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p4_PID})
|   |   |   1399.3.0:           	( 17.652424s |  3.20% |  3.20% )   	( 16.794225s |  3.34% |  3.34% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p5 p5_PID >>
|   |   |   |-- 1.4.0:          	( 0.000551s |  0.00% |  0.00% )   	( 0.000572s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000118s |  0.00% |  0.00% )   	( 0.000135s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p5
|   |   |   |   |   12.5.0:     	( 0.014316s |  0.08% |  0.00% )   	( 0.014295s |  0.08% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004309s |  0.02% |  0.00% )   	( 0.004822s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p5
|   |   |   |   |   35.5.0:     	( 0.003863s |  0.02% |  0.00% )   	( 0.004350s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p5
|   |   |   |-- 134.4.0:        	( 0.000092s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p5_PID})
|   |   |   1399.3.0:           	( 18.348169s |  3.33% |  3.33% )   	( 17.766023s |  3.53% |  3.53% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p6 p6_PID >>
|   |   |   |-- 1.4.0:          	( 0.000556s |  0.00% |  0.00% )   	( 0.000570s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p6
|   |   |   |   |   12.5.0:     	( 0.012496s |  0.06% |  0.00% )   	( 0.012479s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002917s |  0.01% |  0.00% )   	( 0.003289s |  0.01% |  0.00% )    	(18x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p6
|   |   |   |   |   35.5.0:     	( 0.002761s |  0.01% |  0.00% )   	( 0.003088s |  0.01% |  0.00% )    	(17x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p6
|   |   |   |-- 134.4.0:        	( 0.000092s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p6_PID})
|   |   |   1399.3.0:           	( 18.126551s |  3.29% |  3.29% )   	( 17.471496s |  3.47% |  3.47% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p7 p7_PID >>
|   |   |   |-- 1.4.0:          	( 0.000587s |  0.00% |  0.00% )   	( 0.000604s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p7
|   |   |   |   |   12.5.0:     	( 0.012498s |  0.06% |  0.00% )   	( 0.012481s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003644s |  0.02% |  0.00% )   	( 0.004088s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p7
|   |   |   |   |   35.5.0:     	( 0.003492s |  0.01% |  0.00% )   	( 0.003909s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p7
|   |   |   |-- 134.4.0:        	( 0.000087s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p7_PID})
|   |   |   1399.3.0:           	( 18.521018s |  3.36% |  3.36% )   	( 17.829224s |  3.54% |  3.54% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p8 p8_PID >>
|   |   |   |-- 1.4.0:          	( 0.000565s |  0.00% |  0.00% )   	( 0.000583s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000334s |  0.00% |  0.00% )   	( 0.000379s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p8
|   |   |   |   |   12.5.0:     	( 0.012521s |  0.06% |  0.00% )   	( 0.012504s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004528s |  0.02% |  0.00% )   	( 0.005074s |  0.02% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p8
|   |   |   |   |   35.5.0:     	( 0.004412s |  0.02% |  0.00% )   	( 0.004953s |  0.02% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p8
|   |   |   |-- 134.4.0:        	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p8_PID})
|   |   |   1399.3.0:           	( 17.567212s |  3.18% |  3.18% )   	( 16.794436s |  3.34% |  3.34% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p9 p9_PID >>
|   |   |   |-- 1.4.0:          	( 0.000582s |  0.00% |  0.00% )   	( 0.000598s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000366s |  0.00% |  0.00% )   	( 0.000403s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p9
|   |   |   |   |   12.5.0:     	( 0.012549s |  0.07% |  0.00% )   	( 0.012532s |  0.07% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004803s |  0.02% |  0.00% )   	( 0.005399s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p9
|   |   |   |   |   35.5.0:     	( 0.004553s |  0.02% |  0.00% )   	( 0.005135s |  0.03% |  0.00% )    	(27x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p9
|   |   |   |-- 134.4.0:        	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p9_PID})
|   |   |   1399.3.0:           	( 17.525797s |  3.18% |  3.18% )   	( 16.520244s |  3.28% |  3.28% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p10 p10_PID >>
|   |   |   |-- 1.4.0:          	( 0.000597s |  0.00% |  0.00% )   	( 0.000613s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000274s |  0.00% |  0.00% )   	( 0.000311s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p10
|   |   |   |   |   12.5.0:     	( 0.015109s |  0.08% |  0.00% )   	( 0.015083s |  0.09% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005074s |  0.02% |  0.00% )   	( 0.005672s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p10
|   |   |   |   |   35.5.0:     	( 0.004683s |  0.02% |  0.00% )   	( 0.005275s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p10
|   |   |   |-- 134.4.0:        	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p10_PID})
|   |   |   1399.3.0:           	( 18.056558s |  3.27% |  3.27% )   	( 17.550871s |  3.49% |  3.49% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p11 p11_PID >>
|   |   |   |-- 1.4.0:          	( 0.000632s |  0.00% |  0.00% )   	( 0.000653s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p11
|   |   |   |   |   12.5.0:     	( 0.019399s |  0.10% |  0.00% )   	( 0.019342s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003539s |  0.01% |  0.00% )   	( 0.003962s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p11
|   |   |   |   |   35.5.0:     	( 0.006368s |  0.03% |  0.00% )   	( 0.003784s |  0.02% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p11
|   |   |   |-- 134.4.0:        	( 0.000092s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p11_PID})
|   |   |   1399.3.0:           	( 17.632686s |  3.20% |  3.20% )   	( 16.829911s |  3.34% |  3.34% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p12 p12_PID >>
|   |   |   |-- 1.4.0:          	( 0.000781s |  0.00% |  0.00% )   	( 0.000804s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p12
|   |   |   |   |   12.5.0:     	( 0.023970s |  0.13% |  0.00% )   	( 0.023892s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004378s |  0.02% |  0.00% )   	( 0.004933s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p12
|   |   |   |   |   35.5.0:     	( 0.004104s |  0.02% |  0.00% )   	( 0.004606s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p12
|   |   |   |-- 134.4.0:        	( 0.000163s |  0.00% |  0.00% )   	( 0.000182s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p12_PID})
|   |   |   1399.3.0:           	( 20.037084s |  3.63% |  3.63% )   	( 19.301969s |  3.84% |  3.84% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p13 p13_PID >>
|   |   |   |-- 1.4.0:          	( 0.000922s |  0.00% |  0.00% )   	( 0.000942s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000092s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p13
|   |   |   |   |   12.5.0:     	( 0.016671s |  0.08% |  0.00% )   	( 0.016619s |  0.08% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003458s |  0.01% |  0.00% )   	( 0.003881s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p13
|   |   |   |   |   35.5.0:     	( 0.003163s |  0.01% |  0.00% )   	( 0.003567s |  0.01% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p13
|   |   |   |-- 134.4.0:        	( 0.000153s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p13_PID})
|   |   |   1399.3.0:           	( 17.401039s |  3.15% |  3.15% )   	( 16.520384s |  3.28% |  3.28% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p14 p14_PID >>
|   |   |   |-- 1.4.0:          	( 0.000964s |  0.00% |  0.00% )   	( 0.000982s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000203s |  0.00% |  0.00% )   	( 0.000231s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p14
|   |   |   |   |   12.5.0:     	( 0.032891s |  0.18% |  0.00% )   	( 0.032696s |  0.19% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004368s |  0.02% |  0.00% )   	( 0.004865s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p14
|   |   |   |   |   35.5.0:     	( 0.004277s |  0.02% |  0.00% )   	( 0.004829s |  0.02% |  0.00% )    	(26x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p14
|   |   |   |   |   37.5.0:     	( 0.000138s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.5.0:     	( 0.000165s |  0.00% |  0.00% )   	( 0.000188s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   47.5.0:     	( 0.000168s |  0.00% |  0.00% )   	( 0.000193s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.5.0:     	( 0.000173s |  0.00% |  0.00% )   	( 0.000193s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   : > "/dev/shm/.forkrun.LZ8dux"/.quit
|   |   |   |   |   50.5.0:     	( 0.000204s |  0.00% |  0.00% )   	( 0.000224s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   printf '%.0s\n' "/dev/shm/.forkrun.LZ8dux"/.run/p* 1>&21
|   |   |   |   |   51.5.0:     	( 0.000166s |  0.00% |  0.00% )   	( 0.000189s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   break
|   |   |   |-- 134.4.0:        	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p14_PID})
|   |   |   1399.3.0:           	( 20.932029s |  3.80% |  3.80% )   	( 20.312129s |  4.04% |  4.04% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p15 p15_PID >>
|   |   |   |-- 1.4.0:          	( 0.000928s |  0.00% |  0.00% )   	( 0.000951s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p15
|   |   |   |   |   12.5.0:     	( 0.012574s |  0.06% |  0.00% )   	( 0.012527s |  0.06% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004879s |  0.02% |  0.00% )   	( 0.005448s |  0.02% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p15
|   |   |   |   |   35.5.0:     	( 0.004587s |  0.02% |  0.00% )   	( 0.005158s |  0.02% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p15
|   |   |   |-- 134.4.0:        	( 0.000165s |  0.00% |  0.00% )   	( 0.000178s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p15_PID})
|   |   |   1399.3.0:           	( 17.358671s |  3.15% |  3.15% )   	( 16.507519s |  3.28% |  3.28% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p16 p16_PID >>
|   |   |   |-- 1.4.0:          	( 0.000972s |  0.00% |  0.00% )   	( 0.000994s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000154s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p16
|   |   |   |   |   12.5.0:     	( 0.023754s |  0.13% |  0.00% )   	( 0.023668s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005333s |  0.03% |  0.00% )   	( 0.005947s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p16
|   |   |   |   |   35.5.0:     	( 0.004953s |  0.02% |  0.00% )   	( 0.005578s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p16
|   |   |   |-- 134.4.0:        	( 0.000154s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p16_PID})
|   |   |   1399.3.0:           	( 17.553393s |  3.18% |  3.18% )   	( 16.867869s |  3.35% |  3.35% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p17 p17_PID >>
|   |   |   |-- 1.4.0:          	( 0.000956s |  0.00% |  0.00% )   	( 0.000980s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000158s |  0.00% |  0.00% )   	( 0.000179s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p17
|   |   |   |   |   12.5.0:     	( 0.027778s |  0.15% |  0.00% )   	( 0.027645s |  0.16% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004179s |  0.02% |  0.00% )   	( 0.004664s |  0.02% |  0.00% )    	(25x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p17
|   |   |   |   |   35.5.0:     	( 0.003928s |  0.02% |  0.00% )   	( 0.004442s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p17
|   |   |   |-- 134.4.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000171s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p17_PID})
|   |   |   1399.3.0:           	( 17.166405s |  3.11% |  3.11% )   	( 16.083277s |  3.20% |  3.20% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p18 p18_PID >>
|   |   |   |-- 1.4.0:          	( 0.000929s |  0.00% |  0.00% )   	( 0.000952s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000146s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p18
|   |   |   |   |   12.5.0:     	( 0.023834s |  0.13% |  0.00% )   	( 0.023757s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005465s |  0.03% |  0.00% )   	( 0.006105s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p18
|   |   |   |   |   35.5.0:     	( 0.004921s |  0.02% |  0.00% )   	( 0.005520s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p18
|   |   |   |-- 134.4.0:        	( 0.000155s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p18_PID})
|   |   |   1399.3.0:           	( 18.056666s |  3.27% |  3.27% )   	( 17.406641s |  3.46% |  3.46% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p19 p19_PID >>
|   |   |   |-- 1.4.0:          	( 0.000953s |  0.00% |  0.00% )   	( 0.000976s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000150s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p19
|   |   |   |   |   12.5.0:     	( 0.024810s |  0.13% |  0.00% )   	( 0.024730s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003897s |  0.02% |  0.00% )   	( 0.004385s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p19
|   |   |   |   |   35.5.0:     	( 0.003762s |  0.02% |  0.00% )   	( 0.004218s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p19
|   |   |   |-- 134.4.0:        	( 0.000157s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p19_PID})
|   |   |   1399.3.0:           	( 20.543557s |  3.73% |  3.72% )   	( 19.953659s |  3.97% |  3.97% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p20 p20_PID >>
|   |   |   |-- 1.4.0:          	( 0.000955s |  0.00% |  0.00% )   	( 0.000980s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000166s |  0.00% |  0.00% )   	( 0.000189s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p20
|   |   |   |   |   12.5.0:     	( 0.024440s |  0.11% |  0.00% )   	( 0.024342s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003733s |  0.01% |  0.00% )   	( 0.004177s |  0.02% |  0.00% )    	(21x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p20
|   |   |   |   |   35.5.0:     	( 0.003448s |  0.01% |  0.00% )   	( 0.003878s |  0.01% |  0.00% )    	(20x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p20
|   |   |   |-- 134.4.0:        	( 0.000140s |  0.00% |  0.00% )   	( 0.000160s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p20_PID})
|   |   |   1399.3.0:           	( 21.860878s |  3.96% |  3.96% )   	( 21.301474s |  4.23% |  4.23% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p21 p21_PID >>
|   |   |   |-- 1.4.0:          	( 0.000979s |  0.00% |  0.00% )   	( 0.001006s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000167s |  0.00% |  0.00% )   	( 0.000183s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p21
|   |   |   |   |   12.5.0:     	( 0.025109s |  0.11% |  0.00% )   	( 0.024207s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.002609s |  0.01% |  0.00% )   	( 0.002908s |  0.01% |  0.00% )    	(15x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p21
|   |   |   |   |   35.5.0:     	( 0.002367s |  0.01% |  0.00% )   	( 0.002642s |  0.01% |  0.00% )    	(14x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p21
|   |   |   |-- 134.4.0:        	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p21_PID})
|   |   |   1399.3.0:           	( 20.693705s |  3.75% |  3.75% )   	( 20.062755s |  3.99% |  3.99% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p22 p22_PID >>
|   |   |   |-- 1.4.0:          	( 0.000954s |  0.00% |  0.00% )   	( 0.000974s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000153s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p22
|   |   |   |   |   12.5.0:     	( 0.023904s |  0.11% |  0.00% )   	( 0.023814s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004172s |  0.02% |  0.00% )   	( 0.004682s |  0.02% |  0.00% )    	(24x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p22
|   |   |   |   |   35.5.0:     	( 0.003990s |  0.01% |  0.00% )   	( 0.004468s |  0.02% |  0.00% )    	(23x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p22
|   |   |   |-- 134.4.0:        	( 0.000180s |  0.00% |  0.00% )   	( 0.000198s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p22_PID})
|   |   |   1399.3.0:           	( 17.673839s |  3.20% |  3.20% )   	( 16.785949s |  3.34% |  3.33% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p23 p23_PID >>
|   |   |   |-- 1.4.0:          	( 0.000886s |  0.00% |  0.00% )   	( 0.000910s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000148s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p23
|   |   |   |   |   12.5.0:     	( 0.024124s |  0.13% |  0.00% )   	( 0.024037s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004776s |  0.02% |  0.00% )   	( 0.005328s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p23
|   |   |   |   |   35.5.0:     	( 0.004665s |  0.02% |  0.00% )   	( 0.005246s |  0.03% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p23
|   |   |   |-- 134.4.0:        	( 0.000169s |  0.00% |  0.00% )   	( 0.000183s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p23_PID})
|   |   |   1399.3.0:           	( 22.351363s |  4.05% |  4.05% )   	( 21.703292s |  4.31% |  4.31% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p24 p24_PID >>
|   |   |   |-- 1.4.0:          	( 0.001045s |  0.00% |  0.00% )   	( 0.001067s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000185s |  0.00% |  0.00% )   	( 0.000203s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p24
|   |   |   |   |   12.5.0:     	( 0.026412s |  0.11% |  0.00% )   	( 0.026320s |  0.12% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.004684s |  0.02% |  0.00% )   	( 0.005283s |  0.02% |  0.00% )    	(29x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p24
|   |   |   |   |   35.5.0:     	( 0.004703s |  0.02% |  0.00% )   	( 0.005280s |  0.02% |  0.00% )    	(28x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p24
|   |   |   |-- 134.4.0:        	( 0.000144s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p24_PID})
|   |   |   1399.3.0:           	( 17.380699s |  3.15% |  3.15% )   	( 16.346100s |  3.25% |  3.25% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p25 p25_PID >>
|   |   |   |-- 1.4.0:          	( 0.001122s |  0.00% |  0.00% )   	( 0.001149s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000147s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p25
|   |   |   |   |   12.5.0:     	( 0.024106s |  0.13% |  0.00% )   	( 0.024015s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005167s |  0.02% |  0.00% )   	( 0.005818s |  0.03% |  0.00% )    	(30x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p25
|   |   |   |   |   35.5.0:     	( 0.004838s |  0.02% |  0.00% )   	( 0.005437s |  0.03% |  0.00% )    	(29x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p25
|   |   |   |-- 134.4.0:        	( 0.000160s |  0.00% |  0.00% )   	( 0.000186s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p25_PID})
|   |   |   1399.3.0:           	( 20.160389s |  3.66% |  3.66% )   	( 19.646780s |  3.90% |  3.90% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p26 p26_PID >>
|   |   |   |-- 1.4.0:          	( 0.001011s |  0.00% |  0.00% )   	( 0.001035s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p26
|   |   |   |   |   12.5.0:     	( 0.030613s |  0.15% |  0.00% )   	( 0.023498s |  0.11% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.003738s |  0.01% |  0.00% )   	( 0.004174s |  0.02% |  0.00% )    	(22x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p26
|   |   |   |   |   35.5.0:     	( 0.003451s |  0.01% |  0.00% )   	( 0.003891s |  0.01% |  0.00% )    	(21x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p26
|   |   |   |-- 134.4.0:        	( 0.000147s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p26_PID})
|   |   |   1399.3.0:           	( 17.744354s |  3.22% |  3.22% )   	( 16.846958s |  3.35% |  3.35% )    	(1x)	|   |   |   << (FUNCTION): main.forkrun.local p27 p27_PID >>
|   |   |   |-- 1.4.0:          	( 0.001012s |  0.00% |  0.00% )   	( 0.001033s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.5.0:      	( 0.000149s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	|   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.LZ8dux"/.run/p27
|   |   |   |   |   12.5.0:     	( 0.025217s |  0.14% |  0.00% )   	( 0.024970s |  0.14% |  0.00% )    	(1x)	|   |   |   |   |   trap ': >"/dev/shm/.forkrun.LZ8dux"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.LZ8dux"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.LZ8dux"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.5.0:     	( 0.005390s |  0.03% |  0.00% )   	( 0.006052s |  0.03% |  0.00% )    	(32x)	|   |   |   |   |   echo 1 > "/dev/shm/.forkrun.LZ8dux"/.wait/p27
|   |   |   |   |   35.5.0:     	( 0.005310s |  0.02% |  0.00% )   	( 0.005951s |  0.03% |  0.00% )    	(31x)	|   |   |   |   |   echo 0 > "/dev/shm/.forkrun.LZ8dux"/.wait/p27
|   |   |   |-- 134.4.0:        	( 0.000142s |  0.00% |  0.00% )   	( 0.000162s |  0.00% |  0.00% )    	(1x)	|   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1401.3.0:           	( 0.000159s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	|   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1402.3.0:           	( 0.000144s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	|   |   |   : > "${tmpDir}"/.spawned
|   |   |   1403.3.0:           	( 0.000120s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1406.3.0:           	( 0.000114s |  0.00% |  0.00% )   	( 0.000133s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1411.3.0:           	( 0.001207s |  0.00% |  0.00% )   	( 0.001222s |  0.00% |  0.00% )    	(1x)	|   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1416.3.0:           	( 0.000127s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nOrderFlag}
|   |   |   1478.3.0:           	( 0.000123s |  0.00% |  0.00% )   	( 0.000140s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1481.3.0:           	( 0.000115s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	|   |   |   ${nSpawnFlag}
|   |   |   1488.3.0:           	( 23.886619s |  4.33% |  4.33% )   	( 0.002022s |  0.00% |  0.00% )    	(1x)	|   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1492.3.0:           	( 0.000274s |  0.00% |  0.00% )   	( 0.000310s |  0.00% |  0.00% )    	(1x)	|   |   |   (( ${verboseLevel} > 1 ))
|   |   |-- 1497.3.0:           	( 0.000276s |  0.00% |  0.00% )   	( 0.000319s |  0.00% |  0.00% )    	(1x)	|   |   |-- ${nSpawnFlag}
|   |   1503.2.0:               	( 0.000301s |  0.00% |  0.00% )   	( 0.000350s |  0.00% |  0.00% )    	(1x)	|   |   wait
|-- |-- -248.2.0:               	( 0.008528s |  0.00% |  0.00% )   	( 0.005255s |  0.00% |  0.00% )    	(1x)	|-- |-- -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.LZ8dux" 2>/dev/null'

TOTAL RUN TIME: 550.801479s
TOTAL CPU TIME: 502.578821s
