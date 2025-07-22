0.0:                        	(547.593949s|50.08%)	(40.081227s|50.08%)	(1x) << (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0:                    	(0.001130s|00.00%|00.00%)	(0.000932s|00.00%|00.00%)	(1x) forkrun ff < /mnt/ramdisk/flist > /dev/null
|   364.0:                    	(547.592819s|99.99%|50.08%)	(40.080295s|99.99%|50.08%)	(1x) << (SUBSHELL) >>
|   |-- 364.0:                	(0.018434s|00.00%|00.00%)	(0.018381s|00.04%|00.02%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000073s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000116s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000089s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000072s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000087s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000053s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   278.0:                	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000056s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000054s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.000943s|00.00%|00.00%)	(0.000702s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.004863s|00.00%|00.00%)	(0.004863s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.004863s|100.00%|00.00%)	(0.004863s|100.00%|00.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.001934s|00.00%|00.00%)	(0.000328s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000081s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.012487s|00.00%|00.00%)	(0.001003s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(547.551976s|24.99%|50.07%)	(40.053576s|24.98%|50.04%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000068s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000294s|00.00%|00.00%)	(0.000338s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.001336s|100.00%|00.00%)	(0.001522s|100.00%|00.00%)	(1x) :
|   |   |   1457.1:            	(0.000298s|00.00%|00.00%)	(0.000334s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000285s|00.00%|00.00%)	(0.000328s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000297s|00.00%|00.00%)	(0.000334s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000074s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000074s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000171s|00.00%|00.00%)	(0.000182s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000068s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000063s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.002669s|00.00%|00.00%)	(0.000445s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000106s|00.00%|00.00%)	(0.000118s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000106s|100.00%|00.00%)	(0.000118s|100.00%|00.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000068s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000076s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000073s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000735s|00.00%|00.00%)	(0.000853s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000054s|07.34%|00.00%)	(0.000063s|07.38%|00.00%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000057s|07.75%|00.00%)	(0.000067s|07.85%|00.00%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000057s|07.75%|00.00%)	(0.000067s|07.85%|00.00%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000061s|08.29%|00.00%)	(0.000069s|08.08%|00.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000058s|07.89%|00.00%)	(0.000067s|07.85%|00.00%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000060s|08.16%|00.00%)	(0.000070s|08.20%|00.00%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000057s|07.75%|00.00%)	(0.000067s|07.85%|00.00%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000105s|14.28%|00.00%)	(0.000116s|13.59%|00.00%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000056s|07.61%|00.00%)	(0.000066s|07.73%|00.00%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000053s|07.21%|00.00%)	(0.000065s|07.62%|00.00%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000056s|07.61%|00.00%)	(0.000065s|07.62%|00.00%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000061s|08.29%|00.00%)	(0.000071s|08.32%|00.00%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000061s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.006886s|00.00%|00.00%)	(0.000396s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.002076s|00.00%|00.00%)	(0.001286s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000288s|13.87%|00.00%)	(0.000304s|23.63%|00.00%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001788s|86.12%|00.00%)	(0.000982s|76.36%|00.00%)	(1x) nproc
|   |   |   441.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000071s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000064s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000068s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000055s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000055s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000158s|00.00%|00.00%)	(0.000169s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000062s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   499.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   500.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   501.0:            	(0.000059s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   501.1:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   512.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.004178s|00.00%|00.00%)	(0.000471s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}")
|   |   |   521.1:            	(0.000121s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000121s|100.00%|00.00%)	(0.000143s|100.00%|00.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.002284s|00.00%|00.00%)	(0.000605s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000074s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000065s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000055s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000494s|00.00%|00.00%)	(0.000506s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}"
|   |   |   599.0:            	(0.068179s|00.01%|00.00%)	(0.068116s|00.17%|00.08%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000072s|00.10%|00.00%)	(0.000083s|00.12%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.008916s|13.07%|00.00%)	(0.008899s|13.06%|00.01%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.010431s|15.29%|00.00%)	(0.010417s|15.29%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.010245s|15.02%|00.00%)	(0.010232s|15.02%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.010231s|15.00%|00.00%)	(0.010217s|14.99%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.010213s|14.97%|00.00%)	(0.010200s|14.97%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000063s|00.09%|00.00%)	(0.000070s|00.10%|00.00%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.017794s|26.09%|00.00%)	(0.017757s|26.06%|00.02%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000088s|00.12%|00.00%)	(0.000094s|00.13%|00.00%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000058s|00.08%|00.00%)	(0.000068s|00.09%|00.00%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000068s|00.09%|00.00%)	(0.000079s|00.11%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000410s|00.00%|00.00%)	(0.000432s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines
|   |   |   686.0:            	(5.813024s|01.06%|00.53%)	(1.550530s|03.87%|01.93%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000137s|00.00%|00.00%)	(0.000154s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.011227s|00.19%|00.00%)	(0.011199s|00.72%|00.01%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.010240s|00.17%|00.00%)	(0.010226s|00.65%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.010226s|00.17%|00.00%)	(0.010210s|00.65%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.010286s|00.17%|00.00%)	(0.010270s|00.66%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010248s|00.17%|00.00%)	(0.010232s|00.65%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000055s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.084951s|01.46%|00.00%)	(0.093462s|06.02%|00.11%)	(1x) ${fallocateFlag}
|   |   |   |   702.0:        	(4.486899s|77.18%|00.41%)	(0.111599s|07.19%|00.13%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.002079s|00.03%|00.00%)	(0.002353s|00.15%|00.00%)	(1x) continue
|   |   |   |   704.0:        	(0.078111s|01.34%|00.00%)	(0.089331s|05.76%|00.11%)	(1x) case ${REPLY} in
|   |   |   |   718.0:        	(0.079927s|01.37%|00.00%)	(0.089274s|05.75%|00.11%)	(1x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.081087s|01.39%|00.00%)	(0.089223s|05.75%|00.11%)	(1x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.080900s|01.39%|00.00%)	(0.092036s|05.93%|00.11%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.080699s|01.38%|00.00%)	(0.091936s|05.92%|00.11%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.077273s|01.32%|00.00%)	(0.088505s|05.70%|00.11%)	(1x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.077747s|01.33%|00.00%)	(0.089028s|05.74%|00.11%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.078147s|01.34%|00.00%)	(0.089248s|05.75%|00.11%)	(1x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.077703s|01.33%|00.00%)	(0.089045s|05.74%|00.11%)	(1x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.006746s|00.11%|00.00%)	(0.000476s|00.03%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null)
|   |   |   |   746.1:        	(0.004633s|00.07%|00.00%)	(0.003127s|00.20%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.003419s|73.79%|00.00%)	(0.002663s|85.16%|00.00%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000110s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000103s|00.00%|00.00%)	(0.000118s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000121s|00.00%|00.00%)	(0.000137s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000118s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000095s|00.00%|00.00%)	(0.000110s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000104s|00.00%|00.00%)	(0.000121s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000099s|00.00%|00.00%)	(0.000113s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000140s|00.00%|00.00%)	(0.000158s|00.01%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000129s|00.00%|00.00%)	(0.000148s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000109s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.078055s|01.34%|00.00%)	(0.089262s|05.75%|00.11%)	(1x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.076819s|01.32%|00.00%)	(0.088206s|05.68%|00.11%)	(1x) case ${nWait} in
|   |   |   |   778.0:        	(0.075663s|01.30%|00.00%)	(0.086557s|05.58%|00.10%)	(1x) ((nWait--))
|   |   |   |   783.0:        	(0.081328s|01.39%|00.00%)	(0.092653s|05.97%|00.11%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.082532s|01.41%|00.00%)	(0.090798s|05.85%|00.11%)	(1x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002444s|00.04%|00.00%)	(0.002798s|00.18%|00.00%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002419s|00.04%|00.00%)	(0.002757s|00.17%|00.00%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.052504s|00.90%|00.00%)	(0.013940s|00.89%|00.01%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002574s|00.04%|00.00%)	(0.002925s|00.18%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002597s|00.04%|00.00%)	(0.002945s|00.18%|00.00%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002645s|00.04%|00.00%)	(0.003021s|00.19%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   712.0:        	(0.000117s|00.00%|00.00%)	(0.000134s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   784.0:        	(0.000115s|00.00%|00.00%)	(0.000132s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000139s|00.00%|00.00%)	(0.000160s|00.01%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000158s|00.00%|00.00%)	(0.000182s|00.01%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000156s|00.00%|00.00%)	(0.000179s|00.01%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000190s|00.00%|00.00%)	(0.000214s|00.01%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -239.0:        	(0.000154s|00.00%|00.00%)	(0.000177s|00.01%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -239.1:        	(0.001560s|00.02%|00.00%)	(0.000721s|00.04%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000087s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000094s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.001889s|00.00%|00.00%)	(0.001170s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.015502s|00.00%|00.00%)	(0.016285s|00.04%|00.02%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000389s|07.06%|00.00%)	(0.000429s|06.80%|00.00%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000249s|04.52%|00.00%)	(0.000286s|04.53%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000070s|01.27%|00.00%)	(0.000080s|01.26%|00.00%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000207s|03.75%|00.00%)	(0.000218s|03.45%|00.00%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000058s|01.05%|00.00%)	(0.000068s|01.07%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000055s|00.99%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000062s|01.12%|00.00%)	(0.000072s|01.14%|00.00%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000056s|01.01%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000057s|01.03%|00.00%)	(0.000067s|01.06%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000061s|01.10%|00.00%)	(0.000071s|01.12%|00.00%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000060s|01.08%|00.00%)	(0.000069s|01.09%|00.00%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000057s|01.03%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000065s|01.18%|00.00%)	(0.000071s|01.12%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000061s|01.10%|00.00%)	(0.000071s|01.12%|00.00%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000059s|01.07%|00.00%)	(0.000069s|01.09%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000059s|01.07%|00.00%)	(0.000069s|01.09%|00.00%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000057s|01.03%|00.00%)	(0.000067s|01.06%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000058s|01.05%|00.00%)	(0.000067s|01.06%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1411.0:        	(0.000062s|01.12%|00.00%)	(0.000071s|01.12%|00.00%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000057s|01.03%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000058s|01.05%|00.00%)	(0.000069s|01.09%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000061s|01.10%|00.00%)	(0.000070s|01.10%|00.00%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1413.0:        	(0.000056s|01.01%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1416.0:        	(0.000064s|01.16%|00.00%)	(0.000074s|01.17%|00.00%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1417.0:        	(0.000056s|01.01%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1420.0:        	(0.000061s|01.10%|00.00%)	(0.000071s|01.12%|00.00%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1458.0:        	(0.000062s|01.12%|00.00%)	(0.000068s|01.07%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1463.0:        	(0.000065s|01.18%|00.00%)	(0.000074s|01.17%|00.00%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1464.0:        	(0.000061s|01.10%|00.00%)	(0.000072s|01.14%|00.00%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1465.0:        	(0.000058s|01.05%|00.00%)	(0.000069s|01.09%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1465.1:        	(0.000058s|01.05%|00.00%)	(0.000068s|01.07%|00.00%)	(1x) printf '\n'
|   |   |   |   1466.0:        	(0.000056s|01.01%|00.00%)	(0.000065s|01.03%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1467.0:        	(0.000088s|01.59%|00.00%)	(0.000098s|01.55%|00.00%)	(1x) echo "}"
|   |   |   |   1469.0:        	(0.000055s|00.99%|00.00%)	(0.000064s|01.01%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000058s|01.05%|00.00%)	(0.000068s|01.07%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000056s|01.01%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1469.3:        	(0.000066s|01.19%|00.00%)	(0.000077s|01.22%|00.00%)	(1x) echo "}"
|   |   |   |   1470.0:        	(0.000066s|01.19%|00.00%)	(0.000076s|01.20%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000077s|01.39%|00.00%)	(0.000086s|01.36%|00.00%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000056s|01.01%|00.00%)	(0.000065s|01.03%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000069s|01.25%|00.00%)	(0.000079s|01.25%|00.00%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000069s|01.25%|00.00%)	(0.000078s|01.23%|00.00%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000055s|00.99%|00.00%)	(0.000064s|01.01%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000075s|01.36%|00.00%)	(0.000085s|01.34%|00.00%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000061s|01.10%|00.00%)	(0.000072s|01.14%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000061s|01.10%|00.00%)	(0.000070s|01.10%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000080s|01.45%|00.00%)	(0.000082s|01.29%|00.00%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000058s|01.05%|00.00%)	(0.000068s|01.07%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000070s|01.27%|00.00%)	(0.000080s|01.26%|00.00%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000061s|01.10%|00.00%)	(0.000067s|01.06%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000066s|01.19%|00.00%)	(0.000076s|01.20%|00.00%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000057s|01.03%|00.00%)	(0.000067s|01.06%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000063s|01.14%|00.00%)	(0.000072s|01.14%|00.00%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000055s|00.99%|00.00%)	(0.000065s|01.03%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000072s|01.30%|00.00%)	(0.000082s|01.29%|00.00%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000056s|01.01%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000056s|01.01%|00.00%)	(0.000065s|01.03%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1519.2:        	(0.000057s|01.03%|00.00%)	(0.000067s|01.06%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1519.3:        	(0.000061s|01.10%|00.00%)	(0.000071s|01.12%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1527.0:        	(0.000055s|00.99%|00.00%)	(0.000065s|01.03%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000079s|01.43%|00.00%)	(0.000089s|01.41%|00.00%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000056s|01.01%|00.00%)	(0.000065s|01.03%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000057s|01.03%|00.00%)	(0.000067s|01.06%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000058s|01.05%|00.00%)	(0.000068s|01.07%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000080s|01.45%|00.00%)	(0.000089s|01.41%|00.00%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000057s|01.03%|00.00%)	(0.000066s|01.04%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000053s|00.96%|00.00%)	(0.000062s|00.98%|00.00%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000054s|00.98%|00.00%)	(0.000064s|01.01%|00.00%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000054s|00.98%|00.00%)	(0.000063s|00.99%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000090s|01.63%|00.00%)	(0.000100s|01.58%|00.00%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000062s|01.12%|00.00%)	(0.000072s|01.14%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000060s|01.08%|00.00%)	(0.000070s|01.10%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000052s|00.94%|00.00%)	(0.000062s|00.98%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000077s|01.39%|00.00%)	(0.000086s|01.36%|00.00%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000062s|01.12%|00.00%)	(0.000072s|01.14%|00.00%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000061s|01.10%|00.00%)	(0.000070s|01.10%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000061s|01.10%|00.00%)	(0.000071s|01.12%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000079s|01.43%|00.00%)	(0.000090s|01.42%|00.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000276s|00.00%|00.00%)	(0.000312s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000259s|00.00%|00.00%)	(0.000294s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000288s|00.00%|00.00%)	(0.000324s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.010393s|00.00%|00.00%)	(0.010368s|00.02%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.010131s|00.00%|00.00%)	(0.010115s|00.02%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.009980s|00.00%|00.00%)	(0.009967s|00.02%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000071s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002400s|00.00%|00.00%)	(0.002775s|00.00%|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002554s|00.00%|00.00%)	(0.002917s|00.00%|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002391s|00.00%|00.00%)	(0.002752s|00.00%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(517.680597s|94.54%|47.34%)	(38.324420s|95.68%|47.88%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000553s|00.00%|00.00%)	(0.000569s|00.05%|00.00%)	(1x) local p0 p0_PID
|   |   |   |   66.0:        	(517.655406s|99.99%|47.34%)	(38.298382s|99.92%|47.85%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 66.0:    	(0.004897s|00.00%|00.00%)	(0.005431s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.qGxbSA"
|   |   |   |   |   8.0:    	(0.000078s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p0
|   |   |   |   |   12.0:    	(0.009652s|00.05%|00.00%)	(0.009639s|00.93%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:    	(0.419927s|00.07%|00.03%)	(0.418773s|01.14%|00.52%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 645948 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.439206s|00.08%|00.04%)	(0.433069s|01.17%|00.54%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 645948 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.436302s|00.08%|00.03%)	(0.435059s|01.18%|00.54%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 645948 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.453864s|00.08%|00.04%)	(0.452516s|01.23%|00.56%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.100684s|00.01%|00.00%)	(0.112809s|00.28%|00.14%)	(1x) true
|   |   |   |   |   20.0:    	(0.089086s|00.01%|00.00%)	(0.099518s|00.25%|00.12%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.088906s|00.01%|00.00%)	(0.100272s|00.25%|00.12%)	(1x) read -r < "/dev/shm/.forkrun.qGxbSA"/.nLines
|   |   |   |   |   20.2:    	(0.002789s|00.00%|00.00%)	(0.003225s|00.00%|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002831s|00.00%|00.00%)	(0.003248s|00.00%|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003176s|00.01%|00.00%)	(0.003519s|00.34%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p0
|   |   |   |   |   23.0:    	(6.247204s|01.20%|00.57%)	(0.142960s|00.36%|00.17%)	(1x) read -r -u 21 _
|   |   |   |   |   24.0:    	(0.096279s|00.01%|00.00%)	(0.105720s|00.27%|00.13%)	(1x) [[ -f "/dev/shm/.forkrun.qGxbSA"/.quit ]]
|   |   |   |   |   28.0:    	(0.089389s|00.01%|00.00%)	(0.099155s|00.25%|00.12%)	(1x) [[ -f "/dev/shm/.forkrun.qGxbSA"/.done ]]
|   |   |   |   |   28.1:    	(0.084690s|00.01%|00.00%)	(0.096099s|00.24%|00.12%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.095299s|00.01%|00.00%)	(0.100200s|00.25%|00.12%)	(1x) evfd_wait 25
|   |   |   |   |   31.0:    	(0.813945s|00.15%|00.07%)	(0.790006s|02.05%|00.98%)	(1x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:    	(0.083605s|00.01%|00.00%)	(0.094816s|00.24%|00.11%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.082914s|00.01%|00.00%)	(0.094267s|00.24%|00.11%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.162893s|00.02%|00.01%)	(0.102451s|00.26%|00.12%)	(1x) printf '\n' 1>&21
|   |   |   |   |   47.0:    	(0.002877s|00.01%|00.00%)	(0.003204s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p0
|   |   |   |   |   48.0:    	(0.085813s|00.01%|00.00%)	(0.094608s|00.24%|00.11%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.082341s|00.01%|00.00%)	(0.093798s|00.23%|00.11%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:    	(0.003516s|00.00%|00.00%)	(0.004010s|00.00%|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:    	(0.003286s|00.00%|00.00%)	(0.003746s|00.00%|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:    	(506.809476s|97.88%|46.35%)	(33.544504s|87.31%|41.91%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.076517s|00.01%|00.00%)	(0.087802s|00.25%|00.10%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(35.052550s|07.00%|03.20%)	(2.426757s|07.23%|03.03%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(60.131708s|10.49%|05.49%)	(2.585969s|07.69%|03.23%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(48.629665s|09.57%|04.44%)	(2.575760s|07.66%|03.21%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(59.524477s|10.35%|05.44%)	(2.579723s|07.66%|03.22%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(47.203326s|09.14%|04.31%)	(2.573864s|07.66%|03.21%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(31.330631s|06.44%|02.86%)	(2.595125s|07.71%|03.24%)	(1x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(15.306550s|04.11%|01.39%)	(2.595686s|07.72%|03.24%)	(1x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(32.898779s|06.36%|03.00%)	(2.586817s|07.69%|03.23%)	(1x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(13.397869s|03.86%|01.22%)	(2.596091s|07.72%|03.24%)	(1x) cksum "${@}"
|   |   |   |   |   |   17.0:	(40.880466s|08.60%|03.73%)	(2.583259s|07.69%|03.22%)	(1x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(92.439213s|15.15%|08.45%)	(2.592114s|07.73%|03.23%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(15.282152s|04.38%|01.39%)	(2.582604s|07.69%|03.22%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(14.655573s|04.32%|01.34%)	(2.582933s|07.69%|03.22%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   70.1:    	(0.002984s|00.00%|00.00%)	(0.003400s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   68.1:    	(0.078407s|00.00%|00.00%)	(0.089327s|00.22%|00.11%)	(1x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.121429s|00.01%|00.01%)	(0.099922s|00.25%|00.12%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002499s|00.00%|00.00%)	(0.002834s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:    	(0.002947s|00.00%|00.00%)	(0.003301s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:    	(0.003209s|00.00%|00.00%)	(0.003622s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.0:    	(0.002683s|00.00%|00.00%)	(0.003065s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.1:    	(0.042236s|00.00%|00.00%)	(0.018722s|00.04%|00.02%)	(1x) break
|   |   |   |   |-- 4.0:    	(0.002990s|00.00%|00.00%)	(0.003377s|00.00%|00.00%)	(1x) break
|   |   |   |-- 139.0:        	(0.000069s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000528s|00.00%|00.00%)	(0.000546s|00.03%|00.00%)	(1x) local p1 p1_PID
|   |   |   |   |   8.0:    	(0.004643s|00.00%|00.00%)	(0.005206s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p1
|   |   |   |   |   12.0:    	(0.009716s|00.05%|00.00%)	(0.009703s|00.67%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.158726s|00.01%|00.01%)	(0.176025s|00.31%|00.21%)	(11x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p1
|   |   |   |   |   47.0:    	(0.150944s|00.01%|00.01%)	(0.168042s|00.30%|00.20%)	(11x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p1
|   |   |   |-- 139.0:        	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000556s|00.00%|00.00%)	(0.000569s|00.03%|00.00%)	(1x) local p2 p2_PID
|   |   |   |   |   8.0:    	(0.004967s|00.00%|00.00%)	(0.005541s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p2
|   |   |   |   |   12.0:    	(0.009783s|00.05%|00.00%)	(0.009770s|00.62%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.130583s|00.01%|00.01%)	(0.145155s|00.31%|00.18%)	(9x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p2
|   |   |   |   |   47.0:    	(0.121897s|00.01%|00.01%)	(0.135943s|00.28%|00.16%)	(9x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p2
|   |   |   |-- 139.0:        	(0.000068s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000558s|00.00%|00.00%)	(0.000576s|00.03%|00.00%)	(1x) local p3 p3_PID
|   |   |   |   |   8.0:    	(0.000310s|00.00%|00.00%)	(0.000348s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p3
|   |   |   |   |   12.0:    	(0.010034s|00.04%|00.00%)	(0.010022s|00.65%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004463s|00.02%|00.00%)	(0.004978s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p3
|   |   |   |   |   47.0:    	(0.004249s|00.02%|00.00%)	(0.004734s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p3
|   |   |   |-- 139.0:        	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000552s|00.00%|00.00%)	(0.000573s|00.05%|00.00%)	(1x) local p4 p4_PID
|   |   |   |   |   8.0:    	(0.000196s|00.00%|00.00%)	(0.000219s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p4
|   |   |   |   |   12.0:    	(0.012963s|00.06%|00.00%)	(0.012934s|01.22%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002975s|00.01%|00.00%)	(0.003321s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p4
|   |   |   |   |   47.0:    	(0.002849s|00.01%|00.00%)	(0.003143s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p4
|   |   |   |-- 139.0:        	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000567s|00.00%|00.00%)	(0.000579s|00.03%|00.00%)	(1x) local p5 p5_PID
|   |   |   |   |   8.0:    	(0.000084s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p5
|   |   |   |   |   12.0:    	(0.010072s|00.05%|00.00%)	(0.010060s|00.64%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004505s|00.02%|00.00%)	(0.005027s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p5
|   |   |   |   |   47.0:    	(0.004522s|00.02%|00.00%)	(0.005029s|00.32%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p5
|   |   |   |   |   49.0:    	(0.000252s|00.00%|00.00%)	(0.000280s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   58.0:    	(0.000243s|00.00%|00.00%)	(0.000277s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   59.0:    	(0.000264s|00.00%|00.00%)	(0.000299s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0:    	(0.000297s|00.00%|00.00%)	(0.000333s|00.01%|00.00%)	(1x) : > "/dev/shm/.forkrun.qGxbSA"/.quit
|   |   |   |   |   62.0:    	(0.000406s|00.00%|00.00%)	(0.000443s|00.01%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.qGxbSA"/.run/p* 1>&21
|   |   |   |   |   63.0:    	(0.000320s|00.00%|00.00%)	(0.000359s|00.01%|00.00%)	(1x) break
|   |   |   |-- 139.0:        	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000592s|00.00%|00.00%)	(0.000607s|00.05%|00.00%)	(1x) local p6 p6_PID
|   |   |   |   |   8.0:    	(0.000081s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p6
|   |   |   |   |   12.0:    	(0.010033s|00.05%|00.00%)	(0.010018s|00.90%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002902s|00.01%|00.00%)	(0.003227s|00.29%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p6
|   |   |   |   |   47.0:    	(0.002937s|00.01%|00.00%)	(0.003278s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p6
|   |   |   |-- 139.0:        	(0.000081s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000600s|00.00%|00.00%)	(0.000607s|00.05%|00.00%)	(1x) local p7 p7_PID
|   |   |   |   |   8.0:    	(0.000331s|00.00%|00.00%)	(0.000362s|00.03%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p7
|   |   |   |   |   12.0:    	(0.010020s|00.05%|00.00%)	(0.010007s|00.90%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003113s|00.01%|00.00%)	(0.003466s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p7
|   |   |   |   |   47.0:    	(0.003062s|00.01%|00.00%)	(0.003415s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p7
|   |   |   |-- 139.0:        	(0.000076s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000601s|00.00%|00.00%)	(0.000613s|00.03%|00.00%)	(1x) local p8 p8_PID
|   |   |   |   |   8.0:    	(0.000331s|00.00%|00.00%)	(0.000361s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p8
|   |   |   |   |   12.0:    	(0.010704s|00.05%|00.00%)	(0.010687s|00.61%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005144s|00.02%|00.00%)	(0.005711s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p8
|   |   |   |   |   47.0:    	(0.004924s|00.02%|00.00%)	(0.005500s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p8
|   |   |   |-- 139.0:        	(0.000072s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000594s|00.00%|00.00%)	(0.000606s|00.03%|00.00%)	(1x) local p9 p9_PID
|   |   |   |   |   8.0:    	(0.000121s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p9
|   |   |   |   |   12.0:    	(0.012067s|00.07%|00.00%)	(0.012043s|00.73%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004705s|00.02%|00.00%)	(0.005241s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p9
|   |   |   |   |   47.0:    	(0.004389s|00.02%|00.00%)	(0.004925s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p9
|   |   |   |-- 139.0:        	(0.000075s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000638s|00.00%|00.00%)	(0.000655s|00.03%|00.00%)	(1x) local p10 p10_PID
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p10
|   |   |   |   |   12.0:    	(0.010035s|00.05%|00.00%)	(0.010021s|00.57%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005105s|00.02%|00.00%)	(0.005665s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p10
|   |   |   |   |   47.0:    	(0.004894s|00.02%|00.00%)	(0.005450s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p10
|   |   |   |-- 139.0:        	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000641s|00.00%|00.00%)	(0.000653s|00.05%|00.00%)	(1x) local p11 p11_PID
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p11
|   |   |   |   |   12.0:    	(0.010091s|00.05%|00.00%)	(0.010046s|00.87%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003111s|00.01%|00.00%)	(0.003470s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p11
|   |   |   |   |   47.0:    	(0.003100s|00.01%|00.00%)	(0.003455s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p11
|   |   |   |-- 139.0:        	(0.000070s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000780s|00.00%|00.00%)	(0.000799s|00.04%|00.00%)	(1x) local p12 p12_PID
|   |   |   |   |   8.0:    	(0.000135s|00.00%|00.00%)	(0.000151s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p12
|   |   |   |   |   12.0:    	(0.019333s|00.11%|00.00%)	(0.019274s|01.20%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004532s|00.02%|00.00%)	(0.005006s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p12
|   |   |   |   |   47.0:    	(0.004377s|00.02%|00.00%)	(0.004894s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p12
|   |   |   |-- 139.0:        	(0.000132s|00.00%|00.00%)	(0.000148s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000928s|00.00%|00.00%)	(0.000953s|00.06%|00.00%)	(1x) local p13 p13_PID
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p13
|   |   |   |   |   12.0:    	(0.014720s|00.08%|00.00%)	(0.014680s|00.93%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004505s|00.02%|00.00%)	(0.004991s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p13
|   |   |   |   |   47.0:    	(0.004401s|00.02%|00.00%)	(0.004894s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p13
|   |   |   |-- 139.0:        	(0.000126s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000919s|00.00%|00.00%)	(0.000942s|00.12%|00.00%)	(1x) local p14 p14_PID
|   |   |   |   |   8.0:    	(0.000081s|00.00%|00.00%)	(0.000092s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p14
|   |   |   |   |   12.0:    	(0.010205s|00.05%|00.00%)	(0.010111s|01.30%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002132s|00.01%|00.00%)	(0.002352s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p14
|   |   |   |   |   47.0:    	(0.002145s|00.01%|00.00%)	(0.002397s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p14
|   |   |   |-- 139.0:        	(0.000125s|00.00%|00.00%)	(0.000142s|00.01%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000953s|00.00%|00.00%)	(0.000973s|00.06%|00.00%)	(1x) local p15 p15_PID
|   |   |   |   |   8.0:    	(0.000155s|00.00%|00.00%)	(0.000167s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p15
|   |   |   |   |   12.0:    	(0.010480s|00.05%|00.00%)	(0.010406s|00.66%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004789s|00.02%|00.00%)	(0.005307s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p15
|   |   |   |   |   47.0:    	(0.004423s|00.02%|00.00%)	(0.004881s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p15
|   |   |   |-- 139.0:        	(0.000126s|00.00%|00.00%)	(0.000142s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000966s|00.00%|00.00%)	(0.000984s|00.06%|00.00%)	(1x) local p16 p16_PID
|   |   |   |   |   8.0:    	(0.000096s|00.00%|00.00%)	(0.000109s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p16
|   |   |   |   |   12.0:    	(0.011428s|00.06%|00.00%)	(0.011383s|00.71%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004433s|00.02%|00.00%)	(0.004909s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p16
|   |   |   |   |   47.0:    	(0.004331s|00.02%|00.00%)	(0.004814s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p16
|   |   |   |-- 139.0:        	(0.000122s|00.00%|00.00%)	(0.000139s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000935s|00.00%|00.00%)	(0.000956s|00.07%|00.00%)	(1x) local p17 p17_PID
|   |   |   |   |   8.0:    	(0.000143s|00.00%|00.00%)	(0.000162s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p17
|   |   |   |   |   12.0:    	(0.014793s|00.07%|00.00%)	(0.014755s|01.19%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003468s|00.01%|00.00%)	(0.003870s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p17
|   |   |   |   |   47.0:    	(0.003295s|00.01%|00.00%)	(0.003670s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p17
|   |   |   |-- 139.0:        	(0.000125s|00.00%|00.00%)	(0.000138s|00.01%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000973s|00.00%|00.00%)	(0.000993s|00.07%|00.00%)	(1x) local p18 p18_PID
|   |   |   |   |   8.0:    	(0.000137s|00.00%|00.00%)	(0.000154s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p18
|   |   |   |   |   12.0:    	(0.019061s|00.10%|00.00%)	(0.018989s|01.42%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003885s|00.02%|00.00%)	(0.004311s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p18
|   |   |   |   |   47.0:    	(0.003625s|00.02%|00.00%)	(0.004047s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p18
|   |   |   |-- 139.0:        	(0.000133s|00.00%|00.00%)	(0.000145s|00.01%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.001001s|00.00%|00.00%)	(0.001016s|00.12%|00.00%)	(1x) local p19 p19_PID
|   |   |   |   |   8.0:    	(0.000137s|00.00%|00.00%)	(0.000154s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p19
|   |   |   |   |   12.0:    	(0.019171s|00.10%|00.00%)	(0.019106s|02.30%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002544s|00.01%|00.00%)	(0.002818s|00.34%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p19
|   |   |   |   |   47.0:    	(0.002101s|00.01%|00.00%)	(0.002342s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p19
|   |   |   |-- 139.0:        	(0.000131s|00.00%|00.00%)	(0.000143s|00.01%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.000854s|00.00%|00.00%)	(0.000866s|00.06%|00.00%)	(1x) local p20 p20_PID
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p20
|   |   |   |   |   12.0:    	(0.016034s|00.07%|00.00%)	(0.015980s|01.18%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003947s|00.01%|00.00%)	(0.004351s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p20
|   |   |   |   |   47.0:    	(0.003715s|00.01%|00.00%)	(0.004137s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p20
|   |   |   |-- 139.0:        	(0.000076s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.000897s|00.00%|00.00%)	(0.000919s|00.06%|00.00%)	(1x) local p21 p21_PID
|   |   |   |   |   8.0:    	(0.000138s|00.00%|00.00%)	(0.000154s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p21
|   |   |   |   |   12.0:    	(0.019379s|00.11%|00.00%)	(0.019319s|01.26%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004458s|00.02%|00.00%)	(0.004971s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p21
|   |   |   |   |   47.0:    	(0.004081s|00.02%|00.00%)	(0.004544s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p21
|   |   |   |-- 139.0:        	(0.000142s|00.00%|00.00%)	(0.000158s|00.01%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.001011s|00.00%|00.00%)	(0.001035s|00.10%|00.00%)	(1x) local p22 p22_PID
|   |   |   |   |   8.0:    	(0.000157s|00.00%|00.00%)	(0.000178s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p22
|   |   |   |   |   12.0:    	(0.020470s|00.11%|00.00%)	(0.020392s|02.00%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003008s|00.01%|00.00%)	(0.003347s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p22
|   |   |   |   |   47.0:    	(0.002622s|00.01%|00.00%)	(0.002923s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p22
|   |   |   |-- 139.0:        	(0.000124s|00.00%|00.00%)	(0.000141s|00.01%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.001011s|00.00%|00.00%)	(0.001031s|00.09%|00.00%)	(1x) local p23 p23_PID
|   |   |   |   |   8.0:    	(0.000169s|00.00%|00.00%)	(0.000189s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p23
|   |   |   |   |   12.0:    	(0.019429s|00.10%|00.00%)	(0.019338s|01.78%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003080s|00.01%|00.00%)	(0.003427s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p23
|   |   |   |   |   47.0:    	(0.002621s|00.01%|00.00%)	(0.002934s|00.27%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p23
|   |   |   |-- 139.0:        	(0.000124s|00.00%|00.00%)	(0.000141s|00.01%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.000970s|00.00%|00.00%)	(0.000991s|00.06%|00.00%)	(1x) local p24 p24_PID
|   |   |   |   |   8.0:    	(0.000150s|00.00%|00.00%)	(0.000159s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p24
|   |   |   |   |   12.0:    	(0.019034s|00.10%|00.00%)	(0.018967s|01.15%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004486s|00.02%|00.00%)	(0.004986s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p24
|   |   |   |   |   47.0:    	(0.004445s|00.02%|00.00%)	(0.004959s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p24
|   |   |   |-- 139.0:        	(0.000126s|00.00%|00.00%)	(0.000142s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.001036s|00.00%|00.00%)	(0.001049s|00.08%|00.00%)	(1x) local p25 p25_PID
|   |   |   |   |   8.0:    	(0.000178s|00.00%|00.00%)	(0.000199s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p25
|   |   |   |   |   12.0:    	(0.015591s|00.06%|00.00%)	(0.015529s|01.23%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003435s|00.01%|00.00%)	(0.003829s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p25
|   |   |   |   |   47.0:    	(0.003264s|00.01%|00.00%)	(0.003646s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p25
|   |   |   |-- 139.0:        	(0.000123s|00.00%|00.00%)	(0.000140s|00.01%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001066s|00.00%|00.00%)	(0.001085s|00.06%|00.00%)	(1x) local p26 p26_PID
|   |   |   |   |   8.0:    	(0.000137s|00.00%|00.00%)	(0.000154s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p26
|   |   |   |   |   12.0:    	(0.019233s|00.10%|00.00%)	(0.019163s|01.21%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004384s|00.02%|00.00%)	(0.004883s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p26
|   |   |   |   |   47.0:    	(0.004145s|00.02%|00.00%)	(0.004609s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p26
|   |   |   |-- 139.0:        	(0.000131s|00.00%|00.00%)	(0.000148s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001043s|00.00%|00.00%)	(0.001059s|00.06%|00.00%)	(1x) local p27 p27_PID
|   |   |   |   |   8.0:    	(0.000156s|00.00%|00.00%)	(0.000175s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.qGxbSA"/.run/p27
|   |   |   |   |   12.0:    	(0.022269s|00.11%|00.00%)	(0.022176s|01.34%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.qGxbSA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.qGxbSA"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.qGxbSA"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004622s|00.02%|00.00%)	(0.005131s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.qGxbSA"/.wait/p27
|   |   |   |   |   47.0:    	(0.004442s|00.02%|00.00%)	(0.004958s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.qGxbSA"/.wait/p27
|   |   |   |-- 139.0:        	(0.000129s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000150s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000135s|00.00%|00.00%)	(0.000152s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000108s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000112s|00.00%|00.00%)	(0.000124s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001195s|00.00%|00.00%)	(0.001209s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000112s|00.00%|00.00%)	(0.000129s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000113s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000106s|00.00%|00.00%)	(0.000121s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.861788s|04.35%|02.18%)	(0.001592s|00.00%|00.00%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000251s|00.00%|00.00%)	(0.000286s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000286s|00.00%|00.00%)	(0.000324s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -239.0:            	(0.000753s|00.00%|00.00%)	(0.000859s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -238.0:            	(0.000074s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.0:            	(0.001823s|00.00%|00.00%)	(0.001686s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.1:            	(0.008037s|00.00%|00.00%)	(0.008037s|00.02%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -237.0:        	(0.008037s|100.00%|00.00%)	(0.008037s|100.00%|00.01%)	(1x) ${nSpawnFlag}
|   |   |   -236.0:            	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.0:            	(0.004928s|00.00%|00.00%)	(0.000437s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.1:            	(0.004867s|00.00%|00.00%)	(0.004867s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -235.0:        	(0.004867s|100.00%|00.00%)	(0.004867s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -234.0:            	(0.000079s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.0:            	(0.003067s|00.00%|00.00%)	(0.000437s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.1:            	(0.003068s|00.00%|00.00%)	(0.003068s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -233.0:        	(0.003068s|100.00%|00.00%)	(0.003068s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |-- -232.0:            	(0.016497s|00.00%|00.00%)	(0.016453s|00.04%|00.02%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000115s|00.00%|00.00%)	(0.000132s|00.00%|00.00%)	(1x) wait
|-- |-- -239.0:                	(0.001328s|00.00%|00.00%)	(0.000442s|00.00%|00.00%)	(1x) wait (?)

1.0:                        	(545.792673s|49.91%)	(39.947874s|49.91%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:                    	(0.000577s|00.00%|00.00%)	(0.000293s|00.00%|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   364.0:                    	(545.792096s|99.99%|49.91%)	(39.947581s|99.99%|49.91%)	(1x) << (SUBSHELL) >>
|   |-- 364.0:                	(0.019499s|00.00%|00.00%)	(0.019391s|00.04%|00.02%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000076s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000122s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000093s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000079s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000069s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000056s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000061s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000117s|00.00%|00.00%)	(0.000136s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000111s|00.00%|00.00%)	(0.000134s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000117s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   82.0:                	(0.000082s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:                	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:                	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:                	(0.000054s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:                	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:                	(0.000066s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000053s|00.00%|00.00%)	(0.000063s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000054s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000061s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000055s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.001023s|00.00%|00.00%)	(0.000783s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.005422s|00.00%|00.00%)	(0.005422s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.005422s|100.00%|00.00%)	(0.005422s|100.00%|00.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000059s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.001397s|00.00%|00.00%)	(0.000340s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000080s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000056s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.011255s|00.00%|00.00%)	(0.000291s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(545.750101s|24.99%|49.91%)	(39.918821s|24.98%|49.88%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000093s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000081s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.001569s|100.00%|00.00%)	(0.001793s|100.00%|00.00%)	(1x) :
|   |   |   1457.1:            	(0.000291s|00.00%|00.00%)	(0.000337s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000305s|00.00%|00.00%)	(0.000343s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000305s|00.00%|00.00%)	(0.000342s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000296s|00.00%|00.00%)	(0.000341s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000291s|00.00%|00.00%)	(0.000335s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000098s|00.00%|00.00%)	(0.000112s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000087s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000180s|00.00%|00.00%)	(0.000193s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000085s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000068s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000071s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.002783s|00.00%|00.00%)	(0.000470s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000115s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000115s|100.00%|00.00%)	(0.000126s|100.00%|00.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000072s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000068s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000062s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000065s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000065s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000757s|00.00%|00.00%)	(0.000875s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000056s|07.39%|00.00%)	(0.000066s|07.54%|00.00%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000061s|08.05%|00.00%)	(0.000071s|08.11%|00.00%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000060s|07.92%|00.00%)	(0.000069s|07.88%|00.00%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000058s|07.66%|00.00%)	(0.000068s|07.77%|00.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000056s|07.39%|00.00%)	(0.000066s|07.54%|00.00%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000058s|07.66%|00.00%)	(0.000067s|07.65%|00.00%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000056s|07.39%|00.00%)	(0.000066s|07.54%|00.00%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000106s|14.00%|00.00%)	(0.000116s|13.25%|00.00%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000056s|07.39%|00.00%)	(0.000065s|07.42%|00.00%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000056s|07.39%|00.00%)	(0.000066s|07.54%|00.00%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000073s|09.64%|00.00%)	(0.000083s|09.48%|00.00%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000061s|08.05%|00.00%)	(0.000072s|08.22%|00.00%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.006302s|00.00%|00.00%)	(0.000360s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.002187s|00.00%|00.00%)	(0.001142s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000197s|09.00%|00.00%)	(0.000207s|18.12%|00.00%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001990s|90.99%|00.00%)	(0.000935s|81.87%|00.00%)	(1x) nproc
|   |   |   441.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000055s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000074s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000066s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000059s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000133s|00.00%|00.00%)	(0.000144s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000060s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:            	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:            	(0.000057s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000097s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:            	(0.003031s|00.00%|00.00%)	(0.001680s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   492.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000062s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.002688s|00.00%|00.00%)	(0.000443s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}")
|   |   |   521.1:            	(0.000077s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000077s|100.00%|00.00%)	(0.000088s|100.00%|00.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001114s|00.00%|00.00%)	(0.000409s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000071s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000056s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000073s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000068s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000516s|00.00%|00.00%)	(0.000532s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}"
|   |   |   599.0:            	(0.068369s|00.01%|00.00%)	(0.068288s|00.17%|00.08%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000075s|00.10%|00.00%)	(0.000086s|00.12%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.008836s|12.92%|00.00%)	(0.008814s|12.90%|00.01%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.010295s|15.05%|00.00%)	(0.010265s|15.03%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.010241s|14.97%|00.00%)	(0.010229s|14.97%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.010367s|15.16%|00.00%)	(0.010352s|15.15%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.010248s|14.98%|00.00%)	(0.010234s|14.98%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000056s|00.08%|00.00%)	(0.000066s|00.09%|00.00%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.018038s|26.38%|00.00%)	(0.018001s|26.36%|00.02%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000083s|00.12%|00.00%)	(0.000094s|00.13%|00.00%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000062s|00.09%|00.00%)	(0.000070s|00.10%|00.00%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000068s|00.09%|00.00%)	(0.000077s|00.11%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000059s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000055s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000398s|00.00%|00.00%)	(0.000416s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines
|   |   |   686.0:            	(5.731467s|01.05%|00.52%)	(1.528567s|03.82%|01.91%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000158s|00.00%|00.00%)	(0.000170s|00.01%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.012986s|00.22%|00.00%)	(0.012958s|00.84%|00.01%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.010264s|00.17%|00.00%)	(0.010250s|00.67%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.010351s|00.18%|00.00%)	(0.010331s|00.67%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.010310s|00.17%|00.00%)	(0.010283s|00.67%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010237s|00.17%|00.00%)	(0.010220s|00.66%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000056s|00.00%|00.00%)	(0.000066s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.079869s|01.39%|00.00%)	(0.091129s|05.96%|00.11%)	(1x) ${fallocateFlag}
|   |   |   |   702.0:        	(4.432219s|77.33%|00.40%)	(0.109754s|07.18%|00.13%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001773s|00.03%|00.00%)	(0.002013s|00.13%|00.00%)	(1x) continue
|   |   |   |   704.0:        	(0.077337s|01.34%|00.00%)	(0.088416s|05.78%|00.11%)	(1x) case ${REPLY} in
|   |   |   |   718.0:        	(0.076602s|01.33%|00.00%)	(0.087793s|05.74%|00.10%)	(1x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.077182s|01.34%|00.00%)	(0.088132s|05.76%|00.11%)	(1x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.080659s|01.40%|00.00%)	(0.091761s|06.00%|00.11%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.081742s|01.42%|00.00%)	(0.091088s|05.95%|00.11%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.076715s|01.33%|00.00%)	(0.087796s|05.74%|00.10%)	(1x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.076957s|01.34%|00.00%)	(0.088005s|05.75%|00.10%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.076587s|01.33%|00.00%)	(0.087569s|05.72%|00.10%)	(1x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.076432s|01.33%|00.00%)	(0.087430s|05.71%|00.10%)	(1x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005378s|00.09%|00.00%)	(0.000507s|00.03%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null)
|   |   |   |   746.1:        	(0.004128s|00.07%|00.00%)	(0.002304s|00.15%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002779s|67.32%|00.00%)	(0.001861s|80.77%|00.00%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000066s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000058s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000058s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000082s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.076500s|01.33%|00.00%)	(0.087410s|05.71%|00.10%)	(1x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.075183s|01.31%|00.00%)	(0.086275s|05.64%|00.10%)	(1x) case ${nWait} in
|   |   |   |   778.0:        	(0.074294s|01.29%|00.00%)	(0.084823s|05.54%|00.10%)	(1x) ((nWait--))
|   |   |   |   783.0:        	(0.079386s|01.38%|00.00%)	(0.090440s|05.91%|00.11%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.077991s|01.36%|00.00%)	(0.088965s|05.82%|00.11%)	(1x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002515s|00.04%|00.00%)	(0.002867s|00.18%|00.00%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002481s|00.04%|00.00%)	(0.002818s|00.18%|00.00%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.053695s|00.93%|00.00%)	(0.015064s|00.98%|00.01%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002646s|00.04%|00.00%)	(0.003041s|00.19%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002671s|00.04%|00.00%)	(0.003017s|00.19%|00.00%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002850s|00.04%|00.00%)	(0.003229s|00.21%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000107s|00.00%|00.00%)	(0.000122s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000116s|00.00%|00.00%)	(0.000127s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000109s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000110s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000130s|00.00%|00.00%)	(0.000147s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -239.0:        	(0.000115s|00.00%|00.00%)	(0.000132s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -239.1:        	(0.001549s|00.02%|00.00%)	(0.000617s|00.04%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000063s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000087s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000077s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.048549s|00.00%|00.00%)	(0.001458s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.014677s|00.00%|00.00%)	(0.015305s|00.03%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000199s|04.26%|00.00%)	(0.000219s|04.11%|00.00%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000123s|02.63%|00.00%)	(0.000141s|02.65%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000144s|03.08%|00.00%)	(0.000162s|03.04%|00.00%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000330s|07.06%|00.00%)	(0.000342s|06.43%|00.00%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000058s|01.24%|00.00%)	(0.000068s|01.27%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000056s|01.19%|00.00%)	(0.000065s|01.22%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000058s|01.24%|00.00%)	(0.000068s|01.27%|00.00%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000057s|01.22%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000056s|01.19%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000060s|01.28%|00.00%)	(0.000069s|01.29%|00.00%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000060s|01.28%|00.00%)	(0.000070s|01.31%|00.00%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000057s|01.22%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000061s|01.30%|00.00%)	(0.000070s|01.31%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000063s|01.34%|00.00%)	(0.000071s|01.33%|00.00%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000057s|01.22%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000060s|01.28%|00.00%)	(0.000069s|01.29%|00.00%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000056s|01.19%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000058s|01.24%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:        	(0.000060s|01.28%|00.00%)	(0.000070s|01.31%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:        	(0.000061s|01.30%|00.00%)	(0.000071s|01.33%|00.00%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000056s|01.19%|00.00%)	(0.000065s|01.22%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000056s|01.19%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000090s|01.92%|00.00%)	(0.000100s|01.88%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:        	(0.000057s|01.22%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000057s|01.22%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000064s|01.37%|00.00%)	(0.000074s|01.39%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:        	(0.000066s|01.41%|00.00%)	(0.000076s|01.42%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000079s|01.69%|00.00%)	(0.000088s|01.65%|00.00%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000057s|01.22%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000068s|01.45%|00.00%)	(0.000078s|01.46%|00.00%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000072s|01.54%|00.00%)	(0.000080s|01.50%|00.00%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000057s|01.22%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000063s|01.34%|00.00%)	(0.000073s|01.37%|00.00%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000068s|01.45%|00.00%)	(0.000072s|01.35%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000062s|01.32%|00.00%)	(0.000072s|01.35%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000069s|01.47%|00.00%)	(0.000079s|01.48%|00.00%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000059s|01.26%|00.00%)	(0.000069s|01.29%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000085s|01.82%|00.00%)	(0.000095s|01.78%|00.00%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000057s|01.22%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000081s|01.73%|00.00%)	(0.000090s|01.69%|00.00%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000057s|01.22%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000079s|01.69%|00.00%)	(0.000088s|01.65%|00.00%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000056s|01.19%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000086s|01.84%|00.00%)	(0.000096s|01.80%|00.00%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000056s|01.19%|00.00%)	(0.000065s|01.22%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000060s|01.28%|00.00%)	(0.000069s|01.29%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:        	(0.000056s|01.19%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000079s|01.69%|00.00%)	(0.000089s|01.67%|00.00%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000056s|01.19%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000060s|01.28%|00.00%)	(0.000069s|01.29%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000057s|01.22%|00.00%)	(0.000067s|01.25%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000082s|01.75%|00.00%)	(0.000091s|01.71%|00.00%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000056s|01.19%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000056s|01.19%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000056s|01.19%|00.00%)	(0.000066s|01.24%|00.00%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000054s|01.15%|00.00%)	(0.000064s|01.20%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000093s|01.99%|00.00%)	(0.000100s|01.88%|00.00%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000062s|01.32%|00.00%)	(0.000072s|01.35%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000059s|01.26%|00.00%)	(0.000068s|01.27%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000054s|01.15%|00.00%)	(0.000064s|01.20%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000062s|01.32%|00.00%)	(0.000072s|01.35%|00.00%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000062s|01.32%|00.00%)	(0.000072s|01.35%|00.00%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000060s|01.28%|00.00%)	(0.000070s|01.31%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000058s|01.24%|00.00%)	(0.000068s|01.27%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000096s|02.05%|00.00%)	(0.000106s|01.99%|00.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000215s|00.00%|00.00%)	(0.000246s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000220s|00.00%|00.00%)	(0.000250s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000217s|00.00%|00.00%)	(0.000247s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.010656s|00.00%|00.00%)	(0.010640s|00.02%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.010341s|00.00%|00.00%)	(0.010318s|00.02%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.010133s|00.00%|00.00%)	(0.010117s|00.02%|00.01%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000054s|00.00%|00.00%)	(0.000064s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000089s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000055s|00.00%|00.00%)	(0.000065s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002444s|00.00%|00.00%)	(0.002801s|00.00%|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002614s|00.00%|00.00%)	(0.002978s|00.00%|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002355s|00.00%|00.00%)	(0.002706s|00.00%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(516.112980s|94.56%|47.20%)	(38.209409s|95.71%|47.74%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000618s|00.00%|00.00%)	(0.000633s|00.04%|00.00%)	(1x) local p0 p0_PID
|   |   |   |   66.0:        	(516.087672s|99.99%|47.20%)	(38.183247s|99.92%|47.71%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 66.0:    	(0.004566s|00.00%|00.00%)	(0.005108s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.mPMeEa"
|   |   |   |   |   8.0:    	(0.000153s|00.00%|00.00%)	(0.000173s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p0
|   |   |   |   |   12.0:    	(0.011728s|00.06%|00.00%)	(0.011706s|00.88%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:    	(0.453006s|00.08%|00.04%)	(0.442801s|01.18%|00.55%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 654734 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.438452s|00.08%|00.04%)	(0.436855s|01.17%|00.54%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 654734 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.456505s|00.08%|00.04%)	(0.454878s|01.21%|00.56%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 654734 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.458812s|00.08%|00.04%)	(0.457227s|01.22%|00.57%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.100053s|00.01%|00.00%)	(0.112021s|00.28%|00.13%)	(1x) true
|   |   |   |   |   20.0:    	(0.088169s|00.01%|00.00%)	(0.099941s|00.25%|00.12%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.091263s|00.01%|00.00%)	(0.101022s|00.25%|00.12%)	(1x) read -r < "/dev/shm/.forkrun.mPMeEa"/.nLines
|   |   |   |   |   20.2:    	(0.002877s|00.00%|00.00%)	(0.003308s|00.00%|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002952s|00.00%|00.00%)	(0.003397s|00.00%|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003670s|00.01%|00.00%)	(0.004097s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p0
|   |   |   |   |   23.0:    	(3.015610s|00.58%|00.27%)	(0.131835s|00.33%|00.16%)	(1x) read -r -u 21 _
|   |   |   |   |   24.0:    	(0.092169s|00.01%|00.00%)	(0.104192s|00.26%|00.13%)	(1x) [[ -f "/dev/shm/.forkrun.mPMeEa"/.quit ]]
|   |   |   |   |   28.0:    	(0.088610s|00.01%|00.00%)	(0.097625s|00.25%|00.12%)	(1x) [[ -f "/dev/shm/.forkrun.mPMeEa"/.done ]]
|   |   |   |   |   28.1:    	(0.083795s|00.01%|00.00%)	(0.094897s|00.24%|00.11%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.087717s|00.01%|00.00%)	(0.099287s|00.25%|00.12%)	(1x) evfd_wait 25
|   |   |   |   |   31.0:    	(0.840988s|00.15%|00.07%)	(0.798831s|02.08%|00.99%)	(1x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:    	(0.141315s|00.02%|00.01%)	(0.104322s|00.26%|00.13%)	(1x) printf '\n' 1>&21
|   |   |   |   |   35.0:    	(0.003664s|00.01%|00.00%)	(0.004057s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p0
|   |   |   |   |   36.0:    	(0.082151s|00.01%|00.00%)	(0.093700s|00.24%|00.11%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.081462s|00.01%|00.00%)	(0.092787s|00.23%|00.11%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.003548s|00.00%|00.00%)	(0.004022s|00.00%|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.003127s|00.00%|00.00%)	(0.003603s|00.00%|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(508.551952s|98.52%|46.51%)	(33.563786s|87.72%|41.93%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.077663s|00.01%|00.00%)	(0.089225s|00.26%|00.11%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(35.455033s|07.00%|03.24%)	(2.435836s|07.24%|03.04%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(60.405791s|10.49%|05.52%)	(2.589029s|07.68%|03.23%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(48.757949s|09.56%|04.45%)	(2.584708s|07.68%|03.22%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(59.646842s|10.32%|05.45%)	(2.582219s|07.68%|03.22%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(47.512962s|09.15%|04.34%)	(2.579079s|07.68%|03.22%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(31.231269s|06.43%|02.85%)	(2.593108s|07.72%|03.24%)	(1x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(15.384632s|04.17%|01.40%)	(2.582952s|07.68%|03.22%)	(1x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(32.983063s|06.32%|03.01%)	(2.580581s|07.67%|03.22%)	(1x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(13.349883s|03.89%|01.22%)	(2.583985s|07.69%|03.22%)	(1x) cksum "${@}"
|   |   |   |   |   |   17.0:	(41.144795s|08.65%|03.76%)	(2.588736s|07.71%|03.23%)	(1x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(92.822278s|15.11%|08.48%)	(2.599248s|07.72%|03.24%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(15.310146s|04.39%|01.40%)	(2.590770s|07.70%|03.23%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(14.469646s|04.30%|01.32%)	(2.584310s|07.69%|03.22%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:    	(0.003149s|00.00%|00.00%)	(0.003576s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   56.1:    	(0.081171s|00.01%|00.00%)	(0.089081s|00.22%|00.11%)	(1x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.119835s|00.01%|00.01%)	(0.100392s|00.25%|00.12%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002702s|00.00%|00.00%)	(0.003047s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:    	(0.003046s|00.00%|00.00%)	(0.003392s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:    	(0.003197s|00.00%|00.00%)	(0.003579s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.0:    	(0.002732s|00.00%|00.00%)	(0.003124s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.1:    	(0.044588s|00.00%|00.00%)	(0.019417s|00.04%|00.02%)	(1x) break
|   |   |   |   |-- 4.0:    	(0.002922s|00.00%|00.00%)	(0.003288s|00.00%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000604s|00.00%|00.00%)	(0.000623s|00.05%|00.00%)	(1x) local p1 p1_PID
|   |   |   |   |   8.0:    	(0.004438s|00.00%|00.00%)	(0.004945s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p1
|   |   |   |   |   12.0:    	(0.009813s|00.05%|00.00%)	(0.009793s|00.89%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.174025s|00.01%|00.01%)	(0.181589s|00.31%|00.22%)	(11x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p1
|   |   |   |   |   35.0:    	(0.153982s|00.01%|00.01%)	(0.171833s|00.29%|00.21%)	(11x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p1
|   |   |   |-- 127.0:        	(0.000078s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000580s|00.00%|00.00%)	(0.000593s|00.03%|00.00%)	(1x) local p2 p2_PID
|   |   |   |   |   8.0:    	(0.004651s|00.00%|00.00%)	(0.005186s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p2
|   |   |   |   |   12.0:    	(0.009830s|00.05%|00.00%)	(0.009814s|00.55%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.139686s|00.01%|00.01%)	(0.155105s|00.31%|00.19%)	(9x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p2
|   |   |   |   |   35.0:    	(0.134318s|00.01%|00.01%)	(0.149311s|00.29%|00.18%)	(9x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p2
|   |   |   |-- 127.0:        	(0.000073s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000558s|00.00%|00.00%)	(0.000570s|00.04%|00.00%)	(1x) local p3 p3_PID
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p3
|   |   |   |   |   12.0:    	(0.009895s|00.04%|00.00%)	(0.009881s|00.73%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004097s|00.02%|00.00%)	(0.004556s|00.34%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p3
|   |   |   |   |   35.0:    	(0.003948s|00.01%|00.00%)	(0.004398s|00.32%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p3
|   |   |   |-- 127.0:        	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000569s|00.00%|00.00%)	(0.000586s|00.04%|00.00%)	(1x) local p4 p4_PID
|   |   |   |   |   8.0:    	(0.000322s|00.00%|00.00%)	(0.000363s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p4
|   |   |   |   |   12.0:    	(0.009999s|00.05%|00.00%)	(0.009985s|00.72%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004109s|00.02%|00.00%)	(0.004558s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p4
|   |   |   |   |   35.0:    	(0.004065s|00.02%|00.00%)	(0.004397s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p4
|   |   |   |-- 127.0:        	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000579s|00.00%|00.00%)	(0.000594s|00.04%|00.00%)	(1x) local p5 p5_PID
|   |   |   |   |   8.0:    	(0.000322s|00.00%|00.00%)	(0.000360s|00.02%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p5
|   |   |   |   |   12.0:    	(0.011380s|00.06%|00.00%)	(0.011360s|00.93%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003555s|00.01%|00.00%)	(0.003954s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p5
|   |   |   |   |   35.0:    	(0.003249s|00.01%|00.00%)	(0.003630s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p5
|   |   |   |-- 127.0:        	(0.000076s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000582s|00.00%|00.00%)	(0.000598s|00.04%|00.00%)	(1x) local p6 p6_PID
|   |   |   |   |   8.0:    	(0.000084s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p6
|   |   |   |   |   12.0:    	(0.010061s|00.05%|00.00%)	(0.010047s|00.70%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004292s|00.02%|00.00%)	(0.004753s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p6
|   |   |   |   |   35.0:    	(0.003836s|00.02%|00.00%)	(0.004292s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p6
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000609s|00.00%|00.00%)	(0.000623s|00.05%|00.00%)	(1x) local p7 p7_PID
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p7
|   |   |   |   |   12.0:    	(0.010065s|00.04%|00.00%)	(0.010050s|00.84%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003323s|00.01%|00.00%)	(0.003706s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p7
|   |   |   |   |   35.0:    	(0.003156s|00.01%|00.00%)	(0.003523s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p7
|   |   |   |-- 127.0:        	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000602s|00.00%|00.00%)	(0.000612s|00.08%|00.00%)	(1x) local p8 p8_PID
|   |   |   |   |   8.0:    	(0.000318s|00.00%|00.00%)	(0.000356s|00.04%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p8
|   |   |   |   |   12.0:    	(0.010069s|00.05%|00.00%)	(0.010054s|01.33%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002355s|00.01%|00.00%)	(0.002586s|00.34%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p8
|   |   |   |   |   35.0:    	(0.002259s|00.01%|00.00%)	(0.002539s|00.33%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p8
|   |   |   |   |   37.0:    	(0.000123s|00.00%|00.00%)	(0.000141s|00.01%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.000125s|00.00%|00.00%)	(0.000144s|00.01%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.000135s|00.00%|00.00%)	(0.000155s|00.02%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000156s|00.00%|00.00%)	(0.000176s|00.02%|00.00%)	(1x) : > "/dev/shm/.forkrun.mPMeEa"/.quit
|   |   |   |   |   50.0:    	(0.000216s|00.00%|00.00%)	(0.000232s|00.03%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.mPMeEa"/.run/p* 1>&21
|   |   |   |   |   51.0:    	(0.000181s|00.00%|00.00%)	(0.000204s|00.02%|00.00%)	(1x) break
|   |   |   |-- 127.0:        	(0.000075s|00.00%|00.00%)	(0.000085s|00.01%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000605s|00.00%|00.00%)	(0.000619s|00.05%|00.00%)	(1x) local p9 p9_PID
|   |   |   |   |   8.0:    	(0.000315s|00.00%|00.00%)	(0.000352s|00.03%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p9
|   |   |   |   |   12.0:    	(0.011614s|00.06%|00.00%)	(0.011597s|01.04%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003197s|00.01%|00.00%)	(0.003563s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p9
|   |   |   |   |   35.0:    	(0.002881s|00.01%|00.00%)	(0.003222s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p9
|   |   |   |-- 127.0:        	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000631s|00.00%|00.00%)	(0.000644s|00.04%|00.00%)	(1x) local p10 p10_PID
|   |   |   |   |   8.0:    	(0.000084s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p10
|   |   |   |   |   12.0:    	(0.010091s|00.05%|00.00%)	(0.010063s|00.74%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004237s|00.02%|00.00%)	(0.004670s|00.34%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p10
|   |   |   |   |   35.0:    	(0.003883s|00.02%|00.00%)	(0.004318s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p10
|   |   |   |-- 127.0:        	(0.000074s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000644s|00.00%|00.00%)	(0.000661s|00.06%|00.00%)	(1x) local p11 p11_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p11
|   |   |   |   |   12.0:    	(0.010193s|00.05%|00.00%)	(0.010152s|00.99%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002899s|00.01%|00.00%)	(0.003227s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p11
|   |   |   |   |   35.0:    	(0.002853s|00.01%|00.00%)	(0.003194s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p11
|   |   |   |-- 127.0:        	(0.000074s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000681s|00.00%|00.00%)	(0.000698s|00.04%|00.00%)	(1x) local p12 p12_PID
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p12
|   |   |   |   |   12.0:    	(0.012775s|00.06%|00.00%)	(0.012717s|00.86%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004078s|00.02%|00.00%)	(0.004525s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p12
|   |   |   |   |   35.0:    	(0.004041s|00.01%|00.00%)	(0.004511s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p12
|   |   |   |-- 127.0:        	(0.000070s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000659s|00.00%|00.00%)	(0.000678s|00.04%|00.00%)	(1x) local p13 p13_PID
|   |   |   |   |   8.0:    	(0.000150s|00.00%|00.00%)	(0.000167s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p13
|   |   |   |   |   12.0:    	(0.017942s|00.10%|00.00%)	(0.017371s|01.11%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004452s|00.02%|00.00%)	(0.004956s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p13
|   |   |   |   |   35.0:    	(0.004362s|00.02%|00.00%)	(0.004848s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p13
|   |   |   |-- 127.0:        	(0.000073s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000805s|00.00%|00.00%)	(0.000824s|00.07%|00.00%)	(1x) local p14 p14_PID
|   |   |   |   |   8.0:    	(0.000141s|00.00%|00.00%)	(0.000158s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p14
|   |   |   |   |   12.0:    	(0.019376s|00.10%|00.00%)	(0.019320s|01.68%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003170s|00.01%|00.00%)	(0.003503s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p14
|   |   |   |   |   35.0:    	(0.002905s|00.01%|00.00%)	(0.003259s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p14
|   |   |   |-- 127.0:        	(0.000140s|00.00%|00.00%)	(0.000157s|00.01%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000912s|00.00%|00.00%)	(0.000933s|00.05%|00.00%)	(1x) local p15 p15_PID
|   |   |   |   |   8.0:    	(0.000090s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p15
|   |   |   |   |   12.0:    	(0.010097s|00.05%|00.00%)	(0.010060s|00.63%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.006059s|00.03%|00.00%)	(0.005350s|00.33%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p15
|   |   |   |   |   35.0:    	(0.004483s|00.02%|00.00%)	(0.005010s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p15
|   |   |   |-- 127.0:        	(0.000126s|00.00%|00.00%)	(0.000142s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000923s|00.00%|00.00%)	(0.000946s|00.05%|00.00%)	(1x) local p16 p16_PID
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p16
|   |   |   |   |   12.0:    	(0.010104s|00.05%|00.00%)	(0.010081s|00.63%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004657s|00.02%|00.00%)	(0.005181s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p16
|   |   |   |   |   35.0:    	(0.004289s|00.02%|00.00%)	(0.004786s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p16
|   |   |   |-- 127.0:        	(0.000126s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000953s|00.00%|00.00%)	(0.000975s|00.05%|00.00%)	(1x) local p17 p17_PID
|   |   |   |   |   8.0:    	(0.000141s|00.00%|00.00%)	(0.000154s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p17
|   |   |   |   |   12.0:    	(0.019168s|00.11%|00.00%)	(0.019114s|01.12%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.006358s|00.03%|00.00%)	(0.005539s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p17
|   |   |   |   |   35.0:    	(0.004534s|00.02%|00.00%)	(0.005066s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p17
|   |   |   |-- 127.0:        	(0.000127s|00.00%|00.00%)	(0.000144s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000986s|00.00%|00.00%)	(0.000999s|00.06%|00.00%)	(1x) local p18 p18_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p18
|   |   |   |   |   12.0:    	(0.014043s|00.06%|00.00%)	(0.013926s|00.97%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003945s|00.01%|00.00%)	(0.004391s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p18
|   |   |   |   |   35.0:    	(0.003790s|00.01%|00.00%)	(0.004224s|00.29%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p18
|   |   |   |-- 127.0:        	(0.000130s|00.00%|00.00%)	(0.000145s|00.01%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.001009s|00.00%|00.00%)	(0.001029s|00.10%|00.00%)	(1x) local p19 p19_PID
|   |   |   |   |   8.0:    	(0.000141s|00.00%|00.00%)	(0.000154s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p19
|   |   |   |   |   12.0:    	(0.020106s|00.11%|00.00%)	(0.020036s|02.01%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002770s|00.01%|00.00%)	(0.003074s|00.30%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p19
|   |   |   |   |   35.0:    	(0.002559s|00.01%|00.00%)	(0.002852s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p19
|   |   |   |-- 127.0:        	(0.000127s|00.00%|00.00%)	(0.000143s|00.01%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.001012s|00.00%|00.00%)	(0.001032s|00.06%|00.00%)	(1x) local p20 p20_PID
|   |   |   |   |   8.0:    	(0.000084s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p20
|   |   |   |   |   12.0:    	(0.012773s|00.07%|00.00%)	(0.012730s|00.78%|00.01%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004641s|00.02%|00.00%)	(0.005137s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p20
|   |   |   |   |   35.0:    	(0.004397s|00.02%|00.00%)	(0.004905s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p20
|   |   |   |-- 127.0:        	(0.000128s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.001017s|00.00%|00.00%)	(0.001031s|00.07%|00.00%)	(1x) local p21 p21_PID
|   |   |   |   |   8.0:    	(0.000145s|00.00%|00.00%)	(0.000164s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p21
|   |   |   |   |   12.0:    	(0.019632s|00.11%|00.00%)	(0.019573s|01.45%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003987s|00.02%|00.00%)	(0.004407s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p21
|   |   |   |   |   35.0:    	(0.003765s|00.02%|00.00%)	(0.004152s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p21
|   |   |   |-- 127.0:        	(0.000128s|00.00%|00.00%)	(0.000144s|00.01%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.001047s|00.00%|00.00%)	(0.001063s|00.11%|00.00%)	(1x) local p22 p22_PID
|   |   |   |   |   8.0:    	(0.000151s|00.00%|00.00%)	(0.000165s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p22
|   |   |   |   |   12.0:    	(0.021835s|00.12%|00.00%)	(0.021766s|02.30%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002537s|00.01%|00.00%)	(0.002827s|00.29%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p22
|   |   |   |   |   35.0:    	(0.002430s|00.01%|00.00%)	(0.002700s|00.28%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p22
|   |   |   |-- 127.0:        	(0.000131s|00.00%|00.00%)	(0.000149s|00.01%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.000975s|00.00%|00.00%)	(0.000995s|00.06%|00.00%)	(1x) local p23 p23_PID
|   |   |   |   |   8.0:    	(0.000141s|00.00%|00.00%)	(0.000158s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p23
|   |   |   |   |   12.0:    	(0.020436s|00.12%|00.00%)	(0.020343s|01.33%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004483s|00.02%|00.00%)	(0.004970s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p23
|   |   |   |   |   35.0:    	(0.004279s|00.02%|00.00%)	(0.004765s|00.31%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p23
|   |   |   |-- 127.0:        	(0.000137s|00.00%|00.00%)	(0.000156s|00.01%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.001048s|00.00%|00.00%)	(0.001062s|00.07%|00.00%)	(1x) local p24 p24_PID
|   |   |   |   |   8.0:    	(0.000144s|00.00%|00.00%)	(0.000161s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p24
|   |   |   |   |   12.0:    	(0.019296s|00.09%|00.00%)	(0.019129s|01.34%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003986s|00.01%|00.00%)	(0.004432s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p24
|   |   |   |   |   35.0:    	(0.003908s|00.01%|00.00%)	(0.004389s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p24
|   |   |   |-- 127.0:        	(0.000131s|00.00%|00.00%)	(0.000147s|00.01%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.001057s|00.00%|00.00%)	(0.001076s|00.06%|00.00%)	(1x) local p25 p25_PID
|   |   |   |   |   8.0:    	(0.000147s|00.00%|00.00%)	(0.000164s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p25
|   |   |   |   |   12.0:    	(0.030099s|00.17%|00.00%)	(0.021937s|01.29%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004767s|00.02%|00.00%)	(0.005304s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p25
|   |   |   |   |   35.0:    	(0.004665s|00.02%|00.00%)	(0.005186s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p25
|   |   |   |-- 127.0:        	(0.000139s|00.00%|00.00%)	(0.000157s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001027s|00.00%|00.00%)	(0.001050s|00.05%|00.00%)	(1x) local p26 p26_PID
|   |   |   |   |   8.0:    	(0.000172s|00.00%|00.00%)	(0.000193s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p26
|   |   |   |   |   12.0:    	(0.020015s|00.09%|00.00%)	(0.019786s|01.11%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005135s|00.02%|00.00%)	(0.005708s|00.32%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p26
|   |   |   |   |   35.0:    	(0.004960s|00.02%|00.00%)	(0.005464s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p26
|   |   |   |-- 127.0:        	(0.000139s|00.00%|00.00%)	(0.000158s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001120s|00.00%|00.00%)	(0.001129s|00.07%|00.00%)	(1x) local p27 p27_PID
|   |   |   |   |   8.0:    	(0.000158s|00.00%|00.00%)	(0.000173s|00.01%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.mPMeEa"/.run/p27
|   |   |   |   |   12.0:    	(0.038927s|00.22%|00.00%)	(0.020446s|01.43%|00.02%)	(1x) trap ': >"/dev/shm/.forkrun.mPMeEa"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.mPMeEa"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.mPMeEa"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004079s|00.02%|00.00%)	(0.004537s|00.31%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.mPMeEa"/.wait/p27
|   |   |   |   |   35.0:    	(0.003928s|00.02%|00.00%)	(0.004372s|00.30%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.mPMeEa"/.wait/p27
|   |   |   |-- 127.0:        	(0.000147s|00.00%|00.00%)	(0.000166s|00.01%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000159s|00.00%|00.00%)	(0.000180s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000147s|00.00%|00.00%)	(0.000164s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000113s|00.00%|00.00%)	(0.000130s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000114s|00.00%|00.00%)	(0.000125s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001319s|00.00%|00.00%)	(0.001333s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000132s|00.00%|00.00%)	(0.000153s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000117s|00.00%|00.00%)	(0.000134s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000117s|00.00%|00.00%)	(0.000134s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.659241s|04.33%|02.16%)	(0.001516s|00.00%|00.00%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000166s|00.00%|00.00%)	(0.000180s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -239.0:            	(0.000417s|00.00%|00.00%)	(0.000479s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -238.0:            	(0.000073s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.0:            	(0.005267s|00.00%|00.00%)	(0.000464s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -237.1:            	(0.005140s|00.00%|00.00%)	(0.005140s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -237.0:        	(0.005140s|100.00%|00.00%)	(0.005140s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -236.0:            	(0.000072s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.0:            	(0.001782s|00.00%|00.00%)	(0.001649s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -235.1:            	(0.007678s|00.00%|00.00%)	(0.007678s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -235.0:        	(0.007678s|100.00%|00.00%)	(0.007678s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -234.0:            	(0.000079s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.0:            	(0.003630s|00.00%|00.00%)	(0.000452s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -233.1:            	(0.003533s|00.00%|00.00%)	(0.003533s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -233.0:        	(0.003533s|100.00%|00.00%)	(0.003533s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |-- -232.0:            	(0.016603s|00.00%|00.00%)	(0.016553s|00.04%|00.02%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000115s|00.00%|00.00%)	(0.000131s|00.00%|00.00%)	(1x) wait
|-- |-- -239.0:                	(0.001609s|00.00%|00.00%)	(0.000462s|00.00%|00.00%)	(1x) wait (?)



TOTAL RUN TIME: 1093.386622s
TOTAL CPU TIME: 80.029101s
