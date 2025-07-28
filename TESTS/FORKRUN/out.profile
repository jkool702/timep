0.0:                        	(546.473078s|100.00%)	(39.968654s|100.00%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:                    	(0.000581s|00.00%|00.00%)	(0.000289s|00.00%|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   364.0:                    	(546.472497s|99.99%|99.99%)	(39.968365s|99.99%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 364.0:                	(0.018467s|00.00%|00.00%)	(0.018417s|00.04%|00.04%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000077s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000121s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000107s|00.00%|00.00%)	(0.000119s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000077s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000062s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000116s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000113s|00.00%|00.00%)	(0.000136s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000117s|00.00%|00.00%)	(0.000134s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   82.0:                	(0.000095s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:                	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:                	(0.000056s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:                	(0.000055s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:                	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000056s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000078s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.000671s|00.00%|00.00%)	(0.000359s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.002674s|00.00%|00.00%)	(0.002674s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.002674s|100.00%|00.00%)	(0.002674s|100.00%|00.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.001217s|00.00%|00.00%)	(0.000375s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000081s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000072s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.011188s|00.00%|00.00%)	(0.000289s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(546.435171s|24.99%|99.99%)	(39.943782s|24.98%|99.93%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000069s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000087s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.000501s|100.00%|00.00%)	(0.000578s|100.00%|00.00%)	(1x) :
|   |   |   1457.1:            	(0.000086s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000084s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000084s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000080s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000080s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000169s|00.00%|00.00%)	(0.000182s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000070s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000072s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.002790s|00.00%|00.00%)	(0.000471s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000106s|00.00%|00.00%)	(0.000117s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000106s|100.00%|00.00%)	(0.000117s|100.00%|00.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000066s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000083s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000063s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000750s|00.00%|00.00%)	(0.000872s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000054s|07.20%|00.00%)	(0.000064s|07.33%|00.00%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000060s|08.00%|00.00%)	(0.000069s|07.91%|00.00%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000059s|07.86%|00.00%)	(0.000068s|07.79%|00.00%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000059s|07.86%|00.00%)	(0.000070s|08.02%|00.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000058s|07.73%|00.00%)	(0.000068s|07.79%|00.00%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000061s|08.13%|00.00%)	(0.000072s|08.25%|00.00%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000058s|07.73%|00.00%)	(0.000069s|07.91%|00.00%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000108s|14.40%|00.00%)	(0.000119s|13.64%|00.00%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000056s|07.46%|00.00%)	(0.000066s|07.56%|00.00%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000056s|07.46%|00.00%)	(0.000066s|07.56%|00.00%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000059s|07.86%|00.00%)	(0.000069s|07.91%|00.00%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000062s|08.26%|00.00%)	(0.000072s|08.25%|00.00%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000061s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.004978s|00.00%|00.00%)	(0.000380s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.001594s|00.00%|00.00%)	(0.000932s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000162s|10.16%|00.00%)	(0.000175s|18.77%|00.00%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001432s|89.83%|00.00%)	(0.000757s|81.22%|00.00%)	(1x) nproc
|   |   |   441.0:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000067s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000088s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000150s|00.00%|00.00%)	(0.000160s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000078s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000053s|00.00%|00.00%)	(0.000063s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:            	(0.000069s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000096s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:            	(0.002583s|00.00%|00.00%)	(0.001637s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   492.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000061s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.002805s|00.00%|00.00%)	(0.000439s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}")
|   |   |   521.1:            	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000085s|100.00%|00.00%)	(0.000097s|100.00%|00.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000061s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001142s|00.00%|00.00%)	(0.000404s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000067s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000505s|00.00%|00.00%)	(0.000524s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}"
|   |   |   599.0:            	(0.060728s|00.01%|00.01%)	(0.060678s|00.15%|00.15%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000076s|00.12%|00.00%)	(0.000086s|00.14%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.008873s|14.61%|00.00%)	(0.008860s|14.60%|00.02%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.010276s|16.92%|00.00%)	(0.010262s|16.91%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.010637s|17.51%|00.00%)	(0.010618s|17.49%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.010318s|16.99%|00.00%)	(0.010300s|16.97%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.010318s|16.99%|00.00%)	(0.010301s|16.97%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000060s|00.09%|00.00%)	(0.000070s|00.11%|00.00%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.009952s|16.38%|00.00%)	(0.009933s|16.37%|00.02%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000086s|00.14%|00.00%)	(0.000096s|00.15%|00.00%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000063s|00.10%|00.00%)	(0.000074s|00.12%|00.00%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000069s|00.11%|00.00%)	(0.000078s|00.12%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000068s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000380s|00.00%|00.00%)	(0.000404s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines
|   |   |   686.0:            	(5.783114s|01.05%|01.05%)	(1.539048s|03.85%|03.85%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000077s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.009857s|00.17%|00.00%)	(0.009834s|00.63%|00.02%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.010261s|00.17%|00.00%)	(0.010247s|00.66%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.010338s|00.17%|00.00%)	(0.010326s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.010341s|00.17%|00.00%)	(0.010322s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010300s|00.17%|00.00%)	(0.010286s|00.66%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.080750s|01.39%|00.01%)	(0.092049s|05.98%|00.23%)	(1x) ${fallocateFlag}
|   |   |   |   702.0:        	(4.457547s|77.07%|00.81%)	(0.111491s|07.24%|00.27%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.002012s|00.03%|00.00%)	(0.002285s|00.14%|00.00%)	(1x) continue
|   |   |   |   704.0:        	(0.080768s|01.39%|00.01%)	(0.089341s|05.80%|00.22%)	(1x) case ${REPLY} in
|   |   |   |   718.0:        	(0.077357s|01.33%|00.01%)	(0.088590s|05.75%|00.22%)	(1x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000061s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.078012s|01.34%|00.01%)	(0.088927s|05.77%|00.22%)	(1x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.081156s|01.40%|00.01%)	(0.092095s|05.98%|00.23%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.080647s|01.39%|00.01%)	(0.091717s|05.95%|00.22%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.080781s|01.39%|00.01%)	(0.088581s|05.75%|00.22%)	(1x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.077710s|01.34%|00.01%)	(0.088821s|05.77%|00.22%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.080323s|01.38%|00.01%)	(0.088425s|05.74%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.077791s|01.34%|00.01%)	(0.088784s|05.76%|00.22%)	(1x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000061s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005539s|00.09%|00.00%)	(0.000566s|00.03%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null)
|   |   |   |   746.1:        	(0.004050s|00.07%|00.00%)	(0.002395s|00.15%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002770s|68.39%|00.00%)	(0.001940s|81.00%|00.00%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000101s|00.00%|00.00%)	(0.000116s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000093s|00.00%|00.00%)	(0.000108s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000098s|00.00%|00.00%)	(0.000113s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000115s|00.00%|00.00%)	(0.000130s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000105s|00.00%|00.00%)	(0.000121s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000097s|00.00%|00.00%)	(0.000109s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000107s|00.00%|00.00%)	(0.000123s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.077274s|01.33%|00.01%)	(0.088339s|05.73%|00.22%)	(1x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.075917s|01.31%|00.01%)	(0.087075s|05.65%|00.21%)	(1x) case ${nWait} in
|   |   |   |   778.0:        	(0.074411s|01.28%|00.01%)	(0.085060s|05.52%|00.21%)	(1x) ((nWait--))
|   |   |   |   783.0:        	(0.079972s|01.38%|00.01%)	(0.091044s|05.91%|00.22%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.079008s|01.36%|00.01%)	(0.090142s|05.85%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002512s|00.04%|00.00%)	(0.002870s|00.18%|00.00%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002500s|00.04%|00.00%)	(0.002845s|00.18%|00.00%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.064547s|01.11%|00.01%)	(0.014713s|00.95%|00.03%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002551s|00.04%|00.00%)	(0.002902s|00.18%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002485s|00.04%|00.00%)	(0.002852s|00.18%|00.00%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002664s|00.04%|00.00%)	(0.003024s|00.19%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000100s|00.00%|00.00%)	(0.000117s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000110s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000120s|00.00%|00.00%)	(0.000136s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000117s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000149s|00.00%|00.00%)	(0.000167s|00.01%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -239.0:        	(0.000117s|00.00%|00.00%)	(0.000136s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -239.1:        	(0.001535s|00.02%|00.00%)	(0.000571s|00.03%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000088s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000082s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.045483s|00.00%|00.00%)	(0.001124s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.014681s|00.00%|00.00%)	(0.015292s|00.03%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000108s|02.51%|00.00%)	(0.000119s|02.41%|00.00%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000060s|01.39%|00.00%)	(0.000070s|01.42%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000074s|01.72%|00.00%)	(0.000084s|01.70%|00.00%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000212s|04.94%|00.00%)	(0.000223s|04.52%|00.00%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000058s|01.35%|00.00%)	(0.000069s|01.40%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000056s|01.30%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000058s|01.35%|00.00%)	(0.000068s|01.38%|00.00%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000055s|01.28%|00.00%)	(0.000064s|01.29%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000064s|01.49%|00.00%)	(0.000073s|01.48%|00.00%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000060s|01.39%|00.00%)	(0.000070s|01.42%|00.00%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000057s|01.32%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000061s|01.42%|00.00%)	(0.000070s|01.42%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000060s|01.39%|00.00%)	(0.000071s|01.44%|00.00%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000065s|01.51%|00.00%)	(0.000072s|01.46%|00.00%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000056s|01.30%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:        	(0.000059s|01.37%|00.00%)	(0.000070s|01.42%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:        	(0.000060s|01.39%|00.00%)	(0.000070s|01.42%|00.00%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000055s|01.28%|00.00%)	(0.000065s|01.31%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000086s|02.00%|00.00%)	(0.000095s|01.92%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000056s|01.30%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000065s|01.51%|00.00%)	(0.000075s|01.52%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:        	(0.000063s|01.46%|00.00%)	(0.000073s|01.48%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000078s|01.81%|00.00%)	(0.000087s|01.76%|00.00%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000057s|01.32%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000069s|01.60%|00.00%)	(0.000079s|01.60%|00.00%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000068s|01.58%|00.00%)	(0.000079s|01.60%|00.00%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000064s|01.49%|00.00%)	(0.000074s|01.50%|00.00%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000062s|01.44%|00.00%)	(0.000072s|01.46%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000063s|01.46%|00.00%)	(0.000073s|01.48%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000076s|01.77%|00.00%)	(0.000086s|01.74%|00.00%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000061s|01.42%|00.00%)	(0.000071s|01.44%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000071s|01.65%|00.00%)	(0.000080s|01.62%|00.00%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000057s|01.32%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000066s|01.53%|00.00%)	(0.000076s|01.54%|00.00%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000065s|01.51%|00.00%)	(0.000075s|01.52%|00.00%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000057s|01.32%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000073s|01.70%|00.00%)	(0.000083s|01.68%|00.00%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000056s|01.30%|00.00%)	(0.000065s|01.31%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000062s|01.44%|00.00%)	(0.000072s|01.46%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:        	(0.000056s|01.30%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000068s|01.58%|00.00%)	(0.000075s|01.52%|00.00%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000056s|01.30%|00.00%)	(0.000065s|01.31%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000061s|01.42%|00.00%)	(0.000071s|01.44%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000069s|01.60%|00.00%)	(0.000079s|01.60%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000096s|02.23%|00.00%)	(0.000106s|02.15%|00.00%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000058s|01.35%|00.00%)	(0.000069s|01.40%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000056s|01.30%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000057s|01.32%|00.00%)	(0.000067s|01.36%|00.00%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000054s|01.25%|00.00%)	(0.000064s|01.29%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000090s|02.09%|00.00%)	(0.000100s|02.03%|00.00%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000062s|01.44%|00.00%)	(0.000072s|01.46%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000060s|01.39%|00.00%)	(0.000071s|01.44%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000056s|01.30%|00.00%)	(0.000066s|01.33%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000077s|01.79%|00.00%)	(0.000087s|01.76%|00.00%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000063s|01.46%|00.00%)	(0.000073s|01.48%|00.00%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000060s|01.39%|00.00%)	(0.000069s|01.40%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000059s|01.37%|00.00%)	(0.000068s|01.38%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000079s|01.84%|00.00%)	(0.000088s|01.78%|00.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000073s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000068s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.010443s|00.00%|00.00%)	(0.010429s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.010396s|00.00%|00.00%)	(0.010382s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.010188s|00.00%|00.00%)	(0.010174s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000053s|00.00%|00.00%)	(0.000063s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000070s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000054s|00.00%|00.00%)	(0.000063s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002373s|00.00%|00.00%)	(0.002749s|00.00%|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002477s|00.00%|00.00%)	(0.002851s|00.00%|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002361s|00.00%|00.00%)	(0.002716s|00.00%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(516.857179s|94.58%|94.58%)	(38.242576s|95.74%|95.68%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000570s|00.00%|00.00%)	(0.000578s|00.05%|00.00%)	(1x) local p0 p0_PID
|   |   |   |   66.0:        	(516.832378s|99.99%|94.57%)	(38.216858s|99.92%|95.61%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 66.0:    	(0.003232s|00.00%|00.00%)	(0.003632s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.gctwiK"
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p0
|   |   |   |   |   12.0:    	(0.009740s|00.04%|00.00%)	(0.009724s|00.84%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:    	(0.447923s|00.08%|00.08%)	(0.446345s|01.20%|01.11%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 2962640 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.472830s|00.08%|00.08%)	(0.448569s|01.22%|01.12%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 2962640 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.468802s|00.08%|00.08%)	(0.459534s|01.24%|01.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 2962640 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.476143s|00.08%|00.08%)	(0.468431s|01.28%|01.17%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.100014s|00.01%|00.01%)	(0.111978s|00.28%|00.28%)	(1x) true
|   |   |   |   |   20.0:    	(0.094065s|00.01%|00.01%)	(0.099662s|00.25%|00.24%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.092555s|00.01%|00.01%)	(0.100887s|00.25%|00.25%)	(1x) read -r < "/dev/shm/.forkrun.gctwiK"/.nLines
|   |   |   |   |   20.2:    	(0.003030s|00.00%|00.00%)	(0.003468s|00.00%|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002869s|00.00%|00.00%)	(0.003291s|00.00%|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003510s|00.01%|00.00%)	(0.003908s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p0
|   |   |   |   |   23.0:    	(3.245904s|00.63%|00.59%)	(0.131938s|00.33%|00.33%)	(1x) read -r -u 21 _
|   |   |   |   |   24.0:    	(0.093141s|00.01%|00.01%)	(0.104531s|00.26%|00.26%)	(1x) [[ -f "/dev/shm/.forkrun.gctwiK"/.quit ]]
|   |   |   |   |   28.0:    	(0.090564s|00.01%|00.01%)	(0.098308s|00.25%|00.24%)	(1x) [[ -f "/dev/shm/.forkrun.gctwiK"/.done ]]
|   |   |   |   |   28.1:    	(0.083486s|00.01%|00.01%)	(0.095014s|00.24%|00.23%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.090532s|00.01%|00.01%)	(0.099869s|00.25%|00.24%)	(1x) evfd_wait 25
|   |   |   |   |   31.0:    	(0.825609s|00.15%|00.15%)	(0.785651s|02.04%|01.96%)	(1x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:    	(0.124354s|00.01%|00.02%)	(0.104447s|00.26%|00.26%)	(1x) printf '\n' 1>&21
|   |   |   |   |   35.0:    	(0.003259s|00.01%|00.00%)	(0.003635s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p0
|   |   |   |   |   36.0:    	(0.092756s|00.01%|00.01%)	(0.093865s|00.23%|00.23%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.084147s|00.01%|00.01%)	(0.092598s|00.23%|00.23%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.003312s|00.00%|00.00%)	(0.003755s|00.00%|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.003031s|00.00%|00.00%)	(0.003500s|00.00%|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(509.046472s|98.47%|93.15%)	(33.574735s|87.61%|84.00%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.077423s|00.01%|00.01%)	(0.088618s|00.26%|00.22%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(34.671940s|06.81%|06.34%)	(2.439615s|07.28%|06.10%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(60.575825s|10.50%|11.08%)	(2.597323s|07.74%|06.49%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(49.210451s|09.70%|09.00%)	(2.584082s|07.69%|06.46%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(59.887119s|10.46%|10.95%)	(2.595701s|07.72%|06.49%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(47.418197s|09.13%|08.67%)	(2.593646s|07.71%|06.48%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(31.447529s|06.43%|05.75%)	(2.597449s|07.72%|06.49%)	(1x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(15.272815s|04.07%|02.79%)	(2.588722s|07.69%|06.47%)	(1x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(32.951720s|06.36%|06.02%)	(2.585608s|07.68%|06.46%)	(1x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(13.485132s|03.86%|02.46%)	(2.572241s|07.63%|06.43%)	(1x) cksum "${@}"
|   |   |   |   |   |   17.0:	(41.052603s|08.61%|07.51%)	(2.579792s|07.66%|06.45%)	(1x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(92.866868s|15.17%|16.99%)	(2.598978s|07.71%|06.50%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(15.458223s|04.39%|02.82%)	(2.578432s|07.66%|06.45%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(14.670627s|04.29%|02.68%)	(2.574528s|07.65%|06.44%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:    	(0.002787s|00.00%|00.00%)	(0.003206s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   56.1:    	(0.081215s|00.00%|00.01%)	(0.089058s|00.22%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.103714s|00.01%|00.01%)	(0.100572s|00.25%|00.25%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002323s|00.00%|00.00%)	(0.002653s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:    	(0.002725s|00.00%|00.00%)	(0.003041s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:    	(0.003073s|00.00%|00.00%)	(0.003441s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.0:    	(0.002535s|00.00%|00.00%)	(0.002912s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.1:    	(0.044104s|00.00%|00.00%)	(0.019194s|00.04%|00.04%)	(1x) break
|   |   |   |   |-- 4.0:    	(0.002836s|00.00%|00.00%)	(0.003207s|00.00%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000088s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000524s|00.00%|00.00%)	(0.000542s|00.03%|00.00%)	(1x) local p1 p1_PID
|   |   |   |   |   8.0:    	(0.004854s|00.00%|00.00%)	(0.005416s|00.00%|00.01%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p1
|   |   |   |   |   12.0:    	(0.009941s|00.05%|00.00%)	(0.009847s|00.59%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.157185s|00.01%|00.02%)	(0.174216s|00.31%|00.43%)	(11x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p1
|   |   |   |   |   35.0:    	(0.153276s|00.01%|00.02%)	(0.170602s|00.30%|00.42%)	(11x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p1
|   |   |   |-- 127.0:        	(0.000086s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000521s|00.00%|00.00%)	(0.000539s|00.04%|00.00%)	(1x) local p2 p2_PID
|   |   |   |   |   8.0:    	(0.005183s|00.00%|00.00%)	(0.005798s|00.00%|00.01%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p2
|   |   |   |   |   12.0:    	(0.009836s|00.04%|00.00%)	(0.009823s|00.73%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.131824s|00.01%|00.02%)	(0.146031s|00.30%|00.36%)	(9x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p2
|   |   |   |   |   35.0:    	(0.125165s|00.01%|00.02%)	(0.139208s|00.29%|00.34%)	(9x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p2
|   |   |   |-- 127.0:        	(0.000085s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000534s|00.00%|00.00%)	(0.000565s|00.05%|00.00%)	(1x) local p3 p3_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p3
|   |   |   |   |   12.0:    	(0.009878s|00.05%|00.00%)	(0.009865s|00.91%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003301s|00.01%|00.00%)	(0.003638s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p3
|   |   |   |   |   35.0:    	(0.003067s|00.01%|00.00%)	(0.003408s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p3
|   |   |   |-- 127.0:        	(0.000091s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000532s|00.00%|00.00%)	(0.000549s|00.03%|00.00%)	(1x) local p4 p4_PID
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p4
|   |   |   |   |   12.0:    	(0.009884s|00.05%|00.00%)	(0.009871s|00.66%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.007721s|00.04%|00.00%)	(0.005156s|00.34%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p4
|   |   |   |   |   35.0:    	(0.004053s|00.02%|00.00%)	(0.004532s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p4
|   |   |   |-- 127.0:        	(0.000104s|00.00%|00.00%)	(0.000114s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000546s|00.00%|00.00%)	(0.000563s|00.04%|00.00%)	(1x) local p5 p5_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p5
|   |   |   |   |   12.0:    	(0.010480s|00.05%|00.00%)	(0.010465s|00.78%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003939s|00.02%|00.00%)	(0.004364s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p5
|   |   |   |   |   35.0:    	(0.003579s|00.02%|00.00%)	(0.004002s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p5
|   |   |   |-- 127.0:        	(0.000086s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000565s|00.00%|00.00%)	(0.000576s|00.04%|00.00%)	(1x) local p6 p6_PID
|   |   |   |   |   8.0:    	(0.000090s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p6
|   |   |   |   |   12.0:    	(0.010063s|00.05%|00.00%)	(0.010050s|00.85%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003544s|00.01%|00.00%)	(0.003918s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p6
|   |   |   |   |   35.0:    	(0.003196s|00.01%|00.00%)	(0.003552s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p6
|   |   |   |-- 127.0:        	(0.000086s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000574s|00.00%|00.00%)	(0.000588s|00.04%|00.00%)	(1x) local p7 p7_PID
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p7
|   |   |   |   |   12.0:    	(0.010082s|00.05%|00.00%)	(0.010066s|00.71%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004218s|00.02%|00.00%)	(0.004576s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p7
|   |   |   |   |   35.0:    	(0.004059s|00.02%|00.00%)	(0.004523s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p7
|   |   |   |-- 127.0:        	(0.000092s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000569s|00.00%|00.00%)	(0.000584s|00.04%|00.00%)	(1x) local p8 p8_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p8
|   |   |   |   |   12.0:    	(0.010077s|00.05%|00.00%)	(0.010060s|00.69%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004268s|00.02%|00.00%)	(0.004755s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p8
|   |   |   |   |   35.0:    	(0.004473s|00.02%|00.00%)	(0.004973s|00.34%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p8
|   |   |   |-- 127.0:        	(0.000105s|00.00%|00.00%)	(0.000116s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000563s|00.00%|00.00%)	(0.000576s|00.03%|00.00%)	(1x) local p9 p9_PID
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p9
|   |   |   |   |   12.0:    	(0.010099s|00.05%|00.00%)	(0.010079s|00.68%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004194s|00.02%|00.00%)	(0.004701s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p9
|   |   |   |   |   35.0:    	(0.004249s|00.02%|00.00%)	(0.004744s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p9
|   |   |   |-- 127.0:        	(0.000090s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000583s|00.00%|00.00%)	(0.000594s|00.08%|00.00%)	(1x) local p10 p10_PID
|   |   |   |   |   8.0:    	(0.000088s|00.00%|00.00%)	(0.000100s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p10
|   |   |   |   |   12.0:    	(0.010154s|00.04%|00.00%)	(0.010128s|01.43%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.001891s|00.00%|00.00%)	(0.002110s|00.29%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p10
|   |   |   |   |   35.0:    	(0.001752s|00.00%|00.00%)	(0.001948s|00.27%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p10
|   |   |   |-- 127.0:        	(0.000092s|00.00%|00.00%)	(0.000104s|00.01%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000632s|00.00%|00.00%)	(0.000647s|00.05%|00.00%)	(1x) local p11 p11_PID
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p11
|   |   |   |   |   12.0:    	(0.010202s|00.04%|00.00%)	(0.010138s|00.83%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003535s|00.01%|00.00%)	(0.003920s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p11
|   |   |   |   |   35.0:    	(0.003217s|00.01%|00.00%)	(0.003591s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p11
|   |   |   |-- 127.0:        	(0.000090s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000645s|00.00%|00.00%)	(0.000659s|00.04%|00.00%)	(1x) local p12 p12_PID
|   |   |   |   |   8.0:    	(0.000120s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p12
|   |   |   |   |   12.0:    	(0.013970s|00.08%|00.00%)	(0.013897s|00.85%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004733s|00.02%|00.00%)	(0.005276s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p12
|   |   |   |   |   35.0:    	(0.004467s|00.02%|00.00%)	(0.004968s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p12
|   |   |   |-- 127.0:        	(0.000090s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000680s|00.00%|00.00%)	(0.000691s|00.06%|00.00%)	(1x) local p13 p13_PID
|   |   |   |   |   8.0:    	(0.000092s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p13
|   |   |   |   |   12.0:    	(0.012989s|00.07%|00.00%)	(0.012944s|01.24%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002903s|00.01%|00.00%)	(0.003247s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p13
|   |   |   |   |   35.0:    	(0.002829s|00.01%|00.00%)	(0.003136s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p13
|   |   |   |-- 127.0:        	(0.000089s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000805s|00.00%|00.00%)	(0.000836s|00.05%|00.00%)	(1x) local p14 p14_PID
|   |   |   |   |   8.0:    	(0.000152s|00.00%|00.00%)	(0.000165s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p14
|   |   |   |   |   12.0:    	(0.019413s|00.11%|00.00%)	(0.019353s|01.23%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004377s|00.02%|00.00%)	(0.004781s|00.30%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p14
|   |   |   |   |   35.0:    	(0.004479s|00.02%|00.00%)	(0.005010s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p14
|   |   |   |   |   37.0:    	(0.000242s|00.00%|00.00%)	(0.000277s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.000244s|00.00%|00.00%)	(0.000278s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.000274s|00.00%|00.00%)	(0.000309s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000311s|00.00%|00.00%)	(0.000348s|00.01%|00.00%)	(1x) : > "/dev/shm/.forkrun.gctwiK"/.quit
|   |   |   |   |   50.0:    	(0.000403s|00.00%|00.00%)	(0.000443s|00.01%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.gctwiK"/.run/p* 1>&21
|   |   |   |   |   51.0:    	(0.000273s|00.00%|00.00%)	(0.000307s|00.00%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000153s|00.00%|00.00%)	(0.000171s|00.01%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000876s|00.00%|00.00%)	(0.000898s|00.05%|00.00%)	(1x) local p15 p15_PID
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p15
|   |   |   |   |   12.0:    	(0.012560s|00.07%|00.00%)	(0.012537s|00.83%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004141s|00.02%|00.00%)	(0.004585s|00.30%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p15
|   |   |   |   |   35.0:    	(0.004364s|00.02%|00.00%)	(0.004873s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p15
|   |   |   |-- 127.0:        	(0.000147s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000918s|00.00%|00.00%)	(0.000941s|00.06%|00.00%)	(1x) local p16 p16_PID
|   |   |   |   |   8.0:    	(0.000161s|00.00%|00.00%)	(0.000180s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p16
|   |   |   |   |   12.0:    	(0.019371s|00.10%|00.00%)	(0.019303s|01.24%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004465s|00.02%|00.00%)	(0.004962s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p16
|   |   |   |   |   35.0:    	(0.004257s|00.02%|00.00%)	(0.004741s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p16
|   |   |   |-- 127.0:        	(0.000153s|00.00%|00.00%)	(0.000165s|00.01%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000946s|00.00%|00.00%)	(0.000965s|00.05%|00.00%)	(1x) local p17 p17_PID
|   |   |   |   |   8.0:    	(0.000095s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p17
|   |   |   |   |   12.0:    	(0.010865s|00.04%|00.00%)	(0.010812s|00.61%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005032s|00.02%|00.00%)	(0.005590s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p17
|   |   |   |   |   35.0:    	(0.005122s|00.02%|00.00%)	(0.005634s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p17
|   |   |   |-- 127.0:        	(0.000149s|00.00%|00.00%)	(0.000162s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000921s|00.00%|00.00%)	(0.000942s|00.10%|00.00%)	(1x) local p18 p18_PID
|   |   |   |   |   8.0:    	(0.000144s|00.00%|00.00%)	(0.000161s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p18
|   |   |   |   |   12.0:    	(0.019087s|00.09%|00.00%)	(0.019030s|02.06%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002688s|00.01%|00.00%)	(0.002958s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p18
|   |   |   |   |   35.0:    	(0.002601s|00.01%|00.00%)	(0.002920s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p18
|   |   |   |-- 127.0:        	(0.000142s|00.00%|00.00%)	(0.000161s|00.01%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000918s|00.00%|00.00%)	(0.000939s|00.06%|00.00%)	(1x) local p19 p19_PID
|   |   |   |   |   8.0:    	(0.000161s|00.00%|00.00%)	(0.000182s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p19
|   |   |   |   |   12.0:    	(0.020045s|00.11%|00.00%)	(0.019979s|01.32%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004318s|00.02%|00.00%)	(0.004793s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p19
|   |   |   |   |   35.0:    	(0.004090s|00.02%|00.00%)	(0.004555s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p19
|   |   |   |-- 127.0:        	(0.000146s|00.00%|00.00%)	(0.000163s|00.01%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.000931s|00.00%|00.00%)	(0.000952s|00.05%|00.00%)	(1x) local p20 p20_PID
|   |   |   |   |   8.0:    	(0.000176s|00.00%|00.00%)	(0.000199s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p20
|   |   |   |   |   12.0:    	(0.021783s|00.12%|00.00%)	(0.021519s|01.29%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004684s|00.02%|00.00%)	(0.005197s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p20
|   |   |   |   |   35.0:    	(0.004370s|00.02%|00.00%)	(0.004861s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p20
|   |   |   |-- 127.0:        	(0.000145s|00.00%|00.00%)	(0.000162s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.001047s|00.00%|00.00%)	(0.001071s|00.10%|00.00%)	(1x) local p21 p21_PID
|   |   |   |   |   8.0:    	(0.000176s|00.00%|00.00%)	(0.000199s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p21
|   |   |   |   |   12.0:    	(0.021115s|00.11%|00.00%)	(0.021046s|01.99%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002791s|00.01%|00.00%)	(0.003074s|00.29%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p21
|   |   |   |   |   35.0:    	(0.002778s|00.01%|00.00%)	(0.003078s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p21
|   |   |   |-- 127.0:        	(0.000150s|00.00%|00.00%)	(0.000167s|00.01%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.000980s|00.00%|00.00%)	(0.001007s|00.07%|00.00%)	(1x) local p22 p22_PID
|   |   |   |   |   8.0:    	(0.000146s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p22
|   |   |   |   |   12.0:    	(0.019458s|00.10%|00.00%)	(0.019387s|01.53%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003485s|00.01%|00.00%)	(0.003879s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p22
|   |   |   |   |   35.0:    	(0.003391s|00.01%|00.00%)	(0.003776s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p22
|   |   |   |-- 127.0:        	(0.000156s|00.00%|00.00%)	(0.000173s|00.01%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.000982s|00.00%|00.00%)	(0.001003s|00.06%|00.00%)	(1x) local p23 p23_PID
|   |   |   |   |   8.0:    	(0.000172s|00.00%|00.00%)	(0.000190s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p23
|   |   |   |   |   12.0:    	(0.026118s|00.15%|00.00%)	(0.020159s|01.27%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004634s|00.02%|00.00%)	(0.005129s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p23
|   |   |   |   |   35.0:    	(0.004260s|00.02%|00.00%)	(0.004726s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p23
|   |   |   |-- 127.0:        	(0.000140s|00.00%|00.00%)	(0.000158s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.000939s|00.00%|00.00%)	(0.000960s|00.06%|00.00%)	(1x) local p24 p24_PID
|   |   |   |   |   8.0:    	(0.000146s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p24
|   |   |   |   |   12.0:    	(0.019223s|00.09%|00.00%)	(0.019154s|01.38%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003991s|00.01%|00.00%)	(0.004415s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p24
|   |   |   |   |   35.0:    	(0.003860s|00.01%|00.00%)	(0.004284s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p24
|   |   |   |-- 127.0:        	(0.000152s|00.00%|00.00%)	(0.000165s|00.01%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.000996s|00.00%|00.00%)	(0.001018s|00.05%|00.00%)	(1x) local p25 p25_PID
|   |   |   |   |   8.0:    	(0.000166s|00.00%|00.00%)	(0.000187s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p25
|   |   |   |   |   12.0:    	(0.019988s|00.11%|00.00%)	(0.019910s|01.16%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004954s|00.02%|00.00%)	(0.005485s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p25
|   |   |   |   |   35.0:    	(0.004587s|00.02%|00.00%)	(0.005093s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p25
|   |   |   |-- 127.0:        	(0.000156s|00.00%|00.00%)	(0.000172s|00.01%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001060s|00.00%|00.00%)	(0.001088s|00.11%|00.00%)	(1x) local p26 p26_PID
|   |   |   |   |   8.0:    	(0.000145s|00.00%|00.00%)	(0.000162s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p26
|   |   |   |   |   12.0:    	(0.021353s|00.11%|00.00%)	(0.021286s|02.16%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002697s|00.01%|00.00%)	(0.002997s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p26
|   |   |   |   |   35.0:    	(0.002549s|00.01%|00.00%)	(0.002856s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p26
|   |   |   |-- 127.0:        	(0.000156s|00.00%|00.00%)	(0.000174s|00.01%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001073s|00.00%|00.00%)	(0.001100s|00.06%|00.00%)	(1x) local p27 p27_PID
|   |   |   |   |   8.0:    	(0.000148s|00.00%|00.00%)	(0.000161s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.gctwiK"/.run/p27
|   |   |   |   |   12.0:    	(0.020130s|00.11%|00.00%)	(0.019318s|01.17%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.gctwiK"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.gctwiK"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.gctwiK"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004729s|00.02%|00.00%)	(0.005230s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.gctwiK"/.wait/p27
|   |   |   |   |   35.0:    	(0.004565s|00.02%|00.00%)	(0.005092s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.gctwiK"/.wait/p27
|   |   |   |-- 127.0:        	(0.000152s|00.00%|00.00%)	(0.000170s|00.01%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000150s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000135s|00.00%|00.00%)	(0.000153s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000108s|00.00%|00.00%)	(0.000124s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000109s|00.00%|00.00%)	(0.000127s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001179s|00.00%|00.00%)	(0.001193s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000113s|00.00%|00.00%)	(0.000129s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000118s|00.00%|00.00%)	(0.000131s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000108s|00.00%|00.00%)	(0.000124s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.571668s|04.31%|04.31%)	(0.001388s|00.00%|00.00%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000074s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000074s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -239.0:            	(0.000419s|00.00%|00.00%)	(0.000487s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -238.0:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.0:            	(0.003387s|00.00%|00.00%)	(0.000494s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.1:            	(0.003261s|00.00%|00.00%)	(0.003261s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -237.0:        	(0.003261s|100.00%|00.00%)	(0.003261s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -236.0:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.0:            	(0.003063s|00.00%|00.00%)	(0.000442s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.1:            	(0.003074s|00.00%|00.00%)	(0.003074s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -235.0:        	(0.003074s|100.00%|00.00%)	(0.003074s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -234.0:            	(0.000081s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.0:            	(0.003363s|00.00%|00.00%)	(0.000464s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.1:            	(0.003248s|00.00%|00.00%)	(0.003248s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -233.0:        	(0.003248s|100.00%|00.00%)	(0.003248s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |-- -232.0:            	(0.016576s|00.00%|00.00%)	(0.016533s|00.04%|00.04%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000087s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) wait
|-- |-- -239.0:                	(0.001300s|00.00%|00.00%)	(0.000369s|00.00%|00.00%)	(1x) wait (?)



TOTAL RUN TIME: 546.473078s
TOTAL CPU TIME: 39.968654s
