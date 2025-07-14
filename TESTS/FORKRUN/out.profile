1.0:	(543.286494s|50.00%)	(1x) << (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0:	(0.001059s|00.00%|00.00%)	(1x) forkrun ff < /mnt/ramdisk/flist > /dev/null
|   347.0:	(543.285435s|50.00%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 347.0:	(0.018274s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:	(0.000067s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:	(0.000086s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:	(0.000123s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:	(0.000112s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:	(0.000077s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:	(0.000066s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:	(0.000068s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:	(0.000062s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:	(0.000062s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:	(0.000059s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:	(0.000061s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:	(0.000072s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   278.0:	(0.000064s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:	(0.000059s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:	(0.000059s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:	(0.000063s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:	(0.000071s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:	(0.001152s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:	(0.002204s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:	(0.002204s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:	(0.000062s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:	(0.001450s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:	(0.000081s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:	(0.000060s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:	(0.010644s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:	(543.246773s|50.00%|49.99%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:	(0.000073s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:	(0.000072s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:	(0.000497s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:	(0.000094s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:	(0.000070s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:	(0.000082s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:                        	(0.000082s|00.00%|100.00%)	(1x) :
|   |   |   1457.4:	(0.000091s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:	(0.000088s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:	(0.000076s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:	(0.000066s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:	(0.000065s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:	(0.000193s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:	(0.000081s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:	(0.000062s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:	(0.000064s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:	(0.000062s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:	(0.000064s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:	(0.000074s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:	(0.000077s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:	(0.000063s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:	(0.000062s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:	(0.000515s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:	(0.000107s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:	(0.000107s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:	(0.000077s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:	(0.000062s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:	(0.000067s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:	(0.000061s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:	(0.000061s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:	(0.000086s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:	(0.000062s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:	(0.000082s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:	(0.000066s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:	(0.000062s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:	(0.000068s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:	(0.000060s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:	(0.000065s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:	(0.000070s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:	(0.000061s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:	(0.000772s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:	(0.000056s|00.00%|07.25%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:	(0.000063s|00.00%|08.16%)	(1x) local +i -l nn
|   |   |   |   9.0:	(0.000060s|00.00%|07.77%)	(1x) local vOut
|   |   |   |   11.0:	(0.000061s|00.00%|07.90%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:	(0.000059s|00.00%|07.64%)	(1x) shift 1
|   |   |   |   13.0:	(0.000062s|00.00%|08.03%)	(1x) local -g vOut
|   |   |   |   15.0:	(0.000059s|00.00%|07.64%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:	(0.000105s|00.00%|13.60%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:	(0.000060s|00.00%|07.77%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:	(0.000060s|00.00%|07.77%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:	(0.000060s|00.00%|07.77%)	(1x) continue
|   |   |   |-- 28.0:	(0.000067s|00.00%|08.67%)	(1x) local +n vOut
|   |   |   438.0:	(0.000064s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:	(0.000681s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:	(0.001798s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:	(0.000193s|00.00%|10.73%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:	(0.001605s|00.00%|89.26%)	(1x) nproc
|   |   |   441.0:	(0.000062s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:	(0.000063s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:	(0.000059s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:	(0.000064s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:	(0.000059s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:	(0.000063s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:	(0.000076s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:	(0.000069s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:	(0.000063s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:	(0.000060s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:	(0.000061s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:	(0.000061s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:	(0.000062s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:	(0.000141s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:	(0.000071s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:	(0.000065s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:	(0.000061s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:	(0.000059s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:	(0.000060s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:	(0.000063s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   499.0:	(0.000060s|00.00%|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   500.0:	(0.000071s|00.00%|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   501.0:	(0.000059s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   501.1:	(0.000061s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   512.0:	(0.000059s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:	(0.000628s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:	(0.000112s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:	(0.000112s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:	(0.000062s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:	(0.000064s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:	(0.000059s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:	(0.001418s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:	(0.000061s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:	(0.000061s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:	(0.000059s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:	(0.000069s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:	(0.000076s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:	(0.000066s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:	(0.000065s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:	(0.000060s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:	(0.000466s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:	(0.064363s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:                        	(0.000082s|00.00%|00.12%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:                        	(0.008036s|00.00%|12.48%)	(1x) trap - EXIT
|   |   |   |   602.0:                        	(0.009427s|00.00%|14.64%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:                        	(0.009386s|00.00%|14.58%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:                        	(0.009436s|00.00%|14.66%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:                        	(0.009516s|00.00%|14.78%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:                        	(0.000058s|00.00%|00.09%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:                        	(0.018209s|00.00%|28.29%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:                        	(0.000087s|00.00%|00.13%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:                        	(0.000063s|00.00%|00.09%)	(1x) evfd_signal
|   |   |   |-- 615.0:                        	(0.000063s|00.00%|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:	(0.000063s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:	(0.000063s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:	(0.000064s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:	(0.000060s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:	(0.000380s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:	(6.797472s|00.62%|01.25%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:	(0.000194s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:	(0.008992s|00.00%|00.13%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:	(0.009398s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:	(0.009389s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:	(0.009536s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:	(0.009415s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:	(0.000060s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:	(0.000063s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:	(0.000060s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:	(0.000060s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:	(0.077205s|00.00%|01.13%)	(677x) ${fallocateFlag}
|   |   |   |   702.0:	(5.492365s|00.50%|80.80%)	(676x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:	(0.001490s|00.00%|00.02%)	(11x) continue
|   |   |   |   704.0:	(0.074949s|00.00%|01.10%)	(665x) case ${REPLY} in
|   |   |   |   718.0:	(0.080040s|00.00%|01.17%)	(664x) ${nLinesAutoFlag}
|   |   |   |   719.0:	(0.000070s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:	(0.000073s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:	(0.079775s|00.00%|01.17%)	(665x) ${lseekPosFlag}
|   |   |   |   729.0:	(0.111873s|00.01%|01.64%)	(665x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:	(0.084046s|00.00%|01.23%)	(665x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:	(0.074071s|00.00%|01.08%)	(665x) ${nLinesAutoFlag}
|   |   |   |   737.1:	(0.076461s|00.00%|01.12%)	(665x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:	(0.073786s|00.00%|01.08%)	(665x) ${nSpawnFlag}
|   |   |   |   741.0:	(0.074735s|00.00%|01.09%)	(665x) ${nLinesAutoFlag}
|   |   |   |   743.0:	(0.000070s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:	(0.000072s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:	(0.000736s|00.00%|00.01%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:	(0.002777s|00.00%|00.04%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:	(0.002776s|00.00%|99.96%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:	(0.000066s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:	(0.000063s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:	(0.000070s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:	(0.000063s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:	(0.000062s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:	(0.000061s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:	(0.000062s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:	(0.000086s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:	(0.000062s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:	(0.000066s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:	(0.073925s|00.00%|01.08%)	(665x) ${fallocateFlag}
|   |   |   |   767.0:	(0.076379s|00.00%|01.12%)	(665x) case ${nWait} in
|   |   |   |   778.0:	(0.072114s|00.00%|01.06%)	(644x) ((nWait--))
|   |   |   |   783.0:	(0.080448s|00.00%|01.18%)	(665x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:	(0.075518s|00.00%|01.11%)	(663x) ${nSpawnFlag}
|   |   |   |   769.0:	(0.002449s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:	(0.002414s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:	(0.050277s|00.00%|00.73%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:	(0.002521s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:	(0.004038s|00.00%|00.05%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:	(0.002642s|00.00%|00.03%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   712.0:	(0.000111s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   784.0:	(0.000108s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:	(0.000106s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:	(0.000106s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:	(0.000109s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:	(0.000120s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -223.0:	(0.000112s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -223.1:	(0.001553s|00.00%|00.02%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:	(0.000064s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:	(0.000092s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:	(0.000106s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:	(0.001228s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:	(0.015347s|00.00%|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:	(0.000146s|00.00%|02.54%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:	(0.000087s|00.00%|01.51%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:	(0.000105s|00.00%|01.83%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:	(0.000285s|00.00%|04.97%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:	(0.000083s|00.00%|01.44%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:	(0.000080s|00.00%|01.39%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:	(0.000084s|00.00%|01.46%)	(1x) echo "{"
|   |   |   |   1403.0:	(0.000082s|00.00%|01.43%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:	(0.000082s|00.00%|01.43%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:	(0.000087s|00.00%|01.51%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:	(0.000063s|00.00%|01.09%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:	(0.000064s|00.00%|01.11%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:	(0.000064s|00.00%|01.11%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:	(0.000065s|00.00%|01.13%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:	(0.000060s|00.00%|01.04%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:	(0.000064s|00.00%|01.11%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:	(0.000060s|00.00%|01.04%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:	(0.000061s|00.00%|01.06%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1411.0:	(0.000066s|00.00%|01.15%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:	(0.000061s|00.00%|01.06%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:	(0.000061s|00.00%|01.06%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:	(0.000065s|00.00%|01.13%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1413.0:	(0.000061s|00.00%|01.06%)	(1x) ${lseekFlag}
|   |   |   |   1416.0:	(0.000065s|00.00%|01.13%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1417.0:	(0.000061s|00.00%|01.06%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1420.0:	(0.000065s|00.00%|01.13%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1458.0:	(0.000059s|00.00%|01.02%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1463.0:	(0.000069s|00.00%|01.20%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1464.0:	(0.000064s|00.00%|01.11%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1465.0:	(0.000060s|00.00%|01.04%)	(1x) ${lseekFlag}
|   |   |   |   1465.1:	(0.000067s|00.00%|01.16%)	(1x) printf '\n'
|   |   |   |   1466.0:	(0.000061s|00.00%|01.06%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1467.0:	(0.000092s|00.00%|01.60%)	(1x) echo "}"
|   |   |   |   1469.0:	(0.000061s|00.00%|01.06%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:	(0.000061s|00.00%|01.06%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:	(0.000061s|00.00%|01.06%)	(1x) ${readBytesFlag}
|   |   |   |   1469.3:	(0.000071s|00.00%|01.23%)	(1x) echo "}"
|   |   |   |   1470.0:	(0.000070s|00.00%|01.22%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:	(0.000082s|00.00%|01.43%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:	(0.000062s|00.00%|01.08%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:	(0.000073s|00.00%|01.27%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:	(0.000072s|00.00%|01.25%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:	(0.000061s|00.00%|01.06%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:	(0.000083s|00.00%|01.44%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:	(0.000064s|00.00%|01.11%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:	(0.000065s|00.00%|01.13%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:	(0.000088s|00.00%|01.53%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:	(0.000063s|00.00%|01.09%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:	(0.000089s|00.00%|01.55%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:	(0.000062s|00.00%|01.08%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:	(0.000085s|00.00%|01.48%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:	(0.000061s|00.00%|01.06%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:	(0.000078s|00.00%|01.36%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:	(0.000061s|00.00%|01.06%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:	(0.000091s|00.00%|01.58%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:	(0.000060s|00.00%|01.04%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:	(0.000059s|00.00%|01.02%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1519.2:	(0.000061s|00.00%|01.06%)	(1x) ${readBytesFlag}
|   |   |   |   1519.3:	(0.000065s|00.00%|01.13%)	(1x) ${lseekFlag}
|   |   |   |   1527.0:	(0.000061s|00.00%|01.06%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:	(0.000084s|00.00%|01.46%)	(1x) echo '{'
|   |   |   |   1528.0:	(0.000060s|00.00%|01.04%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:	(0.000066s|00.00%|01.15%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:	(0.000071s|00.00%|01.23%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:	(0.000085s|00.00%|01.48%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:	(0.000061s|00.00%|01.06%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:	(0.000059s|00.00%|01.02%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:	(0.000062s|00.00%|01.08%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:	(0.000059s|00.00%|01.02%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:	(0.000094s|00.00%|01.64%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:	(0.000066s|00.00%|01.15%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:	(0.000065s|00.00%|01.13%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:	(0.000061s|00.00%|01.06%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:	(0.000081s|00.00%|01.41%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:	(0.000067s|00.00%|01.16%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:	(0.000065s|00.00%|01.13%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:	(0.000063s|00.00%|01.09%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:	(0.000092s|00.00%|01.60%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:	(0.000228s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:	(0.000217s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:	(0.000204s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:	(0.009502s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:	(0.009429s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:	(0.009348s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:	(0.000073s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:	(0.000058s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:	(0.000059s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:	(0.000072s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:	(0.000059s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:	(0.002536s|00.00%|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:	(0.002638s|00.00%|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:	(0.002473s|00.00%|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:	(513.175982s|47.23%|94.46%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:	(0.000532s|00.00%|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:	(513.150628s|47.23%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:	(0.004873s|00.00%|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.6x6B6m"
|   |   |   |   |   8.0:	(0.000086s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p0
|   |   |   |   |   12.0:	(0.009213s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:	(0.389652s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 3027145 ${BASHPID}' INT
|   |   |   |   |   15.0:	(0.395483s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 3027145 ${BASHPID}' TERM
|   |   |   |   |   16.0:	(0.405856s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 3027145 ${BASHPID}' HUP
|   |   |   |   |   17.0:	(0.420591s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:	(0.011471s|00.00%|00.01%)	(84x) true
|   |   |   |   |   20.0:	(0.013349s|00.00%|00.02%)	(84x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.010551s|00.00%|00.01%)	(84x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   20.2:	(0.000531s|00.00%|00.00%)	(8x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.000531s|00.00%|00.00%)	(8x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.004477s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p0
|   |   |   |   |   23.0:	(0.581267s|00.05%|01.07%)	(84x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.010575s|00.00%|00.01%)	(84x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.012827s|00.00%|00.01%)	(81x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.009685s|00.00%|00.01%)	(81x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.010014s|00.00%|00.01%)	(81x) evfd_wait 25
|   |   |   |   |   31.0:	(0.101746s|00.00%|00.18%)	(81x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.012642s|00.00%|00.01%)	(81x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.012461s|00.00%|00.01%)	(81x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.025078s|00.00%|00.04%)	(81x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.003990s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p0
|   |   |   |   |   48.0:	(0.009486s|00.00%|00.01%)	(81x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.013505s|00.00%|00.02%)	(81x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:	(0.000653s|00.00%|00.00%)	(8x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:	(0.000541s|00.00%|00.00%)	(8x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:	(53.125828s|04.89%|97.92%)	(81x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.008789s|00.00%|00.01%)	(81x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.654102s|00.33%|07.00%)	(81x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(6.162036s|00.56%|10.46%)	(81x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(5.114329s|00.47%|09.68%)	(81x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(5.968707s|00.54%|10.12%)	(81x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(4.915185s|00.45%|09.16%)	(81x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.317217s|00.30%|06.50%)	(81x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.721218s|00.15%|04.15%)	(81x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.432743s|00.31%|06.31%)	(81x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.576600s|00.14%|04.06%)	(81x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.482349s|00.41%|08.80%)	(81x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(9.315351s|00.85%|14.66%)	(81x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.734438s|00.15%|04.43%)	(81x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.722764s|00.15%|04.48%)	(81x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.001014s|00.00%|00.02%)	(9x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(0.402476s|00.03%|07.06%)	(9x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(0.703002s|00.06%|10.79%)	(9x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(0.552062s|00.05%|09.80%)	(9x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(0.650282s|00.05%|10.08%)	(9x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(0.569678s|00.05%|09.43%)	(9x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(0.362046s|00.03%|06.36%)	(9x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.186895s|00.01%|04.11%)	(9x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(0.372140s|00.03%|06.31%)	(9x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.169512s|00.01%|04.10%)	(9x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(0.475481s|00.04%|08.37%)	(9x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(1.034370s|00.09%|14.14%)	(9x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.194680s|00.01%|04.69%)	(9x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.188201s|00.01%|04.61%)	(9x) xxhsum -H3 "${@}"
|   |   |   |   |   70.1:	(0.002746s|00.00%|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   68.1:	(0.008843s|00.00%|00.01%)	(75x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.014530s|00.00%|00.02%)	(75x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:	(0.002342s|00.00%|00.00%)	(26x) printf '\n' 1>&21
|   |   |   |   |   26.0:	(0.002376s|00.00%|00.00%)	(26x) break
|   |   |   |   |   2.0:	(0.002906s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.0:	(0.002379s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.1:	(0.036130s|00.00%|00.00%)	(28x) break
|   |   |   |   |-- 4.0:	(0.002790s|00.00%|00.00%)	(28x) break
|   |   |   |-- 138.0:	(0.000077s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:	(0.000536s|00.00%|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:	(0.001486s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p1
|   |   |   |   |   12.0:	(0.011210s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.005689s|00.00%|00.00%)	(45x) true
|   |   |   |   |   20.0:	(0.005195s|00.00%|00.00%)	(45x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005398s|00.00%|00.00%)	(45x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.007313s|00.00%|00.01%)	(30x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p1
|   |   |   |   |   23.0:	(0.223821s|00.02%|00.39%)	(45x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.008727s|00.00%|00.01%)	(45x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.021827s|00.00%|00.00%)	(168x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.019997s|00.00%|00.00%)	(168x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.024439s|00.00%|00.00%)	(168x) evfd_wait 25
|   |   |   |   |   31.0:	(0.233620s|00.02%|00.17%)	(168x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.019566s|00.00%|00.00%)	(168x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.019932s|00.00%|00.00%)	(168x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.026741s|00.00%|00.00%)	(168x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.011223s|00.00%|00.01%)	(56x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p1
|   |   |   |   |   48.0:	(0.019207s|00.00%|00.00%)	(168x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.021959s|00.00%|00.00%)	(168x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(144.623474s|13.31%|98.37%)	(168x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.018406s|00.00%|00.01%)	(168x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(10.003740s|00.92%|07.05%)	(168x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(17.529369s|01.61%|10.54%)	(168x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(13.949826s|01.28%|09.65%)	(168x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(17.395531s|01.60%|10.37%)	(168x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(13.619334s|01.25%|09.14%)	(168x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(8.757450s|00.80%|06.38%)	(168x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(3.961171s|00.36%|04.04%)	(168x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(9.354986s|00.86%|06.35%)	(168x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(3.451380s|00.31%|03.79%)	(168x) cksum "${@}"
|   |   |   |   |   |   17.0:	(11.543667s|01.06%|08.58%)	(168x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(27.328836s|02.51%|15.28%)	(168x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(3.948470s|00.36%|04.30%)	(168x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(3.761308s|00.34%|04.30%)	(168x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.001331s|00.00%|00.00%)	(12x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.001478s|00.00%|00.00%)	(12x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000079s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:	(0.000536s|00.00%|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   8.0:	(0.001245s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p2
|   |   |   |   |   12.0:	(0.010891s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.005574s|00.00%|00.01%)	(42x) true
|   |   |   |   |   20.0:	(0.005120s|00.00%|00.01%)	(42x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005257s|00.00%|00.01%)	(42x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.006032s|00.00%|00.03%)	(21x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p2
|   |   |   |   |   23.0:	(0.254848s|00.02%|00.71%)	(42x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.008348s|00.00%|00.02%)	(42x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.004849s|00.00%|00.01%)	(40x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.004698s|00.00%|00.01%)	(40x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.004897s|00.00%|00.01%)	(40x) evfd_wait 25
|   |   |   |   |   31.0:	(0.048968s|00.00%|00.13%)	(40x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.004596s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.004687s|00.00%|00.01%)	(40x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.005110s|00.00%|00.01%)	(40x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.002911s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p2
|   |   |   |   |   48.0:	(0.004843s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.007731s|00.00%|00.01%)	(40x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(35.047349s|03.22%|98.46%)	(40x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004342s|00.00%|00.01%)	(40x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.279262s|00.20%|06.70%)	(40x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.195207s|00.38%|10.93%)	(40x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.305451s|00.30%|09.38%)	(40x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.169442s|00.38%|10.70%)	(40x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.235421s|00.29%|09.17%)	(40x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.122633s|00.19%|06.49%)	(40x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.949801s|00.08%|03.74%)	(40x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.201762s|00.20%|06.29%)	(40x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.851724s|00.07%|03.45%)	(40x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.883865s|00.26%|08.63%)	(40x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(7.058078s|00.64%|16.76%)	(40x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.944854s|00.08%|03.89%)	(40x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.845507s|00.07%|03.70%)	(40x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.003598s|00.00%|00.01%)	(34x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(2.287228s|00.21%|06.77%)	(34x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(4.302361s|00.39%|10.76%)	(34x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(3.320472s|00.30%|09.50%)	(34x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(4.231595s|00.38%|10.71%)	(34x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(3.252942s|00.29%|09.16%)	(34x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(2.053111s|00.18%|06.55%)	(34x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.869417s|00.08%|03.96%)	(34x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(2.188107s|00.20%|06.49%)	(34x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.729907s|00.06%|03.64%)	(34x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(2.461904s|00.22%|08.55%)	(34x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(5.794124s|00.53%|15.62%)	(34x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.834194s|00.07%|04.22%)	(34x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.744829s|00.06%|03.90%)	(34x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.002092s|00.00%|00.01%)	(18x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.002375s|00.00%|00.01%)	(18x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000076s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:	(0.000538s|00.00%|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:	(0.000083s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p3
|   |   |   |   |   12.0:	(0.009064s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.016649s|00.00%|00.02%)	(120x) true
|   |   |   |   |   20.0:	(0.014701s|00.00%|00.01%)	(120x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.014792s|00.00%|00.01%)	(120x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.007690s|00.00%|00.04%)	(30x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p3
|   |   |   |   |   23.0:	(0.722096s|00.06%|01.02%)	(120x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.015210s|00.00%|00.01%)	(120x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.010584s|00.00%|00.01%)	(87x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.010326s|00.00%|00.01%)	(87x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.010758s|00.00%|00.01%)	(87x) evfd_wait 25
|   |   |   |   |   31.0:	(0.112006s|00.01%|00.20%)	(87x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.011418s|00.00%|00.01%)	(87x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.016585s|00.00%|00.01%)	(116x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.016917s|00.00%|00.02%)	(87x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.004257s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p3
|   |   |   |   |   48.0:	(0.013478s|00.00%|00.02%)	(87x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.015415s|00.00%|00.01%)	(116x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(68.828590s|06.33%|97.91%)	(116x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.012664s|00.00%|00.01%)	(116x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.784423s|00.44%|07.01%)	(116x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(7.789646s|00.71%|10.32%)	(116x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.560851s|00.60%|09.62%)	(116x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.493072s|00.68%|10.12%)	(116x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.295083s|00.57%|09.20%)	(116x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.248829s|00.39%|06.40%)	(116x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.481429s|00.22%|04.34%)	(116x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.408967s|00.40%|06.32%)	(116x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.150655s|00.19%|03.95%)	(116x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.830293s|00.53%|08.77%)	(116x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(11.805489s|01.08%|14.65%)	(116x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.525284s|00.23%|04.62%)	(116x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.441905s|00.22%|04.47%)	(116x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.012655s|00.00%|00.01%)	(108x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.022535s|00.00%|00.02%)	(108x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000076s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:	(0.000544s|00.00%|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:	(0.000245s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p4
|   |   |   |   |   12.0:	(0.009498s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.015265s|00.00%|00.02%)	(87x) true
|   |   |   |   |   20.0:	(0.010635s|00.00%|00.01%)	(87x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.010946s|00.00%|00.01%)	(87x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   20.2:	(0.002185s|00.00%|00.00%)	(24x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.002260s|00.00%|00.00%)	(24x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.004525s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p4
|   |   |   |   |   23.0:	(0.580796s|00.05%|01.09%)	(87x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.011071s|00.00%|00.02%)	(87x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   47.0:	(0.003945s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p4
|   |   |   |   |   69.0:	(0.002573s|00.00%|00.00%)	(24x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:	(0.002307s|00.00%|00.00%)	(24x) (( ${nLinesCur} < 1024 ))
|   |   |   |-- 138.0:	(0.000075s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:	(0.000557s|00.00%|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:	(0.000294s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p5
|   |   |   |   |   12.0:	(0.011105s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.002375s|00.00%|00.01%)	(15x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p5
|   |   |   |   |   47.0:	(0.001994s|00.00%|00.01%)	(14x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p5
|   |   |   |   |   68.1:	(0.003058s|00.00%|00.00%)	(26x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.006603s|00.00%|00.01%)	(26x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000075s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:	(0.000586s|00.00%|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |-- 65.0:                        	(0.000433s|00.00%|00.00%)	(2x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.6x6B6m"
|   |   |   |   |   8.0:                        	(0.000082s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p6
|   |   |   |   |   12.0:                        	(0.009170s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:                        	(0.029574s|00.00%|00.08%)	(2x) trap 'trap - TERM INT HUP USR1; kill -INT 3027145 ${BASHPID}' INT
|   |   |   |   |   15.0:                        	(0.028688s|00.00%|00.07%)	(2x) trap 'trap - TERM INT HUP USR1; kill -TERM 3027145 ${BASHPID}' TERM
|   |   |   |   |   16.0:                        	(0.029930s|00.00%|00.08%)	(2x) trap 'trap - TERM INT HUP USR1; kill -HUP 3027145 ${BASHPID}' HUP
|   |   |   |   |   17.0:                        	(0.031707s|00.00%|00.08%)	(2x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:                        	(0.003596s|00.00%|00.02%)	(26x) true
|   |   |   |   |   20.0:                        	(0.003170s|00.00%|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:                        	(0.003193s|00.00%|00.01%)	(26x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   20.2:                        	(0.000201s|00.00%|00.00%)	(2x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:                        	(0.000201s|00.00%|00.00%)	(2x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:                        	(0.007145s|00.00%|00.04%)	(26x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p6
|   |   |   |   |   23.0:                        	(0.098519s|00.00%|00.55%)	(26x) read -r -u 21 _
|   |   |   |   |   24.0:                        	(0.003185s|00.00%|00.01%)	(26x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:                        	(0.002931s|00.00%|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:                        	(0.002985s|00.00%|00.01%)	(25x) doneIndicatorFlag=true
|   |   |   |   |   30.0:                        	(0.003085s|00.00%|00.01%)	(25x) evfd_wait 25
|   |   |   |   |   31.0:                        	(0.031595s|00.00%|00.17%)	(25x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:                        	(0.002925s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:                        	(0.002989s|00.00%|00.01%)	(25x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:                        	(0.004017s|00.00%|00.02%)	(25x) printf '\n' 1>&21
|   |   |   |   |   47.0:                        	(0.003797s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p6
|   |   |   |   |   48.0:                        	(0.002819s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:                        	(0.008451s|00.00%|00.04%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:                        	(0.000196s|00.00%|00.00%)	(2x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:                        	(0.000156s|00.00%|00.00%)	(2x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   70.1:                        	(0.000188s|00.00%|00.00%)	(2x) nLinesAutoFlag=false
|   |   |   |   |   73.0:                        	(17.530955s|01.61%|98.64%)	(25x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.010900s|00.00%|00.01%)	(100x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(5.443394s|00.50%|07.06%)	(100x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(8.935019s|00.82%|10.54%)	(100x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(7.229105s|00.66%|09.56%)	(100x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(8.753353s|00.80%|10.42%)	(100x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(7.017111s|00.64%|09.08%)	(100x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.858455s|00.44%|06.40%)	(100x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.346064s|00.21%|04.05%)	(100x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(5.044284s|00.46%|06.41%)	(100x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.011590s|00.18%|03.72%)	(100x) cksum "${@}"
|   |   |   |   |   |   17.0:	(6.287335s|00.57%|08.55%)	(100x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(14.024254s|01.29%|15.44%)	(100x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.358431s|00.21%|04.33%)	(100x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.216728s|00.20%|04.24%)	(100x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:                        	(0.002764s|00.00%|00.01%)	(24x) ${nSpawnFlag}
|   |   |   |   |   71.0:                        	(0.003230s|00.00%|00.01%)	(24x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:                        	(0.000104s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:                        	(0.000073s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:                        	(0.000231s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.0:                        	(0.000174s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.1:                        	(0.002810s|00.00%|00.00%)	(2x) break
|   |   |   |   |-- 4.0:                        	(0.000187s|00.00%|00.00%)	(2x) break
|   |   |   |-- 138.0:	(0.000077s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:	(0.000560s|00.00%|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   8.0:	(0.000152s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p7
|   |   |   |   |   12.0:	(0.009170s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.003263s|00.00%|00.01%)	(24x) true
|   |   |   |   |   20.0:	(0.002930s|00.00%|00.01%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002919s|00.00%|00.01%)	(24x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.003668s|00.00%|00.02%)	(24x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p7
|   |   |   |   |   23.0:	(0.137664s|00.01%|00.76%)	(24x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.002971s|00.00%|00.01%)	(24x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.008641s|00.00%|00.02%)	(46x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.006430s|00.00%|00.01%)	(46x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.005627s|00.00%|00.01%)	(46x) evfd_wait 25
|   |   |   |   |   31.0:	(0.057408s|00.00%|00.15%)	(46x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.006674s|00.00%|00.01%)	(46x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.002697s|00.00%|00.01%)	(23x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.008811s|00.00%|00.02%)	(46x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.003335s|00.00%|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p7
|   |   |   |   |   48.0:	(0.005177s|00.00%|00.01%)	(46x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.002524s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(17.641439s|01.62%|98.42%)	(23x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002424s|00.00%|00.01%)	(23x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.165608s|00.10%|06.51%)	(23x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.094953s|00.19%|10.42%)	(23x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.727871s|00.15%|09.87%)	(23x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.068329s|00.19%|10.33%)	(23x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.626041s|00.14%|08.98%)	(23x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.104108s|00.10%|06.51%)	(23x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.532130s|00.04%|04.06%)	(23x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.126989s|00.10%|06.42%)	(23x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.482016s|00.04%|03.92%)	(23x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.487654s|00.13%|08.97%)	(23x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.213525s|00.29%|15.46%)	(23x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.504690s|00.04%|04.11%)	(23x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.505101s|00.04%|04.30%)	(23x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.002560s|00.00%|00.01%)	(22x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.005884s|00.00%|00.03%)	(22x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:	(0.000574s|00.00%|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   8.0:	(0.000293s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p8
|   |   |   |   |   12.0:	(0.009835s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.004339s|00.00%|00.02%)	(33x) true
|   |   |   |   |   20.0:	(0.003804s|00.00%|00.02%)	(33x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.003814s|00.00%|00.02%)	(33x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.005749s|00.00%|00.03%)	(33x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p8
|   |   |   |   |   23.0:	(0.158903s|00.01%|00.90%)	(33x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.004043s|00.00%|00.02%)	(33x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.006765s|00.00%|00.03%)	(32x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.003659s|00.00%|00.02%)	(32x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.003916s|00.00%|00.02%)	(32x) evfd_wait 25
|   |   |   |   |   31.0:	(0.039263s|00.00%|00.22%)	(32x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.006900s|00.00%|00.03%)	(32x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.003803s|00.00%|00.02%)	(32x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.007157s|00.00%|00.04%)	(32x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.004863s|00.00%|00.02%)	(32x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p8
|   |   |   |   |   48.0:	(0.005814s|00.00%|00.03%)	(32x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.003602s|00.00%|00.02%)	(32x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(17.274434s|01.59%|98.12%)	(32x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003615s|00.00%|00.02%)	(32x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.256340s|00.11%|07.45%)	(32x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(1.927633s|00.17%|10.54%)	(32x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.621933s|00.14%|09.43%)	(32x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(1.848405s|00.17%|10.11%)	(32x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.576654s|00.14%|09.10%)	(32x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.075310s|00.09%|06.37%)	(32x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.646302s|00.05%|04.28%)	(32x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.078112s|00.09%|06.24%)	(32x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.584515s|00.05%|03.98%)	(32x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.456399s|00.13%|08.62%)	(32x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(2.880094s|00.26%|14.79%)	(32x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.652962s|00.06%|04.39%)	(32x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.666160s|00.06%|04.56%)	(32x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.006719s|00.00%|00.03%)	(31x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.007106s|00.00%|00.04%)	(31x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:	(0.000574s|00.00%|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:	(0.000120s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p9
|   |   |   |   |   12.0:	(0.011517s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004610s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p9
|   |   |   |   |   28.0:	(0.006375s|00.00%|00.03%)	(30x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.003413s|00.00%|00.01%)	(30x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.003611s|00.00%|00.02%)	(30x) evfd_wait 25
|   |   |   |   |   31.0:	(0.039503s|00.00%|00.23%)	(30x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.006654s|00.00%|00.03%)	(30x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   46.0:	(0.003865s|00.00%|00.02%)	(30x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.004555s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p9
|   |   |   |   |   48.0:	(0.003554s|00.00%|00.02%)	(30x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.1:	(0.009867s|00.00%|00.01%)	(84x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.014682s|00.00%|00.02%)	(84x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:	(0.000231s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   58.0:	(0.000246s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   59.0:	(0.000255s|00.00%|00.00%)	(2x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0:	(0.003299s|00.00%|00.00%)	(2x) : > "/dev/shm/.forkrun.6x6B6m"/.quit
|   |   |   |   |   62.0:	(0.000427s|00.00%|00.00%)	(2x) printf '%.0s\n' "/dev/shm/.forkrun.6x6B6m"/.run/p* 1>&21
|   |   |   |   |   63.0:	(0.000244s|00.00%|00.00%)	(2x) break
|   |   |   |-- 138.0:	(0.000077s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:	(0.000612s|00.00%|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:	(0.000112s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p10
|   |   |   |   |   12.0:	(0.009676s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004369s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p10
|   |   |   |   |   47.0:	(0.004129s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p10
|   |   |   |-- 138.0:	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:	(0.000766s|00.00%|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p11
|   |   |   |   |   12.0:	(0.017637s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.006191s|00.00%|00.01%)	(46x) true
|   |   |   |   |   20.0:	(0.005531s|00.00%|00.01%)	(46x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005643s|00.00%|00.01%)	(46x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.003431s|00.00%|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p11
|   |   |   |   |   23.0:	(0.323784s|00.02%|00.86%)	(46x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.005790s|00.00%|00.01%)	(46x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.004251s|00.00%|00.02%)	(22x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.002529s|00.00%|00.01%)	(22x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002724s|00.00%|00.01%)	(22x) evfd_wait 25
|   |   |   |   |   31.0:	(0.028769s|00.00%|00.14%)	(22x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.002623s|00.00%|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.006901s|00.00%|00.01%)	(44x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.002818s|00.00%|00.01%)	(22x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.003270s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p11
|   |   |   |   |   48.0:	(0.002558s|00.00%|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.005032s|00.00%|00.01%)	(44x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(36.687577s|03.37%|98.16%)	(44x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004797s|00.00%|00.01%)	(44x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.522376s|00.23%|06.74%)	(44x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.571537s|00.42%|10.23%)	(44x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.668882s|00.33%|09.78%)	(44x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.597540s|00.42%|10.34%)	(44x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.599497s|00.33%|09.39%)	(44x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.287169s|00.21%|06.48%)	(44x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.037826s|00.09%|04.17%)	(44x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.367409s|00.21%|06.27%)	(44x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.869058s|00.07%|03.93%)	(44x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.777992s|00.25%|08.71%)	(44x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.420947s|00.59%|14.66%)	(44x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.026420s|00.09%|04.68%)	(44x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.936127s|00.08%|04.43%)	(44x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.004729s|00.00%|00.01%)	(42x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.010038s|00.00%|00.02%)	(42x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000148s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:                        	(0.000873s|00.00%|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   65.0:                        	(34.973935s|03.21%|99.99%)	(2x) << (SUBSHELL) >>
|   |   |   |   |   8.0:	(0.000084s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p12
|   |   |   |   |   12.0:	(0.009344s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.020230s|00.00%|00.02%)	(104x) true
|   |   |   |   |   20.0:	(0.015588s|00.00%|00.01%)	(104x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.015619s|00.00%|00.01%)	(104x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.003987s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p12
|   |   |   |   |   23.0:	(0.562461s|00.05%|00.72%)	(104x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.013073s|00.00%|00.01%)	(104x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.012029s|00.00%|00.01%)	(100x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.011997s|00.00%|00.01%)	(100x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.015460s|00.00%|00.01%)	(100x) evfd_wait 25
|   |   |   |   |   31.0:	(0.126602s|00.01%|00.16%)	(100x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.011707s|00.00%|00.01%)	(100x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.011694s|00.00%|00.01%)	(100x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.018557s|00.00%|00.02%)	(100x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.003644s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p12
|   |   |   |   |   48.0:	(0.012597s|00.00%|00.01%)	(100x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.016955s|00.00%|00.01%)	(100x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(76.536023s|07.04%|98.48%)	(100x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   68.1:	(0.011063s|00.00%|00.01%)	(96x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.017145s|00.00%|00.01%)	(96x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:                        	(0.000133s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:	(0.000867s|00.00%|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   8.0:	(0.000089s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p13
|   |   |   |   |   12.0:	(0.009736s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.003925s|00.00%|00.01%)	(26x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p13
|   |   |   |   |   47.0:	(0.003691s|00.00%|00.01%)	(25x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p13
|   |   |   |-- 138.0:	(0.000115s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:	(0.000898s|00.00%|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:	(0.000140s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p14
|   |   |   |   |   12.0:	(0.017566s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004351s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p14
|   |   |   |   |   47.0:	(0.003988s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p14
|   |   |   |   |   68.1:	(0.006211s|00.00%|00.01%)	(52x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.008218s|00.00%|00.01%)	(52x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000119s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:	(0.000913s|00.00%|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:	(0.000164s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p15
|   |   |   |   |   12.0:	(0.010591s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.003946s|00.00%|00.01%)	(26x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p15
|   |   |   |   |   47.0:	(0.003817s|00.00%|00.01%)	(25x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p15
|   |   |   |-- 138.0:	(0.000123s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:	(0.000918s|00.00%|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:	(0.000149s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p16
|   |   |   |   |   12.0:	(0.010360s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.006115s|00.00%|00.01%)	(44x) true
|   |   |   |   |   20.0:	(0.005268s|00.00%|00.01%)	(44x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005225s|00.00%|00.01%)	(44x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.003303s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p16
|   |   |   |   |   23.0:	(0.200830s|00.01%|00.53%)	(44x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.005503s|00.00%|00.01%)	(44x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   47.0:	(0.003059s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p16
|   |   |   |   |   68.1:	(0.004644s|00.00%|00.01%)	(40x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.006241s|00.00%|00.01%)	(40x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000124s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:	(0.000968s|00.00%|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   8.0:	(0.000148s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p17
|   |   |   |   |   12.0:	(0.009855s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.005281s|00.00%|00.02%)	(15x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p17
|   |   |   |   |   47.0:	(0.005235s|00.00%|00.02%)	(14x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p17
|   |   |   |-- 138.0:	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:	(0.000971s|00.00%|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:	(0.000169s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p18
|   |   |   |   |   12.0:	(0.016338s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.007543s|00.00%|00.02%)	(54x) true
|   |   |   |   |   20.0:	(0.006631s|00.00%|00.01%)	(54x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.006613s|00.00%|00.01%)	(54x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.004129s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p18
|   |   |   |   |   23.0:	(0.218359s|00.02%|00.61%)	(54x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.006752s|00.00%|00.01%)	(54x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.009231s|00.00%|00.02%)	(52x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.006039s|00.00%|00.01%)	(52x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.009441s|00.00%|00.02%)	(52x) evfd_wait 25
|   |   |   |   |   31.0:	(0.063189s|00.00%|00.17%)	(52x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.006309s|00.00%|00.01%)	(52x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.006219s|00.00%|00.01%)	(52x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.006720s|00.00%|00.01%)	(52x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.003909s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p18
|   |   |   |   |   48.0:	(0.006176s|00.00%|00.01%)	(52x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.006157s|00.00%|00.01%)	(52x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(34.617244s|03.18%|98.30%)	(52x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.005844s|00.00%|00.01%)	(52x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.353915s|00.21%|06.94%)	(52x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.024853s|00.37%|10.47%)	(52x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.317754s|00.30%|09.68%)	(52x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.981866s|00.36%|10.40%)	(52x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.175701s|00.29%|09.08%)	(52x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.110407s|00.19%|06.45%)	(52x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.113690s|00.10%|04.14%)	(52x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.199303s|00.20%|06.23%)	(52x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.989764s|00.09%|03.89%)	(52x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.857977s|00.26%|08.62%)	(52x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.241113s|00.57%|15.01%)	(52x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.146450s|00.10%|04.49%)	(52x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.098607s|00.10%|04.40%)	(52x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:                        	(0.001006s|00.00%|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:	(0.000149s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p19
|   |   |   |   |   12.0:	(0.018587s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.003461s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p19
|   |   |   |   |   47.0:	(0.003090s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p19
|   |   |   |   |   68.1:	(0.002364s|00.00%|00.01%)	(19x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.002553s|00.00%|00.01%)	(19x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:                        	(0.000125s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:	(0.000917s|00.00%|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:                        	(0.000127s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p20
|   |   |   |   |   12.0:                        	(0.020920s|00.00%|00.12%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:                        	(0.003159s|00.00%|00.01%)	(23x) true
|   |   |   |   |   20.0:                        	(0.002854s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:                        	(0.002914s|00.00%|00.01%)	(23x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:                        	(0.003635s|00.00%|00.02%)	(23x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p20
|   |   |   |   |   23.0:                        	(0.155753s|00.01%|00.89%)	(23x) read -r -u 21 _
|   |   |   |   |   24.0:                        	(0.003032s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:                        	(0.006032s|00.00%|00.03%)	(23x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:                        	(0.002801s|00.00%|00.01%)	(23x) doneIndicatorFlag=true
|   |   |   |   |   30.0:                        	(0.002895s|00.00%|00.01%)	(23x) evfd_wait 25
|   |   |   |   |   31.0:                        	(0.025409s|00.00%|00.14%)	(23x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:                        	(0.004037s|00.00%|00.02%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:                        	(0.002624s|00.00%|00.01%)	(22x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:                        	(0.002940s|00.00%|00.01%)	(23x) printf '\n' 1>&21
|   |   |   |   |   47.0:                        	(0.003376s|00.00%|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p20
|   |   |   |   |   48.0:                        	(0.002598s|00.00%|00.01%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:                        	(0.002518s|00.00%|00.01%)	(22x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:                        	(17.034034s|01.56%|98.03%)	(22x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   68.1:                        	(0.002334s|00.00%|00.01%)	(21x) ${nSpawnFlag}
|   |   |   |   |   71.0:                        	(0.005552s|00.00%|00.03%)	(21x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:                        	(0.000107s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   58.0:                        	(0.000106s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   59.0:                        	(0.000117s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0:                        	(0.000123s|00.00%|00.00%)	(1x) : > "/dev/shm/.forkrun.6x6B6m"/.quit
|   |   |   |   |   62.0:                        	(0.000221s|00.00%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.6x6B6m"/.run/p* 1>&21
|   |   |   |   |   63.0:                        	(0.000111s|00.00%|00.00%)	(1x) break
|   |   |   |-- 138.0:	(0.000128s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:	(0.000944s|00.00%|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:	(0.000135s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p21
|   |   |   |   |   12.0:	(0.017722s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.001375s|00.00%|00.00%)	(10x) true
|   |   |   |   |   20.0:	(0.001206s|00.00%|00.00%)	(10x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001193s|00.00%|00.00%)	(10x) read -r < "/dev/shm/.forkrun.6x6B6m"/.nLines
|   |   |   |   |   22.0:	(0.001557s|00.00%|00.00%)	(10x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p21
|   |   |   |   |   23.0:	(0.050034s|00.00%|00.24%)	(10x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.001246s|00.00%|00.00%)	(10x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.quit ]]
|   |   |   |   |   28.0:	(0.001101s|00.00%|00.00%)	(9x) [[ -f "/dev/shm/.forkrun.6x6B6m"/.done ]]
|   |   |   |   |   28.1:	(0.001068s|00.00%|00.00%)	(9x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001179s|00.00%|00.00%)	(9x) evfd_wait 25
|   |   |   |   |   31.0:	(0.009262s|00.00%|00.04%)	(9x) mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:	(0.001084s|00.00%|00.00%)	(9x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.001146s|00.00%|00.00%)	(9x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.002272s|00.00%|00.01%)	(9x) printf '\n' 1>&21
|   |   |   |   |   47.0:	(0.001370s|00.00%|00.00%)	(9x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p21
|   |   |   |   |   48.0:	(0.001093s|00.00%|00.00%)	(9x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.001072s|00.00%|00.00%)	(9x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(20.279007s|01.86%|99.10%)	(9x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002004s|00.00%|00.02%)	(18x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.797248s|00.16%|06.96%)	(18x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(3.537482s|00.32%|10.67%)	(18x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.628797s|00.24%|09.73%)	(18x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.491056s|00.32%|10.42%)	(18x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.633566s|00.24%|09.23%)	(18x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.591624s|00.14%|06.34%)	(18x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.549721s|00.05%|04.24%)	(18x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.707665s|00.15%|06.20%)	(18x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.449321s|00.04%|04.18%)	(18x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.851527s|00.17%|08.36%)	(18x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.960080s|00.45%|14.24%)	(18x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.481530s|00.04%|04.45%)	(18x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.459225s|00.04%|04.80%)	(18x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.000918s|00.00%|00.00%)	(8x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.001073s|00.00%|00.00%)	(8x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000142s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:	(0.000995s|00.00%|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:	(0.000136s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p22
|   |   |   |   |   12.0:	(0.017356s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004627s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p22
|   |   |   |   |   47.0:	(0.004262s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p22
|   |   |   |   |   |-- 1.0:                        	(0.000359s|00.00%|00.03%)	(3x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(0.070361s|00.00%|07.30%)	(3x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(0.098149s|00.00%|09.95%)	(3x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(0.089886s|00.00%|09.33%)	(3x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(0.083774s|00.00%|08.35%)	(3x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(0.093861s|00.00%|09.49%)	(3x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(0.066804s|00.00%|06.96%)	(3x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.051745s|00.00%|05.45%)	(3x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(0.066280s|00.00%|06.55%)	(3x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.055207s|00.00%|05.69%)	(3x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(0.081122s|00.00%|08.38%)	(3x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(0.103707s|00.00%|10.28%)	(3x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.061214s|00.00%|06.49%)	(3x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.053452s|00.00%|05.65%)	(3x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:	(0.000127s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:	(0.000985s|00.00%|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:	(0.000143s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p23
|   |   |   |   |   12.0:	(0.021563s|00.00%|00.12%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004133s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p23
|   |   |   |   |   47.0:	(0.003943s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p23
|   |   |   |-- 138.0:	(0.000135s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:	(0.000969s|00.00%|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:	(0.000124s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p24
|   |   |   |   |   12.0:	(0.018259s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004326s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p24
|   |   |   |   |   47.0:	(0.004134s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p24
|   |   |   |-- 138.0:	(0.000140s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:	(0.001064s|00.00%|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p25
|   |   |   |   |   12.0:	(0.017730s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004782s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p25
|   |   |   |   |   47.0:	(0.007472s|00.00%|00.04%)	(29x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p25
|   |   |   |-- 138.0:	(0.000132s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:	(0.001037s|00.00%|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:	(0.000129s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p26
|   |   |   |   |   12.0:	(0.018232s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.003473s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p26
|   |   |   |   |   47.0:	(0.003104s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p26
|   |   |   |-- 138.0:	(0.000132s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:	(0.001046s|00.00%|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:	(0.000138s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.6x6B6m"/.run/p27
|   |   |   |   |   12.0:	(0.017916s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.6x6B6m"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.6x6B6m"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.6x6B6m"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004474s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.6x6B6m"/.wait/p27
|   |   |   |   |   47.0:	(0.004296s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.6x6B6m"/.wait/p27
|   |   |   |-- 138.0:	(0.000145s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:	(0.000136s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:	(0.000129s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:	(0.000106s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:	(0.000103s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:	(0.001135s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:	(0.000113s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:	(0.000103s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:	(0.000103s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:	(23.110493s|02.12%|04.25%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:	(0.000235s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:	(0.000238s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -223.0:	(0.000378s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -222.0:	(0.000279s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.0:	(0.001638s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.1:	(0.004990s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -221.0:	(0.004990s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -220.0:	(0.000077s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.0:	(0.001039s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.1:	(0.003737s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -219.0:	(0.003737s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -218.0:	(0.000084s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.0:	(0.000607s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.1:	(0.002199s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -217.0:	(0.002199s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -216.0:	(0.015147s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:	(0.000263s|00.00%|00.00%)	(1x) wait
|-- |-- -223.0:	(0.003313s|00.00%|00.00%)	(1x) wait (?)

2.0:	(543.092083s|49.99%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:	(0.000547s|00.00%|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   347.0:	(543.091536s|49.99%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 347.0:	(0.016917s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:	(0.000069s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:	(0.000072s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:	(0.000122s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:	(0.000095s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:	(0.000077s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:	(0.000067s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:	(0.000071s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:	(0.000057s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:	(0.000063s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:	(0.000119s|00.00%|00.00%)	(2x) ${optParseFlag}
|   |   81.1:	(0.000120s|00.00%|00.00%)	(2x) (( $# > 0  ))
|   |   81.2:	(0.000117s|00.00%|00.00%)	(2x) [[ "$1" == [-+]* ]]
|   |   82.0:	(0.000090s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:	(0.000066s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:	(0.000060s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:	(0.000061s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:	(0.000063s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:	(0.000068s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:	(0.000062s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:	(0.000063s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:	(0.000072s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:	(0.000060s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:	(0.001135s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:	(0.002019s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:	(0.002019s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:	(0.000061s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:	(0.002568s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:	(0.000090s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:	(0.000060s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:	(0.010181s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:	(543.053010s|49.98%|49.99%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:	(0.000067s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:	(0.000072s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:	(0.000492s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:	(0.000070s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:	(0.000120s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:	(0.000074s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:	(0.000074s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:	(0.000082s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:	(0.000072s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:	(0.000065s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:	(0.000064s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:	(0.000186s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:	(0.000071s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:	(0.000060s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:	(0.000063s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:	(0.000062s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:	(0.000071s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:	(0.000071s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:	(0.000074s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:	(0.000062s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:	(0.000062s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:	(0.000518s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:	(0.000108s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:	(0.000108s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:	(0.000068s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:	(0.000061s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:	(0.000067s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:	(0.000063s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:	(0.000060s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:	(0.000059s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:	(0.000061s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:	(0.000084s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:	(0.000071s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:	(0.000062s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:	(0.000066s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:	(0.000059s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:	(0.000065s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:	(0.000060s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:	(0.000061s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:	(0.000787s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:	(0.000058s|00.00%|07.36%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:	(0.000064s|00.00%|08.13%)	(1x) local +i -l nn
|   |   |   |   9.0:	(0.000061s|00.00%|07.75%)	(1x) local vOut
|   |   |   |   11.0:	(0.000063s|00.00%|08.00%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:	(0.000062s|00.00%|07.87%)	(1x) shift 1
|   |   |   |   13.0:	(0.000064s|00.00%|08.13%)	(1x) local -g vOut
|   |   |   |   15.0:	(0.000061s|00.00%|07.75%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:	(0.000106s|00.00%|13.46%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:	(0.000060s|00.00%|07.62%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:	(0.000061s|00.00%|07.75%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:	(0.000062s|00.00%|07.87%)	(1x) continue
|   |   |   |-- 28.0:	(0.000065s|00.00%|08.25%)	(1x) local +n vOut
|   |   |   438.0:	(0.000064s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:	(0.000864s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:	(0.002283s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:	(0.000249s|00.00%|10.90%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:	(0.002034s|00.00%|89.09%)	(1x) nproc
|   |   |   441.0:	(0.000062s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:	(0.000061s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:	(0.000058s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:	(0.000066s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:	(0.000061s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:	(0.000059s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:	(0.000076s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:	(0.000070s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:	(0.000060s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:	(0.000064s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:	(0.000060s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:	(0.000059s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:	(0.000065s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:	(0.000139s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:	(0.000059s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:	(0.000063s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:	(0.000061s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:	(0.000060s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:	(0.000059s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:	(0.000060s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:	(0.000063s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:	(0.000064s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:	(0.000062s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:	(0.000063s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:	(0.000101s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:	(0.000065s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:	(0.002857s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   485.0:	(0.000062s|00.00%|00.00%)	(1x) ddQuietStr='status=none'
|   |   |   492.0:	(0.000060s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:	(0.000060s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:	(0.000062s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:	(0.000061s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:	(0.000592s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:	(0.000075s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:	(0.000075s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:	(0.000061s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:	(0.000064s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:	(0.000060s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:	(0.001063s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:	(0.000061s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:	(0.000062s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:	(0.000060s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:	(0.000064s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:	(0.000077s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:	(0.000070s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:	(0.000065s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:	(0.000060s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:	(0.000473s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:	(0.064175s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:	(0.000076s|00.00%|00.11%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:	(0.008039s|00.00%|12.52%)	(1x) trap - EXIT
|   |   |   |   602.0:	(0.009405s|00.00%|14.65%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:	(0.009377s|00.00%|14.61%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:	(0.009371s|00.00%|14.60%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:	(0.009401s|00.00%|14.64%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:	(0.000063s|00.00%|00.09%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:	(0.018228s|00.00%|28.40%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:	(0.000091s|00.00%|00.14%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:	(0.000062s|00.00%|00.09%)	(1x) evfd_signal
|   |   |   |-- 615.0:	(0.000062s|00.00%|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:	(0.000066s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:	(0.000060s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:	(0.000059s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:	(0.000062s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:	(0.000400s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:	(6.592917s|00.60%|01.21%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:	(0.000086s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:	(0.008985s|00.00%|00.13%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:	(0.009425s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:	(0.009382s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:	(0.009383s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:	(0.009407s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:	(0.000064s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:	(0.000063s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:	(0.000061s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:	(0.000064s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:	(0.077115s|00.00%|01.16%)	(677x) ${fallocateFlag}
|   |   |   |   702.0:	(5.297693s|00.48%|80.35%)	(676x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:	(0.001151s|00.00%|00.01%)	(9x) continue
|   |   |   |   704.0:	(0.075579s|00.00%|01.14%)	(667x) case ${REPLY} in
|   |   |   |   718.0:	(0.080344s|00.00%|01.21%)	(666x) ${nLinesAutoFlag}
|   |   |   |   719.0:	(0.000062s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:	(0.000065s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:	(0.075146s|00.00%|01.13%)	(667x) ${lseekPosFlag}
|   |   |   |   729.0:	(0.100349s|00.00%|01.52%)	(667x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:	(0.078398s|00.00%|01.18%)	(667x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:	(0.076347s|00.00%|01.15%)	(667x) ${nLinesAutoFlag}
|   |   |   |   737.1:	(0.083026s|00.00%|01.25%)	(667x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:	(0.074820s|00.00%|01.13%)	(667x) ${nSpawnFlag}
|   |   |   |   741.0:	(0.077277s|00.00%|01.17%)	(667x) ${nLinesAutoFlag}
|   |   |   |   743.0:	(0.000062s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:	(0.000065s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:	(0.000613s|00.00%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:	(0.002405s|00.00%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:	(0.002404s|00.00%|99.95%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:	(0.000080s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:	(0.000109s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:	(0.000105s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:	(0.000103s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:	(0.000096s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:	(0.000101s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:	(0.000098s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:	(0.000132s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:	(0.000098s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:	(0.000119s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:	(0.074868s|00.00%|01.13%)	(667x) ${fallocateFlag}
|   |   |   |   767.0:	(0.073734s|00.00%|01.11%)	(667x) case ${nWait} in
|   |   |   |   778.0:	(0.072148s|00.00%|01.09%)	(646x) ((nWait--))
|   |   |   |   783.0:	(0.080048s|00.00%|01.21%)	(667x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:	(0.076891s|00.00%|01.16%)	(665x) ${nSpawnFlag}
|   |   |   |   769.0:	(0.002609s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:	(0.002554s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:	(0.047941s|00.00%|00.72%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:	(0.002456s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:	(0.002410s|00.00%|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:	(0.006527s|00.00%|00.09%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   712.0:	(0.000110s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   784.0:	(0.000133s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:	(0.000106s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:	(0.000135s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:	(0.000108s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:	(0.000129s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -223.0:	(0.000112s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -223.1:	(0.001420s|00.00%|00.02%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:	(0.000065s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:	(0.000090s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:	(0.000085s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:	(0.001350s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:	(0.013688s|00.00%|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:	(0.000187s|00.00%|04.08%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:	(0.000065s|00.00%|01.41%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:	(0.000074s|00.00%|01.61%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:	(0.000209s|00.00%|04.56%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:	(0.000062s|00.00%|01.35%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:	(0.000060s|00.00%|01.30%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:	(0.000064s|00.00%|01.39%)	(1x) echo "{"
|   |   |   |   1403.0:	(0.000061s|00.00%|01.33%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:	(0.000060s|00.00%|01.30%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:	(0.000064s|00.00%|01.39%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:	(0.000068s|00.00%|01.48%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:	(0.000061s|00.00%|01.33%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:	(0.000065s|00.00%|01.41%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:	(0.000065s|00.00%|01.41%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:	(0.000061s|00.00%|01.33%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:	(0.000063s|00.00%|01.37%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:	(0.000061s|00.00%|01.33%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:	(0.000061s|00.00%|01.33%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:	(0.000064s|00.00%|01.39%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:	(0.000066s|00.00%|01.44%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:	(0.000060s|00.00%|01.30%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:	(0.000060s|00.00%|01.30%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:	(0.000093s|00.00%|02.02%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:	(0.000061s|00.00%|01.33%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:	(0.000063s|00.00%|01.37%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:	(0.000069s|00.00%|01.50%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:	(0.000067s|00.00%|01.46%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:	(0.000082s|00.00%|01.78%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:	(0.000061s|00.00%|01.33%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:	(0.000074s|00.00%|01.61%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:	(0.000073s|00.00%|01.59%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:	(0.000062s|00.00%|01.35%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:	(0.000068s|00.00%|01.48%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:	(0.000065s|00.00%|01.41%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:	(0.000066s|00.00%|01.44%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:	(0.000073s|00.00%|01.59%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:	(0.000063s|00.00%|01.37%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:	(0.000075s|00.00%|01.63%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:	(0.000062s|00.00%|01.35%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:	(0.000075s|00.00%|01.63%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:	(0.000061s|00.00%|01.33%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:	(0.000070s|00.00%|01.52%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:	(0.000062s|00.00%|01.35%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:	(0.000077s|00.00%|01.68%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:	(0.000064s|00.00%|01.39%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:	(0.000066s|00.00%|01.44%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:	(0.000060s|00.00%|01.30%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:	(0.000069s|00.00%|01.50%)	(1x) echo '{'
|   |   |   |   1528.0:	(0.000060s|00.00%|01.30%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:	(0.000065s|00.00%|01.41%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:	(0.000063s|00.00%|01.37%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:	(0.000085s|00.00%|01.85%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:	(0.000060s|00.00%|01.30%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:	(0.000060s|00.00%|01.30%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:	(0.000061s|00.00%|01.33%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:	(0.000061s|00.00%|01.33%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:	(0.000083s|00.00%|01.81%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:	(0.000066s|00.00%|01.44%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:	(0.000063s|00.00%|01.37%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:	(0.000059s|00.00%|01.28%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:	(0.000081s|00.00%|01.76%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:	(0.000066s|00.00%|01.44%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:	(0.000065s|00.00%|01.41%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:	(0.000065s|00.00%|01.41%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:	(0.000078s|00.00%|01.70%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:	(0.000118s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:	(0.000067s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:	(0.000065s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:	(0.009610s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:	(0.009416s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:	(0.009347s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:	(0.000065s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:	(0.000064s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:	(0.000064s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:	(0.000069s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:	(0.002384s|00.00%|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:	(0.002392s|00.00%|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:	(0.002371s|00.00%|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:	(513.160343s|47.23%|94.49%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:	(0.000538s|00.00%|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:	(513.136481s|47.23%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:	(0.003988s|00.00%|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.xl7Kp6"
|   |   |   |   |   8.0:	(0.000107s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p0
|   |   |   |   |   12.0:	(0.009123s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:	(0.371155s|00.03%|00.06%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 3035918 ${BASHPID}' INT
|   |   |   |   |   15.0:	(0.379775s|00.03%|00.06%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 3035918 ${BASHPID}' TERM
|   |   |   |   |   16.0:	(0.378933s|00.03%|00.06%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 3035918 ${BASHPID}' HUP
|   |   |   |   |   17.0:	(0.386477s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:	(0.002384s|00.00%|00.01%)	(18x) true
|   |   |   |   |   20.0:	(0.002107s|00.00%|00.01%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002233s|00.00%|00.01%)	(18x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   20.2:	(0.000749s|00.00%|00.00%)	(10x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.000757s|00.00%|00.00%)	(10x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.002762s|00.00%|00.01%)	(18x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p0
|   |   |   |   |   23.0:	(0.072362s|00.00%|00.40%)	(18x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.002206s|00.00%|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.001967s|00.00%|00.01%)	(17x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.004903s|00.00%|00.02%)	(17x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002005s|00.00%|00.01%)	(17x) evfd_wait 25
|   |   |   |   |   31.0:	(0.023116s|00.00%|00.12%)	(17x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.003311s|00.00%|00.01%)	(17x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.002505s|00.00%|00.01%)	(17x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p0
|   |   |   |   |   36.0:	(0.001884s|00.00%|00.01%)	(17x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.001945s|00.00%|00.01%)	(17x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:	(0.000976s|00.00%|00.00%)	(10x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:	(0.000862s|00.00%|00.00%)	(10x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:	(17.645973s|01.62%|98.95%)	(17x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001873s|00.00%|00.03%)	(17x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.107529s|00.10%|06.67%)	(17x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.096206s|00.19%|10.16%)	(17x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.727549s|00.15%|10.23%)	(17x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.193596s|00.20%|10.64%)	(17x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.639274s|00.15%|09.02%)	(17x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.007599s|00.09%|06.18%)	(17x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.423010s|00.03%|04.08%)	(17x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.131664s|00.10%|06.26%)	(17x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.392753s|00.03%|04.10%)	(17x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.436293s|00.13%|08.48%)	(17x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.691249s|00.33%|15.72%)	(17x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.409530s|00.03%|04.19%)	(17x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.387848s|00.03%|04.12%)	(17x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.001099s|00.00%|00.01%)	(10x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(0.672016s|00.06%|07.12%)	(10x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(1.114816s|00.10%|10.74%)	(10x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(0.845396s|00.07%|09.78%)	(10x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(1.069486s|00.09%|10.73%)	(10x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(0.805991s|00.07%|09.45%)	(10x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(0.579833s|00.05%|06.85%)	(10x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.230967s|00.02%|03.98%)	(10x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(0.567104s|00.05%|06.55%)	(10x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.211621s|00.01%|03.74%)	(10x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(0.639211s|00.05%|08.39%)	(10x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(1.364860s|00.12%|14.09%)	(10x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.246781s|00.02%|04.43%)	(10x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.206361s|00.01%|04.00%)	(10x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:	(0.002944s|00.00%|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   56.1:	(0.004781s|00.00%|00.02%)	(15x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.004967s|00.00%|00.02%)	(15x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:	(0.002480s|00.00%|00.00%)	(26x) printf '\n' 1>&21
|   |   |   |   |   26.0:	(0.002564s|00.00%|00.00%)	(26x) break
|   |   |   |   |   2.0:	(0.003029s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.0:	(0.002566s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.1:	(0.038904s|00.00%|00.00%)	(28x) break
|   |   |   |   |-- 4.0:	(0.002802s|00.00%|00.00%)	(28x) break
|   |   |   |-- 126.0:	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:	(0.000519s|00.00%|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:	(0.001086s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p1
|   |   |   |   |   12.0:	(0.009999s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.006012s|00.00%|00.01%)	(46x) true
|   |   |   |   |   20.0:	(0.005239s|00.00%|00.01%)	(46x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.008539s|00.00%|00.02%)	(46x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.003431s|00.00%|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p1
|   |   |   |   |   23.0:	(0.274780s|00.02%|00.73%)	(46x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.005684s|00.00%|00.01%)	(46x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.008222s|00.00%|00.02%)	(44x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.005101s|00.00%|00.01%)	(44x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.005547s|00.00%|00.01%)	(44x) evfd_wait 25
|   |   |   |   |   31.0:	(0.052422s|00.00%|00.13%)	(44x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.009096s|00.00%|00.02%)	(44x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.003266s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p1
|   |   |   |   |   36.0:	(0.005176s|00.00%|00.01%)	(44x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.004992s|00.00%|00.01%)	(44x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(37.021301s|03.40%|98.46%)	(44x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004947s|00.00%|00.02%)	(44x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.600093s|00.23%|06.95%)	(44x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.620764s|00.42%|10.38%)	(44x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.687880s|00.33%|09.60%)	(44x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.613068s|00.42%|10.15%)	(44x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.608460s|00.33%|09.37%)	(44x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.364876s|00.21%|06.66%)	(44x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.006685s|00.09%|04.17%)	(44x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.396645s|00.22%|06.22%)	(44x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.894281s|00.08%|04.12%)	(44x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.799904s|00.25%|08.57%)	(44x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.445783s|00.59%|14.38%)	(44x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.009768s|00.09%|04.56%)	(44x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.968147s|00.08%|04.66%)	(44x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.003942s|00.00%|00.01%)	(36x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(2.218448s|00.20%|06.62%)	(36x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(4.074750s|00.37%|10.72%)	(36x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(3.215949s|00.29%|09.44%)	(36x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(4.077981s|00.37%|10.67%)	(36x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(3.197278s|00.29%|09.29%)	(36x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(2.111140s|00.19%|06.51%)	(36x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.884472s|00.08%|03.72%)	(36x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(2.216872s|00.20%|06.71%)	(36x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.728957s|00.06%|03.33%)	(36x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(2.432733s|00.22%|08.37%)	(36x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(5.610275s|00.51%|16.30%)	(36x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.870470s|00.08%|04.03%)	(36x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.839566s|00.07%|04.09%)	(36x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.013924s|00.00%|00.01%)	(120x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.028688s|00.00%|00.03%)	(120x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:                        	(0.000521s|00.00%|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   65.0:                        	(34.520879s|03.17%|99.99%)	(2x) << (SUBSHELL) >>
|   |   |   |   |   8.0:	(0.001241s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p2
|   |   |   |   |   12.0:	(0.009011s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.020375s|00.00%|00.02%)	(145x) true
|   |   |   |   |   20.0:	(0.020310s|00.00%|00.01%)	(145x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.017528s|00.00%|00.01%)	(145x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.008900s|00.00%|00.02%)	(58x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p2
|   |   |   |   |   23.0:	(0.618954s|00.05%|00.71%)	(145x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.021379s|00.00%|00.02%)	(145x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.016879s|00.00%|00.01%)	(140x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.016511s|00.00%|00.01%)	(140x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.019563s|00.00%|00.02%)	(140x) evfd_wait 25
|   |   |   |   |   31.0:	(0.183618s|00.01%|00.20%)	(140x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.029881s|00.00%|00.02%)	(140x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.008393s|00.00%|00.02%)	(56x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p2
|   |   |   |   |   36.0:	(0.016461s|00.00%|00.01%)	(140x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.025400s|00.00%|00.02%)	(140x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(84.844460s|07.80%|98.35%)	(140x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.017831s|00.00%|00.02%)	(140x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(5.812554s|00.53%|06.89%)	(140x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(9.395574s|00.86%|10.24%)	(140x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(8.163982s|00.75%|09.69%)	(140x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(9.354065s|00.86%|10.22%)	(140x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(7.826541s|00.72%|09.12%)	(140x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(5.305946s|00.48%|06.56%)	(140x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.969174s|00.27%|04.21%)	(140x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(5.334626s|00.49%|06.25%)	(140x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.651075s|00.24%|03.92%)	(140x) cksum "${@}"
|   |   |   |   |   |   17.0:	(7.139479s|00.65%|08.62%)	(140x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(14.736775s|01.35%|15.09%)	(140x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(3.116271s|00.28%|04.54%)	(140x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(3.020567s|00.27%|04.44%)	(140x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.014810s|00.00%|00.01%)	(104x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.020858s|00.00%|00.02%)	(104x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:                        	(0.000079s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:	(0.000532s|00.00%|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:	(0.000084s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p3
|   |   |   |   |   12.0:	(0.009122s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.006399s|00.00%|00.01%)	(48x) true
|   |   |   |   |   20.0:	(0.005625s|00.00%|00.01%)	(48x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005720s|00.00%|00.01%)	(48x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.003485s|00.00%|00.01%)	(24x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p3
|   |   |   |   |   23.0:	(0.187836s|00.01%|00.52%)	(48x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.006020s|00.00%|00.01%)	(48x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.005733s|00.00%|00.01%)	(48x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.005753s|00.00%|00.01%)	(48x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.006099s|00.00%|00.01%)	(48x) evfd_wait 25
|   |   |   |   |   31.0:	(0.068964s|00.00%|00.18%)	(48x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.014128s|00.00%|00.03%)	(48x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.003467s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p3
|   |   |   |   |   36.0:	(0.005436s|00.00%|00.01%)	(48x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.005386s|00.00%|00.01%)	(46x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(34.910162s|03.21%|98.57%)	(46x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.005114s|00.00%|00.02%)	(46x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.322296s|00.21%|06.81%)	(46x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.145635s|00.38%|10.67%)	(46x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.345134s|00.30%|09.78%)	(46x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.126419s|00.37%|10.43%)	(46x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.233938s|00.29%|09.11%)	(46x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.161148s|00.19%|06.49%)	(46x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.054405s|00.09%|04.03%)	(46x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.178036s|00.20%|06.18%)	(46x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.878312s|00.08%|03.74%)	(46x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.908355s|00.26%|08.83%)	(46x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.567633s|00.60%|15.29%)	(46x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.007988s|00.09%|04.28%)	(46x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.975749s|00.08%|04.19%)	(46x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.004950s|00.00%|00.01%)	(42x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.008409s|00.00%|00.02%)	(42x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   37.0:	(0.000240s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.000255s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:	(0.000243s|00.00%|00.00%)	(2x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:	(0.000273s|00.00%|00.00%)	(2x) : > "/dev/shm/.forkrun.xl7Kp6"/.quit
|   |   |   |   |   50.0:	(0.000388s|00.00%|00.00%)	(2x) printf '%.0s\n' "/dev/shm/.forkrun.xl7Kp6"/.run/p* 1>&21
|   |   |   |   |   51.0:	(0.000276s|00.00%|00.00%)	(2x) break
|   |   |   |-- 126.0:	(0.000083s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:	(0.000530s|00.00%|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:	(0.000220s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p4
|   |   |   |   |   12.0:	(0.009108s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004397s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p4
|   |   |   |   |   35.0:	(0.009989s|00.00%|00.05%)	(28x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p4
|   |   |   |-- 126.0:	(0.000083s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:	(0.000543s|00.00%|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:	(0.000294s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p5
|   |   |   |   |   12.0:	(0.009275s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.001680s|00.00%|00.00%)	(13x) true
|   |   |   |   |   20.0:	(0.001472s|00.00%|00.00%)	(13x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001561s|00.00%|00.00%)	(13x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   20.2:	(0.002054s|00.00%|00.00%)	(23x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.002037s|00.00%|00.00%)	(23x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.001961s|00.00%|00.00%)	(13x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p5
|   |   |   |   |   23.0:	(0.040201s|00.00%|00.19%)	(13x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.001495s|00.00%|00.00%)	(13x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.001370s|00.00%|00.00%)	(12x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.001419s|00.00%|00.00%)	(12x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001531s|00.00%|00.00%)	(12x) evfd_wait 25
|   |   |   |   |   31.0:	(0.012617s|00.00%|00.06%)	(12x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.004756s|00.00%|00.02%)	(12x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.001641s|00.00%|00.00%)	(12x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p5
|   |   |   |   |   36.0:	(0.001365s|00.00%|00.00%)	(12x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.001391s|00.00%|00.00%)	(12x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:	(0.002629s|00.00%|00.00%)	(23x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:	(0.002323s|00.00%|00.00%)	(23x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:	(20.296799s|01.86%|99.36%)	(12x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001341s|00.00%|00.01%)	(12x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.392489s|00.12%|06.47%)	(12x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.809855s|00.25%|11.20%)	(12x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.103280s|00.19%|09.73%)	(12x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.799408s|00.25%|11.26%)	(12x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.064071s|00.18%|09.47%)	(12x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.294942s|00.11%|06.46%)	(12x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.398481s|00.03%|03.47%)	(12x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.315951s|00.12%|06.20%)	(12x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.297651s|00.02%|03.06%)	(12x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.403360s|00.12%|08.27%)	(12x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.764612s|00.34%|17.23%)	(12x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.346533s|00.03%|03.66%)	(12x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.304825s|00.02%|03.37%)	(12x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.001321s|00.00%|00.00%)	(11x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.004567s|00.00%|00.02%)	(11x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:	(0.000555s|00.00%|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   8.0:	(0.000205s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p6
|   |   |   |   |   12.0:	(0.012319s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.001265s|00.00%|00.00%)	(10x) true
|   |   |   |   |   20.0:	(0.001124s|00.00%|00.00%)	(10x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001163s|00.00%|00.00%)	(10x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.001442s|00.00%|00.00%)	(10x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p6
|   |   |   |   |   23.0:	(0.055862s|00.00%|00.29%)	(10x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.001078s|00.00%|00.00%)	(10x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.000996s|00.00%|00.00%)	(9x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.000994s|00.00%|00.00%)	(9x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001043s|00.00%|00.00%)	(9x) evfd_wait 25
|   |   |   |   |   31.0:	(0.013030s|00.00%|00.06%)	(9x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.004112s|00.00%|00.02%)	(9x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.004280s|00.00%|00.02%)	(9x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p6
|   |   |   |   |   36.0:	(0.001010s|00.00%|00.00%)	(9x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.000952s|00.00%|00.00%)	(9x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(18.982163s|01.74%|99.25%)	(9x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.000893s|00.00%|00.01%)	(9x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.219094s|00.11%|06.40%)	(9x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.502122s|00.23%|11.30%)	(9x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.883343s|00.17%|09.91%)	(9x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.593318s|00.23%|11.79%)	(9x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.814783s|00.16%|09.45%)	(9x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.064657s|00.09%|06.13%)	(9x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.324750s|00.02%|03.24%)	(9x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.207422s|00.11%|06.73%)	(9x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.253936s|00.02%|03.13%)	(9x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.436357s|00.13%|08.19%)	(9x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.117613s|00.37%|16.78%)	(9x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.306064s|00.02%|03.47%)	(9x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.257811s|00.02%|03.36%)	(9x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.000917s|00.00%|00.00%)	(8x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.001023s|00.00%|00.00%)	(8x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000083s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:	(0.000560s|00.00%|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   8.0:	(0.000082s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p7
|   |   |   |   |   12.0:	(0.009181s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.008711s|00.00%|00.02%)	(64x) true
|   |   |   |   |   20.0:	(0.007805s|00.00%|00.02%)	(64x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.007737s|00.00%|00.02%)	(64x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.004916s|00.00%|00.02%)	(32x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p7
|   |   |   |   |   23.0:	(0.197733s|00.01%|00.56%)	(64x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.007542s|00.00%|00.02%)	(64x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.010342s|00.00%|00.02%)	(62x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.007055s|00.00%|00.01%)	(62x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.007490s|00.00%|00.02%)	(62x) evfd_wait 25
|   |   |   |   |   31.0:	(0.085793s|00.00%|00.24%)	(62x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.020999s|00.00%|00.05%)	(62x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.004507s|00.00%|00.02%)	(31x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p7
|   |   |   |   |   36.0:	(0.007042s|00.00%|00.01%)	(62x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.006975s|00.00%|00.01%)	(62x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(34.185564s|03.14%|98.45%)	(62x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006720s|00.00%|00.01%)	(62x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.357437s|00.21%|06.91%)	(62x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(3.675252s|00.33%|10.01%)	(62x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.254574s|00.29%|09.52%)	(62x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.774273s|00.34%|10.34%)	(62x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.162490s|00.29%|09.18%)	(62x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.161366s|00.19%|06.50%)	(62x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.309682s|00.12%|04.39%)	(62x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.188561s|00.20%|06.42%)	(62x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.216524s|00.11%|04.22%)	(62x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.892079s|00.26%|08.63%)	(62x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(5.552260s|00.51%|14.46%)	(62x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.319454s|00.12%|04.57%)	(62x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.314892s|00.12%|04.68%)	(62x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:	(0.000572s|00.00%|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |-- 65.0:                        	(0.000427s|00.00%|00.00%)	(2x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.xl7Kp6"
|   |   |   |   |   8.0:                        	(0.000281s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p8
|   |   |   |   |   12.0:                        	(0.009240s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   14.0:                        	(0.031471s|00.00%|00.08%)	(2x) trap 'trap - TERM INT HUP USR1; kill -INT 3035918 ${BASHPID}' INT
|   |   |   |   |   15.0:                        	(0.030636s|00.00%|00.07%)	(2x) trap 'trap - TERM INT HUP USR1; kill -TERM 3035918 ${BASHPID}' TERM
|   |   |   |   |   16.0:                        	(0.030227s|00.00%|00.07%)	(2x) trap 'trap - TERM INT HUP USR1; kill -HUP 3035918 ${BASHPID}' HUP
|   |   |   |   |   17.0:                        	(0.030752s|00.00%|00.07%)	(2x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:                        	(0.003788s|00.00%|00.02%)	(26x) true
|   |   |   |   |   20.0:                        	(0.003193s|00.00%|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:                        	(0.006262s|00.00%|00.03%)	(26x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   20.2:                        	(0.000182s|00.00%|00.00%)	(2x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:                        	(0.000177s|00.00%|00.00%)	(2x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:                        	(0.004112s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p8
|   |   |   |   |   23.0:                        	(0.071786s|00.00%|00.41%)	(26x) read -r -u 21 _
|   |   |   |   |   24.0:                        	(0.003361s|00.00%|00.01%)	(26x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:                        	(0.003173s|00.00%|00.01%)	(26x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:                        	(0.003168s|00.00%|00.01%)	(26x) doneIndicatorFlag=true
|   |   |   |   |   30.0:                        	(0.003390s|00.00%|00.01%)	(26x) evfd_wait 25
|   |   |   |   |   31.0:                        	(0.029273s|00.00%|00.16%)	(26x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:                        	(0.003523s|00.00%|00.02%)	(26x) printf '\n' 1>&21
|   |   |   |   |   35.0:                        	(0.004004s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p8
|   |   |   |   |   36.0:                        	(0.003124s|00.00%|00.01%)	(26x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:                        	(0.002986s|00.00%|00.01%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:                        	(0.000209s|00.00%|00.00%)	(2x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:                        	(0.000179s|00.00%|00.00%)	(2x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   58.1:                        	(0.000187s|00.00%|00.00%)	(2x) nLinesAutoFlag=false
|   |   |   |   |   61.0:                        	(17.074479s|01.57%|98.80%)	(25x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.005622s|00.00%|00.01%)	(50x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.387416s|00.21%|06.98%)	(50x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(3.973823s|00.36%|10.26%)	(50x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.353529s|00.30%|09.70%)	(50x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.934274s|00.36%|10.25%)	(50x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.210490s|00.29%|09.25%)	(50x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.093360s|00.19%|06.44%)	(50x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.088174s|00.10%|04.16%)	(50x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.195498s|00.20%|06.31%)	(50x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.966451s|00.08%|03.84%)	(50x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.892176s|00.26%|08.75%)	(50x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.200364s|00.57%|14.96%)	(50x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.113985s|00.10%|04.43%)	(50x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.073681s|00.09%|04.47%)	(50x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:                        	(0.002835s|00.00%|00.01%)	(24x) ${nSpawnFlag}
|   |   |   |   |   59.0:                        	(0.006273s|00.00%|00.03%)	(24x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   37.0:                        	(0.000112s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:                        	(0.000131s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:                        	(0.000125s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:                        	(0.000148s|00.00%|00.00%)	(1x) : > "/dev/shm/.forkrun.xl7Kp6"/.quit
|   |   |   |   |   50.0:                        	(0.000203s|00.00%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.xl7Kp6"/.run/p* 1>&21
|   |   |   |   |   51.0:                        	(0.000155s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:                        	(0.000211s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.0:                        	(0.000175s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.1:                        	(0.002715s|00.00%|00.00%)	(2x) break
|   |   |   |   |-- 4.0:                        	(0.000190s|00.00%|00.00%)	(2x) break
|   |   |   |-- 126.0:	(0.000086s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:	(0.000571s|00.00%|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:	(0.000209s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p9
|   |   |   |   |   12.0:	(0.011493s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.003404s|00.00%|00.01%)	(25x) true
|   |   |   |   |   20.0:	(0.003056s|00.00%|00.01%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.003074s|00.00%|00.01%)	(25x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.003887s|00.00%|00.01%)	(25x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p9
|   |   |   |   |   23.0:	(0.090827s|00.00%|00.45%)	(25x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.003105s|00.00%|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   35.0:	(0.003572s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p9
|   |   |   |   |   56.0:	(0.005169s|00.00%|00.02%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(19.582173s|01.80%|98.85%)	(24x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002607s|00.00%|00.02%)	(24x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.398089s|00.12%|06.90%)	(24x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.543191s|00.23%|10.29%)	(24x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.007635s|00.18%|09.45%)	(24x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.514723s|00.23%|10.01%)	(24x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.967779s|00.18%|09.15%)	(24x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.265590s|00.11%|06.56%)	(24x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.558562s|00.05%|04.36%)	(24x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.275214s|00.11%|06.26%)	(24x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.478140s|00.04%|04.15%)	(24x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.416527s|00.13%|08.85%)	(24x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.066883s|00.28%|14.34%)	(24x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.542219s|00.04%|04.64%)	(24x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.545014s|00.05%|04.88%)	(24x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.002644s|00.00%|00.01%)	(23x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.003720s|00.00%|00.01%)	(23x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:	(0.000562s|00.00%|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:	(0.000110s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p10
|   |   |   |   |   12.0:	(0.009168s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.007513s|00.00%|00.04%)	(29x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p10
|   |   |   |   |   35.0:	(0.004493s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p10
|   |   |   |   |   56.1:	(0.009701s|00.00%|00.01%)	(81x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.014577s|00.00%|00.02%)	(81x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000078s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:	(0.000618s|00.00%|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:	(0.000085s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p11
|   |   |   |   |   12.0:	(0.009193s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.008248s|00.00%|00.02%)	(62x) true
|   |   |   |   |   20.0:	(0.007357s|00.00%|00.01%)	(62x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.007198s|00.00%|00.01%)	(62x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.004490s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p11
|   |   |   |   |   23.0:	(0.236497s|00.02%|00.63%)	(62x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.007855s|00.00%|00.01%)	(62x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.006960s|00.00%|00.01%)	(60x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.006840s|00.00%|00.01%)	(60x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.007298s|00.00%|00.01%)	(60x) evfd_wait 25
|   |   |   |   |   31.0:	(0.073326s|00.00%|00.18%)	(60x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.011129s|00.00%|00.02%)	(60x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.004402s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p11
|   |   |   |   |   36.0:	(0.009959s|00.00%|00.02%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.006948s|00.00%|00.01%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(37.832456s|03.48%|98.59%)	(60x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.009633s|00.00%|00.02%)	(60x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.677463s|00.24%|06.92%)	(60x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.249431s|00.39%|10.42%)	(60x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.540898s|00.32%|09.53%)	(60x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.132296s|00.38%|10.21%)	(60x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.506228s|00.32%|09.20%)	(60x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.421625s|00.22%|06.41%)	(60x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.332548s|00.12%|04.19%)	(60x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.482472s|00.22%|06.39%)	(60x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.171371s|00.10%|03.94%)	(60x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.135507s|00.28%|08.63%)	(60x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.546625s|00.60%|15.25%)	(60x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.286648s|00.11%|04.23%)	(60x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.339711s|00.12%|04.48%)	(60x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.006781s|00.00%|00.01%)	(58x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.010855s|00.00%|00.02%)	(58x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000082s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:	(0.000650s|00.00%|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |   8.0:	(0.000087s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p12
|   |   |   |   |   12.0:	(0.009772s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004536s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p12
|   |   |   |   |   35.0:	(0.004581s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p12
|   |   |   |-- 126.0:	(0.000091s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:	(0.000651s|00.00%|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   8.0:	(0.000086s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p13
|   |   |   |   |   12.0:	(0.011606s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.007439s|00.00%|00.01%)	(56x) true
|   |   |   |   |   20.0:	(0.006919s|00.00%|00.01%)	(56x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.007017s|00.00%|00.01%)	(56x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.004259s|00.00%|00.01%)	(28x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p13
|   |   |   |   |   23.0:	(0.200129s|00.01%|00.50%)	(56x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.007227s|00.00%|00.01%)	(56x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.006721s|00.00%|00.01%)	(54x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.006520s|00.00%|00.01%)	(54x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.006804s|00.00%|00.01%)	(54x) evfd_wait 25
|   |   |   |   |   31.0:	(0.069159s|00.00%|00.17%)	(54x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.014729s|00.00%|00.03%)	(54x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.004217s|00.00%|00.01%)	(27x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p13
|   |   |   |   |   36.0:	(0.008203s|00.00%|00.01%)	(54x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.007501s|00.00%|00.01%)	(54x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(38.716149s|03.56%|98.72%)	(54x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006095s|00.00%|00.02%)	(54x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.745324s|00.25%|06.90%)	(54x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.403855s|00.40%|10.30%)	(54x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.626886s|00.33%|09.54%)	(54x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.348507s|00.40%|10.03%)	(54x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.506261s|00.32%|09.11%)	(54x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.492198s|00.22%|06.54%)	(54x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.218932s|00.11%|04.19%)	(54x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.599209s|00.23%|06.51%)	(54x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.107958s|00.10%|04.18%)	(54x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.237904s|00.29%|08.87%)	(54x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(7.018002s|00.64%|14.82%)	(54x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.211119s|00.11%|04.35%)	(54x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.193899s|00.10%|04.50%)	(54x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:	(0.000076s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:	(0.000739s|00.00%|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:	(0.000131s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p14
|   |   |   |   |   12.0:	(0.017698s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.007370s|00.00%|00.02%)	(52x) true
|   |   |   |   |   20.0:	(0.006423s|00.00%|00.01%)	(52x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.009563s|00.00%|00.02%)	(52x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.003977s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p14
|   |   |   |   |   23.0:	(0.165900s|00.01%|00.47%)	(52x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.006708s|00.00%|00.01%)	(52x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.002989s|00.00%|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.003044s|00.00%|00.01%)	(25x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.004295s|00.00%|00.02%)	(25x) evfd_wait 25
|   |   |   |   |   31.0:	(0.040325s|00.00%|00.22%)	(25x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.003284s|00.00%|00.01%)	(25x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.003987s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p14
|   |   |   |   |   36.0:	(0.003138s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.006132s|00.00%|00.01%)	(50x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(34.488843s|03.17%|98.61%)	(50x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   56.1:	(0.005842s|00.00%|00.01%)	(48x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.009663s|00.00%|00.02%)	(48x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000137s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:	(0.000941s|00.00%|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:	(0.000087s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p15
|   |   |   |   |   12.0:	(0.017334s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.002933s|00.00%|00.01%)	(21x) true
|   |   |   |   |   20.0:	(0.002629s|00.00%|00.01%)	(21x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002731s|00.00%|00.01%)	(21x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.003348s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p15
|   |   |   |   |   23.0:	(0.038681s|00.00%|00.21%)	(21x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.002648s|00.00%|00.01%)	(21x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.006079s|00.00%|00.03%)	(20x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.002448s|00.00%|00.01%)	(20x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002613s|00.00%|00.01%)	(20x) evfd_wait 25
|   |   |   |   |   31.0:	(0.024210s|00.00%|00.13%)	(20x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.002677s|00.00%|00.01%)	(20x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.003094s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p15
|   |   |   |   |   36.0:	(0.002380s|00.00%|00.01%)	(20x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.003262s|00.00%|00.01%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(17.451661s|01.60%|98.99%)	(20x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002179s|00.00%|00.01%)	(20x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.141319s|00.10%|06.86%)	(20x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.052270s|00.18%|10.57%)	(20x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.635679s|00.15%|09.54%)	(20x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.143632s|00.19%|10.67%)	(20x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.602897s|00.14%|09.10%)	(20x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.008585s|00.09%|06.17%)	(20x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.466278s|00.04%|03.91%)	(20x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.100548s|00.10%|06.23%)	(20x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.442339s|00.04%|03.76%)	(20x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.441652s|00.13%|08.73%)	(20x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.462303s|00.31%|15.87%)	(20x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.507966s|00.04%|04.29%)	(20x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.444014s|00.04%|04.15%)	(20x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.002327s|00.00%|00.01%)	(19x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.002505s|00.00%|00.01%)	(19x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000123s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:	(0.000932s|00.00%|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:	(0.000090s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p16
|   |   |   |   |   12.0:	(0.010155s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.005709s|00.00%|00.03%)	(28x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p16
|   |   |   |   |   35.0:	(0.004211s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p16
|   |   |   |-- 126.0:	(0.000125s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:	(0.000920s|00.00%|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   8.0:	(0.000086s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p17
|   |   |   |   |   12.0:	(0.009259s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.007445s|00.00%|00.04%)	(29x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p17
|   |   |   |   |   35.0:	(0.004365s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p17
|   |   |   |-- 126.0:	(0.000127s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:	(0.000908s|00.00%|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:	(0.000087s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p18
|   |   |   |   |   12.0:	(0.009234s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.007956s|00.00%|00.04%)	(32x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p18
|   |   |   |   |   35.0:	(0.004627s|00.00%|00.02%)	(31x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p18
|   |   |   |-- 126.0:	(0.000131s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:	(0.000926s|00.00%|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:	(0.000092s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p19
|   |   |   |   |   12.0:	(0.009228s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.012199s|00.00%|00.02%)	(44x) true
|   |   |   |   |   20.0:	(0.005346s|00.00%|00.01%)	(44x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005458s|00.00%|00.01%)	(44x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.003416s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p19
|   |   |   |   |   23.0:	(0.117762s|00.01%|00.30%)	(44x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.005504s|00.00%|00.01%)	(44x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.008047s|00.00%|00.01%)	(42x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.004811s|00.00%|00.01%)	(42x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.005213s|00.00%|00.01%)	(42x) evfd_wait 25
|   |   |   |   |   31.0:	(0.053955s|00.00%|00.13%)	(42x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.005456s|00.00%|00.01%)	(42x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.003274s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p19
|   |   |   |   |   36.0:	(0.004940s|00.00%|00.01%)	(42x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.007970s|00.00%|00.01%)	(42x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(37.651776s|03.46%|98.82%)	(42x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.007693s|00.00%|00.03%)	(42x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.750953s|00.25%|07.25%)	(42x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.541760s|00.41%|10.84%)	(42x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.514361s|00.32%|09.44%)	(42x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.453428s|00.40%|10.71%)	(42x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.490792s|00.32%|09.05%)	(42x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.275163s|00.20%|06.37%)	(42x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.015422s|00.09%|03.77%)	(42x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.454279s|00.22%|06.39%)	(42x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.867231s|00.07%|03.46%)	(42x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.051544s|00.28%|08.55%)	(42x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(7.303524s|00.67%|16.29%)	(42x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.992089s|00.09%|03.86%)	(42x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.933537s|00.08%|03.82%)	(42x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:	(0.000119s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:	(0.000941s|00.00%|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:	(0.000135s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p20
|   |   |   |   |   12.0:	(0.017262s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004527s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p20
|   |   |   |   |   35.0:	(0.004179s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p20
|   |   |   |-- 126.0:	(0.000123s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:	(0.000931s|00.00%|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:	(0.000170s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p21
|   |   |   |   |   12.0:	(0.016799s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.006738s|00.00%|00.03%)	(24x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p21
|   |   |   |   |   28.0:	(0.002996s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.002842s|00.00%|00.01%)	(23x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.003086s|00.00%|00.01%)	(23x) evfd_wait 25
|   |   |   |   |   31.0:	(0.033447s|00.00%|00.18%)	(23x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.003199s|00.00%|00.01%)	(23x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.003902s|00.00%|00.02%)	(23x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p21
|   |   |   |   |   36.0:	(0.002863s|00.00%|00.01%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.1:	(0.002697s|00.00%|00.01%)	(22x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.007378s|00.00%|00.04%)	(22x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000130s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:                        	(0.000862s|00.00%|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:	(0.000146s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p22
|   |   |   |   |   12.0:	(0.017746s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.007686s|00.00%|00.02%)	(54x) true
|   |   |   |   |   20.0:	(0.006795s|00.00%|00.01%)	(54x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.006781s|00.00%|00.01%)	(54x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.007251s|00.00%|00.04%)	(27x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p22
|   |   |   |   |   23.0:	(0.179988s|00.01%|00.48%)	(54x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.006992s|00.00%|00.01%)	(54x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.009850s|00.00%|00.01%)	(78x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.009433s|00.00%|00.01%)	(78x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.010139s|00.00%|00.01%)	(78x) evfd_wait 25
|   |   |   |   |   31.0:	(0.094605s|00.00%|00.17%)	(78x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.023822s|00.00%|00.04%)	(78x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.004155s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p22
|   |   |   |   |   36.0:	(0.009302s|00.00%|00.01%)	(78x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.006117s|00.00%|00.01%)	(52x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(35.994476s|03.31%|98.48%)	(52x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.009001s|00.00%|00.02%)	(52x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.518682s|00.23%|06.89%)	(52x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.083771s|00.37%|10.39%)	(52x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.322912s|00.30%|09.35%)	(52x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.057293s|00.37%|10.37%)	(52x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.270747s|00.30%|09.12%)	(52x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.248824s|00.20%|06.45%)	(52x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.169761s|00.10%|04.18%)	(52x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.354039s|00.21%|06.32%)	(52x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.066579s|00.09%|03.96%)	(52x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.003092s|00.27%|08.68%)	(52x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.508819s|00.59%|15.09%)	(52x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.226098s|00.11%|04.59%)	(52x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.154858s|00.10%|04.43%)	(52x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.005846s|00.00%|00.01%)	(50x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.009907s|00.00%|00.02%)	(50x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:                        	(0.000142s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:	(0.000901s|00.00%|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:	(0.000134s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p23
|   |   |   |   |   12.0:	(0.017355s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.002250s|00.00%|00.01%)	(16x) true
|   |   |   |   |   20.0:	(0.001853s|00.00%|00.01%)	(16x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002017s|00.00%|00.01%)	(16x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.002512s|00.00%|00.01%)	(16x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p23
|   |   |   |   |   23.0:	(0.052984s|00.00%|00.29%)	(16x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.002096s|00.00%|00.01%)	(16x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.002020s|00.00%|00.01%)	(15x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.001850s|00.00%|00.01%)	(15x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001925s|00.00%|00.01%)	(15x) evfd_wait 25
|   |   |   |   |   31.0:	(0.021793s|00.00%|00.12%)	(15x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.001940s|00.00%|00.01%)	(15x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.002330s|00.00%|00.01%)	(15x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p23
|   |   |   |   |   36.0:	(0.004831s|00.00%|00.02%)	(15x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.001641s|00.00%|00.00%)	(15x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(17.596955s|01.61%|98.87%)	(15x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001664s|00.00%|00.02%)	(15x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.117945s|00.10%|06.62%)	(15x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.165378s|00.19%|10.34%)	(15x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.672441s|00.15%|09.69%)	(15x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.182243s|00.20%|10.35%)	(15x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.664455s|00.15%|09.36%)	(15x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.027979s|00.09%|06.42%)	(15x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.407688s|00.03%|04.23%)	(15x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.161843s|00.10%|06.73%)	(15x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.341791s|00.03%|03.93%)	(15x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.425416s|00.13%|08.74%)	(15x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.689934s|00.33%|14.63%)	(15x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.389073s|00.03%|04.60%)	(15x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.349105s|00.03%|04.21%)	(15x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.001791s|00.00%|00.01%)	(14x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.001874s|00.00%|00.01%)	(14x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000131s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:	(0.001010s|00.00%|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:	(0.000138s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p24
|   |   |   |   |   12.0:	(0.015078s|00.00%|00.07%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.004098s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p24
|   |   |   |   |   35.0:	(0.003863s|00.00%|00.01%)	(26x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p24
|   |   |   |-- 126.0:	(0.000142s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:	(0.000952s|00.00%|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:	(0.000148s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p25
|   |   |   |   |   12.0:	(0.018142s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   22.0:	(0.003301s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p25
|   |   |   |   |   35.0:	(0.003165s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p25
|   |   |   |-- 126.0:	(0.000123s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:	(0.001010s|00.00%|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:                        	(0.000156s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p26
|   |   |   |   |   12.0:                        	(0.020970s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:                        	(0.003091s|00.00%|00.01%)	(23x) true
|   |   |   |   |   20.0:                        	(0.002686s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:                        	(0.002802s|00.00%|00.01%)	(23x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:                        	(0.003618s|00.00%|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p26
|   |   |   |   |   23.0:                        	(0.123452s|00.01%|00.62%)	(23x) read -r -u 21 _
|   |   |   |   |   24.0:                        	(0.002992s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:                        	(0.002767s|00.00%|00.01%)	(22x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:                        	(0.002684s|00.00%|00.01%)	(22x) doneIndicatorFlag=true
|   |   |   |   |   30.0:                        	(0.002899s|00.00%|00.01%)	(22x) evfd_wait 25
|   |   |   |   |   31.0:                        	(0.027121s|00.00%|00.13%)	(22x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:                        	(0.002966s|00.00%|00.01%)	(22x) printf '\n' 1>&21
|   |   |   |   |   35.0:                        	(0.003418s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p26
|   |   |   |   |   36.0:                        	(0.002661s|00.00%|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:                        	(0.002549s|00.00%|00.01%)	(22x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:                        	(19.500929s|01.79%|98.49%)	(22x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   56.1:                        	(0.002529s|00.00%|00.01%)	(21x) ${nSpawnFlag}
|   |   |   |   |   59.0:                        	(0.002983s|00.00%|00.01%)	(21x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:                        	(0.000068s|00.00%|00.00%)	(1x) printf '\n' 1>&21
|   |   |   |   |   26.0:                        	(0.000070s|00.00%|00.00%)	(1x) break
|   |   |   |-- 126.0:	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:	(0.001017s|00.00%|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:	(0.000131s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.xl7Kp6"/.run/p27
|   |   |   |   |   12.0:	(0.022824s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.xl7Kp6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.xl7Kp6"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.xl7Kp6"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
|   |   |   |   |   19.0:	(0.002683s|00.00%|00.01%)	(20x) true
|   |   |   |   |   20.0:	(0.002410s|00.00%|00.01%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002467s|00.00%|00.01%)	(20x) read -r < "/dev/shm/.forkrun.xl7Kp6"/.nLines
|   |   |   |   |   22.0:	(0.003129s|00.00%|00.01%)	(20x) echo 1 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p27
|   |   |   |   |   23.0:	(0.042571s|00.00%|00.22%)	(20x) read -r -u 21 _
|   |   |   |   |   24.0:	(0.002529s|00.00%|00.01%)	(20x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.quit ]]
|   |   |   |   |   28.0:	(0.002347s|00.00%|00.01%)	(19x) [[ -f "/dev/shm/.forkrun.xl7Kp6"/.done ]]
|   |   |   |   |   28.1:	(0.002313s|00.00%|00.01%)	(19x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002535s|00.00%|00.01%)	(19x) evfd_wait 25
|   |   |   |   |   31.0:	(0.021912s|00.00%|00.11%)	(19x) mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
|   |   |   |   |   34.0:	(0.005589s|00.00%|00.02%)	(19x) printf '\n' 1>&21
|   |   |   |   |   35.0:	(0.003003s|00.00%|00.01%)	(19x) echo 0 > "/dev/shm/.forkrun.xl7Kp6"/.wait/p27
|   |   |   |   |   36.0:	(0.002282s|00.00%|00.01%)	(19x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.002326s|00.00%|00.01%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(19.124007s|01.76%|98.92%)	(19x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002031s|00.00%|00.01%)	(19x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.311032s|00.12%|06.92%)	(19x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.366358s|00.21%|10.68%)	(19x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.861037s|00.17%|09.64%)	(19x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.300421s|00.21%|10.81%)	(19x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.732259s|00.15%|09.04%)	(19x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.155770s|00.10%|06.31%)	(19x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.474106s|00.04%|03.81%)	(19x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.255065s|00.11%|06.39%)	(19x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.414267s|00.03%|03.53%)	(19x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.525710s|00.14%|08.77%)	(19x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.798884s|00.34%|15.63%)	(19x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.482981s|00.04%|04.16%)	(19x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.444086s|00.04%|04.17%)	(19x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.002222s|00.00%|00.01%)	(18x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.003786s|00.00%|00.01%)	(18x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:	(0.000135s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:	(0.000131s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:	(0.000110s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:	(0.000107s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:	(0.001131s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:	(0.000109s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:	(0.000104s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:	(0.000108s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:	(23.135906s|02.12%|04.26%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:	(0.000223s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:	(0.000225s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -223.0:	(0.000376s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -222.0:	(0.000269s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.0:	(0.001993s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -221.1:	(0.005001s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -221.0:	(0.005001s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -220.0:	(0.000078s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.0:	(0.000981s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -219.1:	(0.002151s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -219.0:	(0.002151s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -218.0:	(0.000082s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.0:	(0.000578s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -217.1:	(0.003681s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -217.0:	(0.003681s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -216.0:	(0.015116s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:	(0.000252s|00.00%|00.00%)	(1x) wait
|-- |-- -223.0:	(0.003601s|00.00%|00.00%)	(1x) wait (?)



TOTAL RUN TIME: 1086.378577s
