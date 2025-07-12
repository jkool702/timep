0.0:                        	(545.642064s|49.85%)	(1x) << (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0:                    	(0.000690s|00.00%|00.00%)	(1x) forkrun ff < /mnt/ramdisk/flist > /dev/null
|   347.0:                    	(545.641374s|49.85%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 347.0:                	(0.018024s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000064s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000072s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000132s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000097s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000077s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000069s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000069s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000059s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000059s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000064s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000059s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000063s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   278.0:                	(0.000068s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000061s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000060s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000064s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000062s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.000804s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.002259s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.002259s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000062s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.001502s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000083s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000060s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.010820s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   303.0:                	(545.604828s|49.84%|99.99%)	(1x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000068s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000071s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.000633s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:            	(0.000080s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000166s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000080s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000113s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000123s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000076s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000064s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000065s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000242s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000082s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000061s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000063s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000063s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000069s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000071s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000077s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000063s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000062s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.000540s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000101s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000101s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000069s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000067s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000067s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000063s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000061s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000062s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000065s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000083s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000065s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000061s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000068s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000061s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000062s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000060s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000064s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000789s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000058s|00.00%|07.35%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000064s|00.00%|08.11%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000062s|00.00%|07.85%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000063s|00.00%|07.98%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000062s|00.00%|07.85%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000064s|00.00%|08.11%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000061s|00.00%|07.73%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000112s|00.00%|14.19%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000059s|00.00%|07.47%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000059s|00.00%|07.47%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000061s|00.00%|07.73%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000064s|00.00%|08.11%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000063s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.000684s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.002053s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000195s|00.00%|09.49%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001858s|00.00%|90.50%)	(1x) nproc
|   |   |   441.0:            	(0.000061s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000063s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000059s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000059s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000064s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000082s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000072s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000058s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000059s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000063s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000059s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000066s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000141s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000059s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000063s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000060s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000060s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000068s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000059s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   499.0:            	(0.000059s|00.00%|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   500.0:            	(0.000059s|00.00%|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   501.0:            	(0.000059s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   501.1:            	(0.000064s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   512.0:            	(0.000060s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.000665s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:            	(0.000097s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000097s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000060s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000062s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000059s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001463s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000061s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000065s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000058s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000064s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000074s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000069s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000062s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000060s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000466s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:            	(0.063848s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000075s|00.00%|00.11%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.008147s|00.00%|12.75%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.009465s|00.00%|14.82%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.009395s|00.00%|14.71%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.009449s|00.00%|14.79%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.009428s|00.00%|14.76%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000065s|00.00%|00.10%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.017613s|00.00%|27.58%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000085s|00.00%|00.13%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000064s|00.00%|00.10%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000062s|00.00%|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000065s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000059s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000062s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000059s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000381s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:            	(6.716757s|00.61%|01.23%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000080s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.009482s|00.00%|00.14%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.009385s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.009391s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.009439s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.009406s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000059s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000066s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000060s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000059s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.079829s|00.00%|01.18%)	(677x) ${fallocateFlag}
|   |   |   |   702.0:        	(5.431943s|00.49%|80.87%)	(676x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001496s|00.00%|00.02%)	(11x) continue
|   |   |   |   704.0:        	(0.074608s|00.00%|01.11%)	(665x) case ${REPLY} in
|   |   |   |   718.0:        	(0.076663s|00.00%|01.14%)	(665x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000062s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000070s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.074705s|00.00%|01.11%)	(665x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.095481s|00.00%|01.42%)	(665x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.079285s|00.00%|01.18%)	(665x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.076751s|00.00%|01.14%)	(665x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.080836s|00.00%|01.20%)	(665x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.078157s|00.00%|01.16%)	(665x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.074523s|00.00%|01.10%)	(665x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000062s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000065s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.000662s|00.00%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:        	(0.002521s|00.00%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002520s|00.00%|99.96%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000102s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000094s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000098s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000067s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000069s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000062s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000104s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000139s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000069s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000103s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.073892s|00.00%|01.10%)	(665x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.073009s|00.00%|01.08%)	(665x) case ${nWait} in
|   |   |   |   778.0:        	(0.072429s|00.00%|01.07%)	(644x) ((nWait--))
|   |   |   |   783.0:        	(0.076940s|00.00%|01.14%)	(665x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.076049s|00.00%|01.13%)	(664x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002360s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002296s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.054601s|00.00%|00.81%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002333s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002360s|00.00%|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002397s|00.00%|00.03%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000101s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000102s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000110s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000106s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000118s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -223.0:        	(0.000105s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -223.1:        	(0.001396s|00.00%|00.02%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000070s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000089s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000085s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.001265s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.014803s|00.00%|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000155s|00.00%|02.72%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000089s|00.00%|01.56%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000107s|00.00%|01.88%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000293s|00.00%|05.14%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000086s|00.00%|01.51%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000082s|00.00%|01.44%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000088s|00.00%|01.54%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000085s|00.00%|01.49%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000061s|00.00%|01.07%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000065s|00.00%|01.14%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000063s|00.00%|01.10%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000061s|00.00%|01.07%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000064s|00.00%|01.12%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000065s|00.00%|01.14%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000061s|00.00%|01.07%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000068s|00.00%|01.19%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000061s|00.00%|01.07%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000061s|00.00%|01.07%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1411.0:        	(0.000066s|00.00%|01.15%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000061s|00.00%|01.07%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000061s|00.00%|01.07%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000063s|00.00%|01.10%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1413.0:        	(0.000061s|00.00%|01.07%)	(1x) ${lseekFlag}
|   |   |   |   1416.0:        	(0.000067s|00.00%|01.17%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1417.0:        	(0.000060s|00.00%|01.05%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1420.0:        	(0.000065s|00.00%|01.14%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1458.0:        	(0.000061s|00.00%|01.07%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1463.0:        	(0.000068s|00.00%|01.19%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1464.0:        	(0.000064s|00.00%|01.12%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1465.0:        	(0.000060s|00.00%|01.05%)	(1x) ${lseekFlag}
|   |   |   |   1465.1:        	(0.000064s|00.00%|01.12%)	(1x) printf '\n'
|   |   |   |   1466.0:        	(0.000061s|00.00%|01.07%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1467.0:        	(0.000092s|00.00%|01.61%)	(1x) echo "}"
|   |   |   |   1469.0:        	(0.000061s|00.00%|01.07%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000061s|00.00%|01.07%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000061s|00.00%|01.07%)	(1x) ${readBytesFlag}
|   |   |   |   1469.3:        	(0.000072s|00.00%|01.26%)	(1x) echo "}"
|   |   |   |   1470.0:        	(0.000066s|00.00%|01.15%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000080s|00.00%|01.40%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000066s|00.00%|01.15%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000072s|00.00%|01.26%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000072s|00.00%|01.26%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000061s|00.00%|01.07%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000082s|00.00%|01.44%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000069s|00.00%|01.21%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000065s|00.00%|01.14%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000073s|00.00%|01.28%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000063s|00.00%|01.10%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000074s|00.00%|01.30%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000062s|00.00%|01.08%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000085s|00.00%|01.49%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000061s|00.00%|01.07%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000084s|00.00%|01.47%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000061s|00.00%|01.07%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000094s|00.00%|01.65%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000060s|00.00%|01.05%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000070s|00.00%|01.23%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1519.2:        	(0.000059s|00.00%|01.03%)	(1x) ${readBytesFlag}
|   |   |   |   1519.3:        	(0.000065s|00.00%|01.14%)	(1x) ${lseekFlag}
|   |   |   |   1527.0:        	(0.000059s|00.00%|01.03%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000068s|00.00%|01.19%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000061s|00.00%|01.07%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000066s|00.00%|01.15%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000062s|00.00%|01.08%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000100s|00.00%|01.75%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000060s|00.00%|01.05%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000065s|00.00%|01.14%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000060s|00.00%|01.05%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000060s|00.00%|01.05%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000080s|00.00%|01.40%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000066s|00.00%|01.15%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000065s|00.00%|01.14%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000060s|00.00%|01.05%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000082s|00.00%|01.44%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000067s|00.00%|01.17%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000065s|00.00%|01.14%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000064s|00.00%|01.12%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000092s|00.00%|01.61%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000234s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000227s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000214s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.009539s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.009404s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.009348s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000065s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000063s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000069s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002458s|00.00%|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002589s|00.00%|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002474s|00.00%|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(515.470471s|47.09%|94.47%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000562s|00.00%|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:        	(515.445355s|47.09%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:    	(0.004539s|00.00%|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.egLK7r"
|   |   |   |   |   8.0:    	(0.000082s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p0
|   |   |   |   |   12.0:    	(0.009172s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p0; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:    	(0.391468s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 128016 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.387470s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 128016 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.387210s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 128016 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.400386s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.005137s|00.00%|00.02%)	(24x) true
|   |   |   |   |   20.0:    	(0.002631s|00.00%|00.01%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002708s|00.00%|00.01%)	(24x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   20.2:    	(0.000588s|00.00%|00.00%)	(8x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.000590s|00.00%|00.00%)	(8x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003521s|00.00%|00.01%)	(24x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p0
|   |   |   |   |   23.0:    	(0.153784s|00.01%|00.68%)	(24x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005938s|00.00%|00.02%)	(24x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.002581s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.002619s|00.00%|00.01%)	(23x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002794s|00.00%|00.01%)	(23x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.029675s|00.00%|00.13%)	(23x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.002686s|00.00%|00.01%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.002602s|00.00%|00.01%)	(23x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.007383s|00.00%|00.03%)	(23x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003300s|00.00%|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p0
|   |   |   |   |   48.0:    	(0.002664s|00.00%|00.01%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.002642s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:    	(0.000661s|00.00%|00.00%)	(8x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:    	(0.000589s|00.00%|00.00%)	(8x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:    	(22.088274s|02.01%|98.71%)	(23x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002404s|00.00%|00.02%)	(23x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.633899s|00.14%|07.61%)	(23x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.608720s|00.23%|10.59%)	(23x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.071724s|00.18%|09.42%)	(23x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.596470s|00.23%|10.42%)	(23x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.986157s|00.18%|09.09%)	(23x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.396353s|00.12%|06.30%)	(23x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.573267s|00.05%|03.96%)	(23x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.509494s|00.13%|06.53%)	(23x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.496183s|00.04%|03.60%)	(23x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.869284s|00.17%|08.99%)	(23x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.317245s|00.39%|15.65%)	(23x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.537561s|00.04%|03.90%)	(23x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.489513s|00.04%|03.79%)	(23x) xxhsum -H3 "${@}"
|   |   |   |   |   70.1:    	(0.002583s|00.00%|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   68.1:    	(0.002510s|00.00%|00.01%)	(21x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.002772s|00.00%|00.01%)	(21x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002400s|00.00%|00.00%)	(26x) printf '\n' 1>&20
|   |   |   |   |   26.0:    	(0.002568s|00.00%|00.00%)	(26x) break
|   |   |   |   |   2.0:    	(0.002977s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.0:    	(0.002501s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.1:    	(0.044607s|00.00%|00.00%)	(28x) break
|   |   |   |   |-- 4.0:    	(0.002725s|00.00%|00.00%)	(28x) break
|   |   |   |-- 138.0:        	(0.000079s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000535s|00.00%|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:    	(0.001263s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p1
|   |   |   |   |   12.0:    	(0.010243s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p1; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.004331s|00.00%|00.02%)	(32x) true
|   |   |   |   |   20.0:    	(0.004001s|00.00%|00.02%)	(32x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003984s|00.00%|00.02%)	(32x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.004982s|00.00%|00.02%)	(32x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p1
|   |   |   |   |   23.0:    	(0.172477s|00.01%|00.89%)	(32x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.003986s|00.00%|00.02%)	(32x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.003715s|00.00%|00.01%)	(31x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.003630s|00.00%|00.01%)	(31x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.003858s|00.00%|00.01%)	(31x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.039930s|00.00%|00.20%)	(31x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.003487s|00.00%|00.01%)	(31x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.003548s|00.00%|00.01%)	(31x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.011368s|00.00%|00.05%)	(31x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.005289s|00.00%|00.02%)	(31x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p1
|   |   |   |   |   48.0:    	(0.003499s|00.00%|00.01%)	(31x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.003462s|00.00%|00.01%)	(31x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(19.016970s|01.73%|98.24%)	(31x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003325s|00.00%|00.02%)	(31x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.374351s|00.12%|07.16%)	(31x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.244243s|00.20%|10.34%)	(31x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.727568s|00.15%|09.33%)	(31x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.047413s|00.18%|09.90%)	(31x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.718609s|00.15%|08.93%)	(31x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.229513s|00.11%|06.69%)	(31x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.654039s|00.05%|04.35%)	(31x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.293847s|00.11%|06.49%)	(31x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.577670s|00.05%|04.18%)	(31x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.559201s|00.14%|08.63%)	(31x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.280509s|00.29%|14.38%)	(31x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.651246s|00.05%|04.61%)	(31x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.655436s|00.05%|04.84%)	(31x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.006742s|00.00%|00.01%)	(58x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.013907s|00.00%|00.03%)	(58x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000077s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000584s|00.00%|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   8.0:    	(0.001435s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p2
|   |   |   |   |   12.0:    	(0.010077s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p2; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.001485s|00.00%|00.00%)	(12x) true
|   |   |   |   |   20.0:    	(0.004394s|00.00%|00.02%)	(12x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001367s|00.00%|00.00%)	(12x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.001715s|00.00%|00.00%)	(12x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p2
|   |   |   |   |   23.0:    	(0.081809s|00.00%|00.40%)	(12x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001446s|00.00%|00.00%)	(12x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.001264s|00.00%|00.00%)	(11x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.001243s|00.00%|00.00%)	(11x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001300s|00.00%|00.00%)	(11x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.012974s|00.00%|00.06%)	(11x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.001265s|00.00%|00.00%)	(11x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.001220s|00.00%|00.00%)	(11x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.001302s|00.00%|00.00%)	(11x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.001578s|00.00%|00.00%)	(11x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p2
|   |   |   |   |   48.0:    	(0.001241s|00.00%|00.00%)	(11x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.004293s|00.00%|00.02%)	(11x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(19.974884s|01.82%|99.13%)	(11x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001147s|00.00%|00.02%)	(11x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.342343s|00.12%|06.80%)	(11x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.688821s|00.24%|12.26%)	(11x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.848004s|00.16%|09.10%)	(11x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.547003s|00.23%|11.35%)	(11x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.808415s|00.16%|08.76%)	(11x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.182776s|00.10%|06.20%)	(11x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.367391s|00.03%|03.13%)	(11x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.305509s|00.11%|06.48%)	(11x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.270163s|00.02%|02.67%)	(11x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.536445s|00.14%|07.98%)	(11x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.445784s|00.40%|19.01%)	(11x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.347842s|00.03%|03.13%)	(11x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.283241s|00.02%|02.98%)	(11x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.001074s|00.00%|00.00%)	(9x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.001215s|00.00%|00.00%)	(9x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000549s|00.00%|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:    	(0.000093s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p3
|   |   |   |   |   12.0:    	(0.009007s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p3; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.014986s|00.00%|00.02%)	(108x) true
|   |   |   |   |   20.0:    	(0.013146s|00.00%|00.01%)	(108x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.016549s|00.00%|00.01%)	(108x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.004308s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p3
|   |   |   |   |   23.0:    	(0.589945s|00.05%|00.83%)	(108x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.013913s|00.00%|00.01%)	(108x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.012891s|00.00%|00.01%)	(104x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.012589s|00.00%|00.01%)	(104x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.013187s|00.00%|00.01%)	(104x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.131962s|00.01%|00.17%)	(104x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.012634s|00.00%|00.01%)	(104x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.013454s|00.00%|00.01%)	(104x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.020710s|00.00%|00.02%)	(104x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003952s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p3
|   |   |   |   |   48.0:    	(0.013174s|00.00%|00.01%)	(104x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.012305s|00.00%|00.01%)	(104x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(69.531019s|06.35%|98.16%)	(104x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.011403s|00.00%|00.01%)	(104x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.727694s|00.43%|06.89%)	(104x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(8.003400s|00.73%|10.50%)	(104x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.681952s|00.61%|09.60%)	(104x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.928025s|00.72%|10.31%)	(104x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.448502s|00.58%|09.15%)	(104x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.226805s|00.38%|06.39%)	(104x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.281337s|00.20%|04.16%)	(104x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.440575s|00.40%|06.32%)	(104x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.012318s|00.18%|03.86%)	(104x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.858389s|00.53%|08.71%)	(104x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(12.353100s|01.12%|15.05%)	(104x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.313890s|00.21%|04.44%)	(104x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.243629s|00.20%|04.41%)	(104x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.005687s|00.00%|00.01%)	(48x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.012065s|00.00%|00.02%)	(48x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000545s|00.00%|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:    	(0.000104s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p4
|   |   |   |   |   12.0:    	(0.009168s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p4; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.005807s|00.00%|00.01%)	(42x) true
|   |   |   |   |   20.0:    	(0.004703s|00.00%|00.01%)	(42x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.004870s|00.00%|00.01%)	(42x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   20.2:    	(0.002129s|00.00%|00.00%)	(24x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002144s|00.00%|00.00%)	(24x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003106s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p4
|   |   |   |   |   23.0:    	(0.292800s|00.02%|00.77%)	(42x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005622s|00.00%|00.01%)	(42x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.005004s|00.00%|00.01%)	(40x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.004875s|00.00%|00.01%)	(40x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.004864s|00.00%|00.01%)	(40x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.052355s|00.00%|00.13%)	(40x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.004599s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.004586s|00.00%|00.01%)	(40x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.008132s|00.00%|00.01%)	(40x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003069s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p4
|   |   |   |   |   48.0:    	(0.004477s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.004529s|00.00%|00.01%)	(40x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:    	(0.002495s|00.00%|00.00%)	(24x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:    	(0.002143s|00.00%|00.00%)	(24x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:    	(37.555430s|03.43%|98.57%)	(40x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004243s|00.00%|00.01%)	(40x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.531365s|00.23%|06.75%)	(40x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.800297s|00.43%|10.80%)	(40x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.798038s|00.34%|09.76%)	(40x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.719691s|00.43%|10.48%)	(40x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.701833s|00.33%|09.29%)	(40x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.308633s|00.21%|06.37%)	(40x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.969480s|00.08%|03.91%)	(40x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.484019s|00.22%|06.36%)	(40x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.839350s|00.07%|03.77%)	(40x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.879127s|00.26%|08.69%)	(40x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.629621s|00.60%|15.14%)	(40x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.987076s|00.09%|04.36%)	(40x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.902657s|00.08%|04.14%)	(40x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.004401s|00.00%|00.01%)	(38x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.005089s|00.00%|00.01%)	(38x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000552s|00.00%|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:    	(0.000305s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p5
|   |   |   |   |   12.0:    	(0.009798s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p5; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.005380s|00.00%|00.01%)	(40x) true
|   |   |   |   |   20.0:    	(0.004803s|00.00%|00.01%)	(40x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.005068s|00.00%|00.01%)	(40x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.003084s|00.00%|00.01%)	(20x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p5
|   |   |   |   |   23.0:    	(0.269934s|00.02%|00.74%)	(40x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005216s|00.00%|00.01%)	(40x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.010825s|00.00%|00.02%)	(38x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.004548s|00.00%|00.01%)	(38x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.004647s|00.00%|00.01%)	(38x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.045221s|00.00%|00.12%)	(38x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.004318s|00.00%|00.01%)	(38x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.004374s|00.00%|00.01%)	(38x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.004951s|00.00%|00.01%)	(38x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.002801s|00.00%|00.01%)	(19x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p5
|   |   |   |   |   48.0:    	(0.004370s|00.00%|00.01%)	(38x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.006211s|00.00%|00.01%)	(38x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(35.589667s|03.25%|98.54%)	(38x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004099s|00.00%|00.01%)	(38x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.372490s|00.21%|06.82%)	(38x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.313484s|00.39%|10.65%)	(38x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.475088s|00.31%|09.64%)	(38x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.242339s|00.38%|10.39%)	(38x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.264960s|00.29%|09.05%)	(38x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.075392s|00.18%|06.24%)	(38x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.965263s|00.08%|04.04%)	(38x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.288135s|00.20%|06.42%)	(38x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.803295s|00.07%|03.77%)	(38x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.971224s|00.27%|08.75%)	(38x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(7.048611s|00.64%|15.64%)	(38x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.916513s|00.08%|04.28%)	(38x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.848774s|00.07%|04.12%)	(38x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.004081s|00.00%|00.01%)	(36x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.007727s|00.00%|00.01%)	(36x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000546s|00.00%|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   8.0:    	(0.000142s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p6
|   |   |   |   |   12.0:    	(0.011899s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p6; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.009838s|00.00%|00.01%)	(75x) true
|   |   |   |   |   20.0:    	(0.008670s|00.00%|00.01%)	(75x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.008986s|00.00%|00.01%)	(75x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.003713s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p6
|   |   |   |   |   23.0:    	(0.509314s|00.04%|00.96%)	(75x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.009573s|00.00%|00.01%)	(75x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.008553s|00.00%|00.01%)	(72x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.008875s|00.00%|00.01%)	(72x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.009152s|00.00%|00.01%)	(72x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.088485s|00.00%|00.16%)	(72x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.011384s|00.00%|00.01%)	(72x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.008507s|00.00%|00.01%)	(72x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.018466s|00.00%|00.03%)	(72x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.006527s|00.00%|00.03%)	(24x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p6
|   |   |   |   |   48.0:    	(0.011374s|00.00%|00.01%)	(72x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.013881s|00.00%|00.02%)	(72x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(51.507266s|04.70%|98.13%)	(72x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.010926s|00.00%|00.01%)	(72x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.439492s|00.31%|06.76%)	(72x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(5.965004s|00.54%|10.39%)	(72x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(4.892764s|00.44%|09.54%)	(72x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(5.997592s|00.54%|10.48%)	(72x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(4.775503s|00.43%|09.24%)	(72x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.151505s|00.28%|06.50%)	(72x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.640966s|00.14%|04.15%)	(72x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.317080s|00.30%|06.44%)	(72x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.393121s|00.12%|03.74%)	(72x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.248936s|00.38%|08.60%)	(72x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(9.484649s|00.86%|15.39%)	(72x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.577800s|00.14%|04.16%)	(72x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.611928s|00.14%|04.44%)	(72x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.011152s|00.00%|00.01%)	(69x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.011396s|00.00%|00.01%)	(69x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000574s|00.00%|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   8.0:    	(0.000146s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p7
|   |   |   |   |   12.0:    	(0.009421s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p7; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.005281s|00.00%|00.01%)	(38x) true
|   |   |   |   |   20.0:    	(0.004581s|00.00%|00.01%)	(38x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.004586s|00.00%|00.01%)	(38x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.002911s|00.00%|00.01%)	(19x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p7
|   |   |   |   |   23.0:    	(0.152871s|00.01%|00.37%)	(38x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.004648s|00.00%|00.01%)	(38x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.004372s|00.00%|00.01%)	(36x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.004228s|00.00%|00.01%)	(36x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.004599s|00.00%|00.01%)	(36x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.050171s|00.00%|00.12%)	(36x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.004281s|00.00%|00.01%)	(36x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.004167s|00.00%|00.01%)	(36x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.006841s|00.00%|00.01%)	(36x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.002690s|00.00%|00.01%)	(18x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p7
|   |   |   |   |   48.0:    	(0.004113s|00.00%|00.00%)	(36x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.004208s|00.00%|00.01%)	(36x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(40.654574s|03.71%|98.95%)	(36x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003974s|00.00%|00.01%)	(36x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.889313s|00.26%|06.99%)	(36x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(5.371289s|00.49%|10.82%)	(36x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.985463s|00.36%|09.77%)	(36x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(5.216510s|00.47%|10.52%)	(36x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.930668s|00.35%|09.22%)	(36x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.500324s|00.22%|06.29%)	(36x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.961460s|00.08%|04.00%)	(36x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.614245s|00.23%|06.28%)	(36x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.792312s|00.07%|03.68%)	(36x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.043923s|00.27%|08.58%)	(36x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(7.580335s|00.69%|15.37%)	(36x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.919810s|00.08%|04.13%)	(36x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.844948s|00.07%|04.16%)	(36x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.006973s|00.00%|00.01%)	(34x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.004590s|00.00%|00.01%)	(34x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000087s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000580s|00.00%|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   8.0:    	(0.000297s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p8
|   |   |   |   |   12.0:    	(0.009193s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p8; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.016239s|00.00%|00.02%)	(116x) true
|   |   |   |   |   20.0:    	(0.014434s|00.00%|00.01%)	(116x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.014362s|00.00%|00.01%)	(116x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.004597s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p8
|   |   |   |   |   23.0:    	(0.730924s|00.06%|01.04%)	(116x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.017929s|00.00%|00.02%)	(116x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.006913s|00.00%|00.01%)	(58x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.007026s|00.00%|00.02%)	(58x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.007281s|00.00%|00.02%)	(58x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.077509s|00.00%|00.22%)	(58x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.007059s|00.00%|00.02%)	(58x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.013377s|00.00%|00.01%)	(112x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.009107s|00.00%|00.02%)	(58x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004390s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p8
|   |   |   |   |   48.0:    	(0.006816s|00.00%|00.01%)	(58x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.018964s|00.00%|00.02%)	(112x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(67.986277s|06.21%|97.92%)	(112x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.012675s|00.00%|00.01%)	(112x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.719849s|00.43%|07.01%)	(112x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(7.562087s|00.69%|10.35%)	(112x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.471140s|00.59%|09.57%)	(112x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.490172s|00.68%|10.23%)	(112x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.231513s|00.56%|09.13%)	(112x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.106310s|00.37%|06.26%)	(112x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.409222s|00.22%|04.24%)	(112x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.317952s|00.39%|06.28%)	(112x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.292366s|00.20%|04.08%)	(112x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.742487s|00.52%|08.74%)	(112x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(11.779867s|01.07%|14.90%)	(112x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.428035s|00.22%|04.46%)	(112x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.422602s|00.22%|04.54%)	(112x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.012968s|00.00%|00.01%)	(108x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.020635s|00.00%|00.02%)	(108x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000258s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   58.0:    	(0.000297s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   59.0:    	(0.000268s|00.00%|00.00%)	(2x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0:    	(0.000314s|00.00%|00.00%)	(2x) : > "/dev/shm/.forkrun.egLK7r"/.quit
|   |   |   |   |   62.0:    	(0.000414s|00.00%|00.00%)	(2x) printf '%.0s\n' "/dev/shm/.forkrun.egLK7r"/.run/p* 1>&20
|   |   |   |   |   63.0:    	(0.000277s|00.00%|00.00%)	(2x) break
|   |   |   |-- 138.0:        	(0.000079s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000570s|00.00%|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:    	(0.000292s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p9
|   |   |   |   |   12.0:    	(0.010603s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p9; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.001960s|00.00%|00.00%)	(15x) true
|   |   |   |   |   20.0:    	(0.001678s|00.00%|00.00%)	(15x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001672s|00.00%|00.00%)	(15x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.002179s|00.00%|00.01%)	(15x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p9
|   |   |   |   |   23.0:    	(0.110051s|00.01%|00.54%)	(15x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001774s|00.00%|00.00%)	(15x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.001589s|00.00%|00.00%)	(14x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.001571s|00.00%|00.00%)	(14x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001620s|00.00%|00.00%)	(14x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.013853s|00.00%|00.06%)	(14x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.001589s|00.00%|00.00%)	(14x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.001562s|00.00%|00.00%)	(14x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.001713s|00.00%|00.00%)	(14x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.002281s|00.00%|00.01%)	(14x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p9
|   |   |   |   |   48.0:    	(0.001500s|00.00%|00.00%)	(14x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.001560s|00.00%|00.00%)	(14x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(20.125553s|01.83%|98.98%)	(14x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001485s|00.00%|00.01%)	(14x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.415968s|00.12%|06.64%)	(14x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.719781s|00.24%|10.68%)	(14x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.055965s|00.18%|09.70%)	(14x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.784914s|00.25%|11.10%)	(14x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.040550s|00.18%|09.49%)	(14x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.261568s|00.11%|06.56%)	(14x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.420570s|00.03%|04.00%)	(14x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.323556s|00.12%|06.42%)	(14x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.332826s|00.03%|03.72%)	(14x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.382884s|00.12%|08.27%)	(14x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.668258s|00.33%|14.92%)	(14x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.373638s|00.03%|04.16%)	(14x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.343590s|00.03%|04.19%)	(14x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.004131s|00.00%|00.02%)	(13x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.001683s|00.00%|00.00%)	(13x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000584s|00.00%|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:    	(0.000085s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p10
|   |   |   |   |   12.0:    	(0.009207s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p10; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003796s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p10
|   |   |   |   |   47.0:    	(0.003666s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p10
|   |   |   |-- 138.0:        	(0.000081s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000613s|00.00%|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:    	(0.000088s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p11
|   |   |   |   |   12.0:    	(0.009721s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p11; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004335s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p11
|   |   |   |   |   28.0:    	(0.010531s|00.00%|00.01%)	(84x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.010074s|00.00%|00.01%)	(84x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.013896s|00.00%|00.02%)	(84x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.116806s|00.01%|00.22%)	(84x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.012956s|00.00%|00.02%)	(84x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   46.0:    	(0.023349s|00.00%|00.04%)	(84x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004196s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p11
|   |   |   |   |   48.0:    	(0.009816s|00.00%|00.01%)	(84x) [[ ${#A[@]} == 0 ]]
|   |   |   |-- 138.0:        	(0.000077s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000755s|00.00%|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |   8.0:    	(0.000132s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p12
|   |   |   |   |   12.0:    	(0.017679s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p12; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004100s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p12
|   |   |   |   |   47.0:    	(0.004063s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p12
|   |   |   |   |   68.1:    	(0.008932s|00.00%|00.01%)	(75x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.013126s|00.00%|00.01%)	(75x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000135s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000902s|00.00%|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   8.0:    	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p13
|   |   |   |   |   12.0:    	(0.010751s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p13; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003284s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p13
|   |   |   |   |   47.0:    	(0.005918s|00.00%|00.03%)	(20x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p13
|   |   |   |-- 138.0:        	(0.000120s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000882s|00.00%|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p14
|   |   |   |   |   12.0:    	(0.009743s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p14; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.004239s|00.00%|00.02%)	(31x) true
|   |   |   |   |   20.0:    	(0.003533s|00.00%|00.01%)	(31x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003658s|00.00%|00.01%)	(31x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.004750s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p14
|   |   |   |   |   23.0:    	(0.286817s|00.02%|01.38%)	(31x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.004038s|00.00%|00.01%)	(31x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.007172s|00.00%|00.01%)	(60x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.007131s|00.00%|00.01%)	(60x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.007348s|00.00%|00.01%)	(60x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.085547s|00.00%|00.22%)	(60x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.007050s|00.00%|00.01%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.003555s|00.00%|00.01%)	(30x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.014929s|00.00%|00.03%)	(60x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004482s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p14
|   |   |   |   |   48.0:    	(0.006897s|00.00%|00.01%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.006440s|00.00%|00.03%)	(30x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(20.193779s|01.84%|97.81%)	(30x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003285s|00.00%|00.01%)	(30x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.511954s|00.13%|07.11%)	(30x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.305651s|00.21%|10.39%)	(30x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.846560s|00.16%|09.32%)	(30x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.254485s|00.20%|10.27%)	(30x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.832406s|00.16%|09.25%)	(30x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.316960s|00.12%|06.51%)	(30x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.657943s|00.06%|04.18%)	(30x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.371174s|00.12%|06.54%)	(30x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.576900s|00.05%|03.88%)	(30x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.631280s|00.14%|08.47%)	(30x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.588102s|00.32%|15.06%)	(30x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.667497s|00.06%|04.49%)	(30x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.629582s|00.05%|04.39%)	(30x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:        	(0.000130s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000903s|00.00%|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:    	(0.000091s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p15
|   |   |   |   |   12.0:    	(0.010145s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p15; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003073s|00.00%|00.01%)	(20x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p15
|   |   |   |   |   47.0:    	(0.002851s|00.00%|00.01%)	(19x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p15
|   |   |   |-- 138.0:        	(0.000138s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000911s|00.00%|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p16
|   |   |   |   |   12.0:    	(0.017259s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p16; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004183s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p16
|   |   |   |   |   47.0:    	(0.003947s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p16
|   |   |   |-- 138.0:        	(0.000128s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000997s|00.00%|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   8.0:    	(0.000134s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p17
|   |   |   |   |   12.0:    	(0.018788s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p17; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.009082s|00.00%|00.02%)	(60x) true
|   |   |   |   |   20.0:    	(0.007346s|00.00%|00.02%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.007424s|00.00%|00.02%)	(60x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.004765s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p17
|   |   |   |   |   23.0:    	(0.406736s|00.03%|01.18%)	(60x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.007788s|00.00%|00.02%)	(60x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   33.1:    	(0.006844s|00.00%|00.01%)	(58x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.004561s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p17
|   |   |   |   |   68.0:    	(0.009720s|00.00%|00.02%)	(58x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(33.311212s|03.04%|97.58%)	(58x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006499s|00.00%|00.01%)	(58x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.278591s|00.20%|06.90%)	(58x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(3.693848s|00.33%|10.38%)	(58x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.139350s|00.28%|09.44%)	(58x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.601517s|00.32%|10.09%)	(58x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.068679s|00.28%|09.12%)	(58x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.081557s|00.19%|06.48%)	(58x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.283677s|00.11%|04.44%)	(58x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.116804s|00.19%|06.30%)	(58x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.154946s|00.10%|04.27%)	(58x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.864885s|00.26%|08.94%)	(58x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(5.521966s|00.50%|14.32%)	(58x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.264250s|00.11%|04.59%)	(58x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.234643s|00.11%|04.55%)	(58x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.006723s|00.00%|00.01%)	(56x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.017176s|00.00%|00.04%)	(56x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000133s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000989s|00.00%|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:    	(0.000136s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p18
|   |   |   |   |   12.0:    	(0.010358s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p18; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004726s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p18
|   |   |   |   |   47.0:    	(0.004298s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p18
|   |   |   |-- 138.0:        	(0.000128s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000993s|00.00%|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p19
|   |   |   |   |   12.0:    	(0.012912s|00.00%|00.07%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p19; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.007702s|00.00%|00.02%)	(56x) true
|   |   |   |   |   20.0:    	(0.006794s|00.00%|00.01%)	(56x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.006889s|00.00%|00.01%)	(56x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.004219s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p19
|   |   |   |   |   23.0:    	(0.354569s|00.03%|01.00%)	(56x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.007082s|00.00%|00.01%)	(56x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.008773s|00.00%|00.02%)	(54x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.006582s|00.00%|00.01%)	(54x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.006977s|00.00%|00.01%)	(54x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.086366s|00.00%|00.24%)	(54x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.006333s|00.00%|00.01%)	(54x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.009591s|00.00%|00.02%)	(54x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.015371s|00.00%|00.04%)	(54x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004056s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p19
|   |   |   |   |   48.0:    	(0.006467s|00.00%|00.01%)	(54x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.006327s|00.00%|00.01%)	(54x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(34.463243s|03.14%|97.80%)	(54x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006134s|00.00%|00.02%)	(54x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.340464s|00.21%|06.95%)	(54x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(3.916301s|00.35%|10.19%)	(54x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.369006s|00.30%|09.73%)	(54x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.948281s|00.36%|10.20%)	(54x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.164979s|00.28%|09.12%)	(54x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.083050s|00.19%|06.38%)	(54x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.133485s|00.10%|04.31%)	(54x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.212052s|00.20%|06.52%)	(54x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.054460s|00.09%|04.21%)	(54x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.864599s|00.26%|08.71%)	(54x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.098719s|00.55%|14.41%)	(54x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.144427s|00.10%|04.50%)	(54x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.127286s|00.10%|04.58%)	(54x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.008394s|00.00%|00.02%)	(52x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.010117s|00.00%|00.02%)	(52x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000128s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.000993s|00.00%|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:    	(0.000132s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p20
|   |   |   |   |   12.0:    	(0.017073s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p20; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003080s|00.00%|00.01%)	(19x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p20
|   |   |   |   |   47.0:    	(0.005771s|00.00%|00.02%)	(18x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p20
|   |   |   |-- 138.0:        	(0.000137s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.000955s|00.00%|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:    	(0.000144s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p21
|   |   |   |   |   12.0:    	(0.019719s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p21; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.005448s|00.00%|00.03%)	(18x) true
|   |   |   |   |   20.0:    	(0.005186s|00.00%|00.02%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002206s|00.00%|00.01%)	(18x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.002648s|00.00%|00.01%)	(18x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p21
|   |   |   |   |   23.0:    	(0.100088s|00.00%|00.55%)	(18x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002183s|00.00%|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.002134s|00.00%|00.01%)	(17x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.001981s|00.00%|00.01%)	(17x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002157s|00.00%|00.01%)	(17x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.019112s|00.00%|00.10%)	(17x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.001959s|00.00%|00.01%)	(17x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.001933s|00.00%|00.01%)	(17x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.002063s|00.00%|00.01%)	(17x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.002647s|00.00%|00.01%)	(17x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p21
|   |   |   |   |   48.0:    	(0.001932s|00.00%|00.01%)	(17x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.003202s|00.00%|00.01%)	(17x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(17.716964s|01.61%|98.64%)	(17x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001849s|00.00%|00.01%)	(17x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.174376s|00.10%|06.91%)	(17x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.149082s|00.19%|10.92%)	(17x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.668198s|00.15%|09.27%)	(17x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.159706s|00.19%|10.91%)	(17x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.663630s|00.15%|09.23%)	(17x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.094294s|00.09%|06.76%)	(17x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.436907s|00.03%|03.56%)	(17x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.129398s|00.10%|06.35%)	(17x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.386144s|00.03%|03.38%)	(17x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.455059s|00.13%|08.49%)	(17x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.576627s|00.32%|16.93%)	(17x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.402361s|00.03%|03.53%)	(17x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.419333s|00.03%|03.61%)	(17x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.001904s|00.00%|00.01%)	(16x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.003169s|00.00%|00.01%)	(16x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000130s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.000976s|00.00%|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:    	(0.000142s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p22
|   |   |   |   |   12.0:    	(0.017757s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p22; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004290s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p22
|   |   |   |   |   47.0:    	(0.003956s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p22
|   |   |   |-- 138.0:        	(0.000143s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.000992s|00.00%|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:    	(0.000130s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p23
|   |   |   |   |   12.0:    	(0.018406s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p23; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004341s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p23
|   |   |   |   |   47.0:    	(0.004383s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p23
|   |   |   |-- 138.0:        	(0.000132s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.001000s|00.00%|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:    	(0.000141s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p24
|   |   |   |   |   12.0:    	(0.018456s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p24; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.003613s|00.00%|00.02%)	(26x) true
|   |   |   |   |   20.0:    	(0.003277s|00.00%|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003228s|00.00%|00.01%)	(26x) read -r < "/dev/shm/.forkrun.egLK7r"/.nLines
|   |   |   |   |   22.0:    	(0.004158s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p24
|   |   |   |   |   23.0:    	(0.175844s|00.01%|01.02%)	(26x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.003369s|00.00%|00.01%)	(26x) [[ -f "/dev/shm/.forkrun.egLK7r"/.quit ]]
|   |   |   |   |   28.0:    	(0.003050s|00.00%|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.egLK7r"/.done ]]
|   |   |   |   |   28.1:    	(0.003034s|00.00%|00.01%)	(25x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.003232s|00.00%|00.01%)	(25x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.032761s|00.00%|00.19%)	(25x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.003032s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.002973s|00.00%|00.01%)	(25x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.006375s|00.00%|00.03%)	(25x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004005s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p24
|   |   |   |   |   48.0:    	(0.003079s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.002990s|00.00%|00.01%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(16.874026s|01.54%|97.88%)	(25x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002725s|00.00%|00.02%)	(25x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.154204s|00.10%|07.16%)	(25x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(1.921968s|00.17%|10.27%)	(25x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.637380s|00.14%|10.01%)	(25x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(1.928417s|00.17%|09.95%)	(25x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.512988s|00.13%|08.81%)	(25x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.007137s|00.09%|06.34%)	(25x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.555658s|00.05%|04.38%)	(25x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.117083s|00.10%|06.56%)	(25x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.488200s|00.04%|04.16%)	(25x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.373773s|00.12%|08.46%)	(25x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.079038s|00.28%|14.24%)	(25x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.569782s|00.05%|04.85%)	(25x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.525673s|00.04%|04.65%)	(25x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:        	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.000965s|00.00%|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:    	(0.000153s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p25
|   |   |   |   |   12.0:    	(0.018915s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p25; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004591s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p25
|   |   |   |   |   47.0:    	(0.004338s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p25
|   |   |   |-- 138.0:        	(0.000139s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001023s|00.00%|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:    	(0.000158s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p26
|   |   |   |   |   12.0:    	(0.019419s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p26; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003970s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p26
|   |   |   |   |   47.0:    	(0.003669s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p26
|   |   |   |-- 138.0:        	(0.000135s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001012s|00.00%|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:    	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.egLK7r"/.run/p27
|   |   |   |   |   12.0:    	(0.024084s|00.00%|00.14%)	(1x) trap ': >"/dev/shm/.forkrun.egLK7r"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.egLK7r"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.egLK7r"/.run/p27; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004676s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.egLK7r"/.wait/p27
|   |   |   |   |   47.0:    	(0.004480s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.egLK7r"/.wait/p27
|   |   |   |-- 138.0:        	(0.000134s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000136s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000135s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000110s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000109s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001127s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000109s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000101s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000102s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.255755s|02.12%|04.26%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000130s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000127s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -223.0:            	(0.000150s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -222.0:            	(0.000149s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.0:            	(0.001833s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.1:            	(0.004600s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -221.0:        	(0.004600s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -220.0:            	(0.000077s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.0:            	(0.001572s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.1:            	(0.003750s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -219.0:        	(0.003750s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -218.0:            	(0.000083s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.0:            	(0.000607s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.1:            	(0.002152s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -217.0:        	(0.002152s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -216.0:            	(0.015039s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000098s|00.00%|00.00%)	(1x) wait
|-- |-- -223.0:                	(0.001635s|00.00%|00.00%)	(1x) wait (?)

1.0:                        	(548.854000s|50.14%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:                    	(0.000566s|00.00%|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   347.0:                    	(548.853434s|50.14%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 347.0:                	(0.018138s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000097s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000071s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000121s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000094s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000076s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000071s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000068s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000058s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000062s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000149s|00.00%|00.00%)	(2x) ${optParseFlag}
|   |   81.1:                	(0.000150s|00.00%|00.00%)	(2x) (( $# > 0  ))
|   |   81.2:                	(0.000125s|00.00%|00.00%)	(2x) [[ "$1" == [-+]* ]]
|   |   82.0:                	(0.000099s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:                	(0.000070s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:                	(0.000060s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:                	(0.000082s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:                	(0.000091s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:                	(0.000070s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000062s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000069s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000061s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000060s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.001037s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.003471s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.003471s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000065s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.002451s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000081s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000059s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.012999s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(548.811291s|50.14%|99.99%)	(1x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000070s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000072s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.000689s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:            	(0.000160s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000238s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000072s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000073s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000074s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000075s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000066s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000067s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000189s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000070s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000062s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000064s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000063s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000070s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000075s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000078s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000064s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000063s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.000568s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000105s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000105s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000070s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000068s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000067s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000062s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000062s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000061s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000068s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000086s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000067s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000061s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000068s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000068s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000063s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000066s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000067s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000788s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000063s|00.00%|07.99%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000062s|00.00%|07.86%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000062s|00.00%|07.86%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000062s|00.00%|07.86%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000061s|00.00%|07.74%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000064s|00.00%|08.12%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000061s|00.00%|07.74%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000106s|00.00%|13.45%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000059s|00.00%|07.48%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000060s|00.00%|07.61%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000062s|00.00%|07.86%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000066s|00.00%|08.37%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000062s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.000741s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.002287s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000242s|00.00%|10.58%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.002045s|00.00%|89.41%)	(1x) nproc
|   |   |   441.0:            	(0.000067s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000064s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000061s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000062s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000061s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000064s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000075s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000074s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000059s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000060s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000062s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000062s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000066s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000140s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000060s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000062s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000062s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000071s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000061s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000071s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000061s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:            	(0.000061s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:            	(0.000063s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:            	(0.000063s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000103s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:            	(0.000071s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:            	(0.002810s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   485.0:            	(0.000066s|00.00%|00.00%)	(1x) ddQuietStr='status=none'
|   |   |   492.0:            	(0.000063s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000061s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000068s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:            	(0.000064s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.000571s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:            	(0.000085s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000085s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000066s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000064s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000061s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001735s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000065s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000066s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000062s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000066s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000081s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000071s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000063s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000063s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000512s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:            	(0.065636s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000256s|00.00%|00.39%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.008871s|00.00%|13.51%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.009418s|00.00%|14.34%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.009521s|00.00%|14.50%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.009554s|00.00%|14.55%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.009466s|00.00%|14.42%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000061s|00.00%|00.09%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.018263s|00.00%|27.82%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000095s|00.00%|00.14%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000067s|00.00%|00.10%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000064s|00.00%|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000067s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000063s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000065s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000062s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000387s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:            	(6.724584s|00.61%|01.22%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000083s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.009126s|00.00%|00.13%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.009421s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.009500s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.009567s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.010043s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000063s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000063s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000061s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000068s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.079191s|00.00%|01.17%)	(676x) ${fallocateFlag}
|   |   |   |   702.0:        	(5.383023s|00.49%|80.04%)	(675x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001369s|00.00%|00.02%)	(10x) continue
|   |   |   |   704.0:        	(0.075424s|00.00%|01.12%)	(665x) case ${REPLY} in
|   |   |   |   718.0:        	(0.097870s|00.00%|01.45%)	(665x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000063s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000070s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.082710s|00.00%|01.22%)	(665x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.111122s|00.01%|01.65%)	(665x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.080102s|00.00%|01.19%)	(665x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.082427s|00.00%|01.22%)	(665x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.076829s|00.00%|01.14%)	(665x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.076619s|00.00%|01.13%)	(665x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.073732s|00.00%|01.09%)	(665x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000067s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000065s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.000627s|00.00%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:        	(0.002482s|00.00%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002481s|00.00%|99.95%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000067s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000064s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000067s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000065s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000063s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000062s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000063s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000083s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000063s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000068s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.076328s|00.00%|01.13%)	(665x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.072842s|00.00%|01.08%)	(665x) case ${nWait} in
|   |   |   |   778.0:        	(0.071895s|00.00%|01.06%)	(644x) ((nWait--))
|   |   |   |   783.0:        	(0.076321s|00.00%|01.13%)	(665x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.082269s|00.00%|01.22%)	(664x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002500s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002304s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.058248s|00.00%|00.86%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002382s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002411s|00.00%|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002482s|00.00%|00.03%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000101s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000100s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000107s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000110s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000115s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -223.0:        	(0.000114s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -223.1:        	(0.001503s|00.00%|00.02%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000077s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000093s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000079s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.001242s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.014424s|00.00%|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000187s|00.00%|03.59%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000119s|00.00%|02.29%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000149s|00.00%|02.86%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000413s|00.00%|07.94%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000116s|00.00%|02.23%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000113s|00.00%|02.17%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000118s|00.00%|02.27%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000062s|00.00%|01.19%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000059s|00.00%|01.13%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000065s|00.00%|01.25%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000067s|00.00%|01.28%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000059s|00.00%|01.13%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000063s|00.00%|01.21%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000066s|00.00%|01.27%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000061s|00.00%|01.17%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000063s|00.00%|01.21%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000060s|00.00%|01.15%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000062s|00.00%|01.19%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:        	(0.000065s|00.00%|01.25%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:        	(0.000066s|00.00%|01.27%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000060s|00.00%|01.15%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000062s|00.00%|01.19%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000095s|00.00%|01.82%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:        	(0.000061s|00.00%|01.17%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000072s|00.00%|01.38%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000070s|00.00%|01.34%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:        	(0.000067s|00.00%|01.28%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000082s|00.00%|01.57%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000063s|00.00%|01.21%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000074s|00.00%|01.42%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000074s|00.00%|01.42%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000060s|00.00%|01.15%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000067s|00.00%|01.28%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000065s|00.00%|01.25%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000065s|00.00%|01.25%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000088s|00.00%|01.69%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000064s|00.00%|01.23%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000089s|00.00%|01.71%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000063s|00.00%|01.21%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000070s|00.00%|01.34%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000061s|00.00%|01.17%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000067s|00.00%|01.28%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000062s|00.00%|01.19%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000076s|00.00%|01.46%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000060s|00.00%|01.15%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000085s|00.00%|01.63%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:        	(0.000061s|00.00%|01.17%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000083s|00.00%|01.59%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000061s|00.00%|01.17%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000070s|00.00%|01.34%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000095s|00.00%|01.82%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000088s|00.00%|01.69%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000061s|00.00%|01.17%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000065s|00.00%|01.25%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000059s|00.00%|01.13%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000058s|00.00%|01.11%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000080s|00.00%|01.53%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000067s|00.00%|01.28%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000064s|00.00%|01.23%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000062s|00.00%|01.19%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000078s|00.00%|01.50%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000067s|00.00%|01.28%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000065s|00.00%|01.25%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000064s|00.00%|01.23%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000093s|00.00%|01.78%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000178s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000163s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000158s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.009608s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.009500s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.009476s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000066s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000065s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000062s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000070s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000066s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002507s|00.00%|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002566s|00.00%|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002363s|00.00%|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(518.494816s|47.37%|94.47%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000573s|00.00%|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:        	(518.470312s|47.37%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:    	(0.004160s|00.00%|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.kL4TBQ"
|   |   |   |   |   8.0:    	(0.000112s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p0
|   |   |   |   |   12.0:    	(0.009266s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p0; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:    	(0.410238s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 136787 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.415855s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 136787 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.421019s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 136787 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.422325s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.008204s|00.00%|00.02%)	(60x) true
|   |   |   |   |   20.0:    	(0.007142s|00.00%|00.01%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.007096s|00.00%|00.01%)	(60x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   20.2:    	(0.000633s|00.00%|00.00%)	(8x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.000640s|00.00%|00.00%)	(8x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.006920s|00.00%|00.03%)	(30x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p0
|   |   |   |   |   23.0:    	(0.173588s|00.01%|00.47%)	(60x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.007254s|00.00%|00.01%)	(60x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.006676s|00.00%|00.01%)	(58x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.009806s|00.00%|00.02%)	(58x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.007150s|00.00%|00.01%)	(58x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.083974s|00.00%|00.22%)	(58x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.010623s|00.00%|00.02%)	(58x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.004272s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p0
|   |   |   |   |   36.0:    	(0.006873s|00.00%|00.01%)	(58x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.011769s|00.00%|00.03%)	(58x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.000701s|00.00%|00.00%)	(8x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.000617s|00.00%|00.00%)	(8x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(36.572803s|03.34%|98.66%)	(58x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006387s|00.00%|00.02%)	(58x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.650275s|00.24%|07.38%)	(58x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.045524s|00.36%|10.21%)	(58x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.461301s|00.31%|09.46%)	(58x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.071582s|00.37%|10.21%)	(58x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.384346s|00.30%|09.17%)	(58x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.260907s|00.20%|06.38%)	(58x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.278796s|00.11%|04.43%)	(58x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.341820s|00.21%|06.28%)	(58x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.136914s|00.10%|04.07%)	(58x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.064269s|00.27%|08.66%)	(58x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.451163s|00.58%|14.93%)	(58x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.240377s|00.11%|04.36%)	(58x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.179142s|00.10%|04.26%)	(58x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:    	(0.002661s|00.00%|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   56.1:    	(0.009339s|00.00%|00.01%)	(81x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.013711s|00.00%|00.01%)	(81x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002296s|00.00%|00.00%)	(26x) printf '\n' 1>&20
|   |   |   |   |   26.0:    	(0.002549s|00.00%|00.00%)	(26x) break
|   |   |   |   |   2.0:    	(0.002980s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.0:    	(0.002578s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.1:    	(0.049613s|00.00%|00.00%)	(28x) break
|   |   |   |   |-- 4.0:    	(0.002831s|00.00%|00.00%)	(28x) break
|   |   |   |-- 126.0:        	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000537s|00.00%|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:    	(0.001257s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p1
|   |   |   |   |   12.0:    	(0.009992s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p1; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.014895s|00.00%|00.01%)	(108x) true
|   |   |   |   |   20.0:    	(0.012884s|00.00%|00.01%)	(108x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.013061s|00.00%|00.01%)	(108x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.008254s|00.00%|00.02%)	(54x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p1
|   |   |   |   |   23.0:    	(0.495219s|00.04%|00.68%)	(108x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.013766s|00.00%|00.01%)	(108x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.009771s|00.00%|00.01%)	(78x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.009225s|00.00%|00.01%)	(78x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.009474s|00.00%|00.01%)	(78x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.095612s|00.00%|00.16%)	(78x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.016750s|00.00%|00.02%)	(78x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003702s|00.00%|00.01%)	(26x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p1
|   |   |   |   |   36.0:    	(0.008907s|00.00%|00.01%)	(78x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.011917s|00.00%|00.01%)	(104x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(71.603356s|06.54%|98.42%)	(104x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.011257s|00.00%|00.01%)	(104x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(5.005830s|00.45%|07.13%)	(104x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(8.366575s|00.76%|10.44%)	(104x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.802743s|00.62%|09.60%)	(104x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.996709s|00.73%|10.06%)	(104x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.468763s|00.59%|08.99%)	(104x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.419775s|00.40%|06.40%)	(104x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.289198s|00.20%|04.14%)	(104x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.593091s|00.41%|06.32%)	(104x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.179897s|00.19%|04.14%)	(104x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.994161s|00.54%|08.86%)	(104x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(12.974615s|01.18%|14.90%)	(104x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.259946s|00.20%|04.36%)	(104x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.240796s|00.20%|04.44%)	(104x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.005512s|00.00%|00.01%)	(48x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.006262s|00.00%|00.01%)	(48x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000100s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000536s|00.00%|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   8.0:    	(0.001461s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p2
|   |   |   |   |   12.0:    	(0.009871s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p2; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.010317s|00.00%|00.01%)	(75x) true
|   |   |   |   |   20.0:    	(0.008828s|00.00%|00.01%)	(75x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.008997s|00.00%|00.01%)	(75x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.007580s|00.00%|00.01%)	(50x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p2
|   |   |   |   |   23.0:    	(0.272429s|00.02%|00.45%)	(75x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.009364s|00.00%|00.01%)	(75x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.008804s|00.00%|00.01%)	(72x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.008417s|00.00%|00.01%)	(72x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.008913s|00.00%|00.01%)	(72x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.090503s|00.00%|00.14%)	(72x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.015670s|00.00%|00.02%)	(72x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.007263s|00.00%|00.01%)	(48x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p2
|   |   |   |   |   36.0:    	(0.008300s|00.00%|00.01%)	(72x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.008288s|00.00%|00.01%)	(72x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(59.151336s|05.40%|98.80%)	(72x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.007959s|00.00%|00.01%)	(72x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.164471s|00.38%|06.80%)	(72x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(7.228021s|00.66%|10.50%)	(72x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(5.762778s|00.52%|09.72%)	(72x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.054542s|00.64%|10.34%)	(72x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(5.506671s|00.50%|09.07%)	(72x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.758982s|00.34%|06.38%)	(72x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.725889s|00.15%|04.08%)	(72x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.919574s|00.35%|06.47%)	(72x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.449688s|00.13%|03.78%)	(72x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.654966s|00.42%|08.61%)	(72x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(10.623823s|00.97%|15.50%)	(72x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.682625s|00.15%|04.30%)	(72x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.611347s|00.14%|04.26%)	(72x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.007932s|00.00%|00.01%)	(66x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.010161s|00.00%|00.01%)	(66x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000077s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000544s|00.00%|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:    	(0.000081s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p3
|   |   |   |   |   12.0:    	(0.009042s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p3; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.006085s|00.00%|00.01%)	(46x) true
|   |   |   |   |   20.0:    	(0.008407s|00.00%|00.01%)	(46x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.005501s|00.00%|00.01%)	(46x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.003467s|00.00%|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p3
|   |   |   |   |   23.0:    	(0.192692s|00.01%|00.48%)	(46x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005703s|00.00%|00.01%)	(46x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.005253s|00.00%|00.01%)	(44x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.005242s|00.00%|00.01%)	(44x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.005366s|00.00%|00.01%)	(44x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.050969s|00.00%|00.12%)	(44x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.007054s|00.00%|00.01%)	(44x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003341s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p3
|   |   |   |   |   36.0:    	(0.005066s|00.00%|00.01%)	(44x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.005035s|00.00%|00.01%)	(44x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(38.827782s|03.54%|98.90%)	(44x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004806s|00.00%|00.02%)	(44x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.695693s|00.24%|06.79%)	(44x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.785582s|00.43%|10.89%)	(44x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.583144s|00.32%|09.49%)	(44x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.613169s|00.42%|10.65%)	(44x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.455703s|00.31%|08.93%)	(44x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.379950s|00.21%|06.47%)	(44x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.037648s|00.09%|03.75%)	(44x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.547494s|00.23%|06.53%)	(44x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.986215s|00.09%|03.75%)	(44x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.243089s|00.29%|08.85%)	(44x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(7.447540s|00.68%|15.90%)	(44x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.071237s|00.09%|03.97%)	(44x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.976512s|00.08%|03.83%)	(44x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.002247s|00.00%|00.01%)	(20x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.002646s|00.00%|00.01%)	(20x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000079s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000529s|00.00%|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:    	(0.000091s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p4
|   |   |   |   |   12.0:    	(0.009163s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p4; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   20.2:    	(0.002254s|00.00%|00.00%)	(24x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002277s|00.00%|00.00%)	(24x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003522s|00.00%|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p4
|   |   |   |   |   35.0:    	(0.003324s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p4
|   |   |   |   |   57.0:    	(0.002478s|00.00%|00.00%)	(24x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.002155s|00.00%|00.00%)	(24x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   56.1:    	(0.002423s|00.00%|00.01%)	(21x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.002704s|00.00%|00.01%)	(21x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000076s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000535s|00.00%|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:    	(0.000302s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p5
|   |   |   |   |   12.0:    	(0.009731s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p5; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004020s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p5
|   |   |   |   |   35.0:    	(0.003830s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p5
|   |   |   |   |   56.1:    	(0.008728s|00.00%|00.01%)	(75x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.010018s|00.00%|00.01%)	(75x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000569s|00.00%|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   8.0:    	(0.000126s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p6
|   |   |   |   |   12.0:    	(0.011771s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p6; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003826s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p6
|   |   |   |   |   35.0:    	(0.003574s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p6
|   |   |   |   |   56.1:    	(0.005289s|00.00%|00.01%)	(46x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.009686s|00.00%|00.02%)	(46x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000081s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000559s|00.00%|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p7
|   |   |   |   |   12.0:    	(0.009309s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p7; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.015354s|00.00%|00.02%)	(112x) true
|   |   |   |   |   20.0:    	(0.015488s|00.00%|00.01%)	(112x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.013726s|00.00%|00.01%)	(112x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.004320s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p7
|   |   |   |   |   23.0:    	(0.359717s|00.03%|00.50%)	(112x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.014290s|00.00%|00.01%)	(112x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.010163s|00.00%|00.01%)	(84x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.009810s|00.00%|00.01%)	(84x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.011863s|00.00%|00.01%)	(84x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.111387s|00.01%|00.20%)	(84x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.023743s|00.00%|00.03%)	(84x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.004213s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p7
|   |   |   |   |   36.0:    	(0.009708s|00.00%|00.01%)	(84x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.012572s|00.00%|00.01%)	(108x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(68.760190s|06.28%|98.46%)	(108x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.015097s|00.00%|00.02%)	(108x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.803685s|00.43%|07.15%)	(108x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(7.659814s|00.69%|10.24%)	(108x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.794755s|00.62%|09.80%)	(108x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.614499s|00.69%|10.12%)	(108x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.421235s|00.58%|09.10%)	(108x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.162267s|00.38%|06.29%)	(108x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.386752s|00.21%|04.36%)	(108x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.389069s|00.40%|06.36%)	(108x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.139630s|00.19%|04.06%)	(108x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.734684s|00.52%|08.76%)	(108x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(11.916960s|01.08%|14.56%)	(108x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.385238s|00.21%|04.52%)	(108x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.336505s|00.21%|04.48%)	(108x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.012315s|00.00%|00.01%)	(104x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.025145s|00.00%|00.03%)	(104x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   37.0:    	(0.000216s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.000275s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.000253s|00.00%|00.00%)	(2x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000270s|00.00%|00.00%)	(2x) : > "/dev/shm/.forkrun.kL4TBQ"/.quit
|   |   |   |   |   50.0:    	(0.000391s|00.00%|00.00%)	(2x) printf '%.0s\n' "/dev/shm/.forkrun.kL4TBQ"/.run/p* 1>&20
|   |   |   |   |   51.0:    	(0.000244s|00.00%|00.00%)	(2x) break
|   |   |   |-- 126.0:        	(0.000081s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000572s|00.00%|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   8.0:    	(0.000298s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p8
|   |   |   |   |   12.0:    	(0.009253s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p8; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004228s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p8
|   |   |   |   |   28.0:    	(0.017208s|00.00%|00.01%)	(108x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.013071s|00.00%|00.01%)	(108x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.013681s|00.00%|00.01%)	(108x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.154023s|00.01%|00.21%)	(108x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.024509s|00.00%|00.03%)	(108x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003999s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p8
|   |   |   |   |   36.0:    	(0.014072s|00.00%|00.01%)	(108x) [[ ${#A[@]} == 0 ]]
|   |   |   |-- 126.0:        	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000571s|00.00%|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:    	(0.000304s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p9
|   |   |   |   |   12.0:    	(0.010983s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p9; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.007921s|00.00%|00.01%)	(58x) true
|   |   |   |   |   20.0:    	(0.007088s|00.00%|00.01%)	(58x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.007059s|00.00%|00.01%)	(58x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.004497s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p9
|   |   |   |   |   23.0:    	(0.187731s|00.01%|00.50%)	(58x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.007380s|00.00%|00.01%)	(58x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   35.0:    	(0.004209s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p9
|   |   |   |   |   56.0:    	(0.006562s|00.00%|00.01%)	(56x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(37.364378s|03.41%|98.56%)	(56x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006350s|00.00%|00.01%)	(56x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.768603s|00.25%|07.12%)	(56x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.298980s|00.39%|10.62%)	(56x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.539261s|00.32%|09.60%)	(56x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.222397s|00.38%|10.55%)	(56x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.384395s|00.30%|09.12%)	(56x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.347825s|00.21%|06.41%)	(56x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.233857s|00.11%|04.00%)	(56x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.413818s|00.22%|06.28%)	(56x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.090023s|00.09%|03.70%)	(56x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.131823s|00.28%|08.60%)	(56x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.487802s|00.59%|15.31%)	(56x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.248610s|00.11%|04.34%)	(56x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.190634s|00.10%|04.15%)	(56x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:        	(0.000081s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000614s|00.00%|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:    	(0.000112s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p10
|   |   |   |   |   12.0:    	(0.009286s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p10; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.006672s|00.00%|00.01%)	(48x) true
|   |   |   |   |   20.0:    	(0.008826s|00.00%|00.02%)	(48x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.005947s|00.00%|00.01%)	(48x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.006534s|00.00%|00.03%)	(24x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p10
|   |   |   |   |   23.0:    	(0.082180s|00.00%|00.21%)	(48x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005912s|00.00%|00.01%)	(48x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.010867s|00.00%|00.02%)	(46x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.005547s|00.00%|00.01%)	(46x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.005834s|00.00%|00.01%)	(46x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.070059s|00.00%|00.18%)	(46x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.011303s|00.00%|00.02%)	(46x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003452s|00.00%|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p10
|   |   |   |   |   36.0:    	(0.005475s|00.00%|00.01%)	(46x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.008415s|00.00%|00.02%)	(46x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(37.063102s|03.38%|98.89%)	(46x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.005069s|00.00%|00.01%)	(46x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.714867s|00.24%|07.13%)	(46x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.573930s|00.41%|10.32%)	(46x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.648771s|00.33%|09.59%)	(46x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.524475s|00.41%|10.30%)	(46x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.612699s|00.33%|09.10%)	(46x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.368144s|00.21%|06.48%)	(46x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.107416s|00.10%|04.31%)	(46x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.360298s|00.21%|06.14%)	(46x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.943343s|00.08%|04.01%)	(46x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.874893s|00.26%|08.93%)	(46x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.268923s|00.57%|14.51%)	(46x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.043835s|00.09%|04.42%)	(46x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.016439s|00.09%|04.56%)	(46x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:        	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000602s|00.00%|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p11
|   |   |   |   |   12.0:    	(0.011441s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p11; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002423s|00.00%|00.01%)	(18x) true
|   |   |   |   |   20.0:    	(0.002164s|00.00%|00.01%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002155s|00.00%|00.01%)	(18x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.002653s|00.00%|00.01%)	(18x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p11
|   |   |   |   |   23.0:    	(0.049527s|00.00%|00.26%)	(18x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002372s|00.00%|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.002089s|00.00%|00.01%)	(17x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.005111s|00.00%|00.02%)	(17x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002232s|00.00%|00.01%)	(17x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.021662s|00.00%|00.11%)	(17x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.005311s|00.00%|00.02%)	(17x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.005656s|00.00%|00.03%)	(17x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p11
|   |   |   |   |   36.0:    	(0.001978s|00.00%|00.01%)	(17x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.001950s|00.00%|00.01%)	(17x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(18.330721s|01.67%|98.99%)	(17x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001896s|00.00%|00.01%)	(17x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.217979s|00.11%|06.88%)	(17x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.188598s|00.19%|10.32%)	(17x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.713489s|00.15%|09.49%)	(17x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.195233s|00.20%|10.17%)	(17x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.671540s|00.15%|08.61%)	(17x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.152285s|00.10%|06.79%)	(17x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.462408s|00.04%|04.34%)	(17x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.177365s|00.10%|06.25%)	(17x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.409118s|00.03%|03.93%)	(17x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.534516s|00.14%|09.06%)	(17x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.736227s|00.34%|15.35%)	(17x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.443316s|00.04%|04.28%)	(17x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.426751s|00.03%|04.37%)	(17x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.002710s|00.00%|00.01%)	(16x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.002168s|00.00%|00.01%)	(16x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000619s|00.00%|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |   8.0:    	(0.000087s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p12
|   |   |   |   |   12.0:    	(0.009273s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p12; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002099s|00.00%|00.01%)	(16x) true
|   |   |   |   |   20.0:    	(0.001862s|00.00%|00.00%)	(16x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001876s|00.00%|00.01%)	(16x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.002297s|00.00%|00.01%)	(16x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p12
|   |   |   |   |   23.0:    	(0.082467s|00.00%|00.44%)	(16x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001821s|00.00%|00.00%)	(16x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.001716s|00.00%|00.00%)	(15x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.001688s|00.00%|00.00%)	(15x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001809s|00.00%|00.00%)	(15x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.017784s|00.00%|00.09%)	(15x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.002957s|00.00%|00.01%)	(15x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.002180s|00.00%|00.01%)	(15x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p12
|   |   |   |   |   36.0:    	(0.001654s|00.00%|00.00%)	(15x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.004729s|00.00%|00.02%)	(15x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(18.456431s|01.68%|99.02%)	(15x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001612s|00.00%|00.01%)	(15x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.236276s|00.11%|06.65%)	(15x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.290920s|00.20%|10.41%)	(15x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.739571s|00.15%|09.51%)	(15x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.264735s|00.20%|10.26%)	(15x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.751982s|00.16%|09.61%)	(15x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.166355s|00.10%|06.76%)	(15x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.483673s|00.04%|04.42%)	(15x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.226765s|00.11%|06.42%)	(15x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.351307s|00.03%|03.86%)	(15x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.408291s|00.12%|08.42%)	(15x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.771731s|00.34%|15.06%)	(15x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.385551s|00.03%|04.08%)	(15x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.377662s|00.03%|04.39%)	(15x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.001614s|00.00%|00.00%)	(14x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.003867s|00.00%|00.02%)	(14x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000081s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000788s|00.00%|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   8.0:    	(0.000137s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p13
|   |   |   |   |   12.0:    	(0.017686s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p13; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004466s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p13
|   |   |   |   |   35.0:    	(0.004119s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p13
|   |   |   |-- 126.0:        	(0.000146s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000874s|00.00%|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:    	(0.000091s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p14
|   |   |   |   |   12.0:    	(0.009740s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p14; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004460s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p14
|   |   |   |   |   35.0:    	(0.009594s|00.00%|00.05%)	(29x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p14
|   |   |   |   |   56.1:    	(0.003736s|00.00%|00.02%)	(28x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.006899s|00.00%|00.03%)	(28x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000125s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000918s|00.00%|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:    	(0.000086s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p15
|   |   |   |   |   12.0:    	(0.009207s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p15; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002616s|00.00%|00.01%)	(19x) true
|   |   |   |   |   20.0:    	(0.002241s|00.00%|00.01%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002329s|00.00%|00.01%)	(19x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.003000s|00.00%|00.01%)	(19x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p15
|   |   |   |   |   23.0:    	(0.043823s|00.00%|00.24%)	(19x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002403s|00.00%|00.01%)	(19x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.004250s|00.00%|00.02%)	(18x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.002226s|00.00%|00.01%)	(18x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002236s|00.00%|00.01%)	(18x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.028132s|00.00%|00.15%)	(18x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.002333s|00.00%|00.01%)	(18x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.002782s|00.00%|00.01%)	(18x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p15
|   |   |   |   |   36.0:    	(0.002143s|00.00%|00.01%)	(18x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.002067s|00.00%|00.01%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(17.895073s|01.63%|98.98%)	(18x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002026s|00.00%|00.01%)	(18x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.188252s|00.10%|06.76%)	(18x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.162119s|00.19%|11.16%)	(18x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.731982s|00.15%|09.78%)	(18x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.171082s|00.19%|10.89%)	(18x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.680788s|00.15%|09.13%)	(18x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.041495s|00.09%|06.06%)	(18x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.494318s|00.04%|03.89%)	(18x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.167265s|00.10%|06.38%)	(18x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.399504s|00.03%|03.46%)	(18x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.456079s|00.13%|08.42%)	(18x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.548742s|00.32%|16.38%)	(18x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.424215s|00.03%|03.65%)	(18x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.427206s|00.03%|03.89%)	(18x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.002005s|00.00%|00.01%)	(17x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.002272s|00.00%|00.01%)	(17x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000123s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000882s|00.00%|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:    	(0.000089s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p16
|   |   |   |   |   12.0:    	(0.016843s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p16; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004568s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p16
|   |   |   |   |   35.0:    	(0.004212s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p16
|   |   |   |-- 126.0:        	(0.000127s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000918s|00.00%|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p17
|   |   |   |   |   12.0:    	(0.018396s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p17; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.003622s|00.00%|00.02%)	(26x) true
|   |   |   |   |   20.0:    	(0.003003s|00.00%|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003141s|00.00%|00.01%)	(26x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.003958s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p17
|   |   |   |   |   23.0:    	(0.124292s|00.01%|00.71%)	(26x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.003292s|00.00%|00.01%)	(26x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.002947s|00.00%|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.002887s|00.00%|00.01%)	(25x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.003101s|00.00%|00.01%)	(25x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.032867s|00.00%|00.18%)	(25x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.006285s|00.00%|00.03%)	(25x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003820s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p17
|   |   |   |   |   36.0:    	(0.002878s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.002843s|00.00%|00.01%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(17.089923s|01.56%|98.27%)	(25x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002843s|00.00%|00.01%)	(25x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.166718s|00.10%|06.89%)	(25x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(1.913324s|00.17%|10.41%)	(25x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.579450s|00.14%|09.28%)	(25x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(1.919646s|00.17%|10.59%)	(25x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.607438s|00.14%|09.47%)	(25x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.039589s|00.09%|06.31%)	(25x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.552044s|00.05%|03.97%)	(25x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.114135s|00.10%|06.38%)	(25x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.494559s|00.04%|03.59%)	(25x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.432483s|00.13%|08.65%)	(25x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.118068s|00.28%|15.86%)	(25x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.587860s|00.05%|04.23%)	(25x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.561766s|00.05%|04.22%)	(25x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:        	(0.000124s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000924s|00.00%|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:    	(0.000147s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p18
|   |   |   |   |   12.0:    	(0.016182s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p18; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.008748s|00.00%|00.02%)	(62x) true
|   |   |   |   |   20.0:    	(0.007686s|00.00%|00.02%)	(62x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.007679s|00.00%|00.02%)	(62x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.004933s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p18
|   |   |   |   |   23.0:    	(0.211518s|00.01%|00.61%)	(62x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.007835s|00.00%|00.02%)	(62x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.007325s|00.00%|00.02%)	(60x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.007032s|00.00%|00.02%)	(60x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.007402s|00.00%|00.02%)	(60x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.079792s|00.00%|00.23%)	(60x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.016016s|00.00%|00.04%)	(60x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.007558s|00.00%|00.04%)	(30x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p18
|   |   |   |   |   36.0:    	(0.007046s|00.00%|00.02%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.007313s|00.00%|00.02%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(33.821188s|03.09%|98.24%)	(60x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006814s|00.00%|00.01%)	(60x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.321405s|00.21%|06.90%)	(60x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(3.756148s|00.34%|10.43%)	(60x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.171948s|00.28%|09.42%)	(60x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.610305s|00.32%|09.95%)	(60x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.197631s|00.29%|09.30%)	(60x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.127061s|00.19%|06.49%)	(60x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.255202s|00.11%|04.41%)	(60x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.146708s|00.19%|06.33%)	(60x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.141807s|00.10%|04.13%)	(60x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.889234s|00.26%|08.79%)	(60x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(5.656178s|00.51%|14.50%)	(60x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.285724s|00.11%|04.61%)	(60x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.255023s|00.11%|04.55%)	(60x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.006791s|00.00%|00.01%)	(58x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.019571s|00.00%|00.05%)	(58x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000944s|00.00%|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:    	(0.000170s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p19
|   |   |   |   |   12.0:    	(0.018480s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p19; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004230s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p19
|   |   |   |   |   35.0:    	(0.008192s|00.00%|00.04%)	(27x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p19
|   |   |   |-- 126.0:        	(0.000130s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.000988s|00.00%|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:    	(0.000153s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p20
|   |   |   |   |   12.0:    	(0.018212s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p20; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.007075s|00.00%|00.04%)	(27x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p20
|   |   |   |   |   35.0:    	(0.004083s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p20
|   |   |   |-- 126.0:        	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.001003s|00.00%|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:    	(0.000151s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p21
|   |   |   |   |   12.0:    	(0.017418s|00.00%|00.07%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p21; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003957s|00.00%|00.01%)	(25x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p21
|   |   |   |   |   35.0:    	(0.003781s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p21
|   |   |   |-- 126.0:        	(0.000136s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.000949s|00.00%|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:    	(0.000145s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p22
|   |   |   |   |   12.0:    	(0.017628s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p22; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004838s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p22
|   |   |   |   |   35.0:    	(0.004565s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p22
|   |   |   |-- 126.0:        	(0.000138s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.000903s|00.00%|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:    	(0.000135s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p23
|   |   |   |   |   12.0:    	(0.017795s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p23; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.007519s|00.00%|00.04%)	(28x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p23
|   |   |   |   |   35.0:    	(0.004164s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p23
|   |   |   |-- 126.0:        	(0.000139s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.001005s|00.00%|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:    	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p24
|   |   |   |   |   12.0:    	(0.017665s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p24; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.001596s|00.00%|00.00%)	(11x) true
|   |   |   |   |   20.0:    	(0.001395s|00.00%|00.00%)	(11x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001461s|00.00%|00.00%)	(11x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.001731s|00.00%|00.00%)	(11x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p24
|   |   |   |   |   23.0:    	(0.037568s|00.00%|00.20%)	(11x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001424s|00.00%|00.00%)	(11x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.001225s|00.00%|00.00%)	(10x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.001201s|00.00%|00.00%)	(10x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001310s|00.00%|00.00%)	(10x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.011078s|00.00%|00.06%)	(10x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.001243s|00.00%|00.00%)	(10x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.004597s|00.00%|00.02%)	(10x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p24
|   |   |   |   |   36.0:    	(0.001208s|00.00%|00.00%)	(10x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.001139s|00.00%|00.00%)	(10x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(17.964573s|01.64%|99.04%)	(10x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001033s|00.00%|00.01%)	(10x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.202736s|00.10%|07.12%)	(10x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.351124s|00.21%|11.04%)	(10x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.694536s|00.15%|09.45%)	(10x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.298983s|00.21%|10.70%)	(10x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.664144s|00.15%|09.11%)	(10x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.027333s|00.09%|06.24%)	(10x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.336579s|00.03%|03.86%)	(10x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.151815s|00.10%|06.14%)	(10x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.260024s|00.02%|03.48%)	(10x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.397013s|00.12%|08.77%)	(10x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.006980s|00.36%|16.07%)	(10x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.309474s|00.02%|04.21%)	(10x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.262799s|00.02%|03.65%)	(10x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.001094s|00.00%|00.00%)	(9x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.001250s|00.00%|00.00%)	(9x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000129s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.000978s|00.00%|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:    	(0.000163s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p25
|   |   |   |   |   12.0:    	(0.017380s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p25; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002592s|00.00%|00.01%)	(20x) true
|   |   |   |   |   20.0:    	(0.002379s|00.00%|00.01%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002386s|00.00%|00.01%)	(20x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.005072s|00.00%|00.02%)	(20x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p25
|   |   |   |   |   23.0:    	(0.072966s|00.00%|00.39%)	(20x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002496s|00.00%|00.01%)	(20x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.002381s|00.00%|00.01%)	(19x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.002386s|00.00%|00.01%)	(19x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002578s|00.00%|00.01%)	(19x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.025889s|00.00%|00.13%)	(19x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.006315s|00.00%|00.03%)	(19x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.002992s|00.00%|00.01%)	(19x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p25
|   |   |   |   |   36.0:    	(0.002315s|00.00%|00.01%)	(19x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.003659s|00.00%|00.01%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(18.315614s|01.67%|98.68%)	(19x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002217s|00.00%|00.02%)	(19x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.356687s|00.12%|07.55%)	(19x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.312647s|00.21%|11.09%)	(19x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.753516s|00.16%|09.45%)	(19x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.245042s|00.20%|10.39%)	(19x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.739877s|00.15%|09.21%)	(19x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.089295s|00.09%|06.09%)	(19x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.464929s|00.04%|03.91%)	(19x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.184254s|00.10%|06.39%)	(19x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.399146s|00.03%|03.71%)	(19x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.415289s|00.12%|08.51%)	(19x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.462996s|00.31%|15.29%)	(19x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.450573s|00.04%|04.22%)	(19x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.439146s|00.04%|04.05%)	(19x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.002177s|00.00%|00.01%)	(18x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.002515s|00.00%|00.01%)	(18x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000130s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.000988s|00.00%|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:    	(0.000135s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p26
|   |   |   |   |   12.0:    	(0.017621s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p26; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.001951s|00.00%|00.00%)	(14x) true
|   |   |   |   |   20.0:    	(0.001689s|00.00%|00.00%)	(14x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001673s|00.00%|00.00%)	(14x) read -r < "/dev/shm/.forkrun.kL4TBQ"/.nLines
|   |   |   |   |   22.0:    	(0.002144s|00.00%|00.01%)	(14x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p26
|   |   |   |   |   23.0:    	(0.048429s|00.00%|00.23%)	(14x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001670s|00.00%|00.00%)	(14x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.quit ]]
|   |   |   |   |   28.0:    	(0.001506s|00.00%|00.00%)	(13x) [[ -f "/dev/shm/.forkrun.kL4TBQ"/.done ]]
|   |   |   |   |   28.1:    	(0.001544s|00.00%|00.00%)	(13x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001615s|00.00%|00.00%)	(13x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.023594s|00.00%|00.11%)	(13x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.003516s|00.00%|00.01%)	(13x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.001983s|00.00%|00.00%)	(13x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p26
|   |   |   |   |   36.0:    	(0.001531s|00.00%|00.00%)	(13x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.001506s|00.00%|00.00%)	(13x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(20.409825s|01.86%|99.03%)	(13x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001408s|00.00%|00.01%)	(13x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.412817s|00.12%|06.66%)	(13x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.892929s|00.26%|10.38%)	(13x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.162619s|00.19%|09.64%)	(13x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.795083s|00.25%|10.29%)	(13x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.078026s|00.18%|09.43%)	(13x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.380077s|00.12%|06.81%)	(13x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.434321s|00.03%|04.57%)	(13x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.257167s|00.11%|06.42%)	(13x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.315137s|00.02%|03.69%)	(13x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.412026s|00.12%|08.66%)	(13x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.590126s|00.32%|14.83%)	(13x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.347960s|00.03%|04.16%)	(13x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.330129s|00.03%|04.30%)	(13x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.001413s|00.00%|00.00%)	(12x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.001605s|00.00%|00.00%)	(12x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000135s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001055s|00.00%|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:    	(0.000139s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.kL4TBQ"/.run/p27
|   |   |   |   |   12.0:    	(0.018482s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.kL4TBQ"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.kL4TBQ"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.kL4TBQ"/.run/p27; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003907s|00.00%|00.01%)	(24x) echo 1 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p27
|   |   |   |   |   35.0:    	(0.005800s|00.00%|00.02%)	(23x) echo 0 > "/dev/shm/.forkrun.kL4TBQ"/.wait/p27
|   |   |   |-- 126.0:        	(0.000135s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000135s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000133s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000107s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000104s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001122s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000108s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000108s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000103s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.422748s|02.14%|04.26%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000231s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000230s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -223.0:            	(0.000268s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -222.0:            	(0.000290s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.0:            	(0.001796s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.1:            	(0.005190s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -221.0:        	(0.005190s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -220.0:            	(0.000078s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.0:            	(0.000695s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.1:            	(0.003914s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -219.0:        	(0.003914s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -218.0:            	(0.000084s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.0:            	(0.000656s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.1:            	(0.003620s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -217.0:        	(0.003620s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -216.0:            	(0.015198s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:                	(0.000087s|00.00%|00.00%)	(1x) wait
|-- |-- -223.0:                	(0.001889s|00.00%|00.00%)	(1x) wait (?)



TOTAL RUN TIME: 1094.496064s
