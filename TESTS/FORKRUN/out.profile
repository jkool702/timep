1.0:	(546.084493s|50.12%)	(1x) << (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0:	(0.000693s|00.00%|00.00%)	(1x) forkrun ff < /mnt/ramdisk/flist > /dev/null
|   352.0:	(546.083800s|50.12%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 352.0:	(0.018428s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:	(0.000060s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:	(0.000064s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:	(0.000123s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:	(0.000088s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:	(0.000073s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:	(0.000062s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:	(0.000060s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:	(0.000055s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:	(0.000054s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:	(0.000052s|00.00%|00.00%)	(1x) ${optParseFlag}
|   |   81.1:	(0.000052s|00.00%|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:	(0.000058s|00.00%|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   278.0:	(0.000059s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:	(0.000059s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:	(0.000054s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:	(0.000053s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:	(0.000052s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:	(0.001133s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:	(0.002266s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:	(0.002266s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:	(0.000062s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:	(0.001448s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:	(0.000077s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:	(0.000052s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:	(0.011351s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:	(546.044024s|50.12%|49.99%)	(2x) << (SUBSHELL) >>
|   |   |-- 303.0:	(0.000071s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:	(0.000063s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:	(0.001040s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:	(0.000185s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:	(0.000231s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:	(0.000173s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:	(0.000158s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:	(0.000230s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:	(0.000074s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:	(0.000064s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:	(0.000060s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:	(0.000203s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:	(0.000087s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:	(0.000061s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:	(0.000062s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:	(0.000061s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:	(0.000063s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:	(0.000072s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:	(0.000084s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:	(0.000057s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:	(0.000056s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:	(0.000520s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:	(0.000097s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:	(0.000097s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:	(0.000063s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:	(0.000057s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:	(0.000063s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:	(0.000058s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:	(0.000055s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:	(0.000056s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:	(0.000058s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:	(0.000076s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:	(0.000060s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:	(0.000055s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:	(0.000058s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:	(0.000054s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:	(0.000059s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:	(0.000056s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:	(0.000061s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:	(0.000722s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:	(0.000053s|00.00%|07.34%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:	(0.000058s|00.00%|08.03%)	(1x) local +i -l nn
|   |   |   |   9.0:	(0.000054s|00.00%|07.47%)	(1x) local vOut
|   |   |   |   11.0:	(0.000056s|00.00%|07.75%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:	(0.000055s|00.00%|07.61%)	(1x) shift 1
|   |   |   |   13.0:	(0.000059s|00.00%|08.17%)	(1x) local -g vOut
|   |   |   |   15.0:	(0.000056s|00.00%|07.75%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:	(0.000102s|00.00%|14.12%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:	(0.000056s|00.00%|07.75%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:	(0.000053s|00.00%|07.34%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:	(0.000056s|00.00%|07.75%)	(1x) continue
|   |   |   |-- 28.0:	(0.000064s|00.00%|08.86%)	(1x) local +n vOut
|   |   |   438.0:	(0.000058s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:	(0.000773s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:	(0.001897s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:	(0.000192s|00.00%|10.12%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:	(0.001705s|00.00%|89.87%)	(1x) nproc
|   |   |   441.0:	(0.000057s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:	(0.000054s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:	(0.000060s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:	(0.000058s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:	(0.000067s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:	(0.000055s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:	(0.000059s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:	(0.000071s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:	(0.000066s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:	(0.000053s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:	(0.000059s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:	(0.000056s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:	(0.000053s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:	(0.000055s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:	(0.000127s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:	(0.000055s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:	(0.000057s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:	(0.000055s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:	(0.000052s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:	(0.000056s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:	(0.000057s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   499.0:	(0.000053s|00.00%|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   500.0:	(0.000056s|00.00%|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   501.0:	(0.000062s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   501.1:	(0.000056s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   512.0:	(0.000055s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:	(0.000547s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:	(0.000069s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:	(0.000069s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:	(0.000057s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:	(0.000054s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:	(0.000055s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:	(0.001889s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:	(0.000055s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:	(0.000068s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:	(0.000053s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:	(0.000057s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:	(0.000069s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:	(0.000062s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:	(0.000057s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:	(0.000052s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:	(0.000488s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:	(0.066277s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:	(0.000069s|00.00%|00.10%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:	(0.008556s|00.00%|12.90%)	(1x) trap - EXIT
|   |   |   |   602.0:	(0.009890s|00.00%|14.92%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:	(0.009785s|00.00%|14.76%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:	(0.009841s|00.00%|14.84%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:	(0.009883s|00.00%|14.91%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:	(0.000055s|00.00%|00.08%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:	(0.018010s|00.00%|27.17%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:	(0.000079s|00.00%|00.11%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:	(0.000054s|00.00%|00.08%)	(1x) evfd_signal
|   |   |   |-- 615.0:	(0.000055s|00.00%|00.08%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:	(0.000060s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:	(0.000052s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:	(0.000057s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:	(0.000052s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:	(0.000397s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:	(6.293782s|00.57%|01.15%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:	(0.000177s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:	(0.010293s|00.00%|00.16%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:	(0.009776s|00.00%|00.15%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:	(0.009752s|00.00%|00.15%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:	(0.010096s|00.00%|00.16%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:	(0.009812s|00.00%|00.15%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:	(0.000056s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:	(0.000063s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:	(0.000052s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:	(0.000069s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:	(0.072098s|00.00%|01.14%)	(676x) ${fallocateFlag}
|   |   |   |   702.0:	(5.069980s|00.46%|80.55%)	(675x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:	(0.001447s|00.00%|00.02%)	(9x) continue
|   |   |   |   704.0:	(0.070664s|00.00%|01.12%)	(666x) case ${REPLY} in
|   |   |   |   718.0:	(0.079350s|00.00%|01.26%)	(666x) ${nLinesAutoFlag}
|   |   |   |   719.0:	(0.000057s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:	(0.000060s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:	(0.071363s|00.00%|01.13%)	(666x) ${lseekPosFlag}
|   |   |   |   729.0:	(0.083142s|00.00%|01.32%)	(666x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:	(0.079163s|00.00%|01.25%)	(666x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:	(0.078241s|00.00%|01.24%)	(666x) ${nLinesAutoFlag}
|   |   |   |   737.1:	(0.070359s|00.00%|01.11%)	(666x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:	(0.069735s|00.00%|01.10%)	(666x) ${nSpawnFlag}
|   |   |   |   741.0:	(0.073970s|00.00%|01.17%)	(666x) ${nLinesAutoFlag}
|   |   |   |   743.0:	(0.000053s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:	(0.000057s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:	(0.000615s|00.00%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:	(0.002513s|00.00%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:	(0.002512s|00.00%|99.96%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:	(0.000080s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:	(0.000100s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:	(0.000094s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:	(0.000103s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:	(0.000090s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:	(0.000097s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:	(0.000127s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:	(0.000111s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:	(0.000096s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:	(0.000098s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:	(0.070060s|00.00%|01.11%)	(666x) ${fallocateFlag}
|   |   |   |   767.0:	(0.068936s|00.00%|01.09%)	(666x) case ${nWait} in
|   |   |   |   778.0:	(0.067918s|00.00%|01.07%)	(645x) ((nWait--))
|   |   |   |   783.0:	(0.072292s|00.00%|01.14%)	(666x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:	(0.072302s|00.00%|01.14%)	(665x) ${nSpawnFlag}
|   |   |   |   769.0:	(0.002293s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:	(0.002233s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:	(0.053137s|00.00%|00.84%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:	(0.002285s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:	(0.002251s|00.00%|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:	(0.002310s|00.00%|00.03%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:	(0.000116s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:	(0.000112s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:	(0.000112s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:	(0.000110s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:	(0.000129s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -228.0:	(0.000115s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -228.1:	(0.003062s|00.00%|00.04%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:	(0.000064s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:	(0.000089s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:	(0.000075s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:	(0.001548s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:	(0.015456s|00.00%|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:                        	(0.000116s|00.00%|02.32%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:                        	(0.000064s|00.00%|01.28%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:                        	(0.000075s|00.00%|01.50%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:                        	(0.000236s|00.00%|04.72%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:                        	(0.000062s|00.00%|01.24%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:                        	(0.000060s|00.00%|01.20%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:                        	(0.000064s|00.00%|01.28%)	(1x) echo "{"
|   |   |   |   1403.0:                        	(0.000061s|00.00%|01.22%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:                        	(0.000060s|00.00%|01.20%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:                        	(0.000064s|00.00%|01.28%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:                        	(0.000064s|00.00%|01.28%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:                        	(0.000061s|00.00%|01.22%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:                        	(0.000064s|00.00%|01.28%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:                        	(0.000065s|00.00%|01.30%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:                        	(0.000058s|00.00%|01.16%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:                        	(0.000053s|00.00%|01.06%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:                        	(0.000055s|00.00%|01.10%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1411.0:                        	(0.000060s|00.00%|01.20%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:                        	(0.000055s|00.00%|01.10%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:                        	(0.000055s|00.00%|01.10%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:                        	(0.000057s|00.00%|01.14%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1413.0:                        	(0.000056s|00.00%|01.12%)	(1x) ${lseekFlag}
|   |   |   |   1416.0:                        	(0.000061s|00.00%|01.22%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1417.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1420.0:                        	(0.000059s|00.00%|01.18%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1458.0:                        	(0.000054s|00.00%|01.08%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1463.0:                        	(0.000062s|00.00%|01.24%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1464.0:                        	(0.000062s|00.00%|01.24%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1465.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${lseekFlag}
|   |   |   |   1465.1:                        	(0.000057s|00.00%|01.14%)	(1x) printf '\n'
|   |   |   |   1466.0:                        	(0.000054s|00.00%|01.08%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1467.0:                        	(0.000086s|00.00%|01.72%)	(1x) echo "}"
|   |   |   |   1469.0:                        	(0.000055s|00.00%|01.10%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:                        	(0.000054s|00.00%|01.08%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:                        	(0.000055s|00.00%|01.10%)	(1x) ${readBytesFlag}
|   |   |   |   1469.3:                        	(0.000064s|00.00%|01.28%)	(1x) echo "}"
|   |   |   |   1470.0:                        	(0.000063s|00.00%|01.26%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:                        	(0.000075s|00.00%|01.50%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:                        	(0.000066s|00.00%|01.32%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:                        	(0.000070s|00.00%|01.40%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:                        	(0.000060s|00.00%|01.20%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:                        	(0.000059s|00.00%|01.18%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:                        	(0.000059s|00.00%|01.18%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:                        	(0.000066s|00.00%|01.32%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:                        	(0.000057s|00.00%|01.14%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:                        	(0.000068s|00.00%|01.36%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:                        	(0.000055s|00.00%|01.10%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:                        	(0.000064s|00.00%|01.28%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:                        	(0.000076s|00.00%|01.52%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:                        	(0.000073s|00.00%|01.46%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:                        	(0.000055s|00.00%|01.10%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:                        	(0.000055s|00.00%|01.10%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1519.2:                        	(0.000054s|00.00%|01.08%)	(1x) ${readBytesFlag}
|   |   |   |   1519.3:                        	(0.000058s|00.00%|01.16%)	(1x) ${lseekFlag}
|   |   |   |   1527.0:                        	(0.000053s|00.00%|01.06%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:                        	(0.000077s|00.00%|01.54%)	(1x) echo '{'
|   |   |   |   1528.0:                        	(0.000055s|00.00%|01.10%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:                        	(0.000056s|00.00%|01.12%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:                        	(0.000056s|00.00%|01.12%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:                        	(0.000079s|00.00%|01.58%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:                        	(0.000054s|00.00%|01.08%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:                        	(0.000057s|00.00%|01.14%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:                        	(0.000053s|00.00%|01.06%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:                        	(0.000072s|00.00%|01.44%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:                        	(0.000059s|00.00%|01.18%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:                        	(0.000059s|00.00%|01.18%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:                        	(0.000064s|00.00%|01.28%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:                        	(0.000075s|00.00%|01.50%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:                        	(0.000060s|00.00%|01.20%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:                        	(0.000059s|00.00%|01.18%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:                        	(0.000058s|00.00%|01.16%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:                        	(0.000100s|00.00%|02.00%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:	(0.000210s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:	(0.000217s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:	(0.000202s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:	(0.009903s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:	(0.009812s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:	(0.009653s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:	(0.000053s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:	(0.000053s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:	(0.000055s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:	(0.000061s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:	(0.000051s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:	(0.002256s|00.00%|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:	(0.002373s|00.00%|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:	(0.002225s|00.00%|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:	(516.253915s|47.38%|94.54%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:	(0.000552s|00.00%|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:	(516.229219s|47.38%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:	(0.004351s|00.00%|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.Xib3uC"
|   |   |   |   |   8.0:	(0.000073s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p0
|   |   |   |   |   12.0:	(0.009322s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p0; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:	(0.392165s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 1117906 ${BASHPID}' INT
|   |   |   |   |   15.0:	(0.406513s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 1117906 ${BASHPID}' TERM
|   |   |   |   |   16.0:	(0.409476s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 1117906 ${BASHPID}' HUP
|   |   |   |   |   17.0:	(0.415177s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:	(0.017711s|00.00%|00.01%)	(135x) true
|   |   |   |   |   20.0:	(0.015504s|00.00%|00.01%)	(135x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.015568s|00.00%|00.01%)	(135x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   20.2:	(0.000704s|00.00%|00.00%)	(10x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.000673s|00.00%|00.00%)	(10x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.003915s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p0
|   |   |   |   |   23.0:	(1.013045s|00.09%|01.12%)	(135x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.016594s|00.00%|00.01%)	(135x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.021187s|00.00%|00.01%)	(130x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.016404s|00.00%|00.01%)	(130x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.018693s|00.00%|00.01%)	(130x) evfd_wait 24
|   |   |   |   |   31.0:	(0.163059s|00.01%|00.17%)	(130x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.014834s|00.00%|00.01%)	(130x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.014845s|00.00%|00.01%)	(130x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.029743s|00.00%|00.02%)	(130x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.003665s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p0
|   |   |   |   |   48.0:	(0.017385s|00.00%|00.01%)	(130x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.014341s|00.00%|00.01%)	(130x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:	(0.000814s|00.00%|00.00%)	(10x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:	(0.000777s|00.00%|00.00%)	(10x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:	(88.103790s|08.08%|98.03%)	(130x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:                        	(0.005070s|00.00%|00.02%)	(42x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(1.796053s|00.16%|06.89%)	(42x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(3.114738s|00.28%|10.51%)	(42x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(2.621633s|00.24%|09.60%)	(42x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(3.130397s|00.28%|10.69%)	(42x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(2.632406s|00.24%|09.37%)	(42x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(1.701570s|00.15%|06.42%)	(42x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.910432s|00.08%|03.94%)	(42x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(1.784972s|00.16%|06.42%)	(42x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.777735s|00.07%|03.60%)	(42x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(2.280390s|00.20%|08.51%)	(42x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(4.916509s|00.45%|15.71%)	(42x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.882415s|00.08%|04.00%)	(42x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.899638s|00.08%|04.17%)	(42x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:	(0.016259s|00.00%|00.02%)	(130x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(5.968446s|00.54%|06.85%)	(130x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(10.305109s|00.94%|10.54%)	(130x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(8.430350s|00.77%|09.46%)	(130x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(10.145211s|00.93%|10.40%)	(130x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(8.233363s|00.75%|09.14%)	(130x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(5.401515s|00.49%|06.35%)	(130x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.833001s|00.26%|04.13%)	(130x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(5.655061s|00.51%|06.34%)	(130x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.575395s|00.23%|03.97%)	(130x) cksum "${@}"
|   |   |   |   |   |   17.0:	(7.276085s|00.66%|08.63%)	(130x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(15.585569s|01.43%|15.28%)	(130x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.858634s|00.26%|04.30%)	(130x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.819792s|00.25%|04.40%)	(130x) xxhsum -H3 "${@}"
|   |   |   |   |   70.1:	(0.002580s|00.00%|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   68.1:	(0.012022s|00.00%|00.02%)	(72x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.012534s|00.00%|00.01%)	(72x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:	(0.002316s|00.00%|00.00%)	(26x) printf '\n' 1>&20
|   |   |   |   |   26.0:	(0.002438s|00.00%|00.00%)	(26x) break
|   |   |   |   |   2.0:	(0.002853s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.0:	(0.002437s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.1:	(0.042783s|00.00%|00.00%)	(28x) break
|   |   |   |   |-- 4.0:	(0.002710s|00.00%|00.00%)	(28x) break
|   |   |   |-- 138.0:	(0.000072s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:	(0.000507s|00.00%|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:	(0.001280s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p1
|   |   |   |   |   12.0:	(0.009451s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p1; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.006959s|00.00%|00.03%)	(29x) true
|   |   |   |   |   20.0:	(0.003496s|00.00%|00.01%)	(29x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.003512s|00.00%|00.01%)	(29x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.006351s|00.00%|00.03%)	(29x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p1
|   |   |   |   |   23.0:	(0.183080s|00.01%|00.90%)	(29x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.003672s|00.00%|00.01%)	(29x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.003317s|00.00%|00.01%)	(28x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.003177s|00.00%|00.01%)	(28x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.003413s|00.00%|00.01%)	(28x) evfd_wait 24
|   |   |   |   |   31.0:	(0.034389s|00.00%|00.17%)	(28x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.003115s|00.00%|00.01%)	(28x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.003131s|00.00%|00.01%)	(28x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.004425s|00.00%|00.02%)	(28x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.003890s|00.00%|00.01%)	(28x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p1
|   |   |   |   |   48.0:	(0.003024s|00.00%|00.01%)	(28x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.003028s|00.00%|00.01%)	(28x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(19.829043s|01.82%|98.33%)	(28x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003035s|00.00%|00.02%)	(28x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.462224s|00.13%|07.09%)	(28x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.309781s|00.21%|10.26%)	(28x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.806372s|00.16%|09.19%)	(28x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.226143s|00.20%|09.99%)	(28x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.782883s|00.16%|09.07%)	(28x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.272127s|00.11%|06.67%)	(28x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.603333s|00.05%|04.16%)	(28x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.318523s|00.12%|06.43%)	(28x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.533597s|00.04%|04.05%)	(28x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.610427s|00.14%|08.61%)	(28x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.660315s|00.33%|14.94%)	(28x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.620121s|00.05%|04.61%)	(28x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.620162s|00.05%|04.76%)	(28x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.008851s|00.00%|00.01%)	(78x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.019482s|00.00%|00.02%)	(78x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000077s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:	(0.000547s|00.00%|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   8.0:	(0.001424s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p2
|   |   |   |   |   12.0:	(0.009854s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p2; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004034s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p2
|   |   |   |   |   47.0:	(0.003574s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p2
|   |   |   |-- 138.0:	(0.000080s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:	(0.000537s|00.00%|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:	(0.000078s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p3
|   |   |   |   |   12.0:	(0.009425s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p3; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.009758s|00.00%|00.01%)	(75x) true
|   |   |   |   |   20.0:	(0.012050s|00.00%|00.01%)	(75x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.009061s|00.00%|00.01%)	(75x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.003624s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p3
|   |   |   |   |   23.0:	(0.642359s|00.05%|01.14%)	(75x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.009458s|00.00%|00.01%)	(75x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.011158s|00.00%|00.01%)	(96x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.011218s|00.00%|00.01%)	(96x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.015811s|00.00%|00.01%)	(96x) evfd_wait 24
|   |   |   |   |   31.0:	(0.123791s|00.01%|00.16%)	(96x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.011169s|00.00%|00.01%)	(96x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.008422s|00.00%|00.01%)	(72x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.025240s|00.00%|00.03%)	(96x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.003520s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p3
|   |   |   |   |   48.0:	(0.010721s|00.00%|00.01%)	(96x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.011904s|00.00%|00.01%)	(72x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(54.601679s|05.01%|97.89%)	(72x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.007651s|00.00%|00.01%)	(72x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.824547s|00.35%|06.97%)	(72x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(6.364823s|00.58%|10.41%)	(72x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(5.087642s|00.46%|09.44%)	(72x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(6.303309s|00.57%|10.37%)	(72x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(5.078660s|00.46%|09.33%)	(72x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.363174s|00.30%|06.44%)	(72x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.627937s|00.14%|04.16%)	(72x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.537422s|00.32%|06.27%)	(72x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.413800s|00.12%|03.79%)	(72x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.519894s|00.41%|08.84%)	(72x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(10.257042s|00.94%|15.19%)	(72x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.661258s|00.15%|04.37%)	(72x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.554520s|00.14%|04.23%)	(72x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.007541s|00.00%|00.01%)	(66x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.013186s|00.00%|00.02%)	(66x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000075s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:	(0.000544s|00.00%|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:	(0.000074s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p4
|   |   |   |   |   12.0:	(0.009452s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p4; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.002656s|00.00%|00.01%)	(21x) true
|   |   |   |   |   20.0:	(0.002404s|00.00%|00.01%)	(21x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005441s|00.00%|00.03%)	(21x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.003080s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p4
|   |   |   |   |   23.0:	(0.243617s|00.02%|01.36%)	(21x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.002532s|00.00%|00.01%)	(21x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.002270s|00.00%|00.01%)	(20x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.002174s|00.00%|00.01%)	(20x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002422s|00.00%|00.01%)	(20x) evfd_wait 24
|   |   |   |   |   31.0:	(0.023353s|00.00%|00.13%)	(20x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.002229s|00.00%|00.01%)	(20x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.002211s|00.00%|00.01%)	(20x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.002977s|00.00%|00.01%)	(20x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.002803s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p4
|   |   |   |   |   48.0:	(0.002167s|00.00%|00.01%)	(20x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.005188s|00.00%|00.02%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(17.513954s|01.60%|97.94%)	(20x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002060s|00.00%|00.02%)	(20x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.156640s|00.10%|06.83%)	(20x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.116044s|00.19%|10.62%)	(20x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.668967s|00.15%|09.85%)	(20x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.126211s|00.19%|10.75%)	(20x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.654353s|00.15%|09.22%)	(20x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.053460s|00.09%|06.47%)	(20x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.456429s|00.04%|03.87%)	(20x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.084354s|00.09%|06.17%)	(20x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.393970s|00.03%|03.89%)	(20x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.418637s|00.13%|08.57%)	(20x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.508125s|00.32%|15.30%)	(20x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.449383s|00.04%|04.12%)	(20x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.425321s|00.03%|04.17%)	(20x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.000641s|00.00%|00.01%)	(6x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(0.250414s|00.02%|06.65%)	(6x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(0.417969s|00.03%|10.54%)	(6x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(0.367326s|00.03%|09.75%)	(6x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(0.408020s|00.03%|10.33%)	(6x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(0.344351s|00.03%|09.25%)	(6x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(0.228328s|00.02%|06.34%)	(6x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.133870s|00.01%|03.96%)	(6x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(0.236092s|00.02%|06.24%)	(6x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.120909s|00.01%|03.68%)	(6x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(0.313187s|00.02%|08.72%)	(6x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(0.655060s|00.06%|16.03%)	(6x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.137107s|00.01%|04.20%)	(6x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.141601s|00.01%|04.17%)	(6x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.001992s|00.00%|00.01%)	(18x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.005403s|00.00%|00.03%)	(18x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000071s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:	(0.000552s|00.00%|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:	(0.000295s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p5
|   |   |   |   |   12.0:	(0.009620s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p5; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.006308s|00.00%|00.01%)	(48x) true
|   |   |   |   |   20.0:	(0.005401s|00.00%|00.01%)	(48x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.005461s|00.00%|00.01%)	(48x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   20.2:	(0.001963s|00.00%|00.00%)	(23x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.001970s|00.00%|00.00%)	(23x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.003606s|00.00%|00.02%)	(24x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p5
|   |   |   |   |   23.0:	(0.404882s|00.03%|01.07%)	(48x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.005871s|00.00%|00.01%)	(48x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   33.1:	(0.005378s|00.00%|00.01%)	(46x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:	(0.003581s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p5
|   |   |   |   |   68.0:	(0.005210s|00.00%|00.01%)	(46x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:	(0.002288s|00.00%|00.00%)	(23x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:	(0.001916s|00.00%|00.00%)	(23x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:	(36.850727s|03.38%|98.15%)	(46x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004802s|00.00%|00.01%)	(46x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.538380s|00.23%|06.81%)	(46x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.554115s|00.41%|10.50%)	(46x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.614416s|00.33%|09.52%)	(46x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.585393s|00.42%|10.33%)	(46x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.583820s|00.32%|09.20%)	(46x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.298214s|00.21%|06.45%)	(46x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.060670s|00.09%|04.13%)	(46x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.417373s|00.22%|06.51%)	(46x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.916589s|00.08%|03.90%)	(46x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.881439s|00.26%|08.80%)	(46x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.374359s|00.58%|14.91%)	(46x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.036296s|00.09%|04.43%)	(46x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.984861s|00.09%|04.33%)	(46x) xxhsum -H3 "${@}"
|   |   |   |   |   49.0:	(0.000212s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   58.0:	(0.000213s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   59.0:	(0.000234s|00.00%|00.00%)	(2x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0:	(0.000266s|00.00%|00.00%)	(2x) : > "/dev/shm/.forkrun.Xib3uC"/.quit
|   |   |   |   |   62.0:	(0.000359s|00.00%|00.00%)	(2x) printf '%.0s\n' "/dev/shm/.forkrun.Xib3uC"/.run/p* 1>&20
|   |   |   |   |   63.0:	(0.000235s|00.00%|00.00%)	(2x) break
|   |   |   |-- 138.0:	(0.000073s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:	(0.000570s|00.00%|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   8.0:	(0.000281s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p6
|   |   |   |   |   12.0:	(0.011068s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p6; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.001808s|00.00%|00.00%)	(15x) true
|   |   |   |   |   20.0:	(0.001556s|00.00%|00.00%)	(15x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001567s|00.00%|00.00%)	(15x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.002053s|00.00%|00.01%)	(15x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p6
|   |   |   |   |   23.0:	(0.088460s|00.00%|00.43%)	(15x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.004646s|00.00%|00.02%)	(15x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.001536s|00.00%|00.00%)	(14x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.001583s|00.00%|00.00%)	(14x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001722s|00.00%|00.00%)	(14x) evfd_wait 24
|   |   |   |   |   31.0:	(0.015281s|00.00%|00.07%)	(14x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.001561s|00.00%|00.00%)	(14x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.001525s|00.00%|00.00%)	(14x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.001643s|00.00%|00.00%)	(14x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.002082s|00.00%|00.01%)	(14x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p6
|   |   |   |   |   48.0:	(0.001570s|00.00%|00.00%)	(14x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.001468s|00.00%|00.00%)	(14x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(20.272428s|01.86%|99.08%)	(14x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001414s|00.00%|00.01%)	(14x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.382578s|00.12%|06.87%)	(14x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.787198s|00.25%|10.65%)	(14x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.041122s|00.18%|09.25%)	(14x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.799246s|00.25%|10.59%)	(14x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.083966s|00.19%|09.56%)	(14x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.220091s|00.11%|06.16%)	(14x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.419286s|00.03%|04.01%)	(14x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.353288s|00.12%|06.18%)	(14x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.339633s|00.03%|03.78%)	(14x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.401627s|00.12%|08.71%)	(14x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.687125s|00.33%|15.04%)	(14x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.391934s|00.03%|04.37%)	(14x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.363920s|00.03%|04.68%)	(14x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.001417s|00.00%|00.00%)	(13x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.001620s|00.00%|00.00%)	(13x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000076s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:	(0.000563s|00.00%|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   8.0:	(0.000078s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p7
|   |   |   |   |   12.0:	(0.009796s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p7; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.003024s|00.00%|00.01%)	(23x) true
|   |   |   |   |   20.0:	(0.002634s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002590s|00.00%|00.01%)	(23x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.006645s|00.00%|00.03%)	(23x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p7
|   |   |   |   |   23.0:	(0.226889s|00.02%|01.15%)	(23x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.002721s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.002430s|00.00%|00.01%)	(22x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.002483s|00.00%|00.01%)	(22x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002691s|00.00%|00.01%)	(22x) evfd_wait 24
|   |   |   |   |   31.0:	(0.030696s|00.00%|00.15%)	(22x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.002402s|00.00%|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.002439s|00.00%|00.01%)	(22x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.002560s|00.00%|00.01%)	(22x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.002991s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p7
|   |   |   |   |   48.0:	(0.002539s|00.00%|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.002390s|00.00%|00.01%)	(22x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(19.253605s|01.76%|98.18%)	(22x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002323s|00.00%|00.01%)	(22x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.377672s|00.12%|06.94%)	(22x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.330777s|00.21%|10.46%)	(22x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.785739s|00.16%|09.47%)	(22x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.221958s|00.20%|10.39%)	(22x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.748886s|00.16%|09.04%)	(22x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.190920s|00.10%|06.35%)	(22x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.518045s|00.04%|04.00%)	(22x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.287310s|00.11%|06.51%)	(22x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.469167s|00.04%|03.83%)	(22x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.593022s|00.14%|08.90%)	(22x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.705882s|00.34%|15.48%)	(22x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.510845s|00.04%|04.19%)	(22x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.511059s|00.04%|04.30%)	(22x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.002272s|00.00%|00.01%)	(21x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.002789s|00.00%|00.01%)	(21x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000075s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:	(0.000590s|00.00%|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   8.0:	(0.000077s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p8
|   |   |   |   |   12.0:	(0.009594s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p8; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.003470s|00.00%|00.01%)	(26x) true
|   |   |   |   |   20.0:	(0.003002s|00.00%|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002992s|00.00%|00.01%)	(26x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.003782s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p8
|   |   |   |   |   23.0:	(0.229361s|00.02%|01.29%)	(26x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.003256s|00.00%|00.01%)	(26x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.002996s|00.00%|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.002878s|00.00%|00.01%)	(25x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002997s|00.00%|00.01%)	(25x) evfd_wait 24
|   |   |   |   |   31.0:	(0.028168s|00.00%|00.15%)	(25x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.002888s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.002870s|00.00%|00.01%)	(25x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.003084s|00.00%|00.01%)	(25x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.003661s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p8
|   |   |   |   |   48.0:	(0.002799s|00.00%|00.01%)	(25x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.002673s|00.00%|00.01%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(17.293606s|01.58%|97.96%)	(25x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002616s|00.00%|00.01%)	(25x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.162741s|00.10%|06.83%)	(25x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.039055s|00.18%|10.81%)	(25x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.686159s|00.15%|09.84%)	(25x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(1.972131s|00.18%|10.15%)	(25x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.572516s|00.14%|08.92%)	(25x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.015900s|00.09%|06.28%)	(25x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.543854s|00.04%|04.25%)	(25x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.074695s|00.09%|06.09%)	(25x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.481231s|00.04%|03.92%)	(25x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.445315s|00.13%|08.82%)	(25x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.248742s|00.29%|15.29%)	(25x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.529388s|00.04%|04.29%)	(25x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.519263s|00.04%|04.36%)	(25x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:	(0.000074s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:	(0.000577s|00.00%|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:	(0.000289s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p9
|   |   |   |   |   12.0:	(0.009647s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p9; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.012291s|00.00%|00.02%)	(90x) true
|   |   |   |   |   20.0:	(0.010704s|00.00%|00.01%)	(90x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.010626s|00.00%|00.02%)	(90x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.004529s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p9
|   |   |   |   |   23.0:	(0.643609s|00.05%|01.23%)	(90x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.014316s|00.00%|00.02%)	(90x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.010298s|00.00%|00.01%)	(87x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.010042s|00.00%|00.01%)	(87x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.010580s|00.00%|00.01%)	(87x) evfd_wait 24
|   |   |   |   |   31.0:	(0.114670s|00.01%|00.21%)	(87x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.013639s|00.00%|00.02%)	(87x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.009794s|00.00%|00.01%)	(87x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.016576s|00.00%|00.03%)	(87x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.004016s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p9
|   |   |   |   |   48.0:	(0.009706s|00.00%|00.01%)	(87x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.015748s|00.00%|00.02%)	(87x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(50.530973s|04.63%|97.69%)	(87x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.009186s|00.00%|00.01%)	(87x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.477391s|00.31%|06.95%)	(87x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(5.629642s|00.51%|10.38%)	(87x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(4.819659s|00.44%|09.60%)	(87x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(5.491508s|00.50%|10.13%)	(87x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(4.681204s|00.42%|09.18%)	(87x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.104976s|00.28%|06.37%)	(87x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.840526s|00.16%|04.28%)	(87x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.155645s|00.28%|06.19%)	(87x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.662120s|00.15%|04.02%)	(87x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.285063s|00.39%|08.77%)	(87x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(8.703960s|00.79%|15.00%)	(87x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.808625s|00.16%|04.39%)	(87x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.861468s|00.17%|04.54%)	(87x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.012134s|00.00%|00.01%)	(84x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.018836s|00.00%|00.03%)	(84x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000073s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:	(0.000597s|00.00%|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:	(0.000274s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p10
|   |   |   |   |   12.0:	(0.011067s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p10; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004502s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p10
|   |   |   |   |   47.0:	(0.007247s|00.00%|00.04%)	(29x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p10
|   |   |   |-- 138.0:	(0.000075s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:	(0.000607s|00.00%|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:	(0.000078s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p11
|   |   |   |   |   12.0:	(0.011426s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p11; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004025s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p11
|   |   |   |   |   47.0:	(0.003698s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p11
|   |   |   |   |   68.1:	(0.011581s|00.00%|00.01%)	(75x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.014673s|00.00%|00.02%)	(75x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000073s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:	(0.000596s|00.00%|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |-- 65.0:                        	(0.000208s|00.00%|00.00%)	(2x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.Xib3uC"
|   |   |   |   |   8.0:                        	(0.000075s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p12
|   |   |   |   |   12.0:                        	(0.010474s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p12; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:                        	(0.030726s|00.00%|00.08%)	(2x) trap 'trap - TERM INT HUP USR1; kill -INT 1117906 ${BASHPID}' INT
|   |   |   |   |   15.0:                        	(0.030766s|00.00%|00.08%)	(2x) trap 'trap - TERM INT HUP USR1; kill -TERM 1117906 ${BASHPID}' TERM
|   |   |   |   |   16.0:                        	(0.030971s|00.00%|00.08%)	(2x) trap 'trap - TERM INT HUP USR1; kill -HUP 1117906 ${BASHPID}' HUP
|   |   |   |   |   17.0:                        	(0.030980s|00.00%|00.09%)	(2x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:                        	(0.011336s|00.00%|00.03%)	(62x) true
|   |   |   |   |   20.0:                        	(0.007216s|00.00%|00.02%)	(62x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:                        	(0.010301s|00.00%|00.02%)	(62x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   20.2:                        	(0.000159s|00.00%|00.00%)	(2x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:                        	(0.000159s|00.00%|00.00%)	(2x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:                        	(0.004731s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p12
|   |   |   |   |   23.0:                        	(0.569964s|00.05%|01.66%)	(62x) read -r -u 20 _
|   |   |   |   |   24.0:                        	(0.007928s|00.00%|00.02%)	(62x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:                        	(0.007099s|00.00%|00.02%)	(60x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:                        	(0.007057s|00.00%|00.02%)	(60x) doneIndicatorFlag=true
|   |   |   |   |   30.0:                        	(0.007281s|00.00%|00.02%)	(60x) evfd_wait 24
|   |   |   |   |   31.0:                        	(0.081566s|00.00%|00.23%)	(60x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:                        	(0.006762s|00.00%|00.01%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:                        	(0.006677s|00.00%|00.01%)	(60x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:                        	(0.013141s|00.00%|00.03%)	(60x) printf '\n' 1>&20
|   |   |   |   |   47.0:                        	(0.004417s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p12
|   |   |   |   |   48.0:                        	(0.006785s|00.00%|00.01%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:                        	(0.006771s|00.00%|00.01%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:                        	(0.000203s|00.00%|00.00%)	(2x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:                        	(0.000146s|00.00%|00.00%)	(2x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   70.1:                        	(0.000220s|00.00%|00.00%)	(2x) nLinesAutoFlag=false
|   |   |   |   |   73.0:                        	(33.276407s|03.05%|97.23%)	(60x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.013488s|00.00%|00.01%)	(120x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(7.237821s|00.66%|06.83%)	(120x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(13.089165s|01.20%|10.58%)	(120x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(10.405539s|00.95%|09.73%)	(120x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(12.923403s|01.18%|10.42%)	(120x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(10.177193s|00.93%|09.23%)	(120x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(6.423006s|00.58%|06.27%)	(120x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.903810s|00.26%|04.05%)	(120x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(6.970652s|00.63%|06.37%)	(120x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.453146s|00.22%|03.69%)	(120x) cksum "${@}"
|   |   |   |   |   |   17.0:	(8.575046s|00.78%|08.67%)	(120x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(20.330599s|01.86%|15.48%)	(120x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.832572s|00.26%|04.20%)	(120x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.753795s|00.25%|04.26%)	(120x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:                        	(0.006656s|00.00%|00.01%)	(58x) ${nSpawnFlag}
|   |   |   |   |   71.0:                        	(0.008679s|00.00%|00.02%)	(58x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:                        	(0.000229s|00.00%|00.00%)	(2x) printf '\n' 1>&20
|   |   |   |   |   26.0:                        	(0.000239s|00.00%|00.00%)	(2x) break
|   |   |   |   |   2.0:                        	(0.000256s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.0:                        	(0.000220s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.1:                        	(0.003241s|00.00%|00.00%)	(2x) break
|   |   |   |   |-- 4.0:                        	(0.000242s|00.00%|00.00%)	(2x) break
|   |   |   |-- 138.0:	(0.000076s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:	(0.000795s|00.00%|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   8.0:	(0.000127s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p13
|   |   |   |   |   12.0:	(0.018480s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p13; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.011811s|00.00%|00.01%)	(64x) true
|   |   |   |   |   20.0:	(0.007568s|00.00%|00.01%)	(64x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.007737s|00.00%|00.01%)	(64x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.004446s|00.00%|00.02%)	(16x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p13
|   |   |   |   |   23.0:	(0.497432s|00.04%|00.65%)	(64x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.007851s|00.00%|00.00%)	(64x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.014189s|00.00%|00.01%)	(120x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.013975s|00.00%|00.01%)	(120x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.014700s|00.00%|00.01%)	(120x) evfd_wait 24
|   |   |   |   |   31.0:	(0.157973s|00.01%|00.16%)	(120x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.015457s|00.00%|00.00%)	(120x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.013467s|00.00%|00.00%)	(120x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.029907s|00.00%|00.02%)	(120x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.005189s|00.00%|00.02%)	(15x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p13
|   |   |   |   |   48.0:	(0.015567s|00.00%|00.00%)	(120x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.015173s|00.00%|00.00%)	(120x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(107.089235s|09.83%|97.86%)	(120x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   68.1:	(0.006328s|00.00%|00.00%)	(56x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.013572s|00.00%|00.01%)	(56x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000146s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:	(0.000887s|00.00%|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:	(0.000077s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p14
|   |   |   |   |   12.0:	(0.009607s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p14; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003536s|00.00%|00.01%)	(24x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p14
|   |   |   |   |   28.0:	(0.002732s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.002704s|00.00%|00.01%)	(23x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002832s|00.00%|00.01%)	(23x) evfd_wait 24
|   |   |   |   |   31.0:	(0.026545s|00.00%|00.13%)	(23x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.004759s|00.00%|00.02%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   46.0:	(0.009734s|00.00%|00.04%)	(23x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.003478s|00.00%|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p14
|   |   |   |   |   48.0:	(0.002580s|00.00%|00.01%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |-- 138.0:	(0.000127s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:	(0.000919s|00.00%|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:	(0.000077s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p15
|   |   |   |   |   12.0:	(0.009711s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p15; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003912s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p15
|   |   |   |   |   47.0:	(0.003875s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p15
|   |   |   |-- 138.0:	(0.000124s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:	(0.000989s|00.00%|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p16
|   |   |   |   |   12.0:	(0.020257s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p16; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.002527s|00.00%|00.01%)	(16x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p16
|   |   |   |   |   47.0:	(0.002123s|00.00%|00.01%)	(15x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p16
|   |   |   |-- 138.0:	(0.000125s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:                        	(0.000911s|00.00%|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   65.0:                        	(17.783186s|01.63%|99.99%)	(1x) << (SUBSHELL) >>
|   |   |   |   |   8.0:	(0.000079s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p17
|   |   |   |   |   12.0:	(0.009626s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p17; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.002363s|00.00%|00.01%)	(18x) true
|   |   |   |   |   20.0:	(0.002065s|00.00%|00.01%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002153s|00.00%|00.01%)	(18x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.002611s|00.00%|00.01%)	(18x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p17
|   |   |   |   |   23.0:	(0.162795s|00.01%|00.91%)	(18x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.002194s|00.00%|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.002015s|00.00%|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.002080s|00.00%|00.01%)	(18x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002124s|00.00%|00.01%)	(18x) evfd_wait 24
|   |   |   |   |   31.0:	(0.020265s|00.00%|00.11%)	(18x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.002068s|00.00%|00.01%)	(18x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.001925s|00.00%|00.01%)	(17x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.010134s|00.00%|00.05%)	(18x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.002661s|00.00%|00.01%)	(18x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p17
|   |   |   |   |   48.0:	(0.002135s|00.00%|00.01%)	(18x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.001923s|00.00%|00.01%)	(17x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(17.484085s|01.60%|98.31%)	(17x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001722s|00.00%|00.01%)	(17x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.131486s|00.10%|06.81%)	(17x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.197991s|00.20%|10.98%)	(17x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.653246s|00.15%|09.54%)	(17x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.128488s|00.19%|10.57%)	(17x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.589742s|00.14%|09.04%)	(17x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.015554s|00.09%|06.26%)	(17x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.440352s|00.04%|04.17%)	(17x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.115263s|00.10%|06.24%)	(17x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.370565s|00.03%|03.57%)	(17x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.431311s|00.13%|08.62%)	(17x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.561117s|00.32%|15.64%)	(17x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.443805s|00.04%|04.31%)	(17x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.403443s|00.03%|04.10%)	(17x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.001832s|00.00%|00.01%)	(16x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.002064s|00.00%|00.01%)	(16x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:                        	(0.000122s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:	(0.001014s|00.00%|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:	(0.000140s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p18
|   |   |   |   |   12.0:	(0.017917s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p18; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.007683s|00.00%|00.01%)	(56x) true
|   |   |   |   |   20.0:	(0.009861s|00.00%|00.01%)	(56x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.006900s|00.00%|00.01%)	(56x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.004393s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p18
|   |   |   |   |   23.0:	(0.386366s|00.03%|00.99%)	(56x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.006963s|00.00%|00.01%)	(56x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.006427s|00.00%|00.01%)	(54x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.006205s|00.00%|00.01%)	(54x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.006590s|00.00%|00.01%)	(54x) evfd_wait 24
|   |   |   |   |   31.0:	(0.068840s|00.00%|00.17%)	(54x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.006325s|00.00%|00.01%)	(54x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.006348s|00.00%|00.01%)	(54x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.008765s|00.00%|00.02%)	(54x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.003956s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p18
|   |   |   |   |   48.0:	(0.006254s|00.00%|00.01%)	(54x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.006107s|00.00%|00.01%)	(54x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(38.565528s|03.54%|98.03%)	(54x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.008925s|00.00%|00.02%)	(54x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.777818s|00.25%|06.79%)	(54x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.471713s|00.41%|10.13%)	(54x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.558744s|00.32%|09.45%)	(54x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.311190s|00.39%|10.12%)	(54x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.476825s|00.31%|09.22%)	(54x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.550410s|00.23%|06.73%)	(54x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.215812s|00.11%|04.21%)	(54x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.557122s|00.23%|06.39%)	(54x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.107289s|00.10%|04.08%)	(54x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.185125s|00.29%|08.79%)	(54x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.928018s|00.63%|14.88%)	(54x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.233628s|00.11%|04.55%)	(54x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.182909s|00.10%|04.48%)	(54x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:	(0.000122s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:	(0.001021s|00.00%|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:	(0.000081s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p19
|   |   |   |   |   12.0:	(0.009600s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p19; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004316s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p19
|   |   |   |   |   47.0:	(0.004191s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p19
|   |   |   |-- 138.0:	(0.000125s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:	(0.000981s|00.00%|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:	(0.000129s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p20
|   |   |   |   |   12.0:	(0.018286s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p20; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004234s|00.00%|00.01%)	(28x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p20
|   |   |   |   |   47.0:	(0.004180s|00.00%|00.01%)	(27x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p20
|   |   |   |-- 138.0:	(0.000122s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:	(0.000912s|00.00%|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:	(0.000123s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p21
|   |   |   |   |   12.0:	(0.018544s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p21; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.004144s|00.00%|00.02%)	(32x) true
|   |   |   |   |   20.0:	(0.003824s|00.00%|00.01%)	(32x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.003653s|00.00%|00.01%)	(32x) read -r < "/dev/shm/.forkrun.Xib3uC"/.nLines
|   |   |   |   |   22.0:	(0.007710s|00.00%|00.03%)	(32x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p21
|   |   |   |   |   23.0:	(0.154514s|00.01%|00.80%)	(32x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.005238s|00.00%|00.02%)	(32x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.quit ]]
|   |   |   |   |   28.0:	(0.003718s|00.00%|00.01%)	(31x) [[ -f "/dev/shm/.forkrun.Xib3uC"/.done ]]
|   |   |   |   |   28.1:	(0.003531s|00.00%|00.01%)	(31x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.003758s|00.00%|00.01%)	(31x) evfd_wait 24
|   |   |   |   |   31.0:	(0.039679s|00.00%|00.20%)	(31x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:	(0.003560s|00.00%|00.01%)	(31x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:	(0.003562s|00.00%|00.01%)	(31x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.003896s|00.00%|00.02%)	(31x) printf '\n' 1>&20
|   |   |   |   |   47.0:	(0.004497s|00.00%|00.02%)	(31x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p21
|   |   |   |   |   48.0:	(0.003535s|00.00%|00.01%)	(31x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:	(0.003457s|00.00%|00.01%)	(31x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:	(18.917388s|01.73%|98.10%)	(31x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003353s|00.00%|00.01%)	(31x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.406071s|00.12%|07.27%)	(31x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.086582s|00.19%|10.33%)	(31x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.748194s|00.16%|09.48%)	(31x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.055571s|00.18%|10.26%)	(31x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.683538s|00.15%|09.01%)	(31x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.232232s|00.11%|06.50%)	(31x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.695282s|00.06%|04.26%)	(31x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.260908s|00.11%|06.38%)	(31x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.586913s|00.05%|03.75%)	(31x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.583623s|00.14%|08.74%)	(31x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.230044s|00.29%|14.88%)	(31x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.673347s|00.06%|04.44%)	(31x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.671730s|00.06%|04.55%)	(31x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:	(0.003341s|00.00%|00.01%)	(30x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.010148s|00.00%|00.05%)	(30x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000147s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:	(0.000998s|00.00%|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p22
|   |   |   |   |   12.0:	(0.018733s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p22; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.005365s|00.00%|00.02%)	(16x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p22
|   |   |   |   |   47.0:	(0.002141s|00.00%|00.01%)	(15x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p22
|   |   |   |-- 138.0:	(0.000125s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:	(0.001003s|00.00%|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:	(0.000157s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p23
|   |   |   |   |   12.0:	(0.017983s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p23; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.007885s|00.00%|00.04%)	(25x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p23
|   |   |   |   |   47.0:	(0.003456s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p23
|   |   |   |   |   68.1:	(0.006729s|00.00%|00.01%)	(46x) ${nSpawnFlag}
|   |   |   |   |   71.0:	(0.007229s|00.00%|00.01%)	(46x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:	(0.000127s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:	(0.001007s|00.00%|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:	(0.000130s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p24
|   |   |   |   |   12.0:	(0.018485s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p24; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003740s|00.00%|00.01%)	(25x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p24
|   |   |   |   |   47.0:	(0.006457s|00.00%|00.03%)	(24x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p24
|   |   |   |-- 138.0:	(0.000128s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:	(0.000996s|00.00%|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:	(0.000135s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p25
|   |   |   |   |   12.0:	(0.018081s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p25; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.002635s|00.00%|00.01%)	(16x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p25
|   |   |   |   |   47.0:	(0.002223s|00.00%|00.01%)	(15x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p25
|   |   |   |-- 138.0:	(0.000125s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:	(0.000992s|00.00%|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:	(0.000147s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p26
|   |   |   |   |   12.0:	(0.031792s|00.00%|00.18%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p26; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004872s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p26
|   |   |   |   |   47.0:	(0.004309s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p26
|   |   |   |-- 138.0:	(0.000130s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:	(0.001031s|00.00%|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:                        	(0.000167s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Xib3uC"/.run/p27
|   |   |   |   |   12.0:                        	(0.021755s|00.00%|00.12%)	(1x) trap ': >"/dev/shm/.forkrun.Xib3uC"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Xib3uC"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.Xib3uC"/.run/p27; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:                        	(0.004776s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.Xib3uC"/.wait/p27
|   |   |   |   |   47.0:                        	(0.004376s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.Xib3uC"/.wait/p27
|   |   |   |-- 138.0:	(0.000136s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:	(0.000131s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:	(0.000126s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:	(0.000107s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:	(0.000099s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:	(0.001133s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:	(0.000105s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:	(0.000102s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:	(0.000098s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:	(23.334849s|02.14%|04.27%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:	(0.000063s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:	(0.000056s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -228.0:	(0.000183s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -227.0:	(0.000069s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -226.0:	(0.000648s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -226.1:	(0.003756s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -226.0:                        	(0.003756s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -225.0:	(0.000071s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -224.0:	(0.000597s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -224.1:	(0.002223s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -224.0:	(0.002223s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -223.0:	(0.000079s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -222.0:	(0.000590s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -222.1:	(0.002189s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -222.0:                        	(0.002189s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -221.0:	(0.015587s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:	(0.000261s|00.00%|00.00%)	(1x) wait
|-- |-- -228.0:	(0.003683s|00.00%|00.00%)	(1x) wait (?)

2.0:	(543.301747s|49.87%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:	(0.000566s|00.00%|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   352.0:	(543.301181s|49.87%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 352.0:	(0.017810s|00.00%|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:	(0.000064s|00.00%|00.00%)	(1x) shopt -s extglob
|   |   68.0:	(0.000062s|00.00%|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:	(0.000113s|00.00%|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:	(0.000086s|00.00%|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:	(0.000071s|00.00%|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:	(0.000059s|00.00%|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:	(0.000062s|00.00%|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:	(0.000051s|00.00%|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:	(0.000054s|00.00%|00.00%)	(1x) optParseFlag=true
|   |   81.0:	(0.000103s|00.00%|00.00%)	(2x) ${optParseFlag}
|   |   81.1:	(0.000105s|00.00%|00.00%)	(2x) (( $# > 0  ))
|   |   81.2:	(0.000104s|00.00%|00.00%)	(2x) [[ "$1" == [-+]* ]]
|   |   82.0:	(0.000100s|00.00%|00.00%)	(1x) case "${1}" in
|   |   209.0:	(0.000054s|00.00%|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:	(0.000050s|00.00%|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:	(0.000052s|00.00%|00.00%)	(1x) shift 1
|   |   274.0:	(0.000052s|00.00%|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:	(0.000073s|00.00%|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:	(0.000057s|00.00%|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:	(0.000053s|00.00%|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:	(0.000050s|00.00%|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:	(0.000050s|00.00%|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:	(0.001195s|00.00%|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:	(0.002617s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:	(0.002617s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:	(0.000072s|00.00%|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:	(0.001759s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:	(0.000072s|00.00%|00.00%)	(1x) : > "${fPath}"
|   |   295.0:	(0.000051s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:	(0.011149s|00.00%|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   303.0:	(543.260770s|49.86%|99.99%)	(1x) << (SUBSHELL) >>
|   |   |-- 303.0:	(0.000063s|00.00%|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:	(0.000126s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:	(0.001191s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:	(0.000156s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:                        	(0.000621s|00.00%|100.00%)	(3x) :
|   |   |   1457.2:	(0.000198s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:	(0.000233s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:	(0.000246s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:	(0.000232s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:	(0.000069s|00.00%|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:	(0.000058s|00.00%|00.00%)	(1x) LANG=C
|   |   |   320.0:	(0.000055s|00.00%|00.00%)	(1x) IFS=
|   |   |   322.0:	(0.000168s|00.00%|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:	(0.000066s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:	(0.000055s|00.00%|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:	(0.000058s|00.00%|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:	(0.000057s|00.00%|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:	(0.000062s|00.00%|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:	(0.000076s|00.00%|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:	(0.000070s|00.00%|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:	(0.000056s|00.00%|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:	(0.000056s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:	(0.000712s|00.00%|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:	(0.000097s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:	(0.000097s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:	(0.000061s|00.00%|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:	(0.000056s|00.00%|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:	(0.000064s|00.00%|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:	(0.000059s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:	(0.000055s|00.00%|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:	(0.000054s|00.00%|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:	(0.000058s|00.00%|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:	(0.000077s|00.00%|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:	(0.000058s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:	(0.000055s|00.00%|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:	(0.000058s|00.00%|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:	(0.000056s|00.00%|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:	(0.000060s|00.00%|00.00%)	(1x) nLines=1
|   |   |   427.0:	(0.000058s|00.00%|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:	(0.000064s|00.00%|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:	(0.000712s|00.00%|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:                        	(0.000051s|00.00%|07.16%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:                        	(0.000055s|00.00%|07.72%)	(1x) local +i -l nn
|   |   |   |   9.0:                        	(0.000055s|00.00%|07.72%)	(1x) local vOut
|   |   |   |   11.0:                        	(0.000056s|00.00%|07.86%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:                        	(0.000057s|00.00%|08.00%)	(1x) shift 1
|   |   |   |   13.0:                        	(0.000058s|00.00%|08.14%)	(1x) local -g vOut
|   |   |   |   15.0:                        	(0.000054s|00.00%|07.58%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:                        	(0.000102s|00.00%|14.32%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:                        	(0.000054s|00.00%|07.58%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:                        	(0.000054s|00.00%|07.58%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:                        	(0.000056s|00.00%|07.86%)	(1x) continue
|   |   |   |-- 28.0:                        	(0.000060s|00.00%|08.42%)	(1x) local +n vOut
|   |   |   438.0:	(0.000057s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:	(0.000693s|00.00%|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:	(0.001724s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:	(0.000193s|00.00%|11.19%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:	(0.001531s|00.00%|88.80%)	(1x) nproc
|   |   |   441.0:	(0.000060s|00.00%|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:	(0.000056s|00.00%|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:	(0.000052s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:	(0.000056s|00.00%|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:	(0.000059s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:	(0.000055s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:	(0.000057s|00.00%|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:	(0.000078s|00.00%|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:	(0.000065s|00.00%|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:	(0.000055s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:	(0.000053s|00.00%|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:	(0.000054s|00.00%|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:	(0.000056s|00.00%|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:	(0.000058s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:	(0.000132s|00.00%|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:	(0.000053s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:	(0.000061s|00.00%|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:	(0.000054s|00.00%|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:	(0.000052s|00.00%|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:	(0.000051s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:	(0.000059s|00.00%|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:	(0.000054s|00.00%|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:	(0.000052s|00.00%|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:	(0.000054s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:	(0.000054s|00.00%|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:	(0.000096s|00.00%|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:	(0.000056s|00.00%|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:	(0.003043s|00.00%|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   485.0:	(0.000056s|00.00%|00.00%)	(1x) ddQuietStr='status=none'
|   |   |   492.0:	(0.000053s|00.00%|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:	(0.000053s|00.00%|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:	(0.000056s|00.00%|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:	(0.000052s|00.00%|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:	(0.000536s|00.00%|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:	(0.000071s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:	(0.000071s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:	(0.000059s|00.00%|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:	(0.000057s|00.00%|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:	(0.000054s|00.00%|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:	(0.002752s|00.00%|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:	(0.000059s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:	(0.000057s|00.00%|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:	(0.000055s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:	(0.000058s|00.00%|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:	(0.000070s|00.00%|00.00%)	(1x) evfd_init
|   |   |   577.0:	(0.000061s|00.00%|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:	(0.000056s|00.00%|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:	(0.000054s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:	(0.000486s|00.00%|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:	(0.066457s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:	(0.000071s|00.00%|00.10%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:	(0.008432s|00.00%|12.68%)	(1x) trap - EXIT
|   |   |   |   602.0:	(0.009871s|00.00%|14.85%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:	(0.009799s|00.00%|14.74%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:	(0.009794s|00.00%|14.73%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:	(0.009807s|00.00%|14.75%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:	(0.000054s|00.00%|00.08%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:	(0.018432s|00.00%|27.73%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:	(0.000080s|00.00%|00.12%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:	(0.000063s|00.00%|00.09%)	(1x) evfd_signal
|   |   |   |-- 615.0:	(0.000054s|00.00%|00.08%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:	(0.000061s|00.00%|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:	(0.000053s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:	(0.000055s|00.00%|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:	(0.000055s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:	(0.000375s|00.00%|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:	(6.106641s|00.56%|01.12%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:	(0.000078s|00.00%|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:	(0.010061s|00.00%|00.16%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:	(0.009960s|00.00%|00.16%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:	(0.009772s|00.00%|00.16%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:	(0.009878s|00.00%|00.16%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:	(0.009824s|00.00%|00.16%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:	(0.000056s|00.00%|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:	(0.000057s|00.00%|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:	(0.000054s|00.00%|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:	(0.000054s|00.00%|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:	(0.077648s|00.00%|01.27%)	(677x) ${fallocateFlag}
|   |   |   |   702.0:	(4.878158s|00.44%|79.88%)	(676x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:	(0.001562s|00.00%|00.02%)	(12x) continue
|   |   |   |   704.0:	(0.072571s|00.00%|01.18%)	(664x) case ${REPLY} in
|   |   |   |   718.0:	(0.071393s|00.00%|01.16%)	(664x) ${nLinesAutoFlag}
|   |   |   |   719.0:	(0.000056s|00.00%|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:	(0.000108s|00.00%|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:	(0.075208s|00.00%|01.23%)	(664x) ${lseekPosFlag}
|   |   |   |   729.0:	(0.078875s|00.00%|01.29%)	(664x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:	(0.080042s|00.00%|01.31%)	(664x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:	(0.077438s|00.00%|01.26%)	(664x) ${nLinesAutoFlag}
|   |   |   |   737.1:	(0.075956s|00.00%|01.24%)	(664x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:	(0.071888s|00.00%|01.17%)	(664x) ${nSpawnFlag}
|   |   |   |   741.0:	(0.072292s|00.00%|01.18%)	(664x) ${nLinesAutoFlag}
|   |   |   |   743.0:	(0.000056s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:	(0.000059s|00.00%|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:	(0.000586s|00.00%|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:	(0.002504s|00.00%|00.04%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:	(0.002503s|00.00%|99.96%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:	(0.000062s|00.00%|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:	(0.000056s|00.00%|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:	(0.000065s|00.00%|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:	(0.000056s|00.00%|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:	(0.000055s|00.00%|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:	(0.000060s|00.00%|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:	(0.000055s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:	(0.000079s|00.00%|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:	(0.000056s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:	(0.000057s|00.00%|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:	(0.070625s|00.00%|01.15%)	(664x) ${fallocateFlag}
|   |   |   |   767.0:	(0.069916s|00.00%|01.14%)	(664x) case ${nWait} in
|   |   |   |   778.0:	(0.069084s|00.00%|01.13%)	(643x) ((nWait--))
|   |   |   |   783.0:	(0.074369s|00.00%|01.21%)	(664x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:	(0.074979s|00.00%|01.22%)	(663x) ${nSpawnFlag}
|   |   |   |   769.0:	(0.002313s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:	(0.002287s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:	(0.046802s|00.00%|00.76%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:	(0.002338s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:	(0.002326s|00.00%|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:	(0.002459s|00.00%|00.04%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:	(0.000134s|00.00%|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:	(0.000131s|00.00%|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:	(0.000127s|00.00%|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:	(0.000144s|00.00%|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:	(0.000154s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -228.0:	(0.000144s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   |-- -228.1:	(0.001514s|00.00%|00.02%)	(1x) ${nSpawnFlag} (?)
|   |   |   794.0:	(0.000060s|00.00%|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:	(0.000083s|00.00%|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:	(0.000077s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:	(0.001815s|00.00%|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:	(0.014349s|00.00%|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:	(0.000398s|00.00%|09.03%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:	(0.000058s|00.00%|01.31%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:	(0.000072s|00.00%|01.63%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:	(0.000208s|00.00%|04.72%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:	(0.000055s|00.00%|01.24%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:	(0.000054s|00.00%|01.22%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:	(0.000059s|00.00%|01.33%)	(1x) echo "{"
|   |   |   |   1403.0:	(0.000056s|00.00%|01.27%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:	(0.000054s|00.00%|01.22%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:	(0.000057s|00.00%|01.29%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:	(0.000057s|00.00%|01.29%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:	(0.000055s|00.00%|01.24%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:	(0.000058s|00.00%|01.31%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:	(0.000058s|00.00%|01.31%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:	(0.000055s|00.00%|01.24%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:	(0.000057s|00.00%|01.29%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:	(0.000055s|00.00%|01.24%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:	(0.000055s|00.00%|01.24%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:	(0.000057s|00.00%|01.29%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:	(0.000064s|00.00%|01.45%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:	(0.000052s|00.00%|01.18%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:	(0.000054s|00.00%|01.22%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:	(0.000083s|00.00%|01.88%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:	(0.000054s|00.00%|01.22%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:	(0.000056s|00.00%|01.27%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:	(0.000062s|00.00%|01.40%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:	(0.000064s|00.00%|01.45%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:	(0.000075s|00.00%|01.70%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:	(0.000053s|00.00%|01.20%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:	(0.000067s|00.00%|01.52%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:	(0.000066s|00.00%|01.49%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:	(0.000054s|00.00%|01.22%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:	(0.000061s|00.00%|01.38%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:	(0.000059s|00.00%|01.33%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:	(0.000058s|00.00%|01.31%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:	(0.000067s|00.00%|01.52%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:	(0.000057s|00.00%|01.29%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:	(0.000067s|00.00%|01.52%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:	(0.000052s|00.00%|01.18%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:	(0.000065s|00.00%|01.47%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:	(0.000058s|00.00%|01.31%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:	(0.000077s|00.00%|01.74%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:	(0.000054s|00.00%|01.22%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:	(0.000069s|00.00%|01.56%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:	(0.000053s|00.00%|01.20%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:	(0.000058s|00.00%|01.31%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:	(0.000052s|00.00%|01.18%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:	(0.000078s|00.00%|01.77%)	(1x) echo '{'
|   |   |   |   1528.0:	(0.000054s|00.00%|01.22%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:	(0.000058s|00.00%|01.31%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:	(0.000056s|00.00%|01.27%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:	(0.000094s|00.00%|02.13%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:	(0.000053s|00.00%|01.20%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:	(0.000058s|00.00%|01.31%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:	(0.000053s|00.00%|01.20%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:	(0.000053s|00.00%|01.20%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:	(0.000072s|00.00%|01.63%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:	(0.000060s|00.00%|01.36%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:	(0.000057s|00.00%|01.29%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:	(0.000052s|00.00%|01.18%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:	(0.000074s|00.00%|01.67%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:	(0.000060s|00.00%|01.36%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:	(0.000058s|00.00%|01.31%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:	(0.000057s|00.00%|01.29%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:	(0.000069s|00.00%|01.56%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:	(0.000219s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:	(0.000219s|00.00%|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:	(0.000204s|00.00%|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:	(0.009908s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:	(0.009774s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:	(0.009527s|00.00%|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:	(0.000057s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:	(0.000053s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:	(0.000068s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:	(0.000063s|00.00%|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:	(0.000051s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:	(0.002340s|00.00%|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:	(0.002494s|00.00%|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:	(0.002268s|00.00%|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:	(513.778752s|47.16%|94.57%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:	(0.000505s|00.00%|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:	(513.754376s|47.15%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:	(0.003815s|00.00%|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.dD8cgW"
|   |   |   |   |   8.0:	(0.000076s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p0
|   |   |   |   |   12.0:	(0.009571s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p0; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:	(0.419753s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 1126693 ${BASHPID}' INT
|   |   |   |   |   15.0:	(0.439485s|00.04%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 1126693 ${BASHPID}' TERM
|   |   |   |   |   16.0:	(0.426412s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 1126693 ${BASHPID}' HUP
|   |   |   |   |   17.0:	(0.431140s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:	(0.003991s|00.00%|00.01%)	(31x) true
|   |   |   |   |   20.0:	(0.003489s|00.00%|00.01%)	(31x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.003441s|00.00%|00.01%)	(31x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   20.2:	(0.000577s|00.00%|00.00%)	(8x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.000533s|00.00%|00.00%)	(8x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.004432s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p0
|   |   |   |   |   23.0:	(0.121189s|00.01%|00.58%)	(31x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.003587s|00.00%|00.01%)	(31x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.003287s|00.00%|00.01%)	(30x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.003269s|00.00%|00.01%)	(30x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.003499s|00.00%|00.01%)	(30x) evfd_wait 24
|   |   |   |   |   31.0:	(0.033393s|00.00%|00.16%)	(30x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.008948s|00.00%|00.04%)	(30x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.004308s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p0
|   |   |   |   |   36.0:	(0.003381s|00.00%|00.01%)	(30x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.003297s|00.00%|00.01%)	(30x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:	(0.000571s|00.00%|00.00%)	(8x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:	(0.000503s|00.00%|00.00%)	(8x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:	(20.367943s|01.86%|98.70%)	(30x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003154s|00.00%|00.02%)	(30x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.534599s|00.14%|07.41%)	(30x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.263153s|00.20%|10.31%)	(30x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.894881s|00.17%|09.49%)	(30x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.260797s|00.20%|10.28%)	(30x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.883856s|00.17%|09.38%)	(30x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.346069s|00.12%|06.60%)	(30x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.662498s|00.06%|04.05%)	(30x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.381144s|00.12%|06.51%)	(30x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.581706s|00.05%|03.81%)	(30x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.699328s|00.15%|08.51%)	(30x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.614282s|00.33%|15.39%)	(30x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.630981s|00.05%|04.06%)	(30x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.611495s|00.05%|04.04%)	(30x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.003943s|00.00%|00.01%)	(38x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(1.996798s|00.18%|07.01%)	(38x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(3.379056s|00.31%|10.77%)	(38x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(2.851726s|00.26%|09.54%)	(38x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(3.421752s|00.31%|10.76%)	(38x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(2.763756s|00.25%|09.44%)	(38x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(1.776086s|00.16%|06.28%)	(38x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.871264s|00.07%|03.66%)	(38x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(1.912157s|00.17%|06.48%)	(38x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.769481s|00.07%|03.33%)	(38x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(2.389464s|00.21%|08.40%)	(38x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(5.468696s|00.50%|16.53%)	(38x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.869842s|00.07%|03.79%)	(38x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.865097s|00.07%|03.82%)	(38x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:	(0.002407s|00.00%|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   56.1:	(0.009453s|00.00%|00.01%)	(84x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.020124s|00.00%|00.03%)	(84x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:	(0.002223s|00.00%|00.00%)	(26x) printf '\n' 1>&20
|   |   |   |   |   26.0:	(0.002242s|00.00%|00.00%)	(26x) break
|   |   |   |   |   2.0:	(0.002699s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.0:	(0.002298s|00.00%|00.00%)	(28x) break
|   |   |   |   |   3.1:	(0.043755s|00.00%|00.00%)	(28x) break
|   |   |   |   |-- 4.0:	(0.002488s|00.00%|00.00%)	(28x) break
|   |   |   |-- 126.0:	(0.000068s|00.00%|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:	(0.000544s|00.00%|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:	(0.001264s|00.00%|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p1
|   |   |   |   |   12.0:	(0.010603s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p1; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.015897s|00.00%|00.01%)	(108x) true
|   |   |   |   |   20.0:	(0.012944s|00.00%|00.01%)	(108x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.012630s|00.00%|00.01%)	(108x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.003832s|00.00%|00.01%)	(27x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p1
|   |   |   |   |   23.0:	(0.391322s|00.03%|00.54%)	(108x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.013047s|00.00%|00.01%)	(108x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.009100s|00.00%|00.01%)	(78x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.008766s|00.00%|00.01%)	(78x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.012950s|00.00%|00.01%)	(78x) evfd_wait 24
|   |   |   |   |   31.0:	(0.093969s|00.00%|00.16%)	(78x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.022025s|00.00%|00.03%)	(78x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.003672s|00.00%|00.01%)	(26x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p1
|   |   |   |   |   36.0:	(0.011841s|00.00%|00.01%)	(78x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.017539s|00.00%|00.01%)	(104x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(70.715048s|06.49%|98.49%)	(104x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.011083s|00.00%|00.01%)	(104x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.804795s|00.44%|06.88%)	(104x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(8.103675s|00.74%|10.33%)	(104x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.744691s|00.61%|09.61%)	(104x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(8.163317s|00.74%|10.38%)	(104x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.536518s|00.60%|09.19%)	(104x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.385944s|00.40%|06.45%)	(104x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.318359s|00.21%|04.24%)	(104x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.594499s|00.42%|06.33%)	(104x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.021819s|00.18%|03.96%)	(104x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.898982s|00.54%|08.73%)	(104x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(12.697480s|01.16%|14.94%)	(104x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.251019s|00.20%|04.38%)	(104x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.182867s|00.20%|04.37%)	(104x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.010790s|00.00%|00.01%)	(96x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.012501s|00.00%|00.01%)	(96x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000072s|00.00%|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:	(0.000555s|00.00%|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   8.0:	(0.001136s|00.00%|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p2
|   |   |   |   |   12.0:	(0.011685s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p2; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.013732s|00.00%|00.01%)	(104x) true
|   |   |   |   |   20.0:	(0.012242s|00.00%|00.01%)	(104x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.012247s|00.00%|00.01%)	(104x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.006930s|00.00%|00.03%)	(26x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p2
|   |   |   |   |   23.0:	(0.358684s|00.03%|00.50%)	(104x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.012549s|00.00%|00.01%)	(104x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.014735s|00.00%|00.01%)	(100x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.014286s|00.00%|00.01%)	(100x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.012103s|00.00%|00.01%)	(100x) evfd_wait 24
|   |   |   |   |   31.0:	(0.126098s|00.01%|00.17%)	(100x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.019583s|00.00%|00.02%)	(100x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.003623s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p2
|   |   |   |   |   36.0:	(0.012510s|00.00%|00.01%)	(100x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.014353s|00.00%|00.01%)	(100x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(69.423127s|06.37%|98.67%)	(100x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.010565s|00.00%|00.01%)	(100x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.614362s|00.42%|06.83%)	(100x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(7.993776s|00.73%|10.43%)	(100x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.614937s|00.60%|09.56%)	(100x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.912355s|00.72%|10.26%)	(100x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.499109s|00.59%|09.24%)	(100x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.212143s|00.38%|06.40%)	(100x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.182106s|00.20%|04.18%)	(100x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.447775s|00.40%|06.38%)	(100x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.980115s|00.18%|03.97%)	(100x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.766126s|00.52%|08.76%)	(100x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(12.849323s|01.17%|15.03%)	(100x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.216384s|00.20%|04.39%)	(100x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.124051s|00.19%|04.37%)	(100x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.010609s|00.00%|00.01%)	(92x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.015873s|00.00%|00.01%)	(92x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000091s|00.00%|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:	(0.000542s|00.00%|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:	(0.000118s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p3
|   |   |   |   |   12.0:	(0.011946s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p3; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.001614s|00.00%|00.00%)	(13x) true
|   |   |   |   |   20.0:	(0.001400s|00.00%|00.00%)	(13x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001433s|00.00%|00.00%)	(13x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.001742s|00.00%|00.00%)	(13x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p3
|   |   |   |   |   23.0:	(0.050695s|00.00%|00.27%)	(13x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.001556s|00.00%|00.00%)	(13x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.001285s|00.00%|00.00%)	(12x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.001361s|00.00%|00.00%)	(12x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001425s|00.00%|00.00%)	(12x) evfd_wait 24
|   |   |   |   |   31.0:	(0.011700s|00.00%|00.06%)	(12x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.001392s|00.00%|00.00%)	(12x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.001581s|00.00%|00.00%)	(12x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p3
|   |   |   |   |   36.0:	(0.001246s|00.00%|00.00%)	(12x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.001246s|00.00%|00.00%)	(12x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(18.067334s|01.65%|99.24%)	(12x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001180s|00.00%|00.02%)	(12x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.165864s|00.10%|06.97%)	(12x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.346247s|00.21%|10.99%)	(12x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.716457s|00.15%|09.39%)	(12x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.301193s|00.21%|10.59%)	(12x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.691319s|00.15%|08.97%)	(12x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.054342s|00.09%|06.65%)	(12x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.342513s|00.03%|03.75%)	(12x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.120460s|00.10%|06.22%)	(12x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.266254s|00.02%|03.39%)	(12x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.387206s|00.12%|08.26%)	(12x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.065209s|00.37%|16.95%)	(12x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.326065s|00.02%|03.97%)	(12x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.283025s|00.02%|03.73%)	(12x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.000766s|00.00%|00.01%)	(7x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(0.310475s|00.02%|06.74%)	(7x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(0.554515s|00.05%|11.34%)	(7x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(0.449387s|00.04%|09.43%)	(7x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(0.537681s|00.04%|10.92%)	(7x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(0.418651s|00.03%|08.90%)	(7x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(0.300983s|00.02%|06.32%)	(7x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.166854s|00.01%|04.20%)	(7x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(0.312845s|00.02%|06.56%)	(7x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.127984s|00.01%|03.43%)	(7x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(0.384246s|00.03%|08.31%)	(7x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(0.882609s|00.08%|15.66%)	(7x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.154826s|00.01%|04.09%)	(7x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.150052s|00.01%|03.96%)	(7x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.001128s|00.00%|00.00%)	(10x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.001309s|00.00%|00.00%)	(10x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000070s|00.00%|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:	(0.000556s|00.00%|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:	(0.000076s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p4
|   |   |   |   |   12.0:	(0.009451s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p4; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   20.2:	(0.002012s|00.00%|00.00%)	(24x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:	(0.002050s|00.00%|00.00%)	(24x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:	(0.004037s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p4
|   |   |   |   |   35.0:	(0.003658s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p4
|   |   |   |   |   57.0:	(0.002244s|00.00%|00.00%)	(24x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:	(0.002070s|00.00%|00.00%)	(24x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   56.1:	(0.012298s|00.00%|00.01%)	(75x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.016944s|00.00%|00.02%)	(75x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000070s|00.00%|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:	(0.000547s|00.00%|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:	(0.000107s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p5
|   |   |   |   |   12.0:	(0.010638s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p5; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003802s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p5
|   |   |   |   |   35.0:	(0.003575s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p5
|   |   |   |-- 126.0:	(0.000073s|00.00%|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:	(0.000542s|00.00%|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   8.0:	(0.000283s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p6
|   |   |   |   |   12.0:	(0.010550s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p6; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.002674s|00.00%|00.01%)	(20x) true
|   |   |   |   |   20.0:	(0.002282s|00.00%|00.01%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002321s|00.00%|00.01%)	(20x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.002987s|00.00%|00.01%)	(20x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p6
|   |   |   |   |   23.0:	(0.024175s|00.00%|00.13%)	(20x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.005356s|00.00%|00.03%)	(20x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.004447s|00.00%|00.01%)	(40x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.004265s|00.00%|00.01%)	(40x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.004627s|00.00%|00.01%)	(40x) evfd_wait 24
|   |   |   |   |   31.0:	(0.043161s|00.00%|00.11%)	(40x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.013661s|00.00%|00.03%)	(40x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.002902s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p6
|   |   |   |   |   36.0:	(0.004489s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.002078s|00.00%|00.01%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(17.549663s|01.61%|99.19%)	(19x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002107s|00.00%|00.01%)	(19x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.145996s|00.10%|06.70%)	(19x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.110161s|00.19%|10.58%)	(19x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.636926s|00.15%|09.28%)	(19x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.079882s|00.19%|10.61%)	(19x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.620915s|00.14%|09.31%)	(19x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.071653s|00.09%|06.65%)	(19x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.471666s|00.04%|03.88%)	(19x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.116009s|00.10%|06.35%)	(19x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.406315s|00.03%|03.58%)	(19x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.432904s|00.13%|08.40%)	(19x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.569326s|00.32%|16.51%)	(19x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.472599s|00.04%|04.20%)	(19x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.413204s|00.03%|03.78%)	(19x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.002053s|00.00%|00.01%)	(18x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.002472s|00.00%|00.01%)	(18x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   37.0:	(0.000226s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:	(0.000235s|00.00%|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:	(0.000244s|00.00%|00.00%)	(2x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:	(0.000274s|00.00%|00.00%)	(2x) : > "/dev/shm/.forkrun.dD8cgW"/.quit
|   |   |   |   |   50.0:	(0.000374s|00.00%|00.00%)	(2x) printf '%.0s\n' "/dev/shm/.forkrun.dD8cgW"/.run/p* 1>&20
|   |   |   |   |   51.0:	(0.000233s|00.00%|00.00%)	(2x) break
|   |   |   |-- 126.0:	(0.000075s|00.00%|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:                        	(0.000557s|00.00%|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   65.0:                        	(58.558472s|05.37%|99.99%)	(3x) << (SUBSHELL) >>
|   |   |   |   |   8.0:	(0.000098s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p7
|   |   |   |   |   12.0:	(0.010822s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p7; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.001347s|00.00%|00.00%)	(11x) true
|   |   |   |   |   20.0:	(0.001175s|00.00%|00.00%)	(11x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001238s|00.00%|00.00%)	(11x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.001554s|00.00%|00.00%)	(11x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p7
|   |   |   |   |   23.0:	(0.049430s|00.00%|00.23%)	(11x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.001314s|00.00%|00.00%)	(11x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.004258s|00.00%|00.02%)	(10x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.001094s|00.00%|00.00%)	(10x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001156s|00.00%|00.00%)	(10x) evfd_wait 24
|   |   |   |   |   31.0:	(0.012945s|00.00%|00.06%)	(10x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.004257s|00.00%|00.02%)	(10x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.001467s|00.00%|00.00%)	(10x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p7
|   |   |   |   |   36.0:	(0.001220s|00.00%|00.00%)	(10x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.001147s|00.00%|00.00%)	(10x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(20.509065s|01.88%|99.28%)	(10x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001001s|00.00%|00.01%)	(10x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.397465s|00.12%|06.44%)	(10x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.933081s|00.26%|11.53%)	(10x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.085016s|00.19%|09.24%)	(10x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.907256s|00.26%|11.28%)	(10x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.162777s|00.19%|09.43%)	(10x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.266240s|00.11%|06.33%)	(10x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.378558s|00.03%|03.35%)	(10x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.304028s|00.11%|06.16%)	(10x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.284436s|00.02%|03.58%)	(10x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.373772s|00.12%|08.24%)	(10x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.794225s|00.34%|16.49%)	(10x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.350769s|00.03%|04.42%)	(10x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.270441s|00.02%|03.36%)	(10x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.003719s|00.00%|00.01%)	(9x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.004290s|00.00%|00.02%)	(9x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:                        	(0.000074s|00.00%|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:	(0.000559s|00.00%|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   8.0:	(0.000080s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p8
|   |   |   |   |   12.0:	(0.009598s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p8; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.007775s|00.00%|00.01%)	(56x) true
|   |   |   |   |   20.0:	(0.007073s|00.00%|00.01%)	(56x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.006833s|00.00%|00.01%)	(56x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.004190s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p8
|   |   |   |   |   23.0:	(0.238098s|00.02%|00.64%)	(56x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.007029s|00.00%|00.01%)	(56x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.015234s|00.00%|00.02%)	(81x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.009414s|00.00%|00.01%)	(81x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.010010s|00.00%|00.01%)	(81x) evfd_wait 24
|   |   |   |   |   31.0:	(0.104829s|00.00%|00.19%)	(81x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.015681s|00.00%|00.02%)	(81x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.004016s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p8
|   |   |   |   |   36.0:	(0.010379s|00.00%|00.01%)	(81x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.015199s|00.00%|00.03%)	(54x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(36.504274s|03.35%|98.37%)	(54x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.005732s|00.00%|00.01%)	(54x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.593970s|00.23%|07.01%)	(54x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.212638s|00.38%|10.40%)	(54x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.374735s|00.30%|09.45%)	(54x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.096131s|00.37%|10.18%)	(54x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.349501s|00.30%|09.11%)	(54x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.251476s|00.20%|06.28%)	(54x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.204515s|00.11%|04.20%)	(54x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.326985s|00.21%|06.23%)	(54x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.025920s|00.09%|03.83%)	(54x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.077299s|00.28%|08.85%)	(54x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.557935s|00.60%|15.10%)	(54x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.204733s|00.11%|04.48%)	(54x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.222704s|00.11%|04.70%)	(54x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.006081s|00.00%|00.01%)	(52x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.019832s|00.00%|00.04%)	(52x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000074s|00.00%|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:	(0.000545s|00.00%|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:	(0.000166s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p9
|   |   |   |   |   12.0:	(0.010678s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p9; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.015369s|00.00%|00.02%)	(116x) true
|   |   |   |   |   20.0:	(0.014264s|00.00%|00.01%)	(116x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.013520s|00.00%|00.01%)	(116x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.004194s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p9
|   |   |   |   |   23.0:	(0.513534s|00.04%|00.72%)	(116x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.014231s|00.00%|00.01%)	(116x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.017041s|00.00%|00.01%)	(112x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.012631s|00.00%|00.01%)	(112x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.013449s|00.00%|00.01%)	(112x) evfd_wait 24
|   |   |   |   |   31.0:	(0.144959s|00.01%|00.20%)	(112x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.024338s|00.00%|00.03%)	(112x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.004093s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p9
|   |   |   |   |   36.0:	(0.016731s|00.00%|00.01%)	(112x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.012811s|00.00%|00.01%)	(112x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(69.441265s|06.37%|98.23%)	(112x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.012084s|00.00%|00.01%)	(112x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.929895s|00.45%|07.10%)	(112x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(7.904330s|00.72%|10.47%)	(112x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.573144s|00.60%|09.58%)	(112x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.648980s|00.70%|10.20%)	(112x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.317682s|00.57%|09.07%)	(112x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.245762s|00.38%|06.33%)	(112x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.376100s|00.21%|04.12%)	(112x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.463387s|00.40%|06.31%)	(112x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.165849s|00.19%|03.94%)	(112x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.983566s|00.54%|08.92%)	(112x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(11.979526s|01.09%|14.81%)	(112x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.458558s|00.22%|04.51%)	(112x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.382402s|00.21%|04.44%)	(112x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.015458s|00.00%|00.01%)	(108x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.014884s|00.00%|00.02%)	(108x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000070s|00.00%|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:                        	(0.000556s|00.00%|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:	(0.000082s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p10
|   |   |   |   |   12.0:	(0.009596s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p10; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.002841s|00.00%|00.01%)	(21x) true
|   |   |   |   |   20.0:	(0.002668s|00.00%|00.01%)	(21x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002430s|00.00%|00.01%)	(21x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.005092s|00.00%|00.02%)	(21x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p10
|   |   |   |   |   23.0:	(0.060644s|00.00%|00.33%)	(21x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.002414s|00.00%|00.01%)	(21x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   35.0:	(0.003008s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p10
|   |   |   |   |   56.0:	(0.002245s|00.00%|00.01%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(17.767995s|01.63%|99.02%)	(20x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002111s|00.00%|00.01%)	(20x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.198013s|00.10%|06.90%)	(20x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.183039s|00.20%|10.68%)	(20x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.756124s|00.16%|09.61%)	(20x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.121796s|00.19%|10.22%)	(20x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.659213s|00.15%|09.02%)	(20x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.050146s|00.09%|06.42%)	(20x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.483985s|00.04%|04.16%)	(20x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.149807s|00.10%|06.53%)	(20x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.444649s|00.04%|03.93%)	(20x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.440022s|00.13%|08.63%)	(20x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.339734s|00.30%|14.66%)	(20x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.467739s|00.04%|04.32%)	(20x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.471617s|00.04%|04.76%)	(20x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.002214s|00.00%|00.01%)	(19x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.002539s|00.00%|00.01%)	(19x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:                        	(0.000070s|00.00%|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:	(0.000576s|00.00%|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:	(0.000079s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p11
|   |   |   |   |   12.0:	(0.009663s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p11; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003897s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p11
|   |   |   |   |   35.0:	(0.003874s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p11
|   |   |   |-- 126.0:	(0.000072s|00.00%|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:	(0.000738s|00.00%|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |   8.0:	(0.000130s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p12
|   |   |   |   |   12.0:	(0.018531s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p12; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.002946s|00.00%|00.01%)	(22x) true
|   |   |   |   |   20.0:	(0.002431s|00.00%|00.01%)	(22x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002665s|00.00%|00.01%)	(22x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.003235s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p12
|   |   |   |   |   23.0:	(0.087373s|00.00%|00.43%)	(22x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.002759s|00.00%|00.01%)	(22x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.005616s|00.00%|00.02%)	(21x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.002540s|00.00%|00.01%)	(21x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002710s|00.00%|00.01%)	(21x) evfd_wait 24
|   |   |   |   |   31.0:	(0.028818s|00.00%|00.14%)	(21x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.006159s|00.00%|00.03%)	(21x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.003130s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p12
|   |   |   |   |   36.0:	(0.002565s|00.00%|00.01%)	(21x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.002454s|00.00%|00.01%)	(21x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(19.669749s|01.80%|98.69%)	(21x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002266s|00.00%|00.02%)	(21x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.418305s|00.13%|07.10%)	(21x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.631417s|00.24%|10.41%)	(21x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.016576s|00.18%|09.69%)	(21x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.570087s|00.23%|10.20%)	(21x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.968525s|00.18%|08.90%)	(21x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.223743s|00.11%|06.30%)	(21x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.517568s|00.04%|04.36%)	(21x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.351768s|00.12%|06.38%)	(21x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.446779s|00.04%|04.18%)	(21x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.348501s|00.12%|08.45%)	(21x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.159848s|00.29%|14.04%)	(21x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.524110s|00.04%|04.93%)	(21x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.490256s|00.04%|04.90%)	(21x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.002290s|00.00%|00.01%)	(20x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.002763s|00.00%|00.01%)	(20x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000141s|00.00%|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:	(0.000871s|00.00%|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |-- 65.0:                        	(0.000289s|00.00%|00.00%)	(2x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.dD8cgW"
|   |   |   |   |   8.0:                        	(0.000135s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p13
|   |   |   |   |   12.0:                        	(0.018334s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p13; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:                        	(0.039115s|00.00%|00.10%)	(2x) trap 'trap - TERM INT HUP USR1; kill -INT 1126693 ${BASHPID}' INT
|   |   |   |   |   15.0:                        	(0.041426s|00.00%|00.11%)	(2x) trap 'trap - TERM INT HUP USR1; kill -TERM 1126693 ${BASHPID}' TERM
|   |   |   |   |   16.0:                        	(0.040819s|00.00%|00.11%)	(2x) trap 'trap - TERM INT HUP USR1; kill -HUP 1126693 ${BASHPID}' HUP
|   |   |   |   |   17.0:                        	(0.038408s|00.00%|00.10%)	(2x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:                        	(0.003377s|00.00%|00.01%)	(25x) true
|   |   |   |   |   20.0:                        	(0.002887s|00.00%|00.01%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:                        	(0.002739s|00.00%|00.01%)	(25x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   20.2:                        	(0.000163s|00.00%|00.00%)	(2x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:                        	(0.000157s|00.00%|00.00%)	(2x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:                        	(0.003604s|00.00%|00.01%)	(25x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p13
|   |   |   |   |   23.0:                        	(0.090419s|00.00%|00.49%)	(25x) read -r -u 20 _
|   |   |   |   |   24.0:                        	(0.008969s|00.00%|00.04%)	(25x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:                        	(0.004465s|00.00%|00.02%)	(24x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:                        	(0.002704s|00.00%|00.01%)	(24x) doneIndicatorFlag=true
|   |   |   |   |   30.0:                        	(0.002893s|00.00%|00.01%)	(24x) evfd_wait 24
|   |   |   |   |   31.0:                        	(0.034525s|00.00%|00.18%)	(24x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:                        	(0.007625s|00.00%|00.04%)	(24x) printf '\n' 1>&20
|   |   |   |   |   35.0:                        	(0.003473s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p13
|   |   |   |   |   36.0:                        	(0.002719s|00.00%|00.01%)	(24x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:                        	(0.002585s|00.00%|00.01%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:                        	(0.000195s|00.00%|00.00%)	(2x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:                        	(0.000167s|00.00%|00.00%)	(2x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   58.1:                        	(0.000158s|00.00%|00.00%)	(2x) nLinesAutoFlag=false
|   |   |   |   |   61.0:                        	(18.112060s|01.66%|98.48%)	(24x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.007606s|00.00%|00.01%)	(72x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.750884s|00.34%|06.76%)	(72x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(6.637979s|00.60%|10.54%)	(72x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(5.445978s|00.49%|09.65%)	(72x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(6.695156s|00.61%|10.45%)	(72x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(5.276856s|00.48%|09.20%)	(72x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.457092s|00.31%|06.47%)	(72x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.658323s|00.15%|04.03%)	(72x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.607297s|00.33%|06.39%)	(72x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.444710s|00.13%|03.81%)	(72x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.328672s|00.39%|08.67%)	(72x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(9.351241s|00.85%|15.13%)	(72x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.645154s|00.15%|04.38%)	(72x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.587892s|00.14%|04.32%)	(72x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:                        	(0.002629s|00.00%|00.01%)	(23x) ${nSpawnFlag}
|   |   |   |   |   59.0:                        	(0.006079s|00.00%|00.03%)	(23x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:                        	(0.000064s|00.00%|00.00%)	(1x) printf '\n' 1>&20
|   |   |   |   |   26.0:                        	(0.000066s|00.00%|00.00%)	(1x) break
|   |   |   |   |   2.0:                        	(0.000208s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.0:                        	(0.000166s|00.00%|00.00%)	(2x) break
|   |   |   |   |   3.1:                        	(0.002894s|00.00%|00.00%)	(2x) break
|   |   |   |   |-- 4.0:                        	(0.000188s|00.00%|00.00%)	(2x) break
|   |   |   |-- 126.0:	(0.000126s|00.00%|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:	(0.000893s|00.00%|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:	(0.000080s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p14
|   |   |   |   |   12.0:	(0.020485s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p14; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.010065s|00.00%|00.01%)	(75x) true
|   |   |   |   |   20.0:	(0.008683s|00.00%|00.01%)	(75x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.008728s|00.00%|00.01%)	(75x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.003798s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p14
|   |   |   |   |   23.0:	(0.247459s|00.02%|00.44%)	(75x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.014913s|00.00%|00.02%)	(75x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.013193s|00.00%|00.01%)	(72x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.012381s|00.00%|00.01%)	(72x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.008759s|00.00%|00.01%)	(72x) evfd_wait 24
|   |   |   |   |   31.0:	(0.095804s|00.00%|00.16%)	(72x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.016729s|00.00%|00.02%)	(72x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.003581s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p14
|   |   |   |   |   36.0:	(0.008239s|00.00%|00.01%)	(72x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.007967s|00.00%|00.01%)	(72x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(54.894840s|05.03%|98.62%)	(72x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |-- 126.0:	(0.000121s|00.00%|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:	(0.000911s|00.00%|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:	(0.000135s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p15
|   |   |   |   |   12.0:	(0.018494s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p15; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.003120s|00.00%|00.01%)	(24x) true
|   |   |   |   |   20.0:	(0.002778s|00.00%|00.01%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.002863s|00.00%|00.01%)	(24x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.008570s|00.00%|00.04%)	(24x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p15
|   |   |   |   |   23.0:	(0.099695s|00.00%|00.57%)	(24x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.002935s|00.00%|00.01%)	(24x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.002754s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.002723s|00.00%|00.01%)	(23x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.002790s|00.00%|00.01%)	(23x) evfd_wait 24
|   |   |   |   |   31.0:	(0.030590s|00.00%|00.17%)	(23x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.002946s|00.00%|00.01%)	(23x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.003333s|00.00%|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p15
|   |   |   |   |   36.0:	(0.002610s|00.00%|00.01%)	(23x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.002535s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(17.197512s|01.57%|98.55%)	(23x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002405s|00.00%|00.01%)	(23x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.145248s|00.10%|06.68%)	(23x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(1.977038s|00.18%|10.41%)	(23x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.623701s|00.14%|09.38%)	(23x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(1.947264s|00.17%|10.17%)	(23x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.576154s|00.14%|09.01%)	(23x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.021944s|00.09%|06.21%)	(23x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.534422s|00.04%|04.00%)	(23x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.127334s|00.10%|06.56%)	(23x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.508156s|00.04%|03.90%)	(23x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.419887s|00.13%|08.66%)	(23x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.216764s|00.29%|15.95%)	(23x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.552100s|00.05%|04.45%)	(23x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.545095s|00.05%|04.46%)	(23x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.002542s|00.00%|00.01%)	(22x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.006018s|00.00%|00.03%)	(22x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000122s|00.00%|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:	(0.000875s|00.00%|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:	(0.000080s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p16
|   |   |   |   |   12.0:	(0.012080s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p16; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003800s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p16
|   |   |   |   |   35.0:	(0.003754s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p16
|   |   |   |-- 126.0:	(0.000120s|00.00%|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:	(0.000951s|00.00%|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   8.0:	(0.000125s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p17
|   |   |   |   |   12.0:	(0.017640s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p17; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003707s|00.00%|00.01%)	(25x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p17
|   |   |   |   |   35.0:	(0.003558s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p17
|   |   |   |-- 126.0:	(0.000124s|00.00%|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:	(0.000967s|00.00%|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:	(0.000126s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p18
|   |   |   |   |   12.0:	(0.018936s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p18; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.007987s|00.00%|00.01%)	(60x) true
|   |   |   |   |   20.0:	(0.007024s|00.00%|00.01%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.007240s|00.00%|00.01%)	(60x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.004477s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p18
|   |   |   |   |   23.0:	(0.160238s|00.01%|00.42%)	(60x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.007226s|00.00%|00.01%)	(60x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.008198s|00.00%|00.01%)	(58x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.006532s|00.00%|00.01%)	(58x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.007036s|00.00%|00.01%)	(58x) evfd_wait 24
|   |   |   |   |   31.0:	(0.073072s|00.00%|00.18%)	(58x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.015298s|00.00%|00.03%)	(58x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.004430s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p18
|   |   |   |   |   36.0:	(0.006563s|00.00%|00.01%)	(58x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.006541s|00.00%|00.01%)	(58x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(39.126137s|03.59%|98.57%)	(58x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.006127s|00.00%|00.01%)	(58x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.856874s|00.26%|07.02%)	(58x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.408702s|00.40%|10.39%)	(58x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.705347s|00.34%|09.71%)	(58x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.319993s|00.39%|10.09%)	(58x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.505821s|00.32%|08.91%)	(58x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.493158s|00.22%|06.36%)	(58x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.295336s|00.11%|04.16%)	(58x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.600662s|00.23%|06.32%)	(58x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.160092s|00.10%|03.89%)	(58x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.249604s|00.29%|08.77%)	(58x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.937381s|00.63%|15.23%)	(58x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.298953s|00.11%|04.47%)	(58x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.288087s|00.11%|04.49%)	(58x) xxhsum -H3 "${@}"
|   |   |   |   |   |-- 1.0:                        	(0.000327s|00.00%|00.02%)	(3x) ff "${A[@]}"
|   |   |   |   |   |   8.0:                        	(0.128903s|00.01%|07.58%)	(3x) sha1sum "${@}"
|   |   |   |   |   |   9.0:                        	(0.194094s|00.01%|11.47%)	(3x) sha256sum "${@}"
|   |   |   |   |   |   10.0:                        	(0.158902s|00.01%|09.79%)	(3x) sha512sum "${@}"
|   |   |   |   |   |   11.0:                        	(0.148125s|00.01%|09.21%)	(3x) sha224sum "${@}"
|   |   |   |   |   |   12.0:                        	(0.127025s|00.01%|08.54%)	(3x) sha384sum "${@}"
|   |   |   |   |   |   13.0:                        	(0.116299s|00.01%|07.71%)	(3x) md5sum "${@}"
|   |   |   |   |   |   14.0:                        	(0.054710s|00.00%|04.13%)	(3x) sum -s "${@}"
|   |   |   |   |   |   15.0:                        	(0.103711s|00.00%|06.42%)	(3x) sum -r "${@}"
|   |   |   |   |   |   16.0:                        	(0.052415s|00.00%|04.09%)	(3x) cksum "${@}"
|   |   |   |   |   |   17.0:                        	(0.122359s|00.01%|08.46%)	(3x) b2sum "${@}"
|   |   |   |   |   |   18.0:                        	(0.235790s|00.02%|13.11%)	(3x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:                        	(0.056140s|00.00%|04.47%)	(3x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:                        	(0.059099s|00.00%|04.87%)	(3x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:	(0.000133s|00.00%|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:	(0.001010s|00.00%|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:	(0.000148s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p19
|   |   |   |   |   12.0:	(0.016749s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p19; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.002201s|00.00%|00.01%)	(15x) true
|   |   |   |   |   20.0:	(0.001885s|00.00%|00.01%)	(15x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001855s|00.00%|00.01%)	(15x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.002425s|00.00%|00.01%)	(15x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p19
|   |   |   |   |   23.0:	(0.042671s|00.00%|00.23%)	(15x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.001867s|00.00%|00.01%)	(15x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.004275s|00.00%|00.02%)	(14x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.001647s|00.00%|00.00%)	(14x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001695s|00.00%|00.00%)	(14x) evfd_wait 24
|   |   |   |   |   31.0:	(0.021199s|00.00%|00.11%)	(14x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.004979s|00.00%|00.02%)	(14x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.002208s|00.00%|00.01%)	(14x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p19
|   |   |   |   |   36.0:	(0.001719s|00.00%|00.00%)	(14x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.004709s|00.00%|00.02%)	(14x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(17.683674s|01.62%|98.90%)	(14x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001576s|00.00%|00.02%)	(14x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.178739s|00.10%|07.07%)	(14x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.191294s|00.20%|10.34%)	(14x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.658161s|00.15%|09.25%)	(14x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.200125s|00.20%|10.59%)	(14x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.643895s|00.15%|09.02%)	(14x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.020780s|00.09%|06.45%)	(14x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.382899s|00.03%|04.09%)	(14x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.136130s|00.10%|06.37%)	(14x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.316656s|00.02%|03.77%)	(14x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.410982s|00.12%|08.83%)	(14x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.812990s|00.35%|15.33%)	(14x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.384445s|00.03%|04.41%)	(14x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.345002s|00.03%|04.32%)	(14x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.001575s|00.00%|00.00%)	(13x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.001790s|00.00%|00.01%)	(13x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000124s|00.00%|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:	(0.001006s|00.00%|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:	(0.000125s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p20
|   |   |   |   |   12.0:	(0.016680s|00.00%|00.07%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p20; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004450s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p20
|   |   |   |   |   35.0:	(0.004340s|00.00%|00.01%)	(29x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p20
|   |   |   |-- 126.0:	(0.000117s|00.00%|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:                        	(0.000908s|00.00%|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:	(0.000080s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p21
|   |   |   |   |   12.0:	(0.021008s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p21; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004251s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p21
|   |   |   |   |   35.0:	(0.004189s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p21
|   |   |   |-- 126.0:                        	(0.000128s|00.00%|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:	(0.000871s|00.00%|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:	(0.000133s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p22
|   |   |   |   |   12.0:	(0.018590s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p22; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004292s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p22
|   |   |   |   |   35.0:	(0.004183s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p22
|   |   |   |-- 126.0:	(0.000145s|00.00%|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:	(0.000992s|00.00%|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:	(0.000089s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p23
|   |   |   |   |   12.0:	(0.019653s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p23; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:	(0.002080s|00.00%|00.01%)	(17x) true
|   |   |   |   |   20.0:	(0.001873s|00.00%|00.01%)	(17x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:	(0.001908s|00.00%|00.01%)	(17x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:	(0.002604s|00.00%|00.01%)	(17x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p23
|   |   |   |   |   23.0:	(0.064093s|00.00%|00.35%)	(17x) read -r -u 20 _
|   |   |   |   |   24.0:	(0.002898s|00.00%|00.01%)	(17x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:	(0.001836s|00.00%|00.01%)	(16x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:	(0.001844s|00.00%|00.01%)	(16x) doneIndicatorFlag=true
|   |   |   |   |   30.0:	(0.001915s|00.00%|00.01%)	(16x) evfd_wait 24
|   |   |   |   |   31.0:	(0.019628s|00.00%|00.10%)	(16x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:	(0.005106s|00.00%|00.02%)	(16x) printf '\n' 1>&20
|   |   |   |   |   35.0:	(0.002348s|00.00%|00.01%)	(16x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p23
|   |   |   |   |   36.0:	(0.001796s|00.00%|00.00%)	(16x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:	(0.001751s|00.00%|00.00%)	(16x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:	(17.888551s|01.64%|98.79%)	(16x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001701s|00.00%|00.02%)	(16x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.182143s|00.10%|07.00%)	(16x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.221666s|00.20%|10.22%)	(16x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.717054s|00.15%|09.64%)	(16x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.216476s|00.20%|10.35%)	(16x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.690952s|00.15%|09.45%)	(16x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.060427s|00.09%|06.46%)	(16x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.455554s|00.04%|04.07%)	(16x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.189053s|00.10%|06.64%)	(16x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.350125s|00.03%|03.86%)	(16x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.434592s|00.13%|08.94%)	(16x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.597672s|00.33%|14.76%)	(16x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.393969s|00.03%|04.09%)	(16x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.377167s|00.03%|04.36%)	(16x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:	(0.001666s|00.00%|00.00%)	(15x) ${nSpawnFlag}
|   |   |   |   |   59.0:	(0.001939s|00.00%|00.01%)	(15x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:	(0.000122s|00.00%|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:	(0.000970s|00.00%|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:	(0.000132s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p24
|   |   |   |   |   12.0:	(0.021496s|00.00%|00.12%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p24; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.003976s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p24
|   |   |   |   |   35.0:	(0.003917s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p24
|   |   |   |-- 126.0:	(0.000129s|00.00%|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:	(0.000982s|00.00%|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:	(0.000137s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p25
|   |   |   |   |   12.0:	(0.018436s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p25; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004357s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p25
|   |   |   |   |   35.0:	(0.004124s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p25
|   |   |   |-- 126.0:	(0.000118s|00.00%|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:	(0.000960s|00.00%|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:	(0.000142s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p26
|   |   |   |   |   12.0:	(0.018402s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p26; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:	(0.004236s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p26
|   |   |   |   |   35.0:	(0.007127s|00.00%|00.04%)	(28x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p26
|   |   |   |-- 126.0:	(0.000133s|00.00%|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:	(0.000985s|00.00%|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:                        	(0.000159s|00.00%|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.dD8cgW"/.run/p27
|   |   |   |   |   12.0:                        	(0.019553s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.dD8cgW"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.dD8cgW"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.dD8cgW"/.run/p27; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:                        	(0.005470s|00.00%|00.03%)	(27x) true
|   |   |   |   |   20.0:                        	(0.003469s|00.00%|00.02%)	(27x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:                        	(0.003284s|00.00%|00.01%)	(27x) read -r < "/dev/shm/.forkrun.dD8cgW"/.nLines
|   |   |   |   |   22.0:                        	(0.004131s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.dD8cgW"/.wait/p27
|   |   |   |   |   23.0:                        	(0.091669s|00.00%|00.53%)	(27x) read -r -u 20 _
|   |   |   |   |   24.0:                        	(0.003284s|00.00%|00.01%)	(27x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.quit ]]
|   |   |   |   |   28.0:                        	(0.006237s|00.00%|00.03%)	(27x) [[ -f "/dev/shm/.forkrun.dD8cgW"/.done ]]
|   |   |   |   |   28.1:                        	(0.003102s|00.00%|00.01%)	(27x) doneIndicatorFlag=true
|   |   |   |   |   30.0:                        	(0.003313s|00.00%|00.01%)	(27x) evfd_wait 24
|   |   |   |   |   31.0:                        	(0.033389s|00.00%|00.19%)	(27x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:                        	(0.003536s|00.00%|00.02%)	(27x) printf '\n' 1>&20
|   |   |   |   |   35.0:                        	(0.004089s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.dD8cgW"/.wait/p27
|   |   |   |   |   36.0:                        	(0.003126s|00.00%|00.01%)	(27x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:                        	(0.003048s|00.00%|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:                        	(16.753753s|01.53%|98.28%)	(26x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   56.1:                        	(0.006732s|00.00%|00.03%)	(25x) ${nSpawnFlag}
|   |   |   |   |   59.0:                        	(0.006461s|00.00%|00.03%)	(25x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   37.0:                        	(0.000116s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:                        	(0.000127s|00.00%|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:                        	(0.000124s|00.00%|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:                        	(0.000135s|00.00%|00.00%)	(1x) : > "/dev/shm/.forkrun.dD8cgW"/.quit
|   |   |   |   |   50.0:                        	(0.000188s|00.00%|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.dD8cgW"/.run/p* 1>&20
|   |   |   |   |   51.0:                        	(0.000113s|00.00%|00.00%)	(1x) break
|   |   |   |-- 126.0:	(0.000120s|00.00%|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:	(0.000134s|00.00%|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:	(0.000128s|00.00%|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:	(0.000109s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:	(0.000108s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:	(0.001141s|00.00%|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:	(0.000110s|00.00%|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:	(0.000099s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:	(0.000104s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:	(23.203769s|02.12%|04.27%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:	(0.000238s|00.00%|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:	(0.000233s|00.00%|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -228.0:	(0.000409s|00.00%|00.00%)	(2x) ${nSpawnFlag} (?)
|   |   |   -227.0:	(0.000292s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -226.0:	(0.001732s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -226.1:	(0.005258s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -226.0:	(0.005258s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -225.0:	(0.000070s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -224.0:	(0.000604s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -224.1:	(0.003702s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -224.0:	(0.003702s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -223.0:	(0.000077s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -222.0:	(0.001539s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   |   -222.1:	(0.002698s|00.00%|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -222.0:	(0.002698s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -221.0:	(0.015793s|00.00%|00.00%)	(1x) ${nSpawnFlag} (?)
|   |   1458.0:	(0.000263s|00.00%|00.00%)	(1x) wait
|-- |-- -228.0:	(0.003898s|00.00%|00.00%)	(1x) wait (?)



TOTAL RUN TIME: 1089.386240s
