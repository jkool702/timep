6.0:                        	(550.967904s|50.12%)	(499.962454s|50.00%)	(1x) << (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0:                    	(0.000633s|00.00%|00.00%)	(0.000327s|00.00%|00.00%)	(1x) forkrun ff < /mnt/ramdisk/flist > /dev/null
|   378.0:                    	(550.967271s|99.99%|50.12%)	(499.962127s|99.99%|50.00%)	(1x) << (SUBSHELL) >>
|   |-- 378.0:                	(0.019104s|00.00%|00.00%)	(0.019059s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000072s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000076s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000122s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000105s|00.00%|00.00%)	(0.000118s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000080s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000068s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000066s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000059s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   278.0:                	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000057s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000064s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.000581s|00.00%|00.00%)	(0.000349s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.002649s|00.00%|00.00%)	(0.002649s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.002649s|100.00%|00.00%)	(0.002649s|100.00%|00.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000061s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.001069s|00.00%|00.00%)	(0.001143s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000083s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.011518s|00.00%|00.00%)	(0.000358s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(550.929774s|24.99%|50.12%)	(499.936601s|24.99%|49.99%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000071s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000081s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.000535s|100.00%|00.00%)	(0.000629s|100.00%|00.00%)	(1x) :
|   |   |   1457.1:            	(0.000082s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000084s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000085s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000118s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000085s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000083s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000067s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000176s|00.00%|00.00%)	(0.000187s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000074s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000074s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000074s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000078s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000068s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.002867s|00.00%|00.00%)	(0.002923s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000113s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000113s|100.00%|00.00%)	(0.000126s|100.00%|00.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000071s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000068s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000067s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000084s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000065s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000807s|00.00%|00.00%)	(0.000952s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000058s|07.18%|00.00%)	(0.000069s|07.24%|00.00%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000062s|07.68%|00.00%)	(0.000074s|07.77%|00.00%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000078s|09.66%|00.00%)	(0.000090s|09.45%|00.00%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000062s|07.68%|00.00%)	(0.000074s|07.77%|00.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000060s|07.43%|00.00%)	(0.000072s|07.56%|00.00%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000061s|07.55%|00.00%)	(0.000073s|07.66%|00.00%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000058s|07.18%|00.00%)	(0.000070s|07.35%|00.00%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000108s|13.38%|00.00%)	(0.000120s|12.60%|00.00%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000060s|07.43%|00.00%)	(0.000071s|07.45%|00.00%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000059s|07.31%|00.00%)	(0.000070s|07.35%|00.00%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000061s|07.55%|00.00%)	(0.000073s|07.66%|00.00%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000080s|09.91%|00.00%)	(0.000096s|10.08%|00.00%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000072s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.004878s|00.00%|00.00%)	(0.004988s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.001516s|00.00%|00.00%)	(0.001616s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000160s|10.55%|00.00%)	(0.000174s|10.76%|00.00%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001356s|89.44%|00.00%)	(0.001442s|89.23%|00.00%)	(1x) nproc
|   |   |   441.0:            	(0.000067s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000075s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000075s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000151s|00.00%|00.00%)	(0.000161s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   499.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   500.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   501.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   501.1:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   512.0:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.002782s|00.00%|00.00%)	(0.002893s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}")
|   |   |   521.1:            	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000089s|100.00%|00.00%)	(0.000102s|100.00%|00.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000070s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001480s|00.00%|00.00%)	(0.001560s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000078s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000070s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000083s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000526s|00.00%|00.00%)	(0.000542s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}"
|   |   |   599.0:            	(0.063249s|00.01%|00.00%)	(0.063191s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000073s|00.11%|00.00%)	(0.000084s|00.13%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.009233s|14.59%|00.00%)	(0.009223s|14.59%|00.00%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.010694s|16.90%|00.00%)	(0.010660s|16.86%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.010816s|17.10%|00.00%)	(0.010800s|17.09%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.010727s|16.95%|00.00%)	(0.010712s|16.95%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.010543s|16.66%|00.00%)	(0.010526s|16.65%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000065s|00.10%|00.00%)	(0.000076s|00.12%|00.00%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.010866s|17.17%|00.00%)	(0.010846s|17.16%|00.00%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000097s|00.15%|00.00%)	(0.000106s|00.16%|00.00%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000062s|00.09%|00.00%)	(0.000073s|00.11%|00.00%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000073s|00.11%|00.00%)	(0.000085s|00.13%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000415s|00.00%|00.00%)	(0.000440s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines
|   |   |   686.0:            	(5.563403s|01.00%|00.50%)	(1.682433s|00.33%|00.16%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000078s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.010278s|00.18%|00.00%)	(0.010264s|00.61%|00.00%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.010735s|00.19%|00.00%)	(0.010721s|00.63%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.010702s|00.19%|00.00%)	(0.010684s|00.63%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.010736s|00.19%|00.00%)	(0.010722s|00.63%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010626s|00.19%|00.00%)	(0.010612s|00.63%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000067s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000068s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.087947s|01.58%|00.00%)	(0.098229s|05.83%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   702.0:        	(4.179856s|75.13%|00.38%)	(0.116514s|06.92%|00.01%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001432s|00.02%|00.00%)	(0.001619s|00.09%|00.00%)	(1x) continue
|   |   |   |   704.0:        	(0.082995s|01.49%|00.00%)	(0.095930s|05.70%|00.00%)	(1x) case ${REPLY} in
|   |   |   |   718.0:        	(0.082999s|01.49%|00.00%)	(0.095895s|05.69%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.082864s|01.48%|00.00%)	(0.095616s|05.68%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.086235s|01.55%|00.00%)	(0.098887s|05.87%|00.00%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.088374s|01.58%|00.00%)	(0.098924s|05.87%|00.00%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.083857s|01.50%|00.00%)	(0.096537s|05.73%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.083688s|01.50%|00.00%)	(0.096380s|05.72%|00.00%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.083216s|01.49%|00.00%)	(0.095931s|05.70%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.083128s|01.49%|00.00%)	(0.096047s|05.70%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005412s|00.09%|00.00%)	(0.005886s|00.34%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null)
|   |   |   |   746.1:        	(0.003893s|00.06%|00.00%)	(0.004643s|00.27%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002678s|68.79%|00.00%)	(0.003051s|65.71%|00.00%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000068s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000071s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000086s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.082557s|01.48%|00.00%)	(0.095262s|05.66%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.081256s|01.46%|00.00%)	(0.093956s|05.58%|00.00%)	(1x) case ${nWait} in
|   |   |   |   778.0:        	(0.078862s|01.41%|00.00%)	(0.091115s|05.41%|00.00%)	(1x) ((nWait--))
|   |   |   |   783.0:        	(0.085549s|01.53%|00.00%)	(0.098457s|05.85%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.083795s|01.50%|00.00%)	(0.096502s|05.73%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002791s|00.05%|00.00%)	(0.003216s|00.19%|00.00%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002759s|00.04%|00.00%)	(0.003172s|00.18%|00.00%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.043779s|00.78%|00.00%)	(0.036931s|02.19%|00.00%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002749s|00.04%|00.00%)	(0.003174s|00.18%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002842s|00.05%|00.00%)	(0.003287s|00.19%|00.00%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002804s|00.05%|00.00%)	(0.003220s|00.19%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000123s|00.00%|00.00%)	(0.000142s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000121s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000122s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000126s|00.00%|00.00%)	(0.000147s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000153s|00.00%|00.00%)	(0.000173s|00.01%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -247.0:        	(0.000136s|00.00%|00.00%)	(0.000155s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -247.1:        	(0.002634s|00.04%|00.00%)	(0.001713s|00.10%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000092s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000083s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.059896s|00.01%|00.00%)	(0.059954s|00.01%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.016183s|00.00%|00.00%)	(0.088562s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000117s|02.00%|00.00%)	(0.000133s|01.97%|00.00%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000071s|01.21%|00.00%)	(0.000084s|01.24%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000080s|01.37%|00.00%)	(0.000092s|01.36%|00.00%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000218s|03.74%|00.00%)	(0.000230s|03.41%|00.00%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000065s|01.11%|00.00%)	(0.000076s|01.12%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000068s|01.16%|00.00%)	(0.000082s|01.21%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000064s|01.09%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000060s|01.03%|00.00%)	(0.000071s|01.05%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000061s|01.04%|00.00%)	(0.000074s|01.09%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000064s|01.09%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000064s|01.09%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000062s|01.06%|00.00%)	(0.000073s|01.08%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000065s|01.11%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000067s|01.15%|00.00%)	(0.000079s|01.17%|00.00%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000059s|01.01%|00.00%)	(0.000071s|01.05%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000064s|01.09%|00.00%)	(0.000074s|01.09%|00.00%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000062s|01.06%|00.00%)	(0.000074s|01.09%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000062s|01.06%|00.00%)	(0.000073s|01.08%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1411.0:        	(0.000068s|01.16%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000057s|00.97%|00.00%)	(0.000068s|01.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000061s|01.04%|00.00%)	(0.000071s|01.05%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000096s|01.64%|00.00%)	(0.000105s|01.55%|00.00%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1413.0:        	(0.000174s|02.98%|00.00%)	(0.000191s|02.83%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1416.0:        	(0.000112s|01.92%|00.00%)	(0.000130s|01.92%|00.00%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1417.0:        	(0.000067s|01.15%|00.00%)	(0.000079s|01.17%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1420.0:        	(0.000076s|01.30%|00.00%)	(0.000091s|01.35%|00.00%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1458.0:        	(0.000065s|01.11%|00.00%)	(0.000076s|01.12%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1463.0:        	(0.000072s|01.23%|00.00%)	(0.000084s|01.24%|00.00%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1464.0:        	(0.000068s|01.16%|00.00%)	(0.000080s|01.18%|00.00%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1465.0:        	(0.000063s|01.08%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1465.1:        	(0.000082s|01.40%|00.00%)	(0.000094s|01.39%|00.00%)	(1x) printf '\n'
|   |   |   |   1466.0:        	(0.000064s|01.09%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1467.0:        	(0.000114s|01.95%|00.00%)	(0.000133s|01.97%|00.00%)	(1x) echo "}"
|   |   |   |   1469.0:        	(0.000060s|01.03%|00.00%)	(0.000070s|01.03%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000061s|01.04%|00.00%)	(0.000072s|01.06%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000062s|01.06%|00.00%)	(0.000073s|01.08%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1469.3:        	(0.000073s|01.25%|00.00%)	(0.000085s|01.26%|00.00%)	(1x) echo "}"
|   |   |   |   1470.0:        	(0.000068s|01.16%|00.00%)	(0.000080s|01.18%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000100s|01.71%|00.00%)	(0.000111s|01.64%|00.00%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000061s|01.04%|00.00%)	(0.000073s|01.08%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000089s|01.52%|00.00%)	(0.000101s|01.49%|00.00%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000074s|01.27%|00.00%)	(0.000085s|01.26%|00.00%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000062s|01.06%|00.00%)	(0.000074s|01.09%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000068s|01.16%|00.00%)	(0.000080s|01.18%|00.00%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000065s|01.11%|00.00%)	(0.000076s|01.12%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000067s|01.15%|00.00%)	(0.000078s|01.15%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000075s|01.28%|00.00%)	(0.000086s|01.27%|00.00%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000121s|02.07%|00.00%)	(0.000137s|02.03%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000077s|01.32%|00.00%)	(0.000089s|01.32%|00.00%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000060s|01.03%|00.00%)	(0.000072s|01.06%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000074s|01.27%|00.00%)	(0.000086s|01.27%|00.00%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000060s|01.03%|00.00%)	(0.000072s|01.06%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000070s|01.20%|00.00%)	(0.000081s|01.20%|00.00%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000063s|01.08%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000116s|01.99%|00.00%)	(0.000120s|01.78%|00.00%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000060s|01.03%|00.00%)	(0.000072s|01.06%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000060s|01.03%|00.00%)	(0.000071s|01.05%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1519.2:        	(0.000059s|01.01%|00.00%)	(0.000071s|01.05%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1519.3:        	(0.000065s|01.11%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1527.0:        	(0.000058s|00.99%|00.00%)	(0.000069s|01.02%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000070s|01.20%|00.00%)	(0.000081s|01.20%|00.00%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000058s|00.99%|00.00%)	(0.000069s|01.02%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000064s|01.09%|00.00%)	(0.000075s|01.11%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000063s|01.08%|00.00%)	(0.000074s|01.09%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000083s|01.42%|00.00%)	(0.000094s|01.39%|00.00%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000062s|01.06%|00.00%)	(0.000072s|01.06%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000060s|01.03%|00.00%)	(0.000071s|01.05%|00.00%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000059s|01.01%|00.00%)	(0.000073s|01.08%|00.00%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000077s|01.32%|00.00%)	(0.000089s|01.32%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000085s|01.45%|00.00%)	(0.000097s|01.43%|00.00%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000072s|01.23%|00.00%)	(0.000085s|01.26%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000067s|01.15%|00.00%)	(0.000079s|01.17%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000065s|01.11%|00.00%)	(0.000077s|01.14%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000073s|01.25%|00.00%)	(0.000086s|01.27%|00.00%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000094s|01.61%|00.00%)	(0.000103s|01.52%|00.00%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000070s|01.20%|00.00%)	(0.000082s|01.21%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000067s|01.15%|00.00%)	(0.000079s|01.17%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000093s|01.59%|00.00%)	(0.000107s|01.58%|00.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000109s|00.00%|00.00%)	(0.000123s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000067s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.010740s|00.00%|00.00%)	(0.010716s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.010630s|00.00%|00.00%)	(0.010613s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.010710s|00.00%|00.00%)	(0.010678s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000071s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000059s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002638s|00.00%|00.00%)	(0.003085s|00.00%|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002786s|00.00%|00.00%)	(0.003238s|00.00%|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002558s|00.00%|00.00%)	(0.002967s|00.00%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(521.171186s|94.59%|47.41%)	(497.936374s|99.59%|49.79%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000629s|00.00%|00.00%)	(0.000641s|00.00%|00.00%)	(1x) local p0 p0_PID
|   |   |   |   72.0:        	(521.144719s|99.99%|47.41%)	(497.908964s|99.99%|49.79%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 72.0:    	(0.003274s|00.00%|00.00%)	(0.003715s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.ru47as"
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p0
|   |   |   |   |   12.0:    	(0.010240s|00.05%|00.00%)	(0.010228s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:    	(0.459935s|00.08%|00.04%)	(0.435524s|00.08%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 3579219 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.460448s|00.08%|00.04%)	(0.445223s|00.08%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 3579219 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.471101s|00.08%|00.04%)	(0.465363s|00.09%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 3579219 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.463866s|00.08%|00.04%)	(0.452573s|00.08%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.110178s|00.01%|00.01%)	(0.123934s|00.02%|00.01%)	(1x) true
|   |   |   |   |   20.0:    	(0.097588s|00.01%|00.00%)	(0.108205s|00.01%|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.097439s|00.01%|00.00%)	(0.109671s|00.01%|00.01%)	(1x) read -r < "/dev/shm/.forkrun.ru47as"/.nLines
|   |   |   |   |   20.2:    	(0.003121s|00.00%|00.00%)	(0.003585s|00.00%|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.003156s|00.00%|00.00%)	(0.003672s|00.00%|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.004853s|00.02%|00.00%)	(0.005457s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p0
|   |   |   |   |   23.0:    	(6.594925s|01.27%|00.59%)	(0.153002s|00.02%|00.01%)	(1x) read -r -u 21 _
|   |   |   |   |   24.0:    	(0.104521s|00.01%|00.00%)	(0.117027s|00.01%|00.01%)	(1x) [[ -f "/dev/shm/.forkrun.ru47as"/.quit ]]
|   |   |   |   |   28.0:    	(0.099685s|00.01%|00.00%)	(0.109047s|00.01%|00.01%)	(1x) [[ -f "/dev/shm/.forkrun.ru47as"/.done ]]
|   |   |   |   |   28.1:    	(0.090397s|00.01%|00.00%)	(0.102787s|00.01%|00.01%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.094518s|00.01%|00.00%)	(0.107802s|00.01%|00.01%)	(1x) evfd_wait 25
|   |   |   |   |   31.0:    	(0.817043s|00.15%|00.07%)	(0.793360s|00.15%|00.07%)	(1x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:    	(0.089993s|00.01%|00.00%)	(0.103393s|00.01%|00.01%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.094930s|00.01%|00.00%)	(0.102662s|00.01%|00.01%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.148512s|00.02%|00.01%)	(0.110232s|00.01%|00.01%)	(1x) printf '\n' 1>&21
|   |   |   |   |   47.0:    	(0.004441s|00.02%|00.00%)	(0.005025s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p0
|   |   |   |   |   48.0:    	(0.091424s|00.01%|00.00%)	(0.101528s|00.01%|00.01%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.087331s|00.01%|00.00%)	(0.100570s|00.01%|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:    	(0.003411s|00.00%|00.00%)	(0.003911s|00.00%|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:    	(0.003089s|00.00%|00.00%)	(0.003610s|00.00%|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:    	(509.666823s|97.77%|46.36%)	(492.898468s|98.97%|49.29%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.084875s|00.02%|00.00%)	(0.096740s|00.02%|00.00%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(34.945316s|06.91%|03.17%)	(33.634592s|06.87%|03.36%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(60.431533s|10.43%|05.49%)	(58.805732s|10.49%|05.88%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(49.355819s|09.67%|04.49%)	(47.457112s|09.61%|04.74%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(60.154082s|10.40%|05.47%)	(58.103251s|10.37%|05.81%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(47.456443s|09.16%|04.31%)	(46.031330s|09.16%|04.60%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(31.611511s|06.48%|02.87%)	(30.325263s|06.42%|03.03%)	(1x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(15.485654s|04.15%|01.40%)	(14.652271s|04.10%|01.46%)	(1x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(32.848839s|06.35%|02.98%)	(31.620948s|06.32%|03.16%)	(1x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(13.410029s|03.85%|01.21%)	(12.751835s|03.84%|01.27%)	(1x) cksum "${@}"
|   |   |   |   |   |   17.0:	(41.147821s|08.61%|03.74%)	(39.811773s|08.64%|03.98%)	(1x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(92.802795s|15.13%|08.44%)	(91.124422s|15.33%|09.11%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(15.279162s|04.33%|01.39%)	(14.550962s|04.33%|01.45%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(14.652944s|04.29%|01.33%)	(13.932237s|04.29%|01.39%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   70.1:    	(0.002884s|00.00%|00.00%)	(0.003350s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   68.1:    	(0.086111s|00.01%|00.00%)	(0.097900s|00.01%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.119738s|00.01%|00.01%)	(0.108221s|00.01%|00.01%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002866s|00.00%|00.00%)	(0.003275s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:    	(0.003064s|00.00%|00.00%)	(0.003474s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:    	(0.003309s|00.00%|00.00%)	(0.003741s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.0:    	(0.002827s|00.00%|00.00%)	(0.003267s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.1:    	(0.040936s|00.00%|00.00%)	(0.043308s|00.00%|00.00%)	(1x) break
|   |   |   |   |-- 4.0:    	(0.003126s|00.00%|00.00%)	(0.003568s|00.00%|00.00%)	(1x) break
|   |   |   |-- 145.0:        	(0.000086s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000600s|00.00%|00.00%)	(0.000613s|00.00%|00.00%)	(1x) local p1 p1_PID
|   |   |   |   |   8.0:    	(0.004867s|00.00%|00.00%)	(0.005420s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p1
|   |   |   |   |   12.0:    	(0.010193s|00.05%|00.00%)	(0.010181s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.175042s|00.01%|00.01%)	(0.196410s|00.02%|00.01%)	(11x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p1
|   |   |   |   |   47.0:    	(0.171163s|00.01%|00.01%)	(0.184965s|00.02%|00.01%)	(11x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p1
|   |   |   |-- 145.0:        	(0.000089s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000545s|00.00%|00.00%)	(0.000556s|00.00%|00.00%)	(1x) local p2 p2_PID
|   |   |   |   |   8.0:    	(0.005432s|00.00%|00.00%)	(0.006137s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p2
|   |   |   |   |   12.0:    	(0.010278s|00.05%|00.00%)	(0.010263s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.138824s|00.01%|00.01%)	(0.155350s|00.02%|00.01%)	(9x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p2
|   |   |   |   |   47.0:    	(0.136786s|00.01%|00.01%)	(0.147266s|00.02%|00.01%)	(9x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p2
|   |   |   |-- 145.0:        	(0.000086s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000580s|00.00%|00.00%)	(0.000597s|00.00%|00.00%)	(1x) local p3 p3_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p3
|   |   |   |   |   12.0:    	(0.010277s|00.04%|00.00%)	(0.010265s|00.04%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002968s|00.01%|00.00%)	(0.003349s|00.01%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p3
|   |   |   |   |   47.0:    	(0.002910s|00.01%|00.00%)	(0.003277s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p3
|   |   |   |-- 145.0:        	(0.000090s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000556s|00.00%|00.00%)	(0.000573s|00.00%|00.00%)	(1x) local p4 p4_PID
|   |   |   |   |   8.0:    	(0.000094s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p4
|   |   |   |   |   12.0:    	(0.010404s|00.05%|00.00%)	(0.010393s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004000s|00.02%|00.00%)	(0.004509s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p4
|   |   |   |   |   47.0:    	(0.003643s|00.02%|00.00%)	(0.004081s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p4
|   |   |   |-- 145.0:        	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000569s|00.00%|00.00%)	(0.000587s|00.00%|00.00%)	(1x) local p5 p5_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p5
|   |   |   |   |   12.0:    	(0.010428s|00.04%|00.00%)	(0.010419s|00.04%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005064s|00.02%|00.00%)	(0.005676s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p5
|   |   |   |   |   47.0:    	(0.004606s|00.02%|00.00%)	(0.005116s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p5
|   |   |   |-- 145.0:        	(0.000089s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000612s|00.00%|00.00%)	(0.000626s|00.00%|00.00%)	(1x) local p6 p6_PID
|   |   |   |   |   8.0:    	(0.000094s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p6
|   |   |   |   |   12.0:    	(0.010443s|00.05%|00.00%)	(0.010428s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004624s|00.02%|00.00%)	(0.005205s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p6
|   |   |   |   |   47.0:    	(0.004476s|00.02%|00.00%)	(0.005043s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p6
|   |   |   |-- 145.0:        	(0.000087s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000605s|00.00%|00.00%)	(0.000621s|00.00%|00.00%)	(1x) local p7 p7_PID
|   |   |   |   |   8.0:    	(0.000091s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p7
|   |   |   |   |   12.0:    	(0.010445s|00.05%|00.00%)	(0.010436s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005242s|00.02%|00.00%)	(0.005878s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p7
|   |   |   |   |   47.0:    	(0.004985s|00.02%|00.00%)	(0.005628s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p7
|   |   |   |-- 145.0:        	(0.000088s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000597s|00.00%|00.00%)	(0.000619s|00.00%|00.00%)	(1x) local p8 p8_PID
|   |   |   |   |   8.0:    	(0.000091s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p8
|   |   |   |   |   12.0:    	(0.010443s|00.05%|00.00%)	(0.010429s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002151s|00.01%|00.00%)	(0.002421s|00.01%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p8
|   |   |   |   |   47.0:    	(0.001926s|00.00%|00.00%)	(0.002163s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p8
|   |   |   |-- 145.0:        	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000619s|00.00%|00.00%)	(0.000633s|00.00%|00.00%)	(1x) local p9 p9_PID
|   |   |   |   |   8.0:    	(0.000092s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p9
|   |   |   |   |   12.0:    	(0.010438s|00.05%|00.00%)	(0.010421s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004065s|00.02%|00.00%)	(0.004569s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p9
|   |   |   |   |   47.0:    	(0.004078s|00.02%|00.00%)	(0.004390s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p9
|   |   |   |-- 145.0:        	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000642s|00.00%|00.00%)	(0.000655s|00.00%|00.00%)	(1x) local p10 p10_PID
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p10
|   |   |   |   |   12.0:    	(0.017710s|00.09%|00.00%)	(0.017654s|00.10%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004083s|00.02%|00.00%)	(0.004572s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p10
|   |   |   |   |   47.0:    	(0.003864s|00.02%|00.00%)	(0.004358s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p10
|   |   |   |-- 145.0:        	(0.000090s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000654s|00.00%|00.00%)	(0.000667s|00.00%|00.00%)	(1x) local p11 p11_PID
|   |   |   |   |   8.0:    	(0.000108s|00.00%|00.00%)	(0.000108s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p11
|   |   |   |   |   12.0:    	(0.010505s|00.06%|00.00%)	(0.010463s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005242s|00.03%|00.00%)	(0.005879s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p11
|   |   |   |   |   47.0:    	(0.004871s|00.02%|00.00%)	(0.005476s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p11
|   |   |   |-- 145.0:        	(0.000110s|00.00%|00.00%)	(0.000122s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000659s|00.00%|00.00%)	(0.000671s|00.00%|00.00%)	(1x) local p12 p12_PID
|   |   |   |   |   8.0:    	(0.000092s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p12
|   |   |   |   |   12.0:    	(0.010679s|00.06%|00.00%)	(0.010639s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004941s|00.02%|00.00%)	(0.005560s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p12
|   |   |   |   |   47.0:    	(0.005037s|00.02%|00.00%)	(0.005658s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p12
|   |   |   |-- 145.0:        	(0.000089s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000798s|00.00%|00.00%)	(0.000819s|00.00%|00.00%)	(1x) local p13 p13_PID
|   |   |   |   |   8.0:    	(0.000156s|00.00%|00.00%)	(0.000176s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p13
|   |   |   |   |   12.0:    	(0.020028s|00.11%|00.00%)	(0.019968s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004206s|00.02%|00.00%)	(0.004706s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p13
|   |   |   |   |   47.0:    	(0.004082s|00.02%|00.00%)	(0.004597s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p13
|   |   |   |-- 145.0:        	(0.000161s|00.00%|00.00%)	(0.000181s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000960s|00.00%|00.00%)	(0.000981s|00.00%|00.00%)	(1x) local p14 p14_PID
|   |   |   |   |   8.0:    	(0.000160s|00.00%|00.00%)	(0.000180s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p14
|   |   |   |   |   12.0:    	(0.021673s|00.11%|00.00%)	(0.021565s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004272s|00.02%|00.00%)	(0.004813s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p14
|   |   |   |   |   47.0:    	(0.004009s|00.02%|00.00%)	(0.004410s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p14
|   |   |   |-- 145.0:        	(0.000155s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000987s|00.00%|00.00%)	(0.001006s|00.00%|00.00%)	(1x) local p15 p15_PID
|   |   |   |   |   8.0:    	(0.000094s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p15
|   |   |   |   |   12.0:    	(0.010446s|00.05%|00.00%)	(0.010430s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004813s|00.02%|00.00%)	(0.005382s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p15
|   |   |   |   |   47.0:    	(0.004766s|00.02%|00.00%)	(0.005339s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p15
|   |   |   |-- 145.0:        	(0.000147s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000935s|00.00%|00.00%)	(0.000956s|00.00%|00.00%)	(1x) local p16 p16_PID
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p16
|   |   |   |   |   12.0:    	(0.010482s|00.05%|00.00%)	(0.010451s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004618s|00.02%|00.00%)	(0.005182s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p16
|   |   |   |   |   47.0:    	(0.005832s|00.03%|00.00%)	(0.004797s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p16
|   |   |   |-- 145.0:        	(0.000156s|00.00%|00.00%)	(0.000176s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000961s|00.00%|00.00%)	(0.000980s|00.00%|00.00%)	(1x) local p17 p17_PID
|   |   |   |   |   8.0:    	(0.000151s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p17
|   |   |   |   |   12.0:    	(0.019866s|00.11%|00.00%)	(0.019812s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004439s|00.02%|00.00%)	(0.004969s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p17
|   |   |   |   |   47.0:    	(0.003940s|00.02%|00.00%)	(0.004419s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p17
|   |   |   |-- 145.0:        	(0.000149s|00.00%|00.00%)	(0.000168s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000979s|00.00%|00.00%)	(0.000998s|00.00%|00.00%)	(1x) local p18 p18_PID
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p18
|   |   |   |   |   12.0:    	(0.013241s|00.07%|00.00%)	(0.013141s|00.07%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002798s|00.01%|00.00%)	(0.003138s|00.01%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p18
|   |   |   |   |   47.0:    	(0.002406s|00.01%|00.00%)	(0.002708s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p18
|   |   |   |-- 145.0:        	(0.000150s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000983s|00.00%|00.00%)	(0.001004s|00.00%|00.00%)	(1x) local p19 p19_PID
|   |   |   |   |   8.0:    	(0.000155s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p19
|   |   |   |   |   12.0:    	(0.018794s|00.10%|00.00%)	(0.018734s|00.10%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003455s|00.01%|00.00%)	(0.003896s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p19
|   |   |   |   |   47.0:    	(0.003112s|00.01%|00.00%)	(0.003508s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p19
|   |   |   |-- 145.0:        	(0.000143s|00.00%|00.00%)	(0.000163s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.001031s|00.00%|00.00%)	(0.001048s|00.00%|00.00%)	(1x) local p20 p20_PID
|   |   |   |   |   8.0:    	(0.000171s|00.00%|00.00%)	(0.000194s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p20
|   |   |   |   |   12.0:    	(0.017788s|00.10%|00.00%)	(0.017693s|00.10%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004505s|00.02%|00.00%)	(0.005065s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p20
|   |   |   |   |   47.0:    	(0.004279s|00.02%|00.00%)	(0.004839s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p20
|   |   |   |-- 145.0:        	(0.000149s|00.00%|00.00%)	(0.000169s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.001064s|00.00%|00.00%)	(0.001086s|00.00%|00.00%)	(1x) local p21 p21_PID
|   |   |   |   |   8.0:    	(0.000158s|00.00%|00.00%)	(0.000177s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p21
|   |   |   |   |   12.0:    	(0.019998s|00.11%|00.00%)	(0.019923s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003426s|00.01%|00.00%)	(0.003839s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p21
|   |   |   |   |   47.0:    	(0.003346s|00.01%|00.00%)	(0.003750s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p21
|   |   |   |   |   49.0:    	(0.000122s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   58.0:    	(0.000121s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   59.0:    	(0.000140s|00.00%|00.00%)	(0.000156s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0:    	(0.000156s|00.00%|00.00%)	(0.000178s|00.00%|00.00%)	(1x) : > "/dev/shm/.forkrun.ru47as"/.quit
|   |   |   |   |   62.0:    	(0.000209s|00.00%|00.00%)	(0.000229s|00.00%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.ru47as"/.run/p* 1>&21
|   |   |   |   |   63.0:    	(0.000147s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) break
|   |   |   |-- 145.0:        	(0.000149s|00.00%|00.00%)	(0.000168s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.001057s|00.00%|00.00%)	(0.001076s|00.00%|00.00%)	(1x) local p22 p22_PID
|   |   |   |   |   8.0:    	(0.000154s|00.00%|00.00%)	(0.000174s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p22
|   |   |   |   |   12.0:    	(0.019875s|00.11%|00.00%)	(0.019813s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004355s|00.02%|00.00%)	(0.004857s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p22
|   |   |   |   |   47.0:    	(0.003993s|00.02%|00.00%)	(0.004481s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p22
|   |   |   |-- 145.0:        	(0.000167s|00.00%|00.00%)	(0.000185s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.000894s|00.00%|00.00%)	(0.000915s|00.00%|00.00%)	(1x) local p23 p23_PID
|   |   |   |   |   8.0:    	(0.000154s|00.00%|00.00%)	(0.000174s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p23
|   |   |   |   |   12.0:    	(0.020159s|00.09%|00.00%)	(0.020092s|00.09%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002819s|00.01%|00.00%)	(0.003167s|00.01%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p23
|   |   |   |   |   47.0:    	(0.002618s|00.01%|00.00%)	(0.002933s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p23
|   |   |   |-- 145.0:        	(0.000165s|00.00%|00.00%)	(0.000185s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.001065s|00.00%|00.00%)	(0.001080s|00.00%|00.00%)	(1x) local p24 p24_PID
|   |   |   |   |   8.0:    	(0.000187s|00.00%|00.00%)	(0.000212s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p24
|   |   |   |   |   12.0:    	(0.047527s|00.27%|00.00%)	(0.022651s|00.13%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005342s|00.03%|00.00%)	(0.005975s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p24
|   |   |   |   |   47.0:    	(0.005056s|00.02%|00.00%)	(0.005686s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p24
|   |   |   |-- 145.0:        	(0.000153s|00.00%|00.00%)	(0.000173s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.001122s|00.00%|00.00%)	(0.001143s|00.00%|00.00%)	(1x) local p25 p25_PID
|   |   |   |   |   8.0:    	(0.000161s|00.00%|00.00%)	(0.000183s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p25
|   |   |   |   |   12.0:    	(0.037996s|00.21%|00.00%)	(0.020242s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004024s|00.02%|00.00%)	(0.004518s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p25
|   |   |   |   |   47.0:    	(0.003682s|00.02%|00.00%)	(0.004120s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p25
|   |   |   |-- 145.0:        	(0.000180s|00.00%|00.00%)	(0.000202s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001111s|00.00%|00.00%)	(0.001132s|00.00%|00.00%)	(1x) local p26 p26_PID
|   |   |   |   |   8.0:    	(0.000173s|00.00%|00.00%)	(0.000194s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p26
|   |   |   |   |   12.0:    	(0.036568s|00.20%|00.00%)	(0.020764s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003640s|00.02%|00.00%)	(0.004068s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p26
|   |   |   |   |   47.0:    	(0.004834s|00.02%|00.00%)	(0.003851s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p26
|   |   |   |-- 145.0:        	(0.000156s|00.00%|00.00%)	(0.000176s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001131s|00.00%|00.00%)	(0.001151s|00.00%|00.00%)	(1x) local p27 p27_PID
|   |   |   |   |   8.0:    	(0.000178s|00.00%|00.00%)	(0.000201s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ru47as"/.run/p27
|   |   |   |   |   12.0:    	(0.029951s|00.15%|00.00%)	(0.020861s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ru47as"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ru47as"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.ru47as"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005356s|00.02%|00.00%)	(0.005963s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ru47as"/.wait/p27
|   |   |   |   |   47.0:    	(0.005241s|00.02%|00.00%)	(0.005864s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ru47as"/.wait/p27
|   |   |   |-- 145.0:        	(0.000176s|00.00%|00.00%)	(0.000197s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000152s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000145s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000120s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000116s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001246s|00.00%|00.00%)	(0.001260s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000124s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000116s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000117s|00.00%|00.00%)	(0.000136s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.954377s|04.34%|02.17%)	(0.001190s|00.00%|00.00%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000144s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000145s|00.00%|00.00%)	(0.000158s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -247.0:            	(0.000487s|00.00%|00.00%)	(0.000556s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -246.0:            	(0.000078s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -245.0:            	(0.003361s|00.00%|00.00%)	(0.003471s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -245.1:            	(0.003264s|00.00%|00.00%)	(0.003264s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -245.0:        	(0.003264s|100.00%|00.00%)	(0.003264s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -244.0:            	(0.000081s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -243.0:            	(0.003060s|00.00%|00.00%)	(0.003154s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -243.1:            	(0.003082s|00.00%|00.00%)	(0.003082s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -243.0:        	(0.003082s|100.00%|00.00%)	(0.003082s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -242.0:            	(0.000087s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -241.0:            	(0.003032s|00.00%|00.00%)	(0.003120s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -241.1:            	(0.003073s|00.00%|00.00%)	(0.003073s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -241.0:        	(0.003073s|100.00%|00.00%)	(0.003073s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |-- -240.0:            	(0.017954s|00.00%|00.00%)	(0.017905s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000098s|00.00%|00.00%)	(0.000111s|00.00%|00.00%)	(1x) wait
|-- |-- -247.0:                	(0.001244s|00.00%|00.00%)	(0.000382s|00.00%|00.00%)	(1x) wait (?)

7.0:                        	(548.243049s|49.87%)	(499.950534s|49.99%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:                    	(0.000615s|00.00%|00.00%)	(0.000314s|00.00%|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   378.0:                    	(548.242434s|99.99%|49.87%)	(499.950220s|99.99%|49.99%)	(1x) << (SUBSHELL) >>
|   |-- 378.0:                	(0.019533s|00.00%|00.00%)	(0.019444s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000074s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000078s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000135s|00.00%|00.00%)	(0.000149s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000100s|00.00%|00.00%)	(0.000114s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000075s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000065s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000066s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000057s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000119s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000118s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000124s|00.00%|00.00%)	(0.000150s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   82.0:                	(0.000092s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:                	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:                	(0.000058s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:                	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:                	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:                	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000060s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000068s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.000643s|00.00%|00.00%)	(0.000375s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.002803s|00.00%|00.00%)	(0.002803s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.002803s|100.00%|00.00%)	(0.002803s|100.00%|00.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.001197s|00.00%|00.00%)	(0.001274s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000086s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.011773s|00.00%|00.00%)	(0.000355s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(548.203259s|24.99%|49.87%)	(499.923396s|24.99%|49.99%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000074s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000090s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.000548s|100.00%|00.00%)	(0.000639s|100.00%|00.00%)	(1x) :
|   |   |   1457.1:            	(0.000094s|00.00%|00.00%)	(0.000109s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000093s|00.00%|00.00%)	(0.000108s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000092s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000090s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000089s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000082s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000178s|00.00%|00.00%)	(0.000193s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000070s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000075s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000076s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000077s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000069s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.002914s|00.00%|00.00%)	(0.002960s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000117s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000117s|100.00%|00.00%)	(0.000126s|100.00%|00.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000071s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000073s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000089s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000066s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000810s|00.00%|00.00%)	(0.000951s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000059s|07.28%|00.00%)	(0.000070s|07.36%|00.00%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000064s|07.90%|00.00%)	(0.000075s|07.88%|00.00%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000064s|07.90%|00.00%)	(0.000077s|08.09%|00.00%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000064s|07.90%|00.00%)	(0.000076s|07.99%|00.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000065s|08.02%|00.00%)	(0.000077s|08.09%|00.00%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000067s|08.27%|00.00%)	(0.000079s|08.30%|00.00%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000063s|07.77%|00.00%)	(0.000074s|07.78%|00.00%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000112s|13.82%|00.00%)	(0.000124s|13.03%|00.00%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000062s|07.65%|00.00%)	(0.000073s|07.67%|00.00%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000061s|07.53%|00.00%)	(0.000073s|07.67%|00.00%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000062s|07.65%|00.00%)	(0.000074s|07.78%|00.00%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000067s|08.27%|00.00%)	(0.000079s|08.30%|00.00%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.004932s|00.00%|00.00%)	(0.005020s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.001569s|00.00%|00.00%)	(0.001640s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000246s|15.67%|00.00%)	(0.000256s|15.60%|00.00%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001323s|84.32%|00.00%)	(0.001384s|84.39%|00.00%)	(1x) nproc
|   |   |   441.0:            	(0.000062s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000073s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000095s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000073s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000227s|00.00%|00.00%)	(0.000237s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000069s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000060s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000105s|00.00%|00.00%)	(0.000117s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:            	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:            	(0.002687s|00.00%|00.00%)	(0.003554s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   492.0:            	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000069s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.002811s|00.00%|00.00%)	(0.002959s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}")
|   |   |   521.1:            	(0.000090s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000090s|100.00%|00.00%)	(0.000103s|100.00%|00.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000074s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001169s|00.00%|00.00%)	(0.001242s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000085s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000071s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000068s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000073s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000519s|00.00%|00.00%)	(0.000531s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}"
|   |   |   599.0:            	(0.063091s|00.01%|00.00%)	(0.062826s|00.01%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000078s|00.12%|00.00%)	(0.000089s|00.14%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.009404s|14.90%|00.00%)	(0.009315s|14.82%|00.00%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.010762s|17.05%|00.00%)	(0.010750s|17.11%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.010794s|17.10%|00.00%)	(0.010726s|17.07%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.010822s|17.15%|00.00%)	(0.010754s|17.11%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.010743s|17.02%|00.00%)	(0.010728s|17.07%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000060s|00.09%|00.00%)	(0.000072s|00.11%|00.00%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.010191s|16.15%|00.00%)	(0.010120s|16.10%|00.00%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000093s|00.14%|00.00%)	(0.000105s|00.16%|00.00%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000069s|00.10%|00.00%)	(0.000081s|00.12%|00.00%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000075s|00.11%|00.00%)	(0.000086s|00.13%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000061s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000079s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000404s|00.00%|00.00%)	(0.000440s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines
|   |   |   686.0:            	(5.127732s|00.93%|00.46%)	(1.706355s|00.34%|00.17%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000080s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.010358s|00.20%|00.00%)	(0.010319s|00.60%|00.00%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.010658s|00.20%|00.00%)	(0.010647s|00.62%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.010766s|00.20%|00.00%)	(0.010749s|00.62%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.010761s|00.20%|00.00%)	(0.010740s|00.62%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010816s|00.21%|00.00%)	(0.010803s|00.63%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000069s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000074s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.088903s|01.73%|00.00%)	(0.100131s|05.86%|00.01%)	(1x) ${fallocateFlag}
|   |   |   |   702.0:        	(3.652745s|71.23%|00.33%)	(0.116838s|06.84%|00.01%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001225s|00.02%|00.00%)	(0.001402s|00.08%|00.00%)	(1x) continue
|   |   |   |   704.0:        	(0.084319s|01.64%|00.00%)	(0.097014s|05.68%|00.00%)	(1x) case ${REPLY} in
|   |   |   |   718.0:        	(0.088063s|01.71%|00.00%)	(0.096469s|05.65%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000068s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000066s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.084025s|01.63%|00.00%)	(0.096881s|05.67%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.092478s|01.80%|00.00%)	(0.100563s|05.89%|00.01%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.087982s|01.71%|00.00%)	(0.100498s|05.88%|00.01%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.084406s|01.64%|00.00%)	(0.097446s|05.71%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.085190s|01.66%|00.00%)	(0.097904s|05.73%|00.00%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.084448s|01.64%|00.00%)	(0.097325s|05.70%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.084749s|01.65%|00.00%)	(0.097526s|05.71%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000068s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000067s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005489s|00.10%|00.00%)	(0.005959s|00.34%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null)
|   |   |   |   746.1:        	(0.004007s|00.07%|00.00%)	(0.004757s|00.27%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002729s|68.10%|00.00%)	(0.003102s|65.20%|00.00%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000109s|00.00%|00.00%)	(0.000126s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000103s|00.00%|00.00%)	(0.000120s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000106s|00.00%|00.00%)	(0.000123s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000102s|00.00%|00.00%)	(0.000119s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000064s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000089s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000073s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.084496s|01.64%|00.00%)	(0.097353s|05.70%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.139336s|02.71%|00.01%)	(0.096317s|05.64%|00.00%)	(1x) case ${nWait} in
|   |   |   |   778.0:        	(0.081283s|01.58%|00.00%)	(0.093841s|05.49%|00.00%)	(1x) ((nWait--))
|   |   |   |   783.0:        	(0.087040s|01.69%|00.00%)	(0.100166s|05.87%|00.01%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.085354s|01.66%|00.00%)	(0.097634s|05.72%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002786s|00.05%|00.00%)	(0.003198s|00.18%|00.00%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002718s|00.05%|00.00%)	(0.003136s|00.18%|00.00%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.051001s|00.99%|00.00%)	(0.036792s|02.15%|00.00%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002820s|00.05%|00.00%)	(0.003183s|00.18%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002803s|00.05%|00.00%)	(0.003243s|00.19%|00.00%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002912s|00.05%|00.00%)	(0.003326s|00.19%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000117s|00.00%|00.00%)	(0.000136s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000122s|00.00%|00.00%)	(0.000138s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000118s|00.00%|00.00%)	(0.000138s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000125s|00.00%|00.00%)	(0.000138s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000154s|00.00%|00.00%)	(0.000174s|00.01%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -247.0:        	(0.000153s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -247.1:        	(0.001544s|00.03%|00.00%)	(0.001607s|00.09%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000073s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000091s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000087s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.048160s|00.00%|00.00%)	(0.048243s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.015565s|00.00%|00.00%)	(0.016285s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000115s|02.41%|00.00%)	(0.000129s|02.34%|00.00%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000067s|01.40%|00.00%)	(0.000079s|01.43%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000080s|01.67%|00.00%)	(0.000091s|01.65%|00.00%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000248s|05.20%|00.00%)	(0.000273s|04.96%|00.00%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000064s|01.34%|00.00%)	(0.000076s|01.38%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000063s|01.32%|00.00%)	(0.000075s|01.36%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000065s|01.36%|00.00%)	(0.000076s|01.38%|00.00%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000062s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000061s|01.27%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000066s|01.38%|00.00%)	(0.000078s|01.41%|00.00%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000064s|01.34%|00.00%)	(0.000076s|01.38%|00.00%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000062s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000066s|01.38%|00.00%)	(0.000076s|01.38%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000070s|01.46%|00.00%)	(0.000079s|01.43%|00.00%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000062s|01.30%|00.00%)	(0.000074s|01.34%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000064s|01.34%|00.00%)	(0.000075s|01.36%|00.00%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000066s|01.38%|00.00%)	(0.000074s|01.34%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000062s|01.30%|00.00%)	(0.000074s|01.34%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:        	(0.000066s|01.38%|00.00%)	(0.000077s|01.39%|00.00%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:        	(0.000067s|01.40%|00.00%)	(0.000078s|01.41%|00.00%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000062s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000063s|01.32%|00.00%)	(0.000074s|01.34%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000096s|02.01%|00.00%)	(0.000108s|01.96%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:        	(0.000061s|01.27%|00.00%)	(0.000072s|01.30%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000062s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000070s|01.46%|00.00%)	(0.000081s|01.47%|00.00%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:        	(0.000068s|01.42%|00.00%)	(0.000079s|01.43%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000083s|01.74%|00.00%)	(0.000095s|01.72%|00.00%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000062s|01.30%|00.00%)	(0.000074s|01.34%|00.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000097s|02.03%|00.00%)	(0.000105s|01.90%|00.00%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000076s|01.59%|00.00%)	(0.000088s|01.59%|00.00%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000062s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000094s|01.97%|00.00%)	(0.000105s|01.90%|00.00%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000065s|01.36%|00.00%)	(0.000077s|01.39%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000064s|01.34%|00.00%)	(0.000075s|01.36%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000075s|01.57%|00.00%)	(0.000086s|01.56%|00.00%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000064s|01.34%|00.00%)	(0.000075s|01.36%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000091s|01.90%|00.00%)	(0.000103s|01.87%|00.00%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000062s|01.30%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000087s|01.82%|00.00%)	(0.000098s|01.78%|00.00%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000062s|01.30%|00.00%)	(0.000074s|01.34%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000070s|01.46%|00.00%)	(0.000081s|01.47%|00.00%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000070s|01.46%|00.00%)	(0.000075s|01.36%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000092s|01.92%|00.00%)	(0.000104s|01.88%|00.00%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000059s|01.23%|00.00%)	(0.000070s|01.27%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000066s|01.38%|00.00%)	(0.000076s|01.38%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:        	(0.000060s|01.25%|00.00%)	(0.000071s|01.29%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000070s|01.46%|00.00%)	(0.000081s|01.47%|00.00%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000062s|01.30%|00.00%)	(0.000072s|01.30%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000067s|01.40%|00.00%)	(0.000079s|01.43%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000073s|01.53%|00.00%)	(0.000084s|01.52%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000103s|02.16%|00.00%)	(0.000115s|02.08%|00.00%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000060s|01.25%|00.00%)	(0.000071s|01.29%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000061s|01.27%|00.00%)	(0.000072s|01.30%|00.00%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000059s|01.23%|00.00%)	(0.000070s|01.27%|00.00%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000064s|01.34%|00.00%)	(0.000072s|01.30%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000094s|01.97%|00.00%)	(0.000106s|01.92%|00.00%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000067s|01.40%|00.00%)	(0.000079s|01.43%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000082s|01.71%|00.00%)	(0.000094s|01.70%|00.00%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000061s|01.27%|00.00%)	(0.000073s|01.32%|00.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000082s|01.71%|00.00%)	(0.000093s|01.68%|00.00%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000068s|01.42%|00.00%)	(0.000080s|01.45%|00.00%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000065s|01.36%|00.00%)	(0.000076s|01.38%|00.00%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000064s|01.34%|00.00%)	(0.000075s|01.36%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000083s|01.74%|00.00%)	(0.000094s|01.70%|00.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000073s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000070s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.010876s|00.00%|00.00%)	(0.082015s|00.01%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.010741s|00.00%|00.00%)	(0.010718s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.010692s|00.00%|00.00%)	(0.010677s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000057s|00.00%|00.00%)	(0.000067s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000058s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000072s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002630s|00.00%|00.00%)	(0.003061s|00.00%|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002788s|00.00%|00.00%)	(0.003223s|00.00%|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002611s|00.00%|00.00%)	(0.003020s|00.00%|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(518.995853s|94.67%|47.21%)	(497.905164s|99.59%|49.79%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000538s|00.00%|00.00%)	(0.000555s|00.00%|00.00%)	(1x) local p0 p0_PID
|   |   |   |   72.0:        	(518.970227s|99.99%|47.21%)	(497.878594s|99.99%|49.79%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 72.0:    	(0.003267s|00.00%|00.00%)	(0.003714s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.ABGfoH"
|   |   |   |   |   8.0:    	(0.000083s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p0
|   |   |   |   |   12.0:    	(0.010564s|00.05%|00.00%)	(0.010346s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:    	(0.440203s|00.08%|00.04%)	(0.437437s|00.08%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 3588014 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.449971s|00.08%|00.04%)	(0.448553s|00.08%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 3588014 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.427073s|00.07%|00.03%)	(0.425985s|00.08%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 3588014 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.444228s|00.08%|00.04%)	(0.442966s|00.08%|00.04%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.109964s|00.01%|00.01%)	(0.123949s|00.02%|00.01%)	(1x) true
|   |   |   |   |   20.0:    	(0.094958s|00.01%|00.00%)	(0.108489s|00.01%|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.096720s|00.01%|00.00%)	(0.110605s|00.01%|00.01%)	(1x) read -r < "/dev/shm/.forkrun.ABGfoH"/.nLines
|   |   |   |   |   20.2:    	(0.003071s|00.00%|00.00%)	(0.003544s|00.00%|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002998s|00.00%|00.00%)	(0.003481s|00.00%|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003911s|00.02%|00.00%)	(0.004369s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p0
|   |   |   |   |   23.0:    	(3.273804s|00.63%|00.29%)	(0.142871s|00.02%|00.01%)	(1x) read -r -u 21 _
|   |   |   |   |   24.0:    	(0.099988s|00.01%|00.00%)	(0.113875s|00.01%|00.01%)	(1x) [[ -f "/dev/shm/.forkrun.ABGfoH"/.quit ]]
|   |   |   |   |   28.0:    	(0.101373s|00.01%|00.00%)	(0.108008s|00.01%|00.01%)	(1x) [[ -f "/dev/shm/.forkrun.ABGfoH"/.done ]]
|   |   |   |   |   28.1:    	(0.091141s|00.01%|00.00%)	(0.102753s|00.01%|00.01%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.096049s|00.01%|00.00%)	(0.107970s|00.01%|00.01%)	(1x) evfd_wait 25
|   |   |   |   |   31.0:    	(0.814899s|00.15%|00.07%)	(0.794369s|00.15%|00.07%)	(1x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:    	(0.139292s|00.02%|00.01%)	(0.112491s|00.01%|00.01%)	(1x) printf '\n' 1>&21
|   |   |   |   |   35.0:    	(0.003732s|00.02%|00.00%)	(0.004198s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p0
|   |   |   |   |   36.0:    	(0.102549s|00.01%|00.00%)	(0.102343s|00.01%|00.01%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.087928s|00.01%|00.00%)	(0.101147s|00.01%|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.003655s|00.00%|00.00%)	(0.004203s|00.00%|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.003312s|00.00%|00.00%)	(0.003845s|00.00%|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(511.136063s|98.46%|46.50%)	(493.115991s|99.02%|49.31%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.083726s|00.01%|00.00%)	(0.097138s|00.02%|00.00%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(35.328640s|06.90%|03.21%)	(33.821887s|06.88%|03.38%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(60.462298s|10.49%|05.50%)	(58.580855s|10.52%|05.85%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(49.162720s|09.61%|04.47%)	(47.532291s|09.63%|04.75%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(59.820168s|10.35%|05.44%)	(58.096004s|10.40%|05.81%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(47.481791s|09.09%|04.31%)	(46.058737s|09.15%|04.60%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(31.462232s|06.43%|02.86%)	(30.183650s|06.39%|03.01%)	(1x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(15.345045s|04.08%|01.39%)	(14.594036s|04.08%|01.45%)	(1x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(33.099323s|06.33%|03.01%)	(31.794216s|06.31%|03.17%)	(1x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(13.439543s|03.83%|01.22%)	(12.786355s|03.83%|01.27%)	(1x) cksum "${@}"
|   |   |   |   |   |   17.0:	(41.512383s|08.64%|03.77%)	(39.887116s|08.62%|03.98%)	(1x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(93.593438s|15.29%|08.51%)	(91.178342s|15.35%|09.11%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(15.444541s|04.39%|01.40%)	(14.576403s|04.33%|01.45%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(14.900215s|04.36%|01.35%)	(13.928961s|04.28%|01.39%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:    	(0.003161s|00.00%|00.00%)	(0.003667s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   56.1:    	(0.089324s|00.01%|00.00%)	(0.097518s|00.01%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.120948s|00.01%|00.01%)	(0.108855s|00.01%|00.01%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002923s|00.00%|00.00%)	(0.003351s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:    	(0.003088s|00.00%|00.00%)	(0.003513s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:    	(0.003364s|00.00%|00.00%)	(0.003805s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.0:    	(0.002942s|00.00%|00.00%)	(0.003408s|00.00%|00.00%)	(1x) break
|   |   |   |   |   3.1:    	(0.041036s|00.00%|00.00%)	(0.043361s|00.00%|00.00%)	(1x) break
|   |   |   |   |-- 4.0:    	(0.003087s|00.00%|00.00%)	(0.003529s|00.00%|00.00%)	(1x) break
|   |   |   |-- 133.0:        	(0.000083s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000595s|00.00%|00.00%)	(0.000613s|00.00%|00.00%)	(1x) local p1 p1_PID
|   |   |   |   |   8.0:    	(0.005124s|00.00%|00.00%)	(0.005781s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p1
|   |   |   |   |   12.0:    	(0.010208s|00.04%|00.00%)	(0.010196s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.166290s|00.01%|00.01%)	(0.185236s|00.02%|00.01%)	(11x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p1
|   |   |   |   |   35.0:    	(0.168822s|00.01%|00.01%)	(0.175676s|00.01%|00.01%)	(11x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p1
|   |   |   |-- 133.0:        	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000579s|00.00%|00.00%)	(0.000596s|00.00%|00.00%)	(1x) local p2 p2_PID
|   |   |   |   |   8.0:    	(0.005096s|00.00%|00.00%)	(0.005748s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p2
|   |   |   |   |   12.0:    	(0.010301s|00.05%|00.00%)	(0.010260s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.150296s|00.02%|00.01%)	(0.168054s|00.02%|00.01%)	(9x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p2
|   |   |   |   |   35.0:    	(0.137048s|00.01%|00.01%)	(0.153796s|00.02%|00.01%)	(9x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p2
|   |   |   |-- 133.0:        	(0.000084s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000569s|00.00%|00.00%)	(0.000581s|00.00%|00.00%)	(1x) local p3 p3_PID
|   |   |   |   |   8.0:    	(0.000096s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p3
|   |   |   |   |   12.0:    	(0.010297s|00.05%|00.00%)	(0.010281s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004189s|00.02%|00.00%)	(0.004684s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p3
|   |   |   |   |   35.0:    	(0.004096s|00.02%|00.00%)	(0.004569s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p3
|   |   |   |-- 133.0:        	(0.000081s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000557s|00.00%|00.00%)	(0.000571s|00.00%|00.00%)	(1x) local p4 p4_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p4
|   |   |   |   |   12.0:    	(0.010329s|00.04%|00.00%)	(0.010314s|00.04%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003963s|00.01%|00.00%)	(0.004450s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p4
|   |   |   |   |   35.0:    	(0.003977s|00.01%|00.00%)	(0.004496s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p4
|   |   |   |-- 133.0:        	(0.000082s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000586s|00.00%|00.00%)	(0.000601s|00.00%|00.00%)	(1x) local p5 p5_PID
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p5
|   |   |   |   |   12.0:    	(0.010402s|00.05%|00.00%)	(0.010389s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002722s|00.01%|00.00%)	(0.003032s|00.01%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p5
|   |   |   |   |   35.0:    	(0.002365s|00.01%|00.00%)	(0.002631s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p5
|   |   |   |-- 133.0:        	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000559s|00.00%|00.00%)	(0.000572s|00.00%|00.00%)	(1x) local p6 p6_PID
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p6
|   |   |   |   |   12.0:    	(0.010453s|00.05%|00.00%)	(0.010441s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004569s|00.02%|00.00%)	(0.005102s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p6
|   |   |   |   |   35.0:    	(0.004693s|00.02%|00.00%)	(0.005247s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p6
|   |   |   |-- 133.0:        	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000575s|00.00%|00.00%)	(0.000594s|00.00%|00.00%)	(1x) local p7 p7_PID
|   |   |   |   |   8.0:    	(0.000094s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p7
|   |   |   |   |   12.0:    	(0.010450s|00.05%|00.00%)	(0.010435s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004012s|00.02%|00.00%)	(0.004504s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p7
|   |   |   |   |   35.0:    	(0.003689s|00.02%|00.00%)	(0.004124s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p7
|   |   |   |-- 133.0:        	(0.000087s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000576s|00.00%|00.00%)	(0.000593s|00.00%|00.00%)	(1x) local p8 p8_PID
|   |   |   |   |   8.0:    	(0.000095s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p8
|   |   |   |   |   12.0:    	(0.010453s|00.05%|00.00%)	(0.010437s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004749s|00.02%|00.00%)	(0.005313s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p8
|   |   |   |   |   35.0:    	(0.004657s|00.02%|00.00%)	(0.005217s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p8
|   |   |   |-- 133.0:        	(0.000086s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000587s|00.00%|00.00%)	(0.000599s|00.00%|00.00%)	(1x) local p9 p9_PID
|   |   |   |   |   8.0:    	(0.000091s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p9
|   |   |   |   |   12.0:    	(0.010450s|00.06%|00.00%)	(0.010436s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005409s|00.03%|00.00%)	(0.006062s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p9
|   |   |   |   |   35.0:    	(0.005339s|00.03%|00.00%)	(0.006006s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p9
|   |   |   |   |   37.0:    	(0.000130s|00.00%|00.00%)	(0.000147s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.000129s|00.00%|00.00%)	(0.000150s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.000136s|00.00%|00.00%)	(0.000157s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000211s|00.00%|00.00%)	(0.000233s|00.00%|00.00%)	(1x) : > "/dev/shm/.forkrun.ABGfoH"/.quit
|   |   |   |   |   50.0:    	(0.000211s|00.00%|00.00%)	(0.000233s|00.00%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.ABGfoH"/.run/p* 1>&21
|   |   |   |   |   51.0:    	(0.000152s|00.00%|00.00%)	(0.000173s|00.00%|00.00%)	(1x) break
|   |   |   |-- 133.0:        	(0.000088s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000628s|00.00%|00.00%)	(0.000645s|00.00%|00.00%)	(1x) local p10 p10_PID
|   |   |   |   |   8.0:    	(0.000149s|00.00%|00.00%)	(0.000169s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p10
|   |   |   |   |   12.0:    	(0.019835s|00.11%|00.00%)	(0.019776s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004683s|00.02%|00.00%)	(0.005246s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p10
|   |   |   |   |   35.0:    	(0.007687s|00.04%|00.00%)	(0.005123s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p10
|   |   |   |-- 133.0:        	(0.000089s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000644s|00.00%|00.00%)	(0.000657s|00.00%|00.00%)	(1x) local p11 p11_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p11
|   |   |   |   |   12.0:    	(0.010607s|00.05%|00.00%)	(0.010553s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005225s|00.02%|00.00%)	(0.005853s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p11
|   |   |   |   |   35.0:    	(0.004993s|00.02%|00.00%)	(0.005624s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p11
|   |   |   |-- 133.0:        	(0.000088s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000629s|00.00%|00.00%)	(0.000646s|00.00%|00.00%)	(1x) local p12 p12_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p12
|   |   |   |   |   12.0:    	(0.011311s|00.05%|00.00%)	(0.011259s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.001219s|00.00%|00.00%)	(0.001371s|00.00%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p12
|   |   |   |   |   35.0:    	(0.001087s|00.00%|00.00%)	(0.001218s|00.00%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p12
|   |   |   |-- 133.0:        	(0.000087s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000804s|00.00%|00.00%)	(0.000830s|00.00%|00.00%)	(1x) local p13 p13_PID
|   |   |   |   |   8.0:    	(0.000152s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p13
|   |   |   |   |   12.0:    	(0.020071s|00.10%|00.00%)	(0.020013s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005017s|00.02%|00.00%)	(0.005615s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p13
|   |   |   |   |   35.0:    	(0.004704s|00.02%|00.00%)	(0.005278s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p13
|   |   |   |-- 133.0:        	(0.000172s|00.00%|00.00%)	(0.000187s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000944s|00.00%|00.00%)	(0.000965s|00.00%|00.00%)	(1x) local p14 p14_PID
|   |   |   |   |   8.0:    	(0.000104s|00.00%|00.00%)	(0.000112s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p14
|   |   |   |   |   12.0:    	(0.010539s|00.06%|00.00%)	(0.010515s|00.06%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004236s|00.02%|00.00%)	(0.004702s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p14
|   |   |   |   |   35.0:    	(0.004088s|00.02%|00.00%)	(0.004605s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p14
|   |   |   |-- 133.0:        	(0.000147s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000918s|00.00%|00.00%)	(0.000937s|00.00%|00.00%)	(1x) local p15 p15_PID
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p15
|   |   |   |   |   12.0:    	(0.014021s|00.08%|00.00%)	(0.013978s|00.08%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005116s|00.02%|00.00%)	(0.005745s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p15
|   |   |   |   |   35.0:    	(0.004810s|00.02%|00.00%)	(0.005408s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p15
|   |   |   |-- 133.0:        	(0.000146s|00.00%|00.00%)	(0.000162s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000931s|00.00%|00.00%)	(0.000951s|00.00%|00.00%)	(1x) local p16 p16_PID
|   |   |   |   |   8.0:    	(0.000163s|00.00%|00.00%)	(0.000185s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p16
|   |   |   |   |   12.0:    	(0.020819s|00.11%|00.00%)	(0.020764s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004331s|00.02%|00.00%)	(0.004796s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p16
|   |   |   |   |   35.0:    	(0.003872s|00.02%|00.00%)	(0.004362s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p16
|   |   |   |-- 133.0:        	(0.000144s|00.00%|00.00%)	(0.000164s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000935s|00.00%|00.00%)	(0.000955s|00.00%|00.00%)	(1x) local p17 p17_PID
|   |   |   |   |   8.0:    	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p17
|   |   |   |   |   12.0:    	(0.010512s|00.05%|00.00%)	(0.010475s|00.05%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003434s|00.01%|00.00%)	(0.003827s|00.01%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p17
|   |   |   |   |   35.0:    	(0.003403s|00.01%|00.00%)	(0.003824s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p17
|   |   |   |-- 133.0:        	(0.000150s|00.00%|00.00%)	(0.000169s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000939s|00.00%|00.00%)	(0.000960s|00.00%|00.00%)	(1x) local p18 p18_PID
|   |   |   |   |   8.0:    	(0.000191s|00.00%|00.00%)	(0.000212s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p18
|   |   |   |   |   12.0:    	(0.020546s|00.11%|00.00%)	(0.020473s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004189s|00.02%|00.00%)	(0.004699s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p18
|   |   |   |   |   35.0:    	(0.003853s|00.02%|00.00%)	(0.004319s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p18
|   |   |   |-- 133.0:        	(0.000139s|00.00%|00.00%)	(0.000158s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000958s|00.00%|00.00%)	(0.000978s|00.00%|00.00%)	(1x) local p19 p19_PID
|   |   |   |   |   8.0:    	(0.000146s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p19
|   |   |   |   |   12.0:    	(0.019209s|00.10%|00.00%)	(0.019144s|00.10%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.002903s|00.01%|00.00%)	(0.003257s|00.01%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p19
|   |   |   |   |   35.0:    	(0.002690s|00.01%|00.00%)	(0.003015s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p19
|   |   |   |-- 133.0:        	(0.000151s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.001004s|00.00%|00.00%)	(0.001021s|00.00%|00.00%)	(1x) local p20 p20_PID
|   |   |   |   |   8.0:    	(0.000172s|00.00%|00.00%)	(0.000195s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p20
|   |   |   |   |   12.0:    	(0.022668s|00.12%|00.00%)	(0.022581s|00.13%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004392s|00.02%|00.00%)	(0.004920s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p20
|   |   |   |   |   35.0:    	(0.004041s|00.02%|00.00%)	(0.004529s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p20
|   |   |   |-- 133.0:        	(0.000167s|00.00%|00.00%)	(0.000182s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.000867s|00.00%|00.00%)	(0.000896s|00.00%|00.00%)	(1x) local p21 p21_PID
|   |   |   |   |   8.0:    	(0.000152s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p21
|   |   |   |   |   12.0:    	(0.020144s|00.11%|00.00%)	(0.020079s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004546s|00.02%|00.00%)	(0.005102s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p21
|   |   |   |   |   35.0:    	(0.004011s|00.02%|00.00%)	(0.004529s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p21
|   |   |   |-- 133.0:        	(0.000163s|00.00%|00.00%)	(0.000183s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.001008s|00.00%|00.00%)	(0.001026s|00.00%|00.00%)	(1x) local p22 p22_PID
|   |   |   |   |   8.0:    	(0.000151s|00.00%|00.00%)	(0.000172s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p22
|   |   |   |   |   12.0:    	(0.019944s|00.11%|00.00%)	(0.019876s|00.11%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005135s|00.02%|00.00%)	(0.005707s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p22
|   |   |   |   |   35.0:    	(0.004728s|00.02%|00.00%)	(0.005314s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p22
|   |   |   |-- 133.0:        	(0.000145s|00.00%|00.00%)	(0.000164s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.001051s|00.00%|00.00%)	(0.001067s|00.00%|00.00%)	(1x) local p23 p23_PID
|   |   |   |   |   8.0:    	(0.000144s|00.00%|00.00%)	(0.000162s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p23
|   |   |   |   |   12.0:    	(0.020336s|00.10%|00.00%)	(0.020250s|00.10%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004282s|00.02%|00.00%)	(0.004791s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p23
|   |   |   |   |   35.0:    	(0.003891s|00.02%|00.00%)	(0.004374s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p23
|   |   |   |-- 133.0:        	(0.000154s|00.00%|00.00%)	(0.000168s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.001067s|00.00%|00.00%)	(0.001090s|00.00%|00.00%)	(1x) local p24 p24_PID
|   |   |   |   |   8.0:    	(0.000174s|00.00%|00.00%)	(0.000191s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p24
|   |   |   |   |   12.0:    	(0.024478s|00.13%|00.00%)	(0.021493s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.004327s|00.02%|00.00%)	(0.004846s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p24
|   |   |   |   |   35.0:    	(0.003823s|00.02%|00.00%)	(0.004286s|00.02%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p24
|   |   |   |-- 133.0:        	(0.000147s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.001056s|00.00%|00.00%)	(0.001076s|00.00%|00.00%)	(1x) local p25 p25_PID
|   |   |   |   |   8.0:    	(0.000159s|00.00%|00.00%)	(0.000182s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p25
|   |   |   |   |   12.0:    	(0.020807s|00.11%|00.00%)	(0.020688s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.003286s|00.01%|00.00%)	(0.003659s|00.02%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p25
|   |   |   |   |   35.0:    	(0.002946s|00.01%|00.00%)	(0.003308s|00.01%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p25
|   |   |   |-- 133.0:        	(0.000159s|00.00%|00.00%)	(0.000179s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001106s|00.00%|00.00%)	(0.001122s|00.00%|00.00%)	(1x) local p26 p26_PID
|   |   |   |   |   8.0:    	(0.000152s|00.00%|00.00%)	(0.000172s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p26
|   |   |   |   |   12.0:    	(0.022974s|00.13%|00.00%)	(0.019914s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005031s|00.02%|00.00%)	(0.005636s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p26
|   |   |   |   |   35.0:    	(0.004824s|00.02%|00.00%)	(0.005406s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p26
|   |   |   |-- 133.0:        	(0.000145s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001027s|00.00%|00.00%)	(0.001047s|00.00%|00.00%)	(1x) local p27 p27_PID
|   |   |   |   |   8.0:    	(0.000147s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.ABGfoH"/.run/p27
|   |   |   |   |   12.0:    	(0.025875s|00.15%|00.00%)	(0.019710s|00.12%|00.00%)	(1x) trap ': >"/dev/shm/.forkrun.ABGfoH"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.ABGfoH"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.ABGfoH"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:    	(0.005439s|00.03%|00.00%)	(0.006080s|00.03%|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.ABGfoH"/.wait/p27
|   |   |   |   |   35.0:    	(0.004978s|00.02%|00.00%)	(0.005553s|00.03%|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.ABGfoH"/.wait/p27
|   |   |   |-- 133.0:        	(0.000146s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000150s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000145s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000128s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000120s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001233s|00.00%|00.00%)	(0.001251s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000127s|00.00%|00.00%)	(0.000146s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000115s|00.00%|00.00%)	(0.000133s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000122s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.846328s|04.34%|02.16%)	(0.001685s|00.00%|00.00%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000076s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000126s|00.00%|00.00%)	(0.000138s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -247.0:            	(0.000536s|00.00%|00.00%)	(0.000585s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -246.0:            	(0.000078s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -245.0:            	(0.003346s|00.00%|00.00%)	(0.003433s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -245.1:            	(0.003231s|00.00%|00.00%)	(0.003231s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -245.0:        	(0.003231s|100.00%|00.00%)	(0.003231s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -244.0:            	(0.000077s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -243.0:            	(0.003347s|00.00%|00.00%)	(0.003434s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -243.1:            	(0.003286s|00.00%|00.00%)	(0.003286s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -243.0:        	(0.003286s|100.00%|00.00%)	(0.003286s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -242.0:            	(0.000087s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -241.0:            	(0.003165s|00.00%|00.00%)	(0.003251s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -241.1:            	(0.003146s|00.00%|00.00%)	(0.003146s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -241.0:        	(0.003146s|100.00%|00.00%)	(0.003146s|100.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |-- -240.0:            	(0.017497s|00.00%|00.00%)	(0.017456s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000095s|00.00%|00.00%)	(0.000109s|00.00%|00.00%)	(1x) wait
|-- |-- -247.0:                	(0.001388s|00.00%|00.00%)	(0.000371s|00.00%|00.00%)	(1x) wait (?)



TOTAL RUN TIME: 1099.210953s
TOTAL CPU TIME: 999.912988s
