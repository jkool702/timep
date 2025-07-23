0.0:                        	(546.735696s|99.99%)	(40.016094s|99.99%)	(1x) << (FUNCTION): forkrun "${@}" >>
|-- 1.0:                    	(0.000590s|00.00%)	(0.000313s|00.00%)	(1x) forkrun "${@}"
|
|   364.0:                    	(546.735106s|99.99%)	(40.015781s|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 364.0:                	(0.019160s|00.00%|00.00%)	(0.019083s|00.04%|00.04%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000074s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000069s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000132s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000099s|00.00%|00.00%)	(0.000111s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000078s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000068s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000076s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000119s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000114s|00.00%|00.00%)	(0.000138s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000114s|00.00%|00.00%)	(0.000137s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   82.0:                	(0.000098s|00.00%|00.00%)	(0.000110s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:                	(0.000056s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:                	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:                	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:                	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000056s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000070s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.001131s|00.00%|00.00%)	(0.000891s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.005919s|00.00%|00.00%)	(0.005919s|00.01%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.005919s|100.00%|00.00%)	(0.005919s|100.00%|00.01%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.003492s|00.00%|00.00%)	(0.000342s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000079s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.011557s|00.00%|00.00%)	(0.000285s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(546.688666s|24.99%|99.99%)	(39.986914s|24.98%|99.92%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000066s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000166s|00.00%|00.00%)	(0.000194s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.001277s|100.00%|00.00%)	(0.001480s|100.00%|00.00%)	(1x) :
|   |   |   1457.1:            	(0.000075s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000225s|00.00%|00.00%)	(0.000264s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000267s|00.00%|00.00%)	(0.000311s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000266s|00.00%|00.00%)	(0.000311s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000278s|00.00%|00.00%)	(0.000315s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000075s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000174s|00.00%|00.00%)	(0.000186s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000070s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000065s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000068s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000073s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000073s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.003018s|00.00%|00.00%)	(0.000462s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000103s|00.00%|00.00%)	(0.000115s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000103s|100.00%|00.00%)	(0.000115s|100.00%|00.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000079s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000771s|00.00%|00.00%)	(0.000895s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000055s|07.13%|00.00%)	(0.000065s|07.26%|00.00%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000061s|07.91%|00.00%)	(0.000071s|07.93%|00.00%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000061s|07.91%|00.00%)	(0.000071s|07.93%|00.00%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000059s|07.65%|00.00%)	(0.000070s|07.82%|00.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000057s|07.39%|00.00%)	(0.000067s|07.48%|00.00%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000060s|07.78%|00.00%)	(0.000071s|07.93%|00.00%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000057s|07.39%|00.00%)	(0.000067s|07.48%|00.00%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000108s|14.00%|00.00%)	(0.000119s|13.29%|00.00%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000058s|07.52%|00.00%)	(0.000068s|07.59%|00.00%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000073s|09.46%|00.00%)	(0.000084s|09.38%|00.00%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000060s|07.78%|00.00%)	(0.000070s|07.82%|00.00%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000062s|08.04%|00.00%)	(0.000072s|08.04%|00.00%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.006526s|00.00%|00.00%)	(0.000451s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.002381s|00.00%|00.00%)	(0.001078s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000219s|09.19%|00.00%)	(0.000228s|21.15%|00.00%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.002162s|90.80%|00.00%)	(0.000850s|78.84%|00.00%)	(1x) nproc
|   |   |   441.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000062s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000074s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000139s|00.00%|00.00%)	(0.000149s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000055s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000067s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000059s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000098s|00.00%|00.00%)	(0.000108s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:            	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:            	(0.002716s|00.00%|00.00%)	(0.001663s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   492.0:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.003658s|00.00%|00.00%)	(0.000434s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}")
|   |   |   521.1:            	(0.000126s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000126s|100.00%|00.00%)	(0.000145s|100.00%|00.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001098s|00.00%|00.00%)	(0.000380s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000070s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000071s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000067s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000471s|00.00%|00.00%)	(0.000486s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}"
|   |   |   599.0:            	(0.068250s|00.01%|00.01%)	(0.068196s|00.17%|00.17%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000073s|00.10%|00.00%)	(0.000083s|00.12%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.009032s|13.23%|00.00%)	(0.009027s|13.23%|00.02%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.010411s|15.25%|00.00%)	(0.010390s|15.23%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.010346s|15.15%|00.00%)	(0.010331s|15.14%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.010390s|15.22%|00.00%)	(0.010377s|15.21%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.010350s|15.16%|00.00%)	(0.010333s|15.15%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000056s|00.08%|00.00%)	(0.000065s|00.09%|00.00%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.017386s|25.47%|00.00%)	(0.017354s|25.44%|00.04%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000083s|00.12%|00.00%)	(0.000093s|00.13%|00.00%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000064s|00.09%|00.00%)	(0.000074s|00.10%|00.00%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000059s|00.08%|00.00%)	(0.000069s|00.10%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000393s|00.00%|00.00%)	(0.000415s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines
|   |   |   686.0:            	(5.726747s|01.04%|01.04%)	(1.538164s|03.84%|03.84%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000084s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.010027s|00.17%|00.00%)	(0.009951s|00.64%|00.02%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.010372s|00.18%|00.00%)	(0.010357s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.010454s|00.18%|00.00%)	(0.010387s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.010539s|00.18%|00.00%)	(0.010470s|00.68%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010366s|00.18%|00.00%)	(0.010357s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.081022s|01.41%|00.01%)	(0.092536s|06.01%|00.23%)	(1x) ${fallocateFlag}
|   |   |   |   702.0:        	(4.425916s|77.28%|00.80%)	(0.111536s|07.25%|00.27%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001926s|00.03%|00.00%)	(0.002194s|00.14%|00.00%)	(1x) continue
|   |   |   |   704.0:        	(0.078075s|01.36%|00.01%)	(0.088752s|05.76%|00.22%)	(1x) case ${REPLY} in
|   |   |   |   718.0:        	(0.077116s|01.34%|00.01%)	(0.088485s|05.75%|00.22%)	(1x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.077570s|01.35%|00.01%)	(0.088816s|05.77%|00.22%)	(1x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.080718s|01.40%|00.01%)	(0.091820s|05.96%|00.22%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.079904s|01.39%|00.01%)	(0.091112s|05.92%|00.22%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.076865s|01.34%|00.01%)	(0.088148s|05.73%|00.22%)	(1x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.077634s|01.35%|00.01%)	(0.088760s|05.77%|00.22%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.077031s|01.34%|00.01%)	(0.088415s|05.74%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.077369s|01.35%|00.01%)	(0.088539s|05.75%|00.22%)	(1x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005457s|00.09%|00.00%)	(0.000541s|00.03%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null)
|   |   |   |   746.1:        	(0.003849s|00.06%|00.00%)	(0.002296s|00.14%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002644s|68.69%|00.00%)	(0.001865s|81.22%|00.00%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000074s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000115s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000083s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000114s|00.00%|00.00%)	(0.000130s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000116s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000110s|00.00%|00.00%)	(0.000127s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000151s|00.00%|00.00%)	(0.000168s|00.01%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000140s|00.00%|00.00%)	(0.000156s|00.01%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000095s|00.00%|00.00%)	(0.000110s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.077053s|01.34%|00.01%)	(0.088413s|05.74%|00.22%)	(1x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.076308s|01.33%|00.01%)	(0.087200s|05.66%|00.21%)	(1x) case ${nWait} in
|   |   |   |   778.0:        	(0.074642s|01.30%|00.01%)	(0.085632s|05.56%|00.21%)	(1x) ((nWait--))
|   |   |   |   783.0:        	(0.080356s|01.40%|00.01%)	(0.091603s|05.95%|00.22%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.078949s|01.37%|00.01%)	(0.090289s|05.86%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002521s|00.04%|00.00%)	(0.002881s|00.18%|00.00%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002357s|00.04%|00.00%)	(0.002697s|00.17%|00.00%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.051202s|00.89%|00.00%)	(0.014023s|00.91%|00.03%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002518s|00.04%|00.00%)	(0.002885s|00.18%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002560s|00.04%|00.00%)	(0.002918s|00.18%|00.00%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002627s|00.04%|00.00%)	(0.002959s|00.19%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000110s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000122s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000111s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000113s|00.00%|00.00%)	(0.000130s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000130s|00.00%|00.00%)	(0.000147s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -239.0:        	(0.000096s|00.00%|00.00%)	(0.000111s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -239.1:        	(0.001137s|00.01%|00.00%)	(0.000550s|00.03%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000084s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.051082s|00.00%|00.00%)	(0.001351s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.014854s|00.00%|00.00%)	(0.015524s|00.03%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000177s|03.66%|00.00%)	(0.000196s|03.55%|00.00%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000116s|02.40%|00.00%)	(0.000129s|02.34%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000127s|02.63%|00.00%)	(0.000143s|02.59%|00.00%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000352s|07.29%|00.00%)	(0.000370s|06.71%|00.00%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000106s|02.19%|00.00%)	(0.000123s|02.23%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000104s|02.15%|00.00%)	(0.000121s|02.19%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000108s|02.23%|00.00%)	(0.000124s|02.25%|00.00%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000104s|02.15%|00.00%)	(0.000121s|02.19%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000056s|01.16%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000062s|01.28%|00.00%)	(0.000071s|01.28%|00.00%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000059s|01.22%|00.00%)	(0.000071s|01.28%|00.00%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000058s|01.20%|00.00%)	(0.000068s|01.23%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000059s|01.22%|00.00%)	(0.000069s|01.25%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000059s|01.22%|00.00%)	(0.000070s|01.27%|00.00%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000056s|01.16%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000061s|01.26%|00.00%)	(0.000072s|01.30%|00.00%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000058s|01.20%|00.00%)	(0.000067s|01.21%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000058s|01.20%|00.00%)	(0.000067s|01.21%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:        	(0.000061s|01.26%|00.00%)	(0.000071s|01.28%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:        	(0.000062s|01.28%|00.00%)	(0.000071s|01.28%|00.00%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000058s|01.20%|00.00%)	(0.000067s|01.21%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000057s|01.18%|00.00%)	(0.000068s|01.23%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000086s|01.78%|00.00%)	(0.000096s|01.74%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:        	(0.000056s|01.16%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000057s|01.18%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000064s|01.32%|00.00%)	(0.000074s|01.34%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:        	(0.000063s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000085s|01.76%|00.00%)	(0.000093s|01.68%|00.00%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000067s|01.38%|00.00%)	(0.000077s|01.39%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000073s|01.51%|00.00%)	(0.000083s|01.50%|00.00%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000069s|01.43%|00.00%)	(0.000079s|01.43%|00.00%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000056s|01.16%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000063s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000061s|01.26%|00.00%)	(0.000071s|01.28%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000060s|01.24%|00.00%)	(0.000070s|01.27%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000069s|01.43%|00.00%)	(0.000080s|01.45%|00.00%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000063s|01.30%|00.00%)	(0.000070s|01.27%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000072s|01.49%|00.00%)	(0.000082s|01.48%|00.00%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000056s|01.16%|00.00%)	(0.000065s|01.18%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000075s|01.55%|00.00%)	(0.000083s|01.50%|00.00%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000054s|01.11%|00.00%)	(0.000063s|01.14%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000078s|01.61%|00.00%)	(0.000088s|01.59%|00.00%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000058s|01.20%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000087s|01.80%|00.00%)	(0.000097s|01.76%|00.00%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000054s|01.11%|00.00%)	(0.000064s|01.16%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000092s|01.90%|00.00%)	(0.000099s|01.79%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:        	(0.000055s|01.14%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000079s|01.63%|00.00%)	(0.000089s|01.61%|00.00%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000055s|01.14%|00.00%)	(0.000065s|01.18%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000058s|01.20%|00.00%)	(0.000068s|01.23%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000056s|01.16%|00.00%)	(0.000066s|01.19%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000084s|01.74%|00.00%)	(0.000092s|01.67%|00.00%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000054s|01.11%|00.00%)	(0.000064s|01.16%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000053s|01.09%|00.00%)	(0.000063s|01.14%|00.00%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000053s|01.09%|00.00%)	(0.000062s|01.12%|00.00%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000055s|01.14%|00.00%)	(0.000065s|01.18%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000075s|01.55%|00.00%)	(0.000085s|01.54%|00.00%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000061s|01.26%|00.00%)	(0.000072s|01.30%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000060s|01.24%|00.00%)	(0.000069s|01.25%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000055s|01.14%|00.00%)	(0.000065s|01.18%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000077s|01.59%|00.00%)	(0.000086s|01.56%|00.00%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000062s|01.28%|00.00%)	(0.000071s|01.28%|00.00%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000059s|01.22%|00.00%)	(0.000069s|01.25%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000061s|01.26%|00.00%)	(0.000070s|01.27%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000075s|01.55%|00.00%)	(0.000084s|01.52%|00.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.010526s|00.00%|00.00%)	(0.010504s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.010412s|00.00%|00.00%)	(0.010389s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.010333s|00.00%|00.00%)	(0.010317s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000054s|00.00%|00.00%)	(0.000063s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000069s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002437s|00.00%|00.00%)	(0.002838s|00.00%|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002495s|00.00%|00.00%)	(0.002859s|00.00%|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002319s|00.00%|00.00%)	(0.002684s|00.00%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(517.018348s|94.57%|94.56%)	(38.273231s|95.71%|95.64%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000513s|00.00%|00.00%)	(0.000529s|00.03%|00.00%)	(1x) local p0 p0_PID
|   |   |   |   66.0:        	(516.994592s|99.99%|94.56%)	(38.248561s|99.92%|95.58%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 66.0:    	(0.004239s|00.00%|00.00%)	(0.004803s|00.00%|00.01%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.5kJEmo"
|   |   |   |   |   8.0:    	(0.000110s|00.00%|00.00%)	(0.000124s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p0
|   |   |   |   |   12.0:    	(0.011333s|00.06%|00.00%)	(0.011312s|00.65%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p0; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   14.0:    	(0.435910s|00.07%|00.07%)	(0.430143s|01.16%|01.07%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 1278740 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.428275s|00.07%|00.07%)	(0.426227s|01.16%|01.06%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 1278740 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.438066s|00.08%|00.08%)	(0.436890s|01.20%|01.09%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 1278740 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.441543s|00.08%|00.08%)	(0.440132s|01.20%|01.09%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.102198s|00.01%|00.01%)	(0.114410s|00.29%|00.28%)	(1x) true
|   |   |   |   |   20.0:    	(0.089161s|00.01%|00.01%)	(0.101234s|00.25%|00.25%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.090425s|00.01%|00.01%)	(0.102604s|00.26%|00.25%)	(1x) read -r < "/dev/shm/.forkrun.5kJEmo"/.nLines
|   |   |   |   |   20.2:    	(0.003079s|00.00%|00.00%)	(0.003547s|00.00%|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.003006s|00.00%|00.00%)	(0.003471s|00.00%|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.004967s|00.02%|00.00%)	(0.005535s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p0
|   |   |   |   |   23.0:    	(3.390537s|00.66%|00.62%)	(0.134302s|00.34%|00.33%)	(1x) read -r -u 11 _
|   |   |   |   |   24.0:    	(0.095365s|00.01%|00.01%)	(0.105811s|00.27%|00.26%)	(1x) [[ -f "/dev/shm/.forkrun.5kJEmo"/.quit ]]
|   |   |   |   |   28.0:    	(0.090147s|00.01%|00.01%)	(0.099179s|00.25%|00.24%)	(1x) [[ -f "/dev/shm/.forkrun.5kJEmo"/.done ]]
|   |   |   |   |   28.1:    	(0.085405s|00.01%|00.01%)	(0.095991s|00.24%|00.23%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.093483s|00.01%|00.01%)	(0.100879s|00.25%|00.25%)	(1x) evfd_wait 23
|   |   |   |   |   31.0:    	(0.814138s|00.15%|00.14%)	(0.790370s|02.05%|01.97%)	(1x) mapfile -t -n ${nLinesCur} -u 25 -t -d '' A
|   |   |   |   |   34.0:    	(0.144207s|00.02%|00.02%)	(0.105635s|00.27%|00.26%)	(1x) printf '\n' 1>&11
|   |   |   |   |   35.0:    	(0.004839s|00.02%|00.00%)	(0.005402s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p0
|   |   |   |   |   36.0:    	(0.089409s|00.01%|00.01%)	(0.095881s|00.24%|00.23%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.082612s|00.01%|00.01%)	(0.094352s|00.24%|00.23%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.003524s|00.00%|00.00%)	(0.003991s|00.00%|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.003132s|00.00%|00.00%)	(0.003607s|00.00%|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(509.181477s|98.46%|93.13%)	(33.665611s|87.74%|84.12%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.077939s|00.01%|00.01%)	(0.089558s|00.26%|00.22%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(34.923249s|06.87%|06.38%)	(2.433162s|07.23%|06.08%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(60.171370s|10.43%|11.00%)	(2.591733s|07.68%|06.47%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(49.204612s|09.63%|08.99%)	(2.592803s|07.68%|06.47%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(59.708119s|10.38%|10.92%)	(2.588591s|07.67%|06.46%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(47.490266s|09.17%|08.68%)	(2.592840s|07.69%|06.47%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(31.283284s|06.42%|05.72%)	(2.603530s|07.72%|06.50%)	(1x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(15.286124s|04.11%|02.79%)	(2.598399s|07.71%|06.49%)	(1x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(32.977347s|06.34%|06.03%)	(2.587102s|07.66%|06.46%)	(1x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(13.460009s|03.87%|02.46%)	(2.589659s|07.67%|06.47%)	(1x) cksum "${@}"
|   |   |   |   |   |   17.0:	(41.295713s|08.67%|07.55%)	(2.589740s|07.68%|06.47%)	(1x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(92.924936s|15.14%|16.99%)	(2.602206s|07.73%|06.50%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(15.529524s|04.41%|02.84%)	(2.609966s|07.74%|06.52%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(14.848985s|04.35%|02.71%)	(2.596322s|07.71%|06.48%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:    	(0.002976s|00.00%|00.00%)	(0.003413s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   56.1:    	(0.082402s|00.01%|00.01%)	(0.090452s|00.23%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.108032s|00.01%|00.01%)	(0.101360s|00.25%|00.25%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002448s|00.00%|00.00%)	(0.002797s|00.00%|00.00%)	(1x) printf '\n' 1>&11
|   |   |   |   |   26.0:    	(0.002561s|00.00%|00.00%)	(0.002899s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:    	(0.003057s|00.00%|00.00%)	(0.003429s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.0:    	(0.002527s|00.00%|00.00%)	(0.002918s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.1:    	(0.043275s|00.00%|00.00%)	(0.019626s|00.04%|00.04%)	(1x) break
|   |   |   |   |-- 4.0:    	(0.002829s|00.00%|00.00%)	(0.003217s|00.00%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000523s|00.00%|00.00%)	(0.000535s|00.03%|00.00%)	(1x) local p1 p1_PID
|   |   |   |   |   8.0:    	(0.005347s|00.00%|00.00%)	(0.006046s|00.00%|00.01%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p1
|   |   |   |   |   12.0:    	(0.012807s|00.06%|00.00%)	(0.012780s|00.88%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p1; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.174334s|00.01%|00.03%)	(0.193262s|00.32%|00.48%)	(11x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p1
|   |   |   |   |   35.0:    	(0.165417s|00.01%|00.03%)	(0.184409s|00.31%|00.46%)	(11x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p1
|   |   |   |-- 127.0:        	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000539s|00.00%|00.00%)	(0.000555s|00.05%|00.00%)	(1x) local p2 p2_PID
|   |   |   |   |   8.0:    	(0.004741s|00.00%|00.00%)	(0.005276s|00.00%|00.01%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p2
|   |   |   |   |   12.0:    	(0.009928s|00.04%|00.00%)	(0.009915s|00.91%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p2; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.123577s|00.01%|00.02%)	(0.137465s|00.31%|00.34%)	(9x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p2
|   |   |   |   |   35.0:    	(0.114905s|00.01%|00.02%)	(0.128222s|00.29%|00.32%)	(9x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p2
|   |   |   |-- 127.0:        	(0.000072s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000533s|00.00%|00.00%)	(0.000553s|00.04%|00.00%)	(1x) local p3 p3_PID
|   |   |   |   |   8.0:    	(0.000080s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p3
|   |   |   |   |   12.0:    	(0.010159s|00.05%|00.00%)	(0.010146s|00.85%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p3; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003782s|00.02%|00.00%)	(0.004229s|00.35%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p3
|   |   |   |   |   35.0:    	(0.003625s|00.02%|00.00%)	(0.004043s|00.34%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p3
|   |   |   |   |   37.0:    	(0.000268s|00.00%|00.00%)	(0.000322s|00.01%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.000227s|00.00%|00.00%)	(0.000261s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.000243s|00.00%|00.00%)	(0.000277s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000268s|00.00%|00.00%)	(0.000304s|00.01%|00.00%)	(1x) : > "/dev/shm/.forkrun.5kJEmo"/.quit
|   |   |   |   |   50.0:    	(0.000377s|00.00%|00.00%)	(0.000413s|00.01%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.5kJEmo"/.run/p* 1>&11
|   |   |   |   |   51.0:    	(0.000256s|00.00%|00.00%)	(0.000290s|00.00%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000538s|00.00%|00.00%)	(0.000557s|00.03%|00.00%)	(1x) local p4 p4_PID
|   |   |   |   |   8.0:    	(0.000315s|00.00%|00.00%)	(0.000353s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p4
|   |   |   |   |   12.0:    	(0.010092s|00.05%|00.00%)	(0.010076s|00.71%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p4; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004194s|00.02%|00.00%)	(0.004669s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p4
|   |   |   |   |   35.0:    	(0.003989s|00.02%|00.00%)	(0.004402s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p4
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000559s|00.00%|00.00%)	(0.000576s|00.07%|00.00%)	(1x) local p5 p5_PID
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000093s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p5
|   |   |   |   |   12.0:    	(0.011450s|00.05%|00.00%)	(0.011422s|01.48%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p5; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.002200s|00.01%|00.00%)	(0.002435s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p5
|   |   |   |   |   35.0:    	(0.002047s|00.01%|00.00%)	(0.002310s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p5
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000085s|00.01%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000554s|00.00%|00.00%)	(0.000564s|00.03%|00.00%)	(1x) local p6 p6_PID
|   |   |   |   |   8.0:    	(0.000083s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p6
|   |   |   |   |   12.0:    	(0.010695s|00.06%|00.00%)	(0.010673s|00.61%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p6; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004714s|00.02%|00.00%)	(0.005278s|00.30%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p6
|   |   |   |   |   35.0:    	(0.004598s|00.02%|00.00%)	(0.005169s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p6
|   |   |   |-- 127.0:        	(0.000074s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000555s|00.00%|00.00%)	(0.000570s|00.04%|00.00%)	(1x) local p7 p7_PID
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p7
|   |   |   |   |   12.0:    	(0.010118s|00.04%|00.00%)	(0.010107s|00.73%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p7; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003799s|00.01%|00.00%)	(0.004262s|00.30%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p7
|   |   |   |   |   35.0:    	(0.003925s|00.01%|00.00%)	(0.004369s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p7
|   |   |   |-- 127.0:        	(0.000078s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000556s|00.00%|00.00%)	(0.000570s|00.03%|00.00%)	(1x) local p8 p8_PID
|   |   |   |   |   8.0:    	(0.000091s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p8
|   |   |   |   |   12.0:    	(0.010201s|00.05%|00.00%)	(0.010183s|00.62%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p8; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004901s|00.02%|00.00%)	(0.005459s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p8
|   |   |   |   |   35.0:    	(0.004412s|00.02%|00.00%)	(0.004918s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p8
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000569s|00.00%|00.00%)	(0.000584s|00.04%|00.00%)	(1x) local p9 p9_PID
|   |   |   |   |   8.0:    	(0.000314s|00.00%|00.00%)	(0.000354s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p9
|   |   |   |   |   12.0:    	(0.010124s|00.05%|00.00%)	(0.010110s|00.81%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p9; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003926s|00.02%|00.00%)	(0.004361s|00.35%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p9
|   |   |   |   |   35.0:    	(0.003627s|00.02%|00.00%)	(0.004022s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p9
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000616s|00.00%|00.00%)	(0.000634s|00.03%|00.00%)	(1x) local p10 p10_PID
|   |   |   |   |   8.0:    	(0.000323s|00.00%|00.00%)	(0.000362s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p10
|   |   |   |   |   12.0:    	(0.011277s|00.06%|00.00%)	(0.011253s|00.70%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p10; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004755s|00.02%|00.00%)	(0.005286s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p10
|   |   |   |   |   35.0:    	(0.004647s|00.02%|00.00%)	(0.005171s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p10
|   |   |   |-- 127.0:        	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000577s|00.00%|00.00%)	(0.000589s|00.06%|00.00%)	(1x) local p11 p11_PID
|   |   |   |   |   8.0:    	(0.000084s|00.00%|00.00%)	(0.000096s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p11
|   |   |   |   |   12.0:    	(0.010140s|00.05%|00.00%)	(0.010107s|01.15%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p11; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.002483s|00.01%|00.00%)	(0.002769s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p11
|   |   |   |   |   35.0:    	(0.002338s|00.01%|00.00%)	(0.002596s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p11
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000594s|00.00%|00.00%)	(0.000612s|00.04%|00.00%)	(1x) local p12 p12_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p12
|   |   |   |   |   12.0:    	(0.012374s|00.07%|00.00%)	(0.012296s|00.83%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p12; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004247s|00.02%|00.00%)	(0.004722s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p12
|   |   |   |   |   35.0:    	(0.004405s|00.02%|00.00%)	(0.004920s|00.33%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p12
|   |   |   |-- 127.0:        	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000633s|00.00%|00.00%)	(0.000651s|00.03%|00.00%)	(1x) local p13 p13_PID
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(0.000158s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p13
|   |   |   |   |   12.0:    	(0.016708s|00.09%|00.00%)	(0.016571s|01.01%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p13; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004782s|00.02%|00.00%)	(0.005275s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p13
|   |   |   |   |   35.0:    	(0.004714s|00.02%|00.00%)	(0.005266s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p13
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000777s|00.00%|00.00%)	(0.000798s|00.05%|00.00%)	(1x) local p14 p14_PID
|   |   |   |   |   8.0:    	(0.000141s|00.00%|00.00%)	(0.000159s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p14
|   |   |   |   |   12.0:    	(0.019426s|00.11%|00.00%)	(0.019378s|01.23%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p14; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004578s|00.02%|00.00%)	(0.005100s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p14
|   |   |   |   |   35.0:    	(0.004226s|00.02%|00.00%)	(0.004734s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p14
|   |   |   |-- 127.0:        	(0.000143s|00.00%|00.00%)	(0.000160s|00.01%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000872s|00.00%|00.00%)	(0.000902s|00.05%|00.00%)	(1x) local p15 p15_PID
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p15
|   |   |   |   |   12.0:    	(0.010171s|00.05%|00.00%)	(0.010154s|00.66%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p15; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004691s|00.02%|00.00%)	(0.005226s|00.34%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p15
|   |   |   |   |   35.0:    	(0.004401s|00.02%|00.00%)	(0.004890s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p15
|   |   |   |-- 127.0:        	(0.000129s|00.00%|00.00%)	(0.000146s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000881s|00.00%|00.00%)	(0.000911s|00.07%|00.00%)	(1x) local p16 p16_PID
|   |   |   |   |   8.0:    	(0.000125s|00.00%|00.00%)	(0.000142s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p16
|   |   |   |   |   12.0:    	(0.020127s|00.11%|00.00%)	(0.020032s|01.73%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p16; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003508s|00.01%|00.00%)	(0.003897s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p16
|   |   |   |   |   35.0:    	(0.003222s|00.01%|00.00%)	(0.003574s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p16
|   |   |   |-- 127.0:        	(0.000127s|00.00%|00.00%)	(0.000144s|00.01%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000911s|00.00%|00.00%)	(0.000929s|00.05%|00.00%)	(1x) local p17 p17_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p17
|   |   |   |   |   12.0:    	(0.017651s|00.10%|00.00%)	(0.017595s|01.13%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p17; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004785s|00.02%|00.00%)	(0.005314s|00.34%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p17
|   |   |   |   |   35.0:    	(0.004691s|00.02%|00.00%)	(0.005245s|00.33%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p17
|   |   |   |-- 127.0:        	(0.000122s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000928s|00.00%|00.00%)	(0.000949s|00.06%|00.00%)	(1x) local p18 p18_PID
|   |   |   |   |   8.0:    	(0.000146s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p18
|   |   |   |   |   12.0:    	(0.012097s|00.07%|00.00%)	(0.012084s|00.79%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p18; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004681s|00.02%|00.00%)	(0.005078s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p18
|   |   |   |   |   35.0:    	(0.003975s|00.02%|00.00%)	(0.004431s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p18
|   |   |   |-- 127.0:        	(0.000123s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000972s|00.00%|00.00%)	(0.000992s|00.07%|00.00%)	(1x) local p19 p19_PID
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p19
|   |   |   |   |   12.0:    	(0.017708s|00.07%|00.00%)	(0.017644s|01.32%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p19; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004014s|00.01%|00.00%)	(0.004466s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p19
|   |   |   |   |   35.0:    	(0.003750s|00.01%|00.00%)	(0.004178s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p19
|   |   |   |-- 127.0:        	(0.000133s|00.00%|00.00%)	(0.000151s|00.01%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.000943s|00.00%|00.00%)	(0.000961s|00.06%|00.00%)	(1x) local p20 p20_PID
|   |   |   |   |   8.0:    	(0.000126s|00.00%|00.00%)	(0.000136s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p20
|   |   |   |   |   12.0:    	(0.021130s|00.12%|00.00%)	(0.021059s|01.44%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p20; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004207s|00.02%|00.00%)	(0.004679s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p20
|   |   |   |   |   35.0:    	(0.003937s|00.02%|00.00%)	(0.004393s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p20
|   |   |   |-- 127.0:        	(0.000130s|00.00%|00.00%)	(0.000148s|00.01%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.000969s|00.00%|00.00%)	(0.000990s|00.07%|00.00%)	(1x) local p21 p21_PID
|   |   |   |   |   8.0:    	(0.000150s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p21
|   |   |   |   |   12.0:    	(0.015939s|00.08%|00.00%)	(0.015894s|01.19%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p21; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003894s|00.02%|00.00%)	(0.004320s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p21
|   |   |   |   |   35.0:    	(0.003548s|00.01%|00.00%)	(0.003957s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p21
|   |   |   |-- 127.0:        	(0.000128s|00.00%|00.00%)	(0.000144s|00.01%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.000969s|00.00%|00.00%)	(0.000991s|00.11%|00.00%)	(1x) local p22 p22_PID
|   |   |   |   |   8.0:    	(0.000170s|00.00%|00.00%)	(0.000192s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p22
|   |   |   |   |   12.0:    	(0.022357s|00.12%|00.00%)	(0.022274s|02.48%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p22; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.002790s|00.01%|00.00%)	(0.003100s|00.34%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p22
|   |   |   |   |   35.0:    	(0.002358s|00.01%|00.00%)	(0.002626s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p22
|   |   |   |-- 127.0:        	(0.000128s|00.00%|00.00%)	(0.000145s|00.01%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.001007s|00.00%|00.00%)	(0.001023s|00.09%|00.00%)	(1x) local p23 p23_PID
|   |   |   |   |   8.0:    	(0.000150s|00.00%|00.00%)	(0.000167s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p23
|   |   |   |   |   12.0:    	(0.019335s|00.09%|00.00%)	(0.019267s|01.77%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p23; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003167s|00.01%|00.00%)	(0.003535s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p23
|   |   |   |   |   35.0:    	(0.002915s|00.01%|00.00%)	(0.003249s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p23
|   |   |   |-- 127.0:        	(0.000144s|00.00%|00.00%)	(0.000163s|00.01%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.000800s|00.00%|00.00%)	(0.000825s|00.06%|00.00%)	(1x) local p24 p24_PID
|   |   |   |   |   8.0:    	(0.000143s|00.00%|00.00%)	(0.000161s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p24
|   |   |   |   |   12.0:    	(0.019513s|00.11%|00.00%)	(0.019449s|01.47%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p24; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003793s|00.02%|00.00%)	(0.004209s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p24
|   |   |   |   |   35.0:    	(0.003512s|00.02%|00.00%)	(0.003920s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p24
|   |   |   |-- 127.0:        	(0.000140s|00.00%|00.00%)	(0.000158s|00.01%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.000964s|00.00%|00.00%)	(0.000982s|00.06%|00.00%)	(1x) local p25 p25_PID
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(0.000157s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p25
|   |   |   |   |   12.0:    	(0.019200s|00.09%|00.00%)	(0.019138s|01.34%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p25; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004055s|00.01%|00.00%)	(0.004510s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p25
|   |   |   |   |   35.0:    	(0.003920s|00.01%|00.00%)	(0.004374s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p25
|   |   |   |-- 127.0:        	(0.000129s|00.00%|00.00%)	(0.000142s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001044s|00.00%|00.00%)	(0.001068s|00.06%|00.00%)	(1x) local p26 p26_PID
|   |   |   |   |   8.0:    	(0.000148s|00.00%|00.00%)	(0.000161s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p26
|   |   |   |   |   12.0:    	(0.019389s|00.11%|00.00%)	(0.019299s|01.19%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p26; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.004500s|00.02%|00.00%)	(0.005017s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p26
|   |   |   |   |   35.0:    	(0.004425s|00.02%|00.00%)	(0.004937s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p26
|   |   |   |-- 127.0:        	(0.000132s|00.00%|00.00%)	(0.000149s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.000983s|00.00%|00.00%)	(0.001002s|00.07%|00.00%)	(1x) local p27 p27_PID
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(0.000158s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.5kJEmo"/.run/p27
|   |   |   |   |   12.0:    	(0.019323s|00.09%|00.00%)	(0.019250s|01.50%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.5kJEmo"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.5kJEmo"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.5kJEmo"/.run/p27; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   22.0:    	(0.003686s|00.01%|00.00%)	(0.004105s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.5kJEmo"/.wait/p27
|   |   |   |   |   35.0:    	(0.003365s|00.01%|00.00%)	(0.003767s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.5kJEmo"/.wait/p27
|   |   |   |-- 127.0:        	(0.000129s|00.00%|00.00%)	(0.000147s|00.01%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000142s|00.00%|00.00%)	(0.000160s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000136s|00.00%|00.00%)	(0.000153s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000111s|00.00%|00.00%)	(0.000127s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000107s|00.00%|00.00%)	(0.000124s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001206s|00.00%|00.00%)	(0.001213s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000114s|00.00%|00.00%)	(0.000131s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000112s|00.00%|00.00%)	(0.000129s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000112s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.695863s|04.33%|04.33%)	(0.001609s|00.00%|00.00%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -239.0:            	(0.000372s|00.00%|00.00%)	(0.000427s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -238.0:            	(0.000072s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.0:            	(0.004638s|00.00%|00.00%)	(0.000432s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.1:            	(0.004678s|00.00%|00.00%)	(0.004678s|00.01%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -237.0:        	(0.004678s|100.00%|00.00%)	(0.004678s|100.00%|00.01%)	(1x) ${nSpawnFlag}
|   |   |   -236.0:            	(0.000072s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.0:            	(0.004847s|00.00%|00.00%)	(0.000416s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.1:            	(0.004840s|00.00%|00.00%)	(0.004840s|00.01%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -235.0:        	(0.004840s|100.00%|00.00%)	(0.004840s|100.00%|00.01%)	(1x) ${nSpawnFlag}
|   |   |   -234.0:            	(0.000097s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.0:            	(0.003021s|00.00%|00.00%)	(0.000421s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.1:            	(0.003071s|00.00%|00.00%)	(0.003071s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -233.0:        	(0.003071s|100.00%|00.00%)	(0.003071s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |-- -232.0:            	(0.017270s|00.00%|00.00%)	(0.017214s|00.04%|00.04%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000099s|00.00%|00.00%)	(0.000112s|00.00%|00.00%)	(1x) wait
|   |-- -239.0:                	(0.003512s|00.00%|00.00%)	(0.000395s|00.00%|00.00%)	(1x) wait (?)
|-- |	(--s|%)	(s|%)	(1x) |-- |
|

1.0:                        	(0.000087s|00.00%)	(0.000099s|00.00%)	(1x) 0<&0
|



TOTAL RUN TIME: 546.735783s
TOTAL CPU TIME: 40.016193s
