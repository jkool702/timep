0.0:                        	(546.409208s|100.00%)	(39.994476s|100.00%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:                    	(0.000591s|00.00%|00.00%)	(0.000293s|00.00%|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   364.0:                    	(546.408617s|99.99%|99.99%)	(39.994183s|99.99%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 364.0:                	(0.018474s|00.00%|00.00%)	(0.018405s|00.04%|00.04%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000069s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000146s|00.00%|00.00%)	(0.000161s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000091s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000085s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000054s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000063s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000109s|00.00%|00.00%)	(0.000131s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000109s|00.00%|00.00%)	(0.000131s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000130s|00.00%|00.00%)	(0.000150s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   82.0:                	(0.000092s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:                	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:                	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:                	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:                	(0.000054s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:                	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.000623s|00.00%|00.00%)	(0.000366s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.002558s|00.00%|00.00%)	(0.002558s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.002558s|100.00%|00.00%)	(0.002558s|100.00%|00.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.001183s|00.00%|00.00%)	(0.000370s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000080s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.011176s|00.00%|00.00%)	(0.000270s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(546.371469s|24.99%|99.99%)	(39.969728s|24.98%|99.93%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000072s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000078s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.000470s|100.00%|00.00%)	(0.000548s|100.00%|00.00%)	(1x) :
|   |   |   1457.1:            	(0.000088s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000076s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000076s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000076s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000076s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000075s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000205s|00.00%|00.00%)	(0.000214s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000081s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.002737s|00.00%|00.00%)	(0.000429s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000102s|00.00%|00.00%)	(0.000115s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000102s|100.00%|00.00%)	(0.000115s|100.00%|00.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000078s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000066s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000056s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000743s|00.00%|00.00%)	(0.000864s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000053s|07.13%|00.00%)	(0.000063s|07.29%|00.00%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000059s|07.94%|00.00%)	(0.000069s|07.98%|00.00%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000057s|07.67%|00.00%)	(0.000067s|07.75%|00.00%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000056s|07.53%|00.00%)	(0.000066s|07.63%|00.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000055s|07.40%|00.00%)	(0.000065s|07.52%|00.00%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000061s|08.20%|00.00%)	(0.000069s|07.98%|00.00%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000054s|07.26%|00.00%)	(0.000064s|07.40%|00.00%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000109s|14.67%|00.00%)	(0.000120s|13.88%|00.00%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000067s|09.01%|00.00%)	(0.000080s|09.25%|00.00%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000055s|07.40%|00.00%)	(0.000064s|07.40%|00.00%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000056s|07.53%|00.00%)	(0.000066s|07.63%|00.00%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000061s|08.20%|00.00%)	(0.000071s|08.21%|00.00%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.004778s|00.00%|00.00%)	(0.000349s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.001517s|00.00%|00.00%)	(0.000867s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000166s|10.94%|00.00%)	(0.000178s|20.53%|00.00%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001351s|89.05%|00.00%)	(0.000689s|79.46%|00.00%)	(1x) nproc
|   |   |   441.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000059s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000070s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000066s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000054s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000135s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:            	(0.000061s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000095s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:            	(0.002499s|00.00%|00.00%)	(0.001651s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   492.0:            	(0.000079s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000066s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:            	(0.000065s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.002687s|00.00%|00.00%)	(0.000452s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}")
|   |   |   521.1:            	(0.000094s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000094s|100.00%|00.00%)	(0.000102s|100.00%|00.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000063s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001250s|00.00%|00.00%)	(0.000421s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000062s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000074s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000496s|00.00%|00.00%)	(0.000508s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}"
|   |   |   599.0:            	(0.068540s|00.01%|00.01%)	(0.068454s|00.17%|00.17%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000071s|00.10%|00.00%)	(0.000081s|00.11%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.008886s|12.96%|00.00%)	(0.008868s|12.95%|00.02%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.010269s|14.98%|00.00%)	(0.010249s|14.97%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.010240s|14.94%|00.00%)	(0.010227s|14.93%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.010397s|15.16%|00.00%)	(0.010371s|15.15%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.010263s|14.97%|00.00%)	(0.010245s|14.96%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000060s|00.08%|00.00%)	(0.000070s|00.10%|00.00%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.018151s|26.48%|00.00%)	(0.018108s|26.45%|00.04%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000082s|00.11%|00.00%)	(0.000093s|00.13%|00.00%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000058s|00.08%|00.00%)	(0.000068s|00.09%|00.00%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000063s|00.09%|00.00%)	(0.000074s|00.10%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000064s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000406s|00.00%|00.00%)	(0.000421s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines
|   |   |   686.0:            	(5.719261s|01.04%|01.04%)	(1.521253s|03.80%|03.80%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000074s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.009878s|00.17%|00.00%)	(0.009862s|00.64%|00.02%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.010256s|00.17%|00.00%)	(0.010244s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.010301s|00.18%|00.00%)	(0.010286s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.010377s|00.18%|00.00%)	(0.010361s|00.68%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010242s|00.17%|00.00%)	(0.010229s|00.67%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.079212s|01.38%|00.01%)	(0.090391s|05.94%|00.22%)	(1x) ${fallocateFlag}
|   |   |   |   702.0:        	(4.414387s|77.18%|00.80%)	(0.109884s|07.22%|00.27%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001347s|00.02%|00.00%)	(0.001539s|00.10%|00.00%)	(1x) continue
|   |   |   |   704.0:        	(0.079594s|01.39%|00.01%)	(0.088843s|05.84%|00.22%)	(1x) case ${REPLY} in
|   |   |   |   718.0:        	(0.082606s|01.44%|00.01%)	(0.087758s|05.76%|00.21%)	(1x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.076675s|01.34%|00.01%)	(0.087709s|05.76%|00.21%)	(1x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.080203s|01.40%|00.01%)	(0.091187s|05.99%|00.22%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.079379s|01.38%|00.01%)	(0.090324s|05.93%|00.22%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.076533s|01.33%|00.01%)	(0.087606s|05.75%|00.21%)	(1x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.078806s|01.37%|00.01%)	(0.088493s|05.81%|00.22%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.076924s|01.34%|00.01%)	(0.087972s|05.78%|00.21%)	(1x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.076189s|01.33%|00.01%)	(0.087211s|05.73%|00.21%)	(1x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005863s|00.10%|00.00%)	(0.000491s|00.03%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null)
|   |   |   |   746.1:        	(0.003885s|00.06%|00.00%)	(0.002295s|00.15%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002663s|68.54%|00.00%)	(0.001863s|81.17%|00.00%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000069s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000063s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000082s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000063s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.075921s|01.32%|00.01%)	(0.086849s|05.70%|00.21%)	(1x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.074939s|01.31%|00.01%)	(0.085895s|05.64%|00.21%)	(1x) case ${nWait} in
|   |   |   |   778.0:        	(0.073823s|01.29%|00.01%)	(0.084380s|05.54%|00.21%)	(1x) ((nWait--))
|   |   |   |   783.0:        	(0.079007s|01.38%|00.01%)	(0.090085s|05.92%|00.22%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.080449s|01.40%|00.01%)	(0.089883s|05.90%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002491s|00.04%|00.00%)	(0.002845s|00.18%|00.00%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002441s|00.04%|00.00%)	(0.002777s|00.18%|00.00%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.055777s|00.97%|00.01%)	(0.014373s|00.94%|00.03%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002552s|00.04%|00.00%)	(0.002912s|00.19%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002466s|00.04%|00.00%)	(0.002829s|00.18%|00.00%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002608s|00.04%|00.00%)	(0.002941s|00.19%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000108s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000108s|00.00%|00.00%)	(0.000124s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000109s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000121s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000137s|00.00%|00.00%)	(0.000153s|00.01%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -239.0:        	(0.000113s|00.00%|00.00%)	(0.000129s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -239.1:        	(0.002257s|00.03%|00.00%)	(0.000651s|00.04%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000086s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000076s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.045513s|00.00%|00.00%)	(0.001144s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.014306s|00.00%|00.00%)	(0.014918s|00.03%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000102s|02.35%|00.00%)	(0.000113s|02.27%|00.00%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000062s|01.43%|00.00%)	(0.000072s|01.44%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000070s|01.61%|00.00%)	(0.000080s|01.61%|00.00%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000207s|04.77%|00.00%)	(0.000218s|04.38%|00.00%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000058s|01.33%|00.00%)	(0.000069s|01.38%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000056s|01.29%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000058s|01.33%|00.00%)	(0.000068s|01.36%|00.00%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000057s|01.31%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000056s|01.29%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000060s|01.38%|00.00%)	(0.000069s|01.38%|00.00%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000061s|01.40%|00.00%)	(0.000071s|01.42%|00.00%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000055s|01.26%|00.00%)	(0.000065s|01.30%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000061s|01.40%|00.00%)	(0.000070s|01.40%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000062s|01.43%|00.00%)	(0.000072s|01.44%|00.00%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000055s|01.26%|00.00%)	(0.000065s|01.30%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000061s|01.40%|00.00%)	(0.000070s|01.40%|00.00%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000062s|01.43%|00.00%)	(0.000068s|01.36%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000056s|01.29%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:        	(0.000060s|01.38%|00.00%)	(0.000070s|01.40%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:        	(0.000062s|01.43%|00.00%)	(0.000072s|01.44%|00.00%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000057s|01.31%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000057s|01.31%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000086s|01.98%|00.00%)	(0.000096s|01.93%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:        	(0.000057s|01.31%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000057s|01.31%|00.00%)	(0.000068s|01.36%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000065s|01.49%|00.00%)	(0.000074s|01.49%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:        	(0.000066s|01.52%|00.00%)	(0.000076s|01.53%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000078s|01.79%|00.00%)	(0.000088s|01.77%|00.00%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000057s|01.31%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000070s|01.61%|00.00%)	(0.000080s|01.61%|00.00%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000070s|01.61%|00.00%)	(0.000079s|01.59%|00.00%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000057s|01.31%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000063s|01.45%|00.00%)	(0.000073s|01.46%|00.00%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000061s|01.40%|00.00%)	(0.000071s|01.42%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000060s|01.38%|00.00%)	(0.000070s|01.40%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000069s|01.59%|00.00%)	(0.000079s|01.59%|00.00%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000063s|01.45%|00.00%)	(0.000071s|01.42%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000071s|01.63%|00.00%)	(0.000081s|01.63%|00.00%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000057s|01.31%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000085s|01.96%|00.00%)	(0.000093s|01.87%|00.00%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000057s|01.31%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000079s|01.82%|00.00%)	(0.000089s|01.79%|00.00%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000057s|01.31%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000072s|01.66%|00.00%)	(0.000082s|01.65%|00.00%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000058s|01.33%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000062s|01.43%|00.00%)	(0.000072s|01.44%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:        	(0.000088s|02.03%|00.00%)	(0.000100s|02.01%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000067s|01.54%|00.00%)	(0.000076s|01.53%|00.00%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000057s|01.31%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000062s|01.43%|00.00%)	(0.000071s|01.42%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000057s|01.31%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000081s|01.86%|00.00%)	(0.000091s|01.83%|00.00%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000057s|01.31%|00.00%)	(0.000067s|01.34%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000058s|01.33%|00.00%)	(0.000068s|01.36%|00.00%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000055s|01.26%|00.00%)	(0.000065s|01.30%|00.00%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000055s|01.26%|00.00%)	(0.000065s|01.30%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000101s|02.33%|00.00%)	(0.000111s|02.23%|00.00%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000060s|01.38%|00.00%)	(0.000070s|01.40%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000062s|01.43%|00.00%)	(0.000071s|01.42%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000056s|01.29%|00.00%)	(0.000066s|01.32%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000063s|01.45%|00.00%)	(0.000072s|01.44%|00.00%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000063s|01.45%|00.00%)	(0.000073s|01.46%|00.00%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000071s|01.63%|00.00%)	(0.000080s|01.61%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000058s|01.33%|00.00%)	(0.000068s|01.36%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000091s|02.09%|00.00%)	(0.000101s|02.03%|00.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.010476s|00.00%|00.00%)	(0.010462s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.010341s|00.00%|00.00%)	(0.010327s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.010299s|00.00%|00.00%)	(0.010281s|00.02%|00.02%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000078s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002445s|00.00%|00.00%)	(0.002820s|00.00%|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002564s|00.00%|00.00%)	(0.002950s|00.00%|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002478s|00.00%|00.00%)	(0.002833s|00.00%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(516.847588s|94.59%|94.58%)	(38.279003s|95.77%|95.71%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000560s|00.00%|00.00%)	(0.000580s|00.04%|00.00%)	(1x) local p0 p0_PID
|   |   |   |   66.0:        	(516.822379s|99.99%|94.58%)	(38.252933s|99.92%|95.64%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 66.0:    	(0.003229s|00.00%|00.00%)	(0.003644s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.k7eMQZ"
|   |   |   |   |   8.0:    	(0.000079s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p0
|   |   |   |   |   12.0:    	(0.009639s|00.05%|00.00%)	(0.009629s|00.67%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:    	(0.452377s|00.08%|00.08%)	(0.438330s|01.17%|01.09%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 2212292 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.449419s|00.08%|00.08%)	(0.448168s|01.20%|01.12%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 2212292 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.453512s|00.08%|00.08%)	(0.446360s|01.20%|01.11%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 2212292 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.453134s|00.08%|00.08%)	(0.446932s|01.20%|01.11%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.105241s|00.01%|00.01%)	(0.112532s|00.29%|00.28%)	(1x) true
|   |   |   |   |   20.0:    	(0.090732s|00.01%|00.01%)	(0.099395s|00.25%|00.24%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.088810s|00.01%|00.01%)	(0.100677s|00.25%|00.25%)	(1x) read -r < "/dev/shm/.forkrun.k7eMQZ"/.nLines
|   |   |   |   |   20.2:    	(0.002775s|00.00%|00.00%)	(0.003201s|00.00%|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002689s|00.00%|00.00%)	(0.003109s|00.00%|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.004371s|00.02%|00.00%)	(0.004853s|00.34%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p0
|   |   |   |   |   23.0:    	(3.016235s|00.58%|00.55%)	(0.130560s|00.33%|00.32%)	(1x) read -r -u 21 _
|   |   |   |   |   24.0:    	(0.091899s|00.01%|00.01%)	(0.103968s|00.26%|00.25%)	(1x) [[ -f "/dev/shm/.forkrun.k7eMQZ"/.quit ]]
|   |   |   |   |   28.0:    	(0.088876s|00.01%|00.01%)	(0.097743s|00.24%|00.24%)	(1x) [[ -f "/dev/shm/.forkrun.k7eMQZ"/.done ]]
|   |   |   |   |   28.1:    	(0.082690s|00.01%|00.01%)	(0.094184s|00.24%|00.23%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.088531s|00.01%|00.01%)	(0.100025s|00.25%|00.25%)	(1x) evfd_wait 25
|   |   |   |   |   31.0:    	(0.841834s|00.15%|00.15%)	(0.792673s|02.06%|01.98%)	(1x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:    	(0.140866s|00.02%|00.02%)	(0.104144s|00.26%|00.26%)	(1x) printf '\n' 1>&21
|   |   |   |   |   35.0:    	(0.003929s|00.02%|00.00%)	(0.004392s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p0
|   |   |   |   |   36.0:    	(0.087314s|00.01%|00.01%)	(0.093885s|00.24%|00.23%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.085763s|00.01%|00.01%)	(0.092739s|00.23%|00.23%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.003076s|00.00%|00.00%)	(0.003517s|00.00%|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.002726s|00.00%|00.00%)	(0.003155s|00.00%|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(509.287181s|98.53%|93.20%)	(33.646451s|87.79%|84.12%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.077549s|00.01%|00.01%)	(0.089027s|00.26%|00.22%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(35.271275s|06.90%|06.45%)	(2.441856s|07.26%|06.10%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(60.425629s|10.49%|11.05%)	(2.614377s|07.75%|06.53%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(49.092239s|09.64%|08.98%)	(2.591263s|07.69%|06.47%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(59.649386s|10.32%|10.91%)	(2.590951s|07.69%|06.47%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(47.639319s|09.20%|08.71%)	(2.610023s|07.75%|06.52%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(31.350599s|06.41%|05.73%)	(2.592000s|07.68%|06.48%)	(1x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(15.400190s|04.15%|02.81%)	(2.596728s|07.71%|06.49%)	(1x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(32.865676s|06.33%|06.01%)	(2.583431s|07.65%|06.45%)	(1x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(13.391861s|03.88%|02.45%)	(2.575611s|07.64%|06.43%)	(1x) cksum "${@}"
|   |   |   |   |   |   17.0:	(41.213726s|08.65%|07.54%)	(2.591148s|07.69%|06.47%)	(1x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(93.130212s|15.17%|17.04%)	(2.596326s|07.70%|06.49%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(15.245745s|04.35%|02.79%)	(2.585985s|07.67%|06.46%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(14.533775s|04.30%|02.65%)	(2.587725s|07.68%|06.47%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:    	(0.002669s|00.00%|00.00%)	(0.003037s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   56.1:    	(0.081561s|00.01%|00.01%)	(0.089578s|00.22%|00.22%)	(1x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.122582s|00.01%|00.02%)	(0.101071s|00.25%|00.25%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002704s|00.00%|00.00%)	(0.003066s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:    	(0.002955s|00.00%|00.00%)	(0.003340s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:    	(0.003194s|00.00%|00.00%)	(0.003602s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.0:    	(0.002656s|00.00%|00.00%)	(0.003035s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.1:    	(0.041212s|00.00%|00.00%)	(0.020154s|00.05%|00.05%)	(1x) break
|   |   |   |   |-- 4.0:    	(0.002964s|00.00%|00.00%)	(0.003359s|00.00%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000080s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000523s|00.00%|00.00%)	(0.000539s|00.03%|00.00%)	(1x) local p1 p1_PID
|   |   |   |   |   8.0:    	(0.005096s|00.00%|00.00%)	(0.005727s|00.00%|00.01%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p1
|   |   |   |   |   12.0:    	(0.009766s|00.05%|00.00%)	(0.009754s|00.64%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.154247s|00.01%|00.02%)	(0.171640s|00.31%|00.42%)	(11x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p1
|   |   |   |   |   35.0:    	(0.156345s|00.01%|00.02%)	(0.160818s|00.29%|00.40%)	(11x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p1
|   |   |   |-- 127.0:        	(0.000083s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000547s|00.00%|00.00%)	(0.000562s|00.04%|00.00%)	(1x) local p2 p2_PID
|   |   |   |   |   8.0:    	(0.004739s|00.00%|00.00%)	(0.005317s|00.00%|00.01%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p2
|   |   |   |   |   12.0:    	(0.009813s|00.04%|00.00%)	(0.009799s|00.78%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.142624s|00.01%|00.02%)	(0.158499s|00.31%|00.39%)	(9x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p2
|   |   |   |   |   35.0:    	(0.143867s|00.01%|00.02%)	(0.151131s|00.29%|00.37%)	(9x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p2
|   |   |   |-- 127.0:        	(0.000099s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000532s|00.00%|00.00%)	(0.000550s|00.04%|00.00%)	(1x) local p3 p3_PID
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p3
|   |   |   |   |   12.0:    	(0.010006s|00.05%|00.00%)	(0.009986s|00.90%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003214s|00.01%|00.00%)	(0.003558s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p3
|   |   |   |   |   35.0:    	(0.003047s|00.01%|00.00%)	(0.003379s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p3
|   |   |   |-- 127.0:        	(0.000080s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000557s|00.00%|00.00%)	(0.000574s|00.04%|00.00%)	(1x) local p4 p4_PID
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p4
|   |   |   |   |   12.0:    	(0.010105s|00.05%|00.00%)	(0.010088s|00.80%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003661s|00.02%|00.00%)	(0.004055s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p4
|   |   |   |   |   35.0:    	(0.003293s|00.01%|00.00%)	(0.003669s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p4
|   |   |   |-- 127.0:        	(0.000085s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000584s|00.00%|00.00%)	(0.000598s|00.04%|00.00%)	(1x) local p5 p5_PID
|   |   |   |   |   8.0:    	(0.000084s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p5
|   |   |   |   |   12.0:    	(0.009990s|00.05%|00.00%)	(0.009975s|00.81%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003694s|00.02%|00.00%)	(0.004125s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p5
|   |   |   |   |   35.0:    	(0.003598s|00.02%|00.00%)	(0.004022s|00.32%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p5
|   |   |   |-- 127.0:        	(0.000086s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000587s|00.00%|00.00%)	(0.000602s|00.04%|00.00%)	(1x) local p6 p6_PID
|   |   |   |   |   8.0:    	(0.000083s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p6
|   |   |   |   |   12.0:    	(0.010024s|00.05%|00.00%)	(0.010009s|00.68%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004151s|00.02%|00.00%)	(0.004626s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p6
|   |   |   |   |   35.0:    	(0.003944s|00.02%|00.00%)	(0.004327s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p6
|   |   |   |-- 127.0:        	(0.000084s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000596s|00.00%|00.00%)	(0.000607s|00.06%|00.00%)	(1x) local p7 p7_PID
|   |   |   |   |   8.0:    	(0.000083s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p7
|   |   |   |   |   12.0:    	(0.010060s|00.05%|00.00%)	(0.010046s|01.00%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003042s|00.01%|00.00%)	(0.003365s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p7
|   |   |   |   |   35.0:    	(0.002676s|00.01%|00.00%)	(0.002990s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p7
|   |   |   |-- 127.0:        	(0.000087s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000587s|00.00%|00.00%)	(0.000600s|00.04%|00.00%)	(1x) local p8 p8_PID
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p8
|   |   |   |   |   12.0:    	(0.010065s|00.05%|00.00%)	(0.010050s|00.77%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003820s|00.02%|00.00%)	(0.004253s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p8
|   |   |   |   |   35.0:    	(0.003655s|00.02%|00.00%)	(0.004079s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p8
|   |   |   |-- 127.0:        	(0.000089s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000601s|00.00%|00.00%)	(0.000612s|00.03%|00.00%)	(1x) local p9 p9_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p9
|   |   |   |   |   12.0:    	(0.010060s|00.05%|00.00%)	(0.010044s|00.58%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005069s|00.02%|00.00%)	(0.005637s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p9
|   |   |   |   |   35.0:    	(0.004863s|00.02%|00.00%)	(0.005455s|00.31%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p9
|   |   |   |-- 127.0:        	(0.000084s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000589s|00.00%|00.00%)	(0.000599s|00.04%|00.00%)	(1x) local p10 p10_PID
|   |   |   |   |   8.0:    	(0.000083s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p10
|   |   |   |   |   12.0:    	(0.010213s|00.05%|00.00%)	(0.010107s|00.69%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004366s|00.02%|00.00%)	(0.004860s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p10
|   |   |   |   |   35.0:    	(0.004354s|00.02%|00.00%)	(0.004862s|00.33%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p10
|   |   |   |   |   37.0:    	(0.000112s|00.00%|00.00%)	(0.000129s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.000112s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.000127s|00.00%|00.00%)	(0.000144s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000150s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) : > "/dev/shm/.forkrun.k7eMQZ"/.quit
|   |   |   |   |   50.0:    	(0.000193s|00.00%|00.00%)	(0.000211s|00.01%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.k7eMQZ"/.run/p* 1>&21
|   |   |   |   |   51.0:    	(0.000132s|00.00%|00.00%)	(0.000151s|00.01%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000083s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000623s|00.00%|00.00%)	(0.000640s|00.04%|00.00%)	(1x) local p11 p11_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p11
|   |   |   |   |   12.0:    	(0.018519s|00.10%|00.00%)	(0.018398s|01.15%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004641s|00.02%|00.00%)	(0.005175s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p11
|   |   |   |   |   35.0:    	(0.004290s|00.02%|00.00%)	(0.004806s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p11
|   |   |   |-- 127.0:        	(0.000080s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000651s|00.00%|00.00%)	(0.000664s|00.05%|00.00%)	(1x) local p12 p12_PID
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p12
|   |   |   |   |   12.0:    	(0.010647s|00.05%|00.00%)	(0.010625s|00.94%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003089s|00.01%|00.00%)	(0.003437s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p12
|   |   |   |   |   35.0:    	(0.006005s|00.03%|00.00%)	(0.003342s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p12
|   |   |   |-- 127.0:        	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000791s|00.00%|00.00%)	(0.000814s|00.06%|00.00%)	(1x) local p13 p13_PID
|   |   |   |   |   8.0:    	(0.000143s|00.00%|00.00%)	(0.000160s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p13
|   |   |   |   |   12.0:    	(0.019279s|00.09%|00.00%)	(0.019230s|01.55%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003407s|00.01%|00.00%)	(0.003773s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p13
|   |   |   |   |   35.0:    	(0.003407s|00.01%|00.00%)	(0.003802s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p13
|   |   |   |-- 127.0:        	(0.000141s|00.00%|00.00%)	(0.000157s|00.01%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000891s|00.00%|00.00%)	(0.000912s|00.12%|00.00%)	(1x) local p14 p14_PID
|   |   |   |   |   8.0:    	(0.000095s|00.00%|00.00%)	(0.000102s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p14
|   |   |   |   |   12.0:    	(0.010122s|00.05%|00.00%)	(0.010102s|01.36%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002105s|00.01%|00.00%)	(0.002356s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p14
|   |   |   |   |   35.0:    	(0.001860s|00.01%|00.00%)	(0.002066s|00.27%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p14
|   |   |   |-- 127.0:        	(0.000131s|00.00%|00.00%)	(0.000147s|00.01%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000914s|00.00%|00.00%)	(0.000937s|00.07%|00.00%)	(1x) local p15 p15_PID
|   |   |   |   |   8.0:    	(0.000169s|00.00%|00.00%)	(0.000191s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p15
|   |   |   |   |   12.0:    	(0.013647s|00.06%|00.00%)	(0.013610s|01.05%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003610s|00.01%|00.00%)	(0.004017s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p15
|   |   |   |   |   35.0:    	(0.003339s|00.01%|00.00%)	(0.003725s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p15
|   |   |   |-- 127.0:        	(0.000140s|00.00%|00.00%)	(0.000157s|00.01%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000983s|00.00%|00.00%)	(0.001001s|00.06%|00.00%)	(1x) local p16 p16_PID
|   |   |   |   |   8.0:    	(0.000169s|00.00%|00.00%)	(0.000190s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p16
|   |   |   |   |   12.0:    	(0.017477s|00.09%|00.00%)	(0.017398s|01.15%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004512s|00.02%|00.00%)	(0.005024s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p16
|   |   |   |   |   35.0:    	(0.004014s|00.02%|00.00%)	(0.004449s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p16
|   |   |   |-- 127.0:        	(0.000133s|00.00%|00.00%)	(0.000150s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000931s|00.00%|00.00%)	(0.000954s|00.06%|00.00%)	(1x) local p17 p17_PID
|   |   |   |   |   8.0:    	(0.000140s|00.00%|00.00%)	(0.000157s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p17
|   |   |   |   |   12.0:    	(0.018950s|00.10%|00.00%)	(0.018901s|01.23%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004536s|00.02%|00.00%)	(0.005031s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p17
|   |   |   |   |   35.0:    	(0.004132s|00.02%|00.00%)	(0.004597s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p17
|   |   |   |-- 127.0:        	(0.000143s|00.00%|00.00%)	(0.000157s|00.01%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000983s|00.00%|00.00%)	(0.001000s|00.08%|00.00%)	(1x) local p18 p18_PID
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(0.000157s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p18
|   |   |   |   |   12.0:    	(0.019214s|00.09%|00.00%)	(0.019138s|01.72%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003404s|00.01%|00.00%)	(0.003792s|00.34%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p18
|   |   |   |   |   35.0:    	(0.003103s|00.01%|00.00%)	(0.003449s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p18
|   |   |   |-- 127.0:        	(0.000135s|00.00%|00.00%)	(0.000150s|00.01%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000979s|00.00%|00.00%)	(0.000993s|00.07%|00.00%)	(1x) local p19 p19_PID
|   |   |   |   |   8.0:    	(0.000137s|00.00%|00.00%)	(0.000156s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p19
|   |   |   |   |   12.0:    	(0.020711s|00.11%|00.00%)	(0.020642s|01.62%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003721s|00.02%|00.00%)	(0.004144s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p19
|   |   |   |   |   35.0:    	(0.003511s|00.02%|00.00%)	(0.003911s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p19
|   |   |   |-- 127.0:        	(0.000137s|00.00%|00.00%)	(0.000155s|00.01%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.001000s|00.00%|00.00%)	(0.001018s|00.05%|00.00%)	(1x) local p20 p20_PID
|   |   |   |   |   8.0:    	(0.000165s|00.00%|00.00%)	(0.000189s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p20
|   |   |   |   |   12.0:    	(0.020606s|00.11%|00.00%)	(0.020533s|01.13%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005122s|00.02%|00.00%)	(0.005716s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p20
|   |   |   |   |   35.0:    	(0.005012s|00.02%|00.00%)	(0.005579s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p20
|   |   |   |-- 127.0:        	(0.000133s|00.00%|00.00%)	(0.000151s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.001000s|00.00%|00.00%)	(0.001020s|00.07%|00.00%)	(1x) local p21 p21_PID
|   |   |   |   |   8.0:    	(0.000163s|00.00%|00.00%)	(0.000183s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p21
|   |   |   |   |   12.0:    	(0.017533s|00.08%|00.00%)	(0.017494s|01.23%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004077s|00.01%|00.00%)	(0.004528s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p21
|   |   |   |   |   35.0:    	(0.003763s|00.01%|00.00%)	(0.004209s|00.29%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p21
|   |   |   |-- 127.0:        	(0.000133s|00.00%|00.00%)	(0.000151s|00.01%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.000995s|00.00%|00.00%)	(0.001015s|00.11%|00.00%)	(1x) local p22 p22_PID
|   |   |   |   |   8.0:    	(0.000122s|00.00%|00.00%)	(0.000138s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p22
|   |   |   |   |   12.0:    	(0.012759s|00.06%|00.00%)	(0.012713s|01.49%|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002363s|00.01%|00.00%)	(0.002630s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p22
|   |   |   |   |   35.0:    	(0.004214s|00.02%|00.00%)	(0.002387s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p22
|   |   |   |-- 127.0:        	(0.000153s|00.00%|00.00%)	(0.000171s|00.02%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.001004s|00.00%|00.00%)	(0.001028s|00.06%|00.00%)	(1x) local p23 p23_PID
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(0.000156s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p23
|   |   |   |   |   12.0:    	(0.019408s|00.11%|00.00%)	(0.019339s|01.22%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004609s|00.02%|00.00%)	(0.005092s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p23
|   |   |   |   |   35.0:    	(0.004292s|00.02%|00.00%)	(0.004793s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p23
|   |   |   |-- 127.0:        	(0.000148s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.000980s|00.00%|00.00%)	(0.000996s|00.07%|00.00%)	(1x) local p24 p24_PID
|   |   |   |   |   8.0:    	(0.000186s|00.00%|00.00%)	(0.000210s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p24
|   |   |   |   |   12.0:    	(0.021970s|00.11%|00.00%)	(0.019689s|01.42%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003795s|00.01%|00.00%)	(0.004213s|00.30%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p24
|   |   |   |   |   35.0:    	(0.003845s|00.01%|00.00%)	(0.004274s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p24
|   |   |   |-- 127.0:        	(0.000137s|00.00%|00.00%)	(0.000153s|00.01%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.001042s|00.00%|00.00%)	(0.001057s|00.06%|00.00%)	(1x) local p25 p25_PID
|   |   |   |   |   8.0:    	(0.000092s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p25
|   |   |   |   |   12.0:    	(0.020911s|00.12%|00.00%)	(0.020822s|01.31%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004615s|00.02%|00.00%)	(0.005147s|00.32%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p25
|   |   |   |   |   35.0:    	(0.004280s|00.02%|00.00%)	(0.004783s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p25
|   |   |   |-- 127.0:        	(0.000135s|00.00%|00.00%)	(0.000153s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001001s|00.00%|00.00%)	(0.001018s|00.05%|00.00%)	(1x) local p26 p26_PID
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(0.000156s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p26
|   |   |   |   |   12.0:    	(0.020534s|00.11%|00.00%)	(0.020462s|01.14%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005062s|00.02%|00.00%)	(0.005610s|00.31%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p26
|   |   |   |   |   35.0:    	(0.004893s|00.02%|00.00%)	(0.005456s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p26
|   |   |   |-- 127.0:        	(0.000143s|00.00%|00.00%)	(0.000161s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001006s|00.00%|00.00%)	(0.001026s|00.05%|00.00%)	(1x) local p27 p27_PID
|   |   |   |   |   8.0:    	(0.000158s|00.00%|00.00%)	(0.000171s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.k7eMQZ"/.run/p27
|   |   |   |   |   12.0:    	(0.023100s|00.13%|00.00%)	(0.022937s|01.34%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.k7eMQZ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.k7eMQZ"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.k7eMQZ"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005068s|00.02%|00.00%)	(0.005641s|00.33%|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p27
|   |   |   |   |   35.0:    	(0.004697s|00.02%|00.00%)	(0.005215s|00.30%|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.k7eMQZ"/.wait/p27
|   |   |   |-- 127.0:        	(0.000134s|00.00%|00.00%)	(0.000151s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000144s|00.00%|00.00%)	(0.000161s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000135s|00.00%|00.00%)	(0.000152s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000115s|00.00%|00.00%)	(0.000132s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000107s|00.00%|00.00%)	(0.000123s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001199s|00.00%|00.00%)	(0.001210s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000114s|00.00%|00.00%)	(0.000131s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000112s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000113s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.574375s|04.31%|04.31%)	(0.001146s|00.00%|00.00%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000069s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000123s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -239.0:            	(0.000411s|00.00%|00.00%)	(0.000469s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -238.0:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.0:            	(0.003372s|00.00%|00.00%)	(0.000499s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.1:            	(0.003315s|00.00%|00.00%)	(0.003315s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -237.0:        	(0.003315s|100.00%|00.00%)	(0.003315s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -236.0:            	(0.000076s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.0:            	(0.003230s|00.00%|00.00%)	(0.000444s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.1:            	(0.003202s|00.00%|00.00%)	(0.003202s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -235.0:        	(0.003202s|100.00%|00.00%)	(0.003202s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -234.0:            	(0.000078s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.0:            	(0.003058s|00.00%|00.00%)	(0.000449s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.1:            	(0.003056s|00.00%|00.00%)	(0.003056s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -233.0:        	(0.003056s|100.00%|00.00%)	(0.003056s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |-- -232.0:            	(0.016475s|00.00%|00.00%)	(0.016437s|00.04%|00.04%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000094s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) wait
|-- |-- -239.0:                	(0.001340s|00.00%|00.00%)	(0.000402s|00.00%|00.00%)	(1x) wait (?)



TOTAL RUN TIME: 546.409208s
TOTAL CPU TIME: 39.994476s
