0.0:                        	(544.572936s|50.02%)	(1x) << (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0:                    	(0.000736s|00.00%)	(1x) forkrun ff < /mnt/ramdisk/flist > /dev/null
|   343.0:                    	(544.572200s|50.02%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 343.0:                	(0.023092s|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000072s|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000074s|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000129s|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000141s|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000077s|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000068s|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000066s|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000058s|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000061s|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000060s|00.00%)	(1x) ${optParseFlag}
|   |   81.1:                	(0.000058s|00.00%)	(1x) (( $# > 0  ))
|   |   81.2:                	(0.000064s|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   278.0:                	(0.000067s|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000057s|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000056s|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000060s|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000067s|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.000494s|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.001588s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.001588s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000061s|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.002694s|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000083s|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000059s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.010602s|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   303.0:                	(544.528616s|50.02%|99.99%)	(1x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000070s|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000245s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.001458s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:            	(0.000234s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000233s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000233s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000264s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000249s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000077s|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000071s|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000063s|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000177s|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000069s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000062s|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000063s|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000063s|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000071s|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000074s|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000075s|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000064s|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000062s|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.000501s|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000107s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000107s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000068s|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000062s|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000068s|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000063s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000060s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000066s|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000066s|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000082s|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000066s|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000060s|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000064s|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000061s|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000064s|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000062s|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000062s|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000809s|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000059s|00.00%|07.29%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000065s|00.00%|08.03%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000067s|00.00%|08.28%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000063s|00.00%|07.78%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000064s|00.00%|07.91%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000065s|00.00%|08.03%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000062s|00.00%|07.66%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000114s|00.00%|14.09%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000061s|00.00%|07.54%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000060s|00.00%|07.41%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000063s|00.00%|07.78%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000066s|00.00%|08.15%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000066s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.000771s|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.002115s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000201s|00.00%|09.50%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001914s|00.00%|90.49%)	(1x) nproc
|   |   |   441.0:            	(0.000064s|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000060s|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000059s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000064s|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000062s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000059s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000065s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000077s|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000071s|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000060s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000061s|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000062s|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000076s|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000065s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000149s|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000060s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000065s|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000059s|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000063s|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000058s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000062s|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   499.0:            	(0.000057s|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   500.0:            	(0.000060s|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   501.0:            	(0.000060s|00.00%)	(1x) ${noFuncFlag}
|   |   |   501.1:            	(0.000065s|00.00%)	(1x) ${lseekFlag}
|   |   |   512.0:            	(0.000066s|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.000877s|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:            	(0.000173s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000173s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000061s|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000061s|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000067s|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.002012s|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000063s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000065s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000061s|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000063s|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000073s|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000072s|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000060s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000060s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000490s|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:            	(0.065246s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000186s|00.00%|00.28%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.009659s|00.00%|14.80%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.009262s|00.00%|14.19%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.009240s|00.00%|14.16%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.009361s|00.00%|14.34%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.009242s|00.00%|14.16%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000063s|00.00%|00.09%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.018016s|00.00%|27.61%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000088s|00.00%|00.13%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000066s|00.00%|00.10%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000063s|00.00%|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000068s|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000060s|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000061s|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000061s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000390s|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:            	(6.819878s|00.62%|01.25%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000078s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.008940s|00.00%|00.13%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.009250s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.009245s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.009369s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.009247s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000060s|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000070s|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000058s|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000057s|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.080283s|00.00%|01.17%)	(681x) ${fallocateFlag}
|   |   |   |   702.0:        	(5.550503s|00.50%|81.38%)	(680x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001891s|00.00%|00.02%)	(14x) continue
|   |   |   |   704.0:        	(0.074118s|00.00%|01.08%)	(666x) case ${REPLY} in
|   |   |   |   718.0:        	(0.083262s|00.00%|01.22%)	(665x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000061s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000064s|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.073562s|00.00%|01.07%)	(666x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.092253s|00.00%|01.35%)	(666x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.080357s|00.00%|01.17%)	(666x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.073102s|00.00%|01.07%)	(666x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.080965s|00.00%|01.18%)	(666x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.073587s|00.00%|01.07%)	(666x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.073468s|00.00%|01.07%)	(666x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000062s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000064s|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.000608s|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:        	(0.003088s|00.00%|00.04%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.003087s|00.00%|99.96%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000108s|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000096s|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000108s|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000099s|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000118s|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000105s|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000092s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000134s|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000098s|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000118s|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.073232s|00.00%|01.07%)	(666x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.072105s|00.00%|01.05%)	(666x) case ${nWait} in
|   |   |   |   778.0:        	(0.071418s|00.00%|01.04%)	(645x) ((nWait--))
|   |   |   |   783.0:        	(0.077248s|00.00%|01.13%)	(666x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.075203s|00.00%|01.10%)	(664x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002396s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002348s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.047419s|00.00%|00.69%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002468s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002397s|00.00%|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002461s|00.00%|00.03%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   712.0:        	(0.000117s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   784.0:        	(0.000129s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000138s|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000128s|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000128s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000148s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -219.0:        	(0.000139s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- -219.1:        	(0.001508s|00.00%|00.02%)	(1x) ${nSpawnFlag}
|   |   |   794.0:            	(0.000066s|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000088s|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000085s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.001366s|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.014938s|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000191s|00.00%|03.21%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000112s|00.00%|01.88%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000131s|00.00%|02.20%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000375s|00.00%|06.30%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000108s|00.00%|01.81%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000107s|00.00%|01.80%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000111s|00.00%|01.86%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000109s|00.00%|01.83%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000060s|00.00%|01.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000064s|00.00%|01.07%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000063s|00.00%|01.05%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000061s|00.00%|01.02%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000067s|00.00%|01.12%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000064s|00.00%|01.07%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000060s|00.00%|01.00%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000063s|00.00%|01.05%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000059s|00.00%|00.99%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000060s|00.00%|01.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1411.0:        	(0.000065s|00.00%|01.09%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000063s|00.00%|01.05%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000060s|00.00%|01.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000063s|00.00%|01.05%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1413.0:        	(0.000060s|00.00%|01.00%)	(1x) ${lseekFlag}
|   |   |   |   1416.0:        	(0.000066s|00.00%|01.11%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1417.0:        	(0.000059s|00.00%|00.99%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1420.0:        	(0.000065s|00.00%|01.09%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1458.0:        	(0.000064s|00.00%|01.07%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1463.0:        	(0.000066s|00.00%|01.11%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1464.0:        	(0.000063s|00.00%|01.05%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1465.0:        	(0.000060s|00.00%|01.00%)	(1x) ${lseekFlag}
|   |   |   |   1465.1:        	(0.000063s|00.00%|01.05%)	(1x) printf '\n'
|   |   |   |   1466.0:        	(0.000060s|00.00%|01.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1467.0:        	(0.000091s|00.00%|01.53%)	(1x) echo "}"
|   |   |   |   1469.0:        	(0.000061s|00.00%|01.02%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000060s|00.00%|01.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000060s|00.00%|01.00%)	(1x) ${readBytesFlag}
|   |   |   |   1469.3:        	(0.000070s|00.00%|01.17%)	(1x) echo "}"
|   |   |   |   1470.0:        	(0.000066s|00.00%|01.11%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000081s|00.00%|01.36%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000060s|00.00%|01.00%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000095s|00.00%|01.59%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000072s|00.00%|01.21%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000060s|00.00%|01.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000086s|00.00%|01.44%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000064s|00.00%|01.07%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000065s|00.00%|01.09%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000073s|00.00%|01.22%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000063s|00.00%|01.05%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000089s|00.00%|01.49%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000061s|00.00%|01.02%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000085s|00.00%|01.43%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000059s|00.00%|00.99%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000083s|00.00%|01.39%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000060s|00.00%|01.00%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000076s|00.00%|01.27%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000062s|00.00%|01.04%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000060s|00.00%|01.00%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1519.2:        	(0.000060s|00.00%|01.00%)	(1x) ${readBytesFlag}
|   |   |   |   1519.3:        	(0.000064s|00.00%|01.07%)	(1x) ${lseekFlag}
|   |   |   |   1527.0:        	(0.000060s|00.00%|01.00%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000084s|00.00%|01.41%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000060s|00.00%|01.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000075s|00.00%|01.26%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000060s|00.00%|01.00%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000100s|00.00%|01.68%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000060s|00.00%|01.00%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000059s|00.00%|00.99%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000063s|00.00%|01.05%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000059s|00.00%|00.99%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000080s|00.00%|01.34%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000067s|00.00%|01.12%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000063s|00.00%|01.05%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000059s|00.00%|00.99%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000081s|00.00%|01.36%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000067s|00.00%|01.12%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000064s|00.00%|01.07%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000063s|00.00%|01.05%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000092s|00.00%|01.54%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000209s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000218s|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000226s|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.009333s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.009233s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.009162s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000058s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000058s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000059s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000070s|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000058s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002398s|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002514s|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002348s|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(514.079851s|47.22%|94.40%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000554s|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:        	(514.055549s|47.22%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:    	(0.004084s|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.by4Wxe"
|   |   |   |   |   8.0:    	(0.000147s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p0
|   |   |   |   |   12.0:    	(0.009717s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p0; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:    	(0.364788s|00.03%|00.06%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 2349565 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.375233s|00.03%|00.06%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 2349565 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.382186s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 2349565 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.390453s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.002396s|00.00%|00.01%)	(19x) true
|   |   |   |   |   20.0:    	(0.002163s|00.00%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002148s|00.00%)	(19x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   20.2:    	(0.000621s|00.00%)	(8x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.000609s|00.00%)	(8x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.002789s|00.00%|00.01%)	(19x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p0
|   |   |   |   |   23.0:    	(0.075213s|00.00%|00.34%)	(19x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002262s|00.00%|00.01%)	(19x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.004329s|00.00%|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.002034s|00.00%)	(18x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002083s|00.00%)	(18x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.025435s|00.00%|00.11%)	(18x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.001970s|00.00%)	(18x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.004959s|00.00%|00.02%)	(18x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.002095s|00.00%)	(18x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.002517s|00.00%|00.01%)	(18x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p0
|   |   |   |   |   48.0:    	(0.001934s|00.00%)	(18x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.001865s|00.00%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:    	(0.000738s|00.00%)	(8x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:    	(0.000650s|00.00%)	(8x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:    	(21.714030s|01.99%|99.13%)	(18x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001897s|00.00%|00.03%)	(18x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.643269s|00.15%|07.94%)	(18x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.637689s|00.24%|10.47%)	(18x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.001307s|00.18%|09.14%)	(18x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.587250s|00.23%|10.20%)	(18x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.961474s|00.18%|09.01%)	(18x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.332108s|00.12%|06.48%)	(18x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.473392s|00.04%|03.82%)	(18x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.469974s|00.13%|06.25%)	(18x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.399326s|00.03%|03.72%)	(18x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.750689s|00.16%|08.71%)	(18x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.563636s|00.41%|15.61%)	(18x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.472134s|00.04%|04.34%)	(18x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.419885s|00.03%|04.15%)	(18x) xxhsum -H3 "${@}"
|   |   |   |   |   70.1:    	(0.002942s|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   68.1:    	(0.003633s|00.00%)	(32x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.004241s|00.00%)	(32x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.003002s|00.00%)	(27x) printf '\n' 1>&20
|   |   |   |   |   26.0:    	(0.002702s|00.00%)	(27x) break
|   |   |   |   |   2.0:    	(0.003352s|00.00%)	(28x) break
|   |   |   |   |   3.0:    	(0.002733s|00.00%)	(28x) break
|   |   |   |   |   3.1:    	(0.047364s|00.00%)	(28x) break
|   |   |   |   |-- 4.0:    	(0.002835s|00.00%)	(28x) break
|   |   |   |-- 138.0:        	(0.000073s|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000522s|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:    	(0.001155s|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p1
|   |   |   |   |   12.0:    	(0.011280s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p1; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.006059s|00.00%|00.03%)	(29x) true
|   |   |   |   |   20.0:    	(0.003581s|00.00%|00.02%)	(29x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003513s|00.00%|00.02%)	(29x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.004352s|00.00%|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p1
|   |   |   |   |   23.0:    	(0.179262s|00.01%|01.04%)	(29x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.003783s|00.00%|00.02%)	(29x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.009697s|00.00%|00.02%)	(56x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.006640s|00.00%|00.01%)	(56x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.006898s|00.00%|00.01%)	(56x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.072444s|00.00%|00.20%)	(56x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.006601s|00.00%|00.01%)	(56x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.003287s|00.00%|00.01%)	(28x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.010120s|00.00%|00.02%)	(56x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004320s|00.00%|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p1
|   |   |   |   |   48.0:    	(0.006510s|00.00%|00.01%)	(56x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.003141s|00.00%|00.01%)	(28x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(16.854630s|01.54%|98.04%)	(28x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003070s|00.00%|00.03%)	(28x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.140420s|00.10%|06.88%)	(28x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(1.858946s|00.17%|09.88%)	(28x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.567425s|00.14%|09.22%)	(28x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(1.877794s|00.17%|10.25%)	(28x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.532466s|00.14%|09.08%)	(28x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.047117s|00.09%|06.75%)	(28x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.602044s|00.05%|04.42%)	(28x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.090980s|00.10%|06.27%)	(28x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.508060s|00.04%|04.04%)	(28x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.415919s|00.13%|08.70%)	(28x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(2.970716s|00.27%|14.75%)	(28x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.619570s|00.05%|04.76%)	(28x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.620103s|00.05%|04.85%)	(28x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.009050s|00.00%|00.01%)	(78x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.020349s|00.00%|00.03%)	(78x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000073s|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000530s|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   8.0:    	(0.001211s|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p2
|   |   |   |   |   12.0:    	(0.009977s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p2; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.005540s|00.00%|00.01%)	(42x) true
|   |   |   |   |   20.0:    	(0.007875s|00.00%|00.01%)	(42x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.005007s|00.00%|00.01%)	(42x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.006286s|00.00%|00.01%)	(42x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p2
|   |   |   |   |   23.0:    	(0.353807s|00.03%|00.98%)	(42x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005645s|00.00%|00.01%)	(42x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.008056s|00.00%|00.01%)	(40x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.004697s|00.00%|00.01%)	(40x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.005010s|00.00%|00.01%)	(40x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.050853s|00.00%|00.13%)	(40x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.007680s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.004630s|00.00%|00.01%)	(40x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.011624s|00.00%|00.02%)	(40x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.006031s|00.00%|00.01%)	(40x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p2
|   |   |   |   |   48.0:    	(0.004706s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.004713s|00.00%|00.01%)	(40x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(35.202964s|03.23%|98.17%)	(40x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004321s|00.00%|00.01%)	(40x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.409137s|00.22%|07.03%)	(40x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.233759s|00.38%|10.76%)	(40x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.415714s|00.31%|09.79%)	(40x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.304878s|00.39%|11.07%)	(40x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.338374s|00.30%|09.10%)	(40x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.123756s|00.19%|06.32%)	(40x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.969075s|00.08%|03.85%)	(40x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.252341s|00.20%|06.24%)	(40x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.797802s|00.07%|03.45%)	(40x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.791467s|00.25%|08.40%)	(40x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.726331s|00.61%|15.76%)	(40x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.947418s|00.08%|04.08%)	(40x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.888591s|00.08%|03.97%)	(40x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.004300s|00.00%|00.01%)	(36x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.004832s|00.00%|00.01%)	(36x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000524s|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:    	(0.000085s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p3
|   |   |   |   |   12.0:    	(0.009032s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p3; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.017218s|00.00%|00.01%)	(125x) true
|   |   |   |   |   20.0:    	(0.014880s|00.00%|00.01%)	(125x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.015236s|00.00%|00.01%)	(125x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.003804s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p3
|   |   |   |   |   23.0:    	(0.667806s|00.06%|00.74%)	(125x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.015897s|00.00%|00.01%)	(125x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.020676s|00.00%|00.01%)	(120x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.014654s|00.00%|00.01%)	(120x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.019908s|00.00%|00.01%)	(120x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.159395s|00.01%|00.17%)	(120x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.014221s|00.00%|00.01%)	(120x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.017177s|00.00%|00.01%)	(120x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.034071s|00.00%|00.03%)	(120x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003485s|00.00%|00.01%)	(24x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p3
|   |   |   |   |   48.0:    	(0.015647s|00.00%|00.01%)	(120x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.019752s|00.00%|00.01%)	(120x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(88.846519s|08.16%|98.36%)	(120x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.013124s|00.00%|00.01%)	(120x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(6.175475s|00.56%|07.02%)	(120x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(10.665281s|00.97%|10.45%)	(120x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(8.618450s|00.79%|09.62%)	(120x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(10.533452s|00.96%|10.33%)	(120x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(8.364850s|00.76%|09.05%)	(120x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(5.480576s|00.50%|06.40%)	(120x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.662708s|00.24%|04.11%)	(120x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(5.617972s|00.51%|06.32%)	(120x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.374798s|00.21%|03.94%)	(120x) cksum "${@}"
|   |   |   |   |   |   17.0:	(7.119359s|00.65%|08.71%)	(120x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(15.885715s|01.45%|14.98%)	(120x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.706895s|00.24%|04.45%)	(120x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.627864s|00.24%|04.43%)	(120x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.007774s|00.00%|00.01%)	(66x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.010639s|00.00%|00.01%)	(66x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000560s|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:    	(0.000295s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p4
|   |   |   |   |   12.0:    	(0.009004s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p4; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.013730s|00.00%|00.01%)	(78x) true
|   |   |   |   |   20.0:    	(0.009151s|00.00%|00.01%)	(78x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.009203s|00.00%|00.01%)	(78x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   20.2:    	(0.002114s|00.00%)	(24x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002128s|00.00%)	(24x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003844s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p4
|   |   |   |   |   23.0:    	(0.578685s|00.05%|01.08%)	(78x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.009999s|00.00%|00.01%)	(78x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.009228s|00.00%|00.01%)	(75x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.009126s|00.00%|00.01%)	(75x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.012266s|00.00%|00.01%)	(75x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.108933s|00.01%|00.20%)	(75x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.009047s|00.00%|00.01%)	(75x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.013781s|00.00%|00.02%)	(75x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.019452s|00.00%|00.03%)	(75x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.006758s|00.00%|00.03%)	(25x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p4
|   |   |   |   |   48.0:    	(0.008487s|00.00%|00.01%)	(75x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.009580s|00.00%|00.01%)	(75x) ${nLinesAutoFlag}
|   |   |   |   |   69.0:    	(0.002711s|00.00%)	(24x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:    	(0.002476s|00.00%)	(24x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:    	(52.039521s|04.78%|97.99%)	(75x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.008160s|00.00%|00.01%)	(75x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.591872s|00.32%|07.03%)	(75x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(6.066948s|00.55%|10.52%)	(75x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(5.007951s|00.46%|09.69%)	(75x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(6.023167s|00.55%|10.41%)	(75x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(4.853805s|00.44%|09.21%)	(75x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.158944s|00.29%|06.28%)	(75x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.645883s|00.15%|04.03%)	(75x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.342581s|00.30%|06.29%)	(75x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.505293s|00.13%|03.85%)	(75x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.413328s|00.40%|08.83%)	(75x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(9.081380s|00.83%|14.94%)	(75x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.683755s|00.15%|04.32%)	(75x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.656454s|00.15%|04.41%)	(75x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.008285s|00.00%|00.01%)	(72x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.014175s|00.00%|00.02%)	(72x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000544s|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:    	(0.000087s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p5
|   |   |   |   |   12.0:    	(0.008869s|00.00%|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p5; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003843s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p5
|   |   |   |   |   47.0:    	(0.003728s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p5
|   |   |   |-- 138.0:        	(0.000074s|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000547s|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   8.0:    	(0.000088s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p6
|   |   |   |   |   12.0:    	(0.009041s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p6; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.004285s|00.00%|00.02%)	(31x) true
|   |   |   |   |   20.0:    	(0.005324s|00.00%|00.02%)	(31x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003763s|00.00%|00.02%)	(31x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.004759s|00.00%|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p6
|   |   |   |   |   23.0:    	(0.154281s|00.01%|00.86%)	(31x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.006905s|00.00%|00.03%)	(31x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.003542s|00.00%|00.01%)	(30x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.003427s|00.00%|00.01%)	(30x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.003662s|00.00%|00.02%)	(30x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.040491s|00.00%|00.22%)	(30x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.003387s|00.00%|00.01%)	(30x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.006592s|00.00%|00.03%)	(30x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.003839s|00.00%|00.02%)	(30x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004580s|00.00%|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p6
|   |   |   |   |   48.0:    	(0.004524s|00.00%|00.02%)	(30x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.003389s|00.00%|00.01%)	(30x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(17.495763s|01.60%|98.12%)	(30x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003713s|00.00%|00.02%)	(30x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.211581s|00.11%|06.97%)	(30x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(1.939709s|00.17%|10.14%)	(30x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.703352s|00.15%|09.62%)	(30x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(1.900604s|00.17%|09.98%)	(30x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.601302s|00.14%|09.18%)	(30x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.148853s|00.10%|06.53%)	(30x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.630426s|00.05%|04.32%)	(30x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.097619s|00.10%|06.25%)	(30x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.552645s|00.05%|04.01%)	(30x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.469097s|00.13%|08.91%)	(30x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(2.924715s|00.26%|14.28%)	(30x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.647053s|00.05%|04.70%)	(30x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.665094s|00.06%|04.97%)	(30x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.003356s|00.00%|00.01%)	(29x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.007027s|00.00%|00.03%)	(29x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000073s|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000557s|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   8.0:    	(0.000287s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p7
|   |   |   |   |   12.0:    	(0.009020s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p7; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002472s|00.00%|00.01%)	(18x) true
|   |   |   |   |   20.0:    	(0.004408s|00.00%|00.02%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002177s|00.00%|00.01%)	(18x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.002637s|00.00%|00.01%)	(18x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p7
|   |   |   |   |   23.0:    	(0.133923s|00.01%|00.75%)	(18x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002306s|00.00%|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.002003s|00.00%|00.01%)	(17x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.001986s|00.00%|00.01%)	(17x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002106s|00.00%|00.01%)	(17x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.022936s|00.00%|00.12%)	(17x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.001909s|00.00%|00.01%)	(17x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.001976s|00.00%|00.01%)	(17x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.010650s|00.00%|00.05%)	(17x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.002545s|00.00%|00.01%)	(17x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p7
|   |   |   |   |   48.0:    	(0.002008s|00.00%|00.01%)	(17x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.001923s|00.00%|00.01%)	(17x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(17.505663s|01.60%|98.56%)	(17x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001802s|00.00%|00.01%)	(17x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.172838s|00.10%|06.85%)	(17x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.130540s|00.19%|10.42%)	(17x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.619269s|00.14%|09.25%)	(17x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.132373s|00.19%|10.51%)	(17x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.621424s|00.14%|09.09%)	(17x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.012612s|00.09%|06.45%)	(17x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.429825s|00.03%|04.01%)	(17x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.141580s|00.10%|06.44%)	(17x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.368018s|00.03%|03.72%)	(17x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.416129s|00.13%|08.73%)	(17x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.609012s|00.33%|15.63%)	(17x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.448457s|00.04%|04.55%)	(17x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.401784s|00.03%|04.19%)	(17x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:        	(0.000076s|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000565s|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   8.0:    	(0.000287s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p8
|   |   |   |   |   12.0:    	(0.010687s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p8; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.006629s|00.00%|00.03%)	(25x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p8
|   |   |   |   |   47.0:    	(0.004231s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p8
|   |   |   |   |   68.1:    	(0.010808s|00.00%|00.01%)	(92x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.015358s|00.00%|00.01%)	(92x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000078s|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000573s|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:    	(0.000089s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p9
|   |   |   |   |   12.0:    	(0.009092s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p9; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.001679s|00.00%)	(13x) true
|   |   |   |   |   20.0:    	(0.004694s|00.00%|00.02%)	(13x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001569s|00.00%)	(13x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.001891s|00.00%|00.01%)	(13x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p9
|   |   |   |   |   23.0:    	(0.070772s|00.00%|00.39%)	(13x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001629s|00.00%)	(13x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.001425s|00.00%)	(12x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.001426s|00.00%)	(12x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001465s|00.00%)	(12x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.018072s|00.00%|00.09%)	(12x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.001389s|00.00%)	(12x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.001353s|00.00%)	(12x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.001507s|00.00%)	(12x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.001758s|00.00%)	(12x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p9
|   |   |   |   |   48.0:    	(0.001302s|00.00%)	(12x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.001287s|00.00%)	(12x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(17.894298s|01.64%|99.01%)	(12x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001252s|00.00%|00.01%)	(12x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.190921s|00.10%|07.25%)	(12x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.258528s|00.20%|10.67%)	(12x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.677647s|00.15%|09.51%)	(12x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.231082s|00.20%|10.52%)	(12x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.645027s|00.15%|09.31%)	(12x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.026943s|00.09%|06.18%)	(12x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.378530s|00.03%|04.11%)	(12x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.157372s|00.10%|06.42%)	(12x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.296724s|00.02%|03.51%)	(12x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.443938s|00.13%|08.48%)	(12x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.929456s|00.36%|15.49%)	(12x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.357106s|00.03%|04.37%)	(12x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.299772s|00.02%|04.05%)	(12x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.001191s|00.00%)	(11x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.003857s|00.00%|00.02%)	(11x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000072s|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000595s|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:    	(0.000109s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p10
|   |   |   |   |   12.0:    	(0.010152s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p10; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.016345s|00.00%|00.01%)	(120x) true
|   |   |   |   |   20.0:    	(0.014592s|00.00%|00.01%)	(120x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.016509s|00.00%|00.01%)	(120x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.004572s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p10
|   |   |   |   |   23.0:    	(0.613488s|00.05%|00.81%)	(120x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.014789s|00.00%|00.01%)	(120x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.013759s|00.00%|00.01%)	(116x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.013646s|00.00%|00.01%)	(116x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.014251s|00.00%|00.01%)	(116x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.165527s|00.01%|00.21%)	(116x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.013677s|00.00%|00.01%)	(116x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.013919s|00.00%|00.01%)	(116x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.014750s|00.00%|00.01%)	(116x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.004484s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p10
|   |   |   |   |   48.0:    	(0.013511s|00.00%|00.01%)	(116x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.013417s|00.00%|00.01%)	(116x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(73.542051s|06.75%|98.20%)	(116x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.012953s|00.00%|00.01%)	(116x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(5.251320s|00.48%|07.04%)	(116x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(8.354786s|00.76%|10.38%)	(116x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.976193s|00.64%|09.61%)	(116x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(8.163465s|00.74%|10.21%)	(116x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.723680s|00.61%|09.08%)	(116x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.658602s|00.42%|06.48%)	(116x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.461429s|00.22%|04.11%)	(116x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.786542s|00.43%|06.40%)	(116x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.270248s|00.20%|04.03%)	(116x) cksum "${@}"
|   |   |   |   |   |   17.0:	(6.027750s|00.55%|08.59%)	(116x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(12.740939s|01.17%|14.81%)	(116x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.625693s|00.24%|04.62%)	(116x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.488451s|00.22%|04.45%)	(116x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.015763s|00.00%|00.01%)	(112x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.018821s|00.00%|00.02%)	(112x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000597s|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:    	(0.000092s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p11
|   |   |   |   |   12.0:    	(0.009028s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p11; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.007749s|00.00%|00.02%)	(56x) true
|   |   |   |   |   20.0:    	(0.010505s|00.00%|00.02%)	(56x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.009869s|00.00%|00.02%)	(56x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.004195s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p11
|   |   |   |   |   23.0:    	(0.345955s|00.03%|00.99%)	(56x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.007010s|00.00%|00.01%)	(56x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.003169s|00.00%|00.01%)	(27x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.003095s|00.00%|00.01%)	(27x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.003390s|00.00%|00.01%)	(27x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.033967s|00.00%|00.19%)	(27x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.003188s|00.00%|00.01%)	(27x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.006475s|00.00%|00.01%)	(54x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.006349s|00.00%|00.03%)	(27x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003990s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p11
|   |   |   |   |   48.0:    	(0.003087s|00.00%|00.01%)	(27x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.006200s|00.00%|00.01%)	(54x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(34.118108s|03.13%|97.97%)	(54x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.005864s|00.00%|00.01%)	(54x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.286855s|00.21%|06.90%)	(54x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(3.896691s|00.35%|10.63%)	(54x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.308962s|00.30%|09.82%)	(54x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(3.802119s|00.34%|10.29%)	(54x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.115207s|00.28%|09.07%)	(54x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.126697s|00.19%|06.44%)	(54x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.151756s|00.10%|04.07%)	(54x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.175620s|00.19%|06.25%)	(54x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.022626s|00.09%|03.84%)	(54x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.882793s|00.26%|08.75%)	(54x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.031405s|00.55%|15.17%)	(54x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.144490s|00.10%|04.25%)	(54x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.167023s|00.10%|04.33%)	(54x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000605s|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |   8.0:    	(0.000087s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p12
|   |   |   |   |   12.0:    	(0.009075s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p12; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.006321s|00.00%|00.01%)	(44x) true
|   |   |   |   |   20.0:    	(0.005310s|00.00%|00.01%)	(44x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.005539s|00.00%|00.01%)	(44x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.003423s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p12
|   |   |   |   |   23.0:    	(0.299826s|00.02%|00.75%)	(44x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005768s|00.00%|00.01%)	(44x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.005241s|00.00%|00.01%)	(42x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.004957s|00.00%|00.01%)	(42x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.005268s|00.00%|00.01%)	(42x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.065108s|00.00%|00.15%)	(42x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.004851s|00.00%|00.01%)	(42x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.005077s|00.00%|00.01%)	(42x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.014171s|00.00%|00.03%)	(42x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003020s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p12
|   |   |   |   |   48.0:    	(0.005038s|00.00%|00.01%)	(42x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.004842s|00.00%|00.01%)	(42x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(39.516965s|03.63%|98.44%)	(42x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004774s|00.00%|00.01%)	(42x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.792674s|00.25%|06.98%)	(42x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.708335s|00.43%|10.44%)	(42x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.727602s|00.34%|09.63%)	(42x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.653936s|00.42%|10.48%)	(42x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.736367s|00.34%|09.48%)	(42x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.445633s|00.22%|06.30%)	(42x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.046639s|00.09%|03.95%)	(42x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.617756s|00.24%|06.34%)	(42x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.918176s|00.08%|03.70%)	(42x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.176643s|00.29%|08.51%)	(42x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(7.714489s|00.70%|15.85%)	(42x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.024589s|00.09%|04.16%)	(42x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.949352s|00.08%|04.02%)	(42x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.006851s|00.00%|00.01%)	(40x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.010965s|00.00%|00.02%)	(40x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000644s|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   8.0:    	(0.000093s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p13
|   |   |   |   |   12.0:    	(0.012621s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p13; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002933s|00.00%|00.01%)	(23x) true
|   |   |   |   |   20.0:    	(0.002569s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002569s|00.00%|00.01%)	(23x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.003387s|00.00%|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p13
|   |   |   |   |   23.0:    	(0.184830s|00.01%|00.98%)	(23x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002915s|00.00%|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.002650s|00.00%|00.01%)	(22x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.002565s|00.00%|00.01%)	(22x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002804s|00.00%|00.01%)	(22x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.032291s|00.00%|00.17%)	(22x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.002534s|00.00%|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.002622s|00.00%|00.01%)	(22x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.004585s|00.00%|00.02%)	(22x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003278s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p13
|   |   |   |   |   48.0:    	(0.002504s|00.00%|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.002336s|00.00%|00.01%)	(22x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(18.381591s|01.68%|98.25%)	(22x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002306s|00.00%|00.01%)	(22x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.249900s|00.11%|06.81%)	(22x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.324982s|00.21%|10.55%)	(22x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.828534s|00.16%|09.52%)	(22x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.239230s|00.20%|09.86%)	(22x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.747726s|00.16%|08.88%)	(22x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.156123s|00.10%|06.56%)	(22x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.543573s|00.04%|04.39%)	(22x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.256970s|00.11%|06.52%)	(22x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.466497s|00.04%|04.12%)	(22x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.560104s|00.14%|08.59%)	(22x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(2.949909s|00.27%|14.42%)	(22x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.545525s|00.05%|04.88%)	(22x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.510212s|00.04%|04.74%)	(22x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.002379s|00.00%|00.01%)	(21x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.002736s|00.00%|00.01%)	(21x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000073s|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000770s|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:    	(0.000132s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p14
|   |   |   |   |   12.0:    	(0.017402s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p14; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.009631s|00.00%|00.02%)	(48x) true
|   |   |   |   |   20.0:    	(0.005879s|00.00%|00.01%)	(48x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.006048s|00.00%|00.01%)	(48x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.003708s|00.00%|00.02%)	(24x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p14
|   |   |   |   |   23.0:    	(0.345140s|00.03%|00.97%)	(48x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.006067s|00.00%|00.01%)	(48x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.005546s|00.00%|00.01%)	(46x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.005436s|00.00%|00.01%)	(46x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.008650s|00.00%|00.02%)	(46x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.057832s|00.00%|00.16%)	(46x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.005598s|00.00%|00.01%)	(46x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.005584s|00.00%|00.01%)	(46x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.016417s|00.00%|00.04%)	(46x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003517s|00.00%|00.02%)	(23x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p14
|   |   |   |   |   48.0:    	(0.005306s|00.00%|00.01%)	(46x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.005514s|00.00%|00.01%)	(46x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(34.542297s|03.17%|98.11%)	(46x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.005026s|00.00%|00.01%)	(46x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.343684s|00.21%|06.99%)	(46x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.064347s|00.37%|10.64%)	(46x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.361779s|00.30%|09.72%)	(46x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.061287s|00.37%|10.55%)	(46x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.168563s|00.29%|09.24%)	(46x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.059582s|00.18%|06.30%)	(46x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.019361s|00.09%|03.91%)	(46x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.160510s|00.19%|06.26%)	(46x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.917923s|00.08%|03.72%)	(46x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.858478s|00.26%|08.58%)	(46x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.448120s|00.59%|15.36%)	(46x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.046746s|00.09%|04.27%)	(46x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.026891s|00.09%|04.27%)	(46x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:        	(0.000145s|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000874s|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:    	(0.000082s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p15
|   |   |   |   |   12.0:    	(0.013899s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p15; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002639s|00.00%|00.01%)	(20x) true
|   |   |   |   |   20.0:    	(0.002216s|00.00%|00.01%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002398s|00.00%|00.01%)	(20x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.002851s|00.00%|00.01%)	(20x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p15
|   |   |   |   |   23.0:    	(0.302875s|00.02%|01.49%)	(20x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002672s|00.00%|00.01%)	(20x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.005490s|00.00%|00.02%)	(19x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.002306s|00.00%|00.01%)	(19x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002576s|00.00%|00.01%)	(19x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.025568s|00.00%|00.12%)	(19x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.002334s|00.00%|00.01%)	(19x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.002371s|00.00%|00.01%)	(19x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.002652s|00.00%|00.01%)	(19x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003070s|00.00%|00.01%)	(19x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p15
|   |   |   |   |   48.0:    	(0.002427s|00.00%|00.01%)	(19x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.002333s|00.00%|00.01%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(19.794788s|01.81%|97.88%)	(19x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002133s|00.00%|00.01%)	(19x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.392112s|00.12%|07.07%)	(19x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.689439s|00.24%|10.93%)	(19x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.045174s|00.18%|09.53%)	(19x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.555490s|00.23%|10.27%)	(19x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.041054s|00.18%|09.36%)	(19x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.251446s|00.11%|06.23%)	(19x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.495368s|00.04%|03.96%)	(19x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.258366s|00.11%|06.46%)	(19x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.411705s|00.03%|03.65%)	(19x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.440761s|00.13%|09.15%)	(19x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.307560s|00.30%|14.95%)	(19x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.462186s|00.04%|04.14%)	(19x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.441994s|00.04%|04.16%)	(19x) xxhsum -H3 "${@}"
|   |   |   |-- 138.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000880s|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:    	(0.000084s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p16
|   |   |   |   |   12.0:    	(0.009118s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p16; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003721s|00.00%|00.02%)	(24x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p16
|   |   |   |   |   47.0:    	(0.003578s|00.00%|00.02%)	(23x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p16
|   |   |   |-- 138.0:        	(0.000115s|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000917s|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   8.0:    	(0.000084s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p17
|   |   |   |   |   12.0:    	(0.013146s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p17; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004583s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p17
|   |   |   |   |   47.0:    	(0.004380s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p17
|   |   |   |-- 138.0:        	(0.000122s|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000921s|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:    	(0.000085s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p18
|   |   |   |   |   12.0:    	(0.011009s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p18; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004155s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p18
|   |   |   |   |   47.0:    	(0.003630s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p18
|   |   |   |-- 138.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.000925s|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:    	(0.000114s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p19
|   |   |   |   |   12.0:    	(0.009919s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p19; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003841s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p19
|   |   |   |   |   47.0:    	(0.003495s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p19
|   |   |   |-- 138.0:        	(0.000120s|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.000973s|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:    	(0.000134s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p20
|   |   |   |   |   12.0:    	(0.017076s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p20; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004811s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p20
|   |   |   |   |   47.0:    	(0.004297s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p20
|   |   |   |-- 138.0:        	(0.000127s|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.000984s|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:    	(0.000125s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p21
|   |   |   |   |   12.0:    	(0.020328s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p21; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004716s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p21
|   |   |   |   |   47.0:    	(0.004427s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p21
|   |   |   |-- 138.0:        	(0.000120s|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.000890s|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:    	(0.000136s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p22
|   |   |   |   |   12.0:    	(0.017442s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p22; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004410s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p22
|   |   |   |   |   47.0:    	(0.010144s|00.00%|00.05%)	(28x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p22
|   |   |   |   |   49.0:    	(0.000112s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   58.0:    	(0.000112s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   59.0:    	(0.000129s|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   61.0:    	(0.000156s|00.00%)	(1x) : > "/dev/shm/.forkrun.by4Wxe"/.quit
|   |   |   |   |   62.0:    	(0.000204s|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.by4Wxe"/.run/p* 1>&20
|   |   |   |   |   63.0:    	(0.000132s|00.00%)	(1x) break
|   |   |   |-- 138.0:        	(0.000136s|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.000961s|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:    	(0.000133s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p23
|   |   |   |   |   12.0:    	(0.017129s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p23; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.003745s|00.00%|00.02%)	(27x) true
|   |   |   |   |   20.0:    	(0.003219s|00.00%|00.01%)	(27x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003314s|00.00%|00.01%)	(27x) read -r < "/dev/shm/.forkrun.by4Wxe"/.nLines
|   |   |   |   |   22.0:    	(0.004221s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p23
|   |   |   |   |   23.0:    	(0.189320s|00.01%|01.04%)	(27x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.003469s|00.00%|00.01%)	(27x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.quit ]]
|   |   |   |   |   28.0:    	(0.003140s|00.00%|00.01%)	(26x) [[ -f "/dev/shm/.forkrun.by4Wxe"/.done ]]
|   |   |   |   |   28.1:    	(0.003300s|00.00%|00.01%)	(26x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.003242s|00.00%|00.01%)	(26x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.037299s|00.00%|00.20%)	(26x) mapfile -t -n ${nLinesCur} -u 26 A
|   |   |   |   |   33.0:    	(0.006218s|00.00%|00.03%)	(26x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:    	(0.003234s|00.00%|00.01%)	(26x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.005493s|00.00%|00.03%)	(26x) printf '\n' 1>&20
|   |   |   |   |   47.0:    	(0.003925s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p23
|   |   |   |   |   48.0:    	(0.003126s|00.00%|00.01%)	(26x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:    	(0.003044s|00.00%|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   73.0:    	(17.664759s|01.62%|97.85%)	(26x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002902s|00.00%|00.02%)	(26x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.247363s|00.11%|07.18%)	(26x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.060953s|00.18%|10.48%)	(26x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.706891s|00.15%|09.64%)	(26x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.027606s|00.18%|10.08%)	(26x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.713449s|00.15%|09.31%)	(26x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.081224s|00.09%|06.41%)	(26x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.594587s|00.05%|04.35%)	(26x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.150441s|00.10%|06.39%)	(26x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.515547s|00.04%|04.00%)	(26x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.392468s|00.12%|08.48%)	(26x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.010758s|00.27%|14.50%)	(26x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.588714s|00.05%|04.52%)	(26x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.571856s|00.05%|04.51%)	(26x) xxhsum -H3 "${@}"
|   |   |   |   |   68.1:    	(0.002922s|00.00%|00.01%)	(25x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.009433s|00.00%|00.05%)	(25x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000119s|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.000977s|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:    	(0.000161s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p24
|   |   |   |   |   12.0:    	(0.019104s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p24; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003458s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p24
|   |   |   |   |   47.0:    	(0.003194s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p24
|   |   |   |-- 138.0:        	(0.000119s|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.000996s|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:    	(0.000155s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p25
|   |   |   |   |   12.0:    	(0.019088s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p25; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003950s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p25
|   |   |   |   |   47.0:    	(0.003488s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p25
|   |   |   |-- 138.0:        	(0.000125s|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.001116s|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:    	(0.000135s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p26
|   |   |   |   |   12.0:    	(0.021357s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p26; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004055s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p26
|   |   |   |   |   47.0:    	(0.003710s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p26
|   |   |   |-- 138.0:        	(0.000195s|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.001201s|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:    	(0.000137s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.by4Wxe"/.run/p27
|   |   |   |   |   12.0:    	(0.017592s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.by4Wxe"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.by4Wxe"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.by4Wxe"/.run/p27; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003243s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.by4Wxe"/.wait/p27
|   |   |   |   |   47.0:    	(0.003037s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.by4Wxe"/.wait/p27
|   |   |   |   |   68.1:    	(0.003046s|00.00%|00.01%)	(19x) ${nSpawnFlag}
|   |   |   |   |   71.0:    	(0.002725s|00.00%|00.01%)	(19x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 138.0:        	(0.000265s|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000134s|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000128s|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000107s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000101s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001124s|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000108s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000108s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000102s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.466246s|02.15%|04.30%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000231s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000229s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -219.0:            	(0.000262s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -218.0:            	(0.000275s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -217.0:            	(0.001636s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -217.1:            	(0.003956s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -217.0:        	(0.003956s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -216.0:            	(0.000077s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -215.0:            	(0.001534s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -215.1:            	(0.002585s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -215.0:        	(0.002585s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -214.0:            	(0.000085s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -213.0:            	(0.000600s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -213.1:            	(0.002219s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -213.0:        	(0.002219s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -212.0:            	(0.014818s|00.00%)	(1x) ${nSpawnFlag}
|   |   1458.0:                	(0.000249s|00.00%)	(1x) wait
|-- |-- -219.0:                	(0.003427s|00.00%)	(1x) wait

1.0:                        	(543.965279s|49.97%)	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:                    	(0.000568s|00.00%)	(1x) forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   343.0:                    	(543.964711s|49.97%|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 343.0:                	(0.016806s|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   65.0:                	(0.000072s|00.00%)	(1x) shopt -s extglob
|   |   68.0:                	(0.000076s|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                	(0.000121s|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                	(0.000098s|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                	(0.000077s|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                	(0.000065s|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                	(0.000081s|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                	(0.000058s|00.00%)	(1x) [[ $# == 0 ]]
|   |   80.1:                	(0.000062s|00.00%)	(1x) optParseFlag=true
|   |   81.0:                	(0.000114s|00.00%)	(2x) ${optParseFlag}
|   |   81.1:                	(0.000116s|00.00%)	(2x) (( $# > 0  ))
|   |   81.2:                	(0.000119s|00.00%)	(2x) [[ "$1" == [-+]* ]]
|   |   82.0:                	(0.000091s|00.00%)	(1x) case "${1}" in
|   |   209.0:                	(0.000060s|00.00%)	(1x) [[ "${1:0:1}" == '-' ]]
|   |   209.1:                	(0.000057s|00.00%)	(1x) nullDelimiterFlag=true
|   |   273.0:                	(0.000058s|00.00%)	(1x) shift 1
|   |   274.0:                	(0.000056s|00.00%)	(1x) [[ ${#} == 0 ]]
|   |   278.0:                	(0.000067s|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000059s|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000059s|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000066s|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   287.3:                	(0.000059s|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   289.0:                	(0.001190s|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.001926s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.001926s|00.00%|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000059s|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.000983s|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000098s|00.00%)	(1x) : > "${fPath}"
|   |   295.0:                	(0.000057s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   295.1:                	(0.010374s|00.00%)	(1x) trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
|   |   1457.0:                	(543.927945s|49.96%|99.99%)	(1x) << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000068s|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:            	(0.000234s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1457.0:        	(0.001273s|00.00%|100.00%)	(6x) :
|   |   |   1457.1:            	(0.000088s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.2:            	(0.000235s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.3:            	(0.000234s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.4:            	(0.000248s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1457.5:            	(0.000234s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   318.0:            	(0.000078s|00.00%)	(1x) LC_ALL=C
|   |   |   319.0:            	(0.000065s|00.00%)	(1x) LANG=C
|   |   |   320.0:            	(0.000060s|00.00%)	(1x) IFS=
|   |   |   322.0:            	(0.000175s|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000067s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000070s|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000070s|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000062s|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   330.0:            	(0.000072s|00.00%)	(1x) shopt -s nullglob
|   |   |   333.0:            	(0.000071s|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000075s|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   336.0:            	(0.000068s|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000060s|00.00%)	(1x) ${lseekFlag}
|   |   |   342.0:            	(0.000508s|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000108s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000108s|00.00%|100.00%)	(1x) lseek $fd_read 0
|   |   |   342.2:            	(0.000069s|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000063s|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000067s|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   353.0:            	(0.000063s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000059s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000059s|00.00%)	(1x) noFuncFlag=false
|   |   |   355.0:            	(0.000065s|00.00%)	(1x) ${noFuncFlag}
|   |   |   356.0:            	(0.000083s|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000067s|00.00%)	(1x) ${readBytesFlag}
|   |   |   422.0:            	(0.000060s|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000064s|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000062s|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000063s|00.00%)	(1x) nLines=1
|   |   |   427.0:            	(0.000079s|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   432.0:            	(0.000064s|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   436.0:            	(0.000819s|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:        	(0.000075s|00.00%|09.15%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:        	(0.000063s|00.00%|07.69%)	(1x) local +i -l nn
|   |   |   |   9.0:        	(0.000061s|00.00%|07.44%)	(1x) local vOut
|   |   |   |   11.0:        	(0.000061s|00.00%|07.44%)	(1x) local -n vOut="$1"
|   |   |   |   12.0:        	(0.000064s|00.00%|07.81%)	(1x) shift 1
|   |   |   |   13.0:        	(0.000078s|00.00%|09.52%)	(1x) local -g vOut
|   |   |   |   15.0:        	(0.000063s|00.00%|07.69%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:        	(0.000106s|00.00%|12.94%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:        	(0.000059s|00.00%|07.20%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:        	(0.000061s|00.00%|07.44%)	(1x) [[ -n ${nn} ]]
|   |   |   |   18.1:        	(0.000064s|00.00%|07.81%)	(1x) continue
|   |   |   |-- 28.0:        	(0.000064s|00.00%|07.81%)	(1x) local +n vOut
|   |   |   438.0:            	(0.000087s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.000704s|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   440.1:            	(0.001786s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000188s|00.00%|10.52%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001598s|00.00%|89.47%)	(1x) nproc
|   |   |   441.0:            	(0.000063s|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   442.0:            	(0.000070s|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000058s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   442.2:            	(0.000067s|00.00%)	(1x) nProcs=${nCPU}
|   |   |   444.0:            	(0.000060s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.0:            	(0.000061s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   448.1:            	(0.000063s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000076s|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000092s|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000060s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000061s|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000059s|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000062s|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   464.0:            	(0.000061s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.0:            	(0.000139s|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000071s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   470.2:            	(0.000063s|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000059s|00.00%)	(1x) ${exportOrderFlag}
|   |   |   476.0:            	(0.000058s|00.00%)	(1x) ${readBytesFlag}
|   |   |   477.0:            	(0.000061s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   478.0:            	(0.000062s|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000058s|00.00%)	(1x) delimiterReadStr="-d ''"
|   |   |   480.0:            	(0.000062s|00.00%)	(1x) ${lseekFlag}
|   |   |   480.1:            	(0.000060s|00.00%)	(1x) : "${nullDelimiterProg:='lseek'}"
|   |   |   481.0:            	(0.000066s|00.00%)	(1x) : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000115s|00.00%)	(1x) type -p dd &> /dev/null
|   |   |   483.0:            	(0.000065s|00.00%)	(1x) ddAvailableFlag=true
|   |   |   484.0:            	(0.002769s|00.00%)	(1x) dd --version | grep -qF 'coreutils'
|   |   |   485.0:            	(0.000062s|00.00%)	(1x) ddQuietStr='status=none'
|   |   |   492.0:            	(0.000068s|00.00%)	(1x) [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000059s|00.00%)	(1x) ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000063s|00.00%)	(1x) nullDelimiterProg=''
|   |   |   512.0:            	(0.000059s|00.00%)	(1x) ${unescapeFlag}
|   |   |   521.0:            	(0.000655s|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   521.1:            	(0.000101s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000101s|00.00%|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   522.0:            	(0.000061s|00.00%)	(1x) ${substituteStringFlag}
|   |   |   525.0:            	(0.000060s|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000060s|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   533.0:            	(0.001071s|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000068s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000062s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000060s|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000064s|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000077s|00.00%)	(1x) evfd_init
|   |   |   577.0:            	(0.000069s|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   579.0:            	(0.000071s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   583.0:            	(0.000058s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000477s|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   599.0:            	(0.067055s|00.00%|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000075s|00.00%|00.11%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.010168s|00.00%|15.16%)	(1x) trap - EXIT
|   |   |   |   602.0:        	(0.009909s|00.00%|14.77%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   603.0:        	(0.009309s|00.00%|13.88%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   604.0:        	(0.009331s|00.00%|13.91%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   605.0:        	(0.009249s|00.00%|13.79%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   607.0:        	(0.000060s|00.00%|00.08%)	(1x) case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.018727s|00.00%|27.92%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000094s|00.00%|00.14%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000072s|00.00%|00.10%)	(1x) evfd_signal
|   |   |   |-- 615.0:        	(0.000061s|00.00%|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000067s|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000060s|00.00%)	(1x) ${nOrderFlag}
|   |   |   670.0:            	(0.000060s|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   674.0:            	(0.000076s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000378s|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:            	(6.608365s|00.60%|01.21%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000097s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.010391s|00.00%|00.15%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   689.0:        	(0.009203s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   690.0:        	(0.009454s|00.00%|00.14%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   691.0:        	(0.009239s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   692.0:        	(0.009246s|00.00%|00.13%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   694.0:        	(0.000060s|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   695.0:        	(0.000062s|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000060s|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000059s|00.00%)	(1x) nLinesRead=0
|   |   |   |   700.0:        	(0.082957s|00.00%|01.25%)	(677x) ${fallocateFlag}
|   |   |   |   702.0:        	(5.290525s|00.48%|80.05%)	(676x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001133s|00.00%|00.01%)	(9x) continue
|   |   |   |   704.0:        	(0.074752s|00.00%|01.13%)	(667x) case ${REPLY} in
|   |   |   |   718.0:        	(0.084922s|00.00%|01.28%)	(666x) ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000061s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000068s|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.075550s|00.00%|01.14%)	(667x) ${lseekPosFlag}
|   |   |   |   729.0:        	(0.099961s|00.00%|01.51%)	(667x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.077558s|00.00%|01.17%)	(667x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.083531s|00.00%|01.26%)	(667x) ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.081912s|00.00%|01.23%)	(667x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.073947s|00.00%|01.11%)	(667x) ${nSpawnFlag}
|   |   |   |   741.0:        	(0.079900s|00.00%|01.20%)	(667x) ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000066s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000065s|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.000625s|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:        	(0.002512s|00.00%|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002511s|00.00%|99.96%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000115s|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000112s|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000097s|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000104s|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000095s|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000101s|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000103s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000143s|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000125s|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000093s|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.074201s|00.00%|01.12%)	(667x) ${fallocateFlag}
|   |   |   |   767.0:        	(0.073111s|00.00%|01.10%)	(667x) case ${nWait} in
|   |   |   |   778.0:        	(0.071885s|00.00%|01.08%)	(646x) ((nWait--))
|   |   |   |   783.0:        	(0.077406s|00.00%|01.17%)	(667x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.079152s|00.00%|01.19%)	(665x) ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002332s|00.00%|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002299s|00.00%|00.03%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.059132s|00.00%|00.89%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002456s|00.00%|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002443s|00.00%|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002662s|00.00%|00.04%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   712.0:        	(0.000104s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   784.0:        	(0.000061s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000060s|00.00%)	(1x) fallocateFlag=false
|   |   |   |   786.0:        	(0.000100s|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   700.1:        	(0.000137s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000159s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   -219.0:        	(0.000137s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- -219.1:        	(0.001524s|00.00%|00.02%)	(1x) ${nSpawnFlag}
|   |   |   794.0:            	(0.000065s|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   795.0:            	(0.000092s|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000076s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1300.0:            	(0.001774s|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1317.0:            	(0.015963s|00.00%)	(2x) << (SUBSHELL) >>
|   |   |   |-- 1317.0:        	(0.000363s|00.00%|07.55%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1318.0:        	(0.000065s|00.00%|01.35%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1318.1:        	(0.000074s|00.00%|01.54%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:        	(0.000218s|00.00%|04.53%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:        	(0.000065s|00.00%|01.35%)	(1x) ${readBytesFlag}
|   |   |   |   1399.0:        	(0.000058s|00.00%|01.20%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1402.0:        	(0.000060s|00.00%|01.24%)	(1x) echo "{"
|   |   |   |   1403.0:        	(0.000057s|00.00%|01.18%)	(1x) ${nOrderFlag}
|   |   |   |   1404.0:        	(0.000057s|00.00%|01.18%)	(1x) ${pipeReadFlag}
|   |   |   |   1404.1:        	(0.000062s|00.00%|01.29%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:        	(0.000063s|00.00%|01.31%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1406.0:        	(0.000065s|00.00%|01.35%)	(1x) ${lseekFlag}
|   |   |   |   1406.1:        	(0.000062s|00.00%|01.29%)	(1x) printf '%s ' '-t'
|   |   |   |   1407.0:        	(0.000064s|00.00%|01.33%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1408.0:        	(0.000059s|00.00%|01.22%)	(1x) ${pipeReadFlag}
|   |   |   |   1408.1:        	(0.000062s|00.00%|01.29%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1409.0:        	(0.000059s|00.00%|01.22%)	(1x) ${pipeReadFlag}
|   |   |   |   1409.1:        	(0.000060s|00.00%|01.24%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1409.2:        	(0.000063s|00.00%|01.31%)	(1x) printf '%s ' '-t'
|   |   |   |   1411.0:        	(0.000064s|00.00%|01.33%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1412.0:        	(0.000059s|00.00%|01.22%)	(1x) ${pipeReadFlag}
|   |   |   |   1412.1:        	(0.000060s|00.00%|01.24%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1412.2:        	(0.000089s|00.00%|01.85%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:        	(0.000060s|00.00%|01.24%)	(1x) ${pipeReadFlag}
|   |   |   |   1469.1:        	(0.000061s|00.00%|01.27%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1469.2:        	(0.000068s|00.00%|01.41%)	(1x) [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:        	(0.000066s|00.00%|01.37%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1483.0:        	(0.000081s|00.00%|01.68%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1484.0:        	(0.000062s|00.00%|01.29%)	(1x) ${lseekPosFlag}
|   |   |   |   1487.0:        	(0.000073s|00.00%|01.51%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:        	(0.000070s|00.00%|01.45%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1499.0:        	(0.000076s|00.00%|01.58%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1499.1:        	(0.000068s|00.00%|01.41%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1500.0:        	(0.000066s|00.00%|01.37%)	(1x) ${nOrderFlag}
|   |   |   |   1501.0:        	(0.000065s|00.00%|01.35%)	(1x) ${nSpawnFlag}
|   |   |   |   1506.0:        	(0.000076s|00.00%|01.58%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1507.0:        	(0.000064s|00.00%|01.33%)	(1x) ${nOrderFlag}
|   |   |   |   1511.0:        	(0.000075s|00.00%|01.56%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1512.0:        	(0.000103s|00.00%|02.14%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1512.1:        	(0.000112s|00.00%|02.33%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1517.0:        	(0.000060s|00.00%|01.24%)	(1x) ${fallocateFlag}
|   |   |   |   1517.1:        	(0.000068s|00.00%|01.41%)	(1x) printf '%s' ' || '
|   |   |   |   1518.0:        	(0.000061s|00.00%|01.27%)	(1x) ${fallocateFlag}
|   |   |   |   1518.1:        	(0.000077s|00.00%|01.60%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1519.0:        	(0.000060s|00.00%|01.24%)	(1x) ${pipeReadFlag}
|   |   |   |   1519.1:        	(0.000066s|00.00%|01.37%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1527.0:        	(0.000061s|00.00%|01.27%)	(1x) ${subshellRunFlag}
|   |   |   |   1527.1:        	(0.000069s|00.00%|01.43%)	(1x) echo '{'
|   |   |   |   1528.0:        	(0.000060s|00.00%|01.24%)	(1x) ${exportOrderFlag}
|   |   |   |   1528.1:        	(0.000064s|00.00%|01.33%)	(1x) ${nOrderFlag}
|   |   |   |   1529.0:        	(0.000062s|00.00%|01.29%)	(1x) ${exportOrderFlag}
|   |   |   |   1530.0:        	(0.000089s|00.00%|01.85%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1531.0:        	(0.000060s|00.00%|01.24%)	(1x) ${readBytesFlag}
|   |   |   |   1538.0:        	(0.000060s|00.00%|01.24%)	(1x) ${stdinRunFlag}
|   |   |   |   1541.0:        	(0.000059s|00.00%|01.22%)	(1x) ${noFuncFlag}
|   |   |   |   1544.0:        	(0.000060s|00.00%|01.24%)	(1x) ${substituteStringFlag}
|   |   |   |   1545.0:        	(0.000078s|00.00%|01.62%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:        	(0.000067s|00.00%|01.39%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:        	(0.000069s|00.00%|01.43%)	(1x) ${readBytesFlag}
|   |   |   |   1563.0:        	(0.000061s|00.00%|01.27%)	(1x) ${subshellRunFlag}
|   |   |   |   1563.1:        	(0.000066s|00.00%|01.37%)	(1x) printf '\n%s ' '}'
|   |   |   |   1564.0:        	(0.000067s|00.00%|01.39%)	(1x) echo "${outStr}"
|   |   |   |   1565.0:        	(0.000065s|00.00%|01.35%)	(1x) ${nOrderFlag}
|   |   |   |   1566.0:        	(0.000064s|00.00%|01.33%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1571.0:        	(0.000076s|00.00%|01.58%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1305.0:            	(0.000093s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1310.0:            	(0.000093s|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1315.0:            	(0.000089s|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   1322.0:            	(0.009596s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   1327.0:            	(0.009386s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   1332.0:            	(0.009426s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1334.0:            	(0.000066s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1335.0:            	(0.000062s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1337.0:            	(0.000061s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1348.0:            	(0.000071s|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1351.0:            	(0.000061s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1352.0:            	(0.002458s|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1352.1:            	(0.002595s|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1353.0:            	(0.002394s|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:            	(513.759849s|47.19%|94.45%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:        	(0.000545s|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   65.0:        	(513.735009s|47.19%|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 65.0:    	(0.004150s|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.AX2tff"
|   |   |   |   |   8.0:    	(0.000145s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p0
|   |   |   |   |   12.0:    	(0.011940s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p0; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   14.0:    	(0.400859s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 2358354 ${BASHPID}' INT
|   |   |   |   |   15.0:    	(0.398839s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 2358354 ${BASHPID}' TERM
|   |   |   |   |   16.0:    	(0.408325s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 2358354 ${BASHPID}' HUP
|   |   |   |   |   17.0:    	(0.411437s|00.03%|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   19.0:    	(0.003075s|00.00%|00.01%)	(24x) true
|   |   |   |   |   20.0:    	(0.002679s|00.00%|00.01%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.002775s|00.00%|00.01%)	(24x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   20.2:    	(0.000793s|00.00%)	(10x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.000805s|00.00%)	(10x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.003535s|00.00%|00.01%)	(24x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p0
|   |   |   |   |   23.0:    	(0.040547s|00.00%|00.17%)	(24x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002745s|00.00%|00.01%)	(24x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.005449s|00.00%|00.01%)	(46x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.005353s|00.00%|00.01%)	(46x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.005688s|00.00%|00.01%)	(46x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.055657s|00.00%|00.13%)	(46x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.012827s|00.00%|00.03%)	(46x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003362s|00.00%|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p0
|   |   |   |   |   36.0:    	(0.005475s|00.00%|00.01%)	(46x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.002558s|00.00%|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.000952s|00.00%)	(10x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.000791s|00.00%)	(10x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(22.433405s|02.06%|99.29%)	(23x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002570s|00.00%|00.03%)	(23x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.626735s|00.14%|07.09%)	(23x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.653004s|00.24%|10.49%)	(23x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.065105s|00.18%|09.36%)	(23x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.683416s|00.24%|10.67%)	(23x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.023052s|00.18%|09.07%)	(23x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.433823s|00.13%|06.55%)	(23x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.578950s|00.05%|03.80%)	(23x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.533830s|00.14%|06.38%)	(23x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.491362s|00.04%|03.73%)	(23x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.795950s|00.16%|08.48%)	(23x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(4.464998s|00.41%|16.36%)	(23x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.547081s|00.05%|03.83%)	(23x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.533529s|00.04%|04.03%)	(23x) xxhsum -H3 "${@}"
|   |   |   |   |   58.1:    	(0.002876s|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   56.1:    	(0.012512s|00.00%|00.01%)	(105x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.029241s|00.00%|00.03%)	(105x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   25.0:    	(0.002428s|00.00%)	(26x) printf '\n' 1>&20
|   |   |   |   |   26.0:    	(0.002500s|00.00%)	(26x) break
|   |   |   |   |   2.0:    	(0.002984s|00.00%)	(28x) break
|   |   |   |   |   3.0:    	(0.002527s|00.00%)	(28x) break
|   |   |   |   |   3.1:    	(0.044733s|00.00%)	(28x) break
|   |   |   |   |-- 4.0:    	(0.002829s|00.00%)	(28x) break
|   |   |   |-- 126.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 1.0:        	(0.000606s|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   8.0:    	(0.001168s|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p1
|   |   |   |   |   12.0:    	(0.008832s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p1; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.011603s|00.00%|00.03%)	(64x) true
|   |   |   |   |   20.0:    	(0.011029s|00.00%|00.02%)	(64x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.007714s|00.00%|00.01%)	(64x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.009667s|00.00%|00.02%)	(64x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p1
|   |   |   |   |   23.0:    	(0.149449s|00.01%|00.39%)	(64x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.008073s|00.00%|00.02%)	(64x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.008183s|00.00%|00.02%)	(62x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.010453s|00.00%|00.02%)	(62x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.008223s|00.00%|00.02%)	(62x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.084598s|00.00%|00.22%)	(62x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.011566s|00.00%|00.03%)	(62x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.009441s|00.00%|00.02%)	(62x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p1
|   |   |   |   |   36.0:    	(0.007346s|00.00%|00.01%)	(62x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.015179s|00.00%|00.03%)	(62x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(36.986337s|03.39%|98.62%)	(62x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.007406s|00.00%|00.02%)	(62x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.687516s|00.24%|07.12%)	(62x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.136410s|00.37%|10.41%)	(62x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.480707s|00.31%|09.51%)	(62x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.015739s|00.36%|10.17%)	(62x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.320906s|00.30%|08.99%)	(62x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.344116s|00.21%|06.41%)	(62x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.280024s|00.11%|04.21%)	(62x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.381812s|00.21%|06.21%)	(62x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.212004s|00.11%|04.10%)	(62x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.068956s|00.28%|08.59%)	(62x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.388885s|00.58%|14.90%)	(62x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.337442s|00.12%|04.60%)	(62x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.324414s|00.12%|04.59%)	(62x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.003444s|00.00%|00.01%)	(29x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.007007s|00.00%|00.04%)	(29x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000080s|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 1.0:        	(0.000597s|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   8.0:    	(0.001306s|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p2
|   |   |   |   |   12.0:    	(0.009281s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p2; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.003333s|00.00%|00.01%)	(25x) true
|   |   |   |   |   20.0:    	(0.002887s|00.00%|00.01%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003089s|00.00%|00.01%)	(25x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.003762s|00.00%|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p2
|   |   |   |   |   23.0:    	(0.039218s|00.00%|00.22%)	(25x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.003029s|00.00%|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.002822s|00.00%|00.01%)	(24x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.002662s|00.00%|00.01%)	(24x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.002857s|00.00%|00.01%)	(24x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.028025s|00.00%|00.15%)	(24x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.003145s|00.00%|00.01%)	(24x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003699s|00.00%|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p2
|   |   |   |   |   36.0:    	(0.004775s|00.00%|00.02%)	(24x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.002624s|00.00%|00.01%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(17.570227s|01.61%|99.08%)	(24x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.002634s|00.00%|00.03%)	(24x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.165269s|00.10%|06.78%)	(24x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.070169s|00.19%|10.52%)	(24x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.653343s|00.15%|09.52%)	(24x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.023972s|00.18%|10.40%)	(24x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.629272s|00.14%|09.40%)	(24x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.109484s|00.10%|06.67%)	(24x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.529828s|00.04%|04.06%)	(24x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.155687s|00.10%|06.31%)	(24x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.468549s|00.04%|03.85%)	(24x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.446384s|00.13%|08.67%)	(24x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.273628s|00.30%|15.17%)	(24x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.529484s|00.04%|04.31%)	(24x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.512524s|00.04%|04.20%)	(24x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.002518s|00.00%|00.01%)	(22x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.002885s|00.00%|00.01%)	(22x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 1.0:        	(0.000591s|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   8.0:    	(0.000289s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p3
|   |   |   |   |   12.0:    	(0.009619s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p3; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.010554s|00.00%|00.01%)	(78x) true
|   |   |   |   |   20.0:    	(0.009273s|00.00%|00.01%)	(78x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.009257s|00.00%|00.01%)	(78x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.003734s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p3
|   |   |   |   |   23.0:    	(0.312294s|00.02%|00.58%)	(78x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.009771s|00.00%|00.01%)	(78x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.011024s|00.00%|00.01%)	(75x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.008903s|00.00%|00.01%)	(75x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.009228s|00.00%|00.01%)	(75x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.091056s|00.00%|00.16%)	(75x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.024578s|00.00%|00.04%)	(75x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003585s|00.00%|00.01%)	(25x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p3
|   |   |   |   |   36.0:    	(0.011857s|00.00%|00.01%)	(75x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.013457s|00.00%|00.02%)	(75x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(52.341688s|04.80%|98.51%)	(75x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.008213s|00.00%|00.01%)	(75x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.525080s|00.32%|06.90%)	(75x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(6.151925s|00.56%|10.57%)	(75x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(5.025576s|00.46%|09.63%)	(75x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(6.010629s|00.55%|10.45%)	(75x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(4.784051s|00.43%|09.10%)	(75x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.205150s|00.29%|06.47%)	(75x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.640062s|00.15%|04.04%)	(75x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.346207s|00.30%|06.35%)	(75x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.443474s|00.13%|03.76%)	(75x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.371330s|00.40%|08.59%)	(75x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(9.588525s|00.88%|15.38%)	(75x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.652696s|00.15%|04.30%)	(75x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.588770s|00.14%|04.26%)	(75x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.002648s|00.00%|00.01%)	(23x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.003072s|00.00%|00.01%)	(23x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 1.0:        	(0.000576s|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   8.0:    	(0.000119s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p4
|   |   |   |   |   12.0:    	(0.011248s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p4; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.002179s|00.00%|00.01%)	(17x) true
|   |   |   |   |   20.0:    	(0.001901s|00.00%)	(17x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001904s|00.00%)	(17x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.002534s|00.00%|00.01%)	(17x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p4
|   |   |   |   |   23.0:    	(0.087538s|00.00%|00.45%)	(17x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.002091s|00.00%|00.01%)	(17x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.004886s|00.00%|00.02%)	(16x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.001858s|00.00%)	(16x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001920s|00.00%|00.01%)	(16x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.022804s|00.00%|00.11%)	(16x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.008259s|00.00%|00.04%)	(16x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.002365s|00.00%|00.01%)	(16x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p4
|   |   |   |   |   36.0:    	(0.001823s|00.00%)	(16x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.001851s|00.00%)	(16x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(18.992288s|01.74%|98.94%)	(16x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004676s|00.00%|00.08%)	(16x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.271792s|00.11%|06.87%)	(16x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.467740s|00.22%|10.18%)	(16x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.879507s|00.17%|09.47%)	(16x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.507005s|00.23%|10.11%)	(16x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.833927s|00.16%|09.19%)	(16x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.176528s|00.10%|06.88%)	(16x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.420488s|00.03%|04.30%)	(16x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.270258s|00.11%|06.29%)	(16x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.376053s|00.03%|04.29%)	(16x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.578637s|00.14%|09.05%)	(16x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.441828s|00.31%|14.12%)	(16x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.396665s|00.03%|04.48%)	(16x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.367184s|00.03%|04.56%)	(16x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.001573s|00.00%)	(14x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.004853s|00.00%|00.02%)	(14x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 1.0:        	(0.000558s|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   8.0:    	(0.000181s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p5
|   |   |   |   |   12.0:    	(0.009859s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p5; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.011139s|00.00%|00.01%)	(81x) true
|   |   |   |   |   20.0:    	(0.009740s|00.00%|00.01%)	(81x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.009892s|00.00%|00.01%)	(81x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   20.2:    	(0.002146s|00.00%)	(23x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:    	(0.002206s|00.00%)	(23x) nLinesCur=${REPLY}
|   |   |   |   |   22.0:    	(0.004033s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p5
|   |   |   |   |   23.0:    	(0.321415s|00.02%|00.59%)	(81x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.010030s|00.00%|00.01%)	(81x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.006196s|00.00%|00.01%)	(52x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.006236s|00.00%|00.01%)	(52x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.006558s|00.00%|00.01%)	(52x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.076781s|00.00%|00.21%)	(52x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.006914s|00.00%|00.01%)	(52x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003960s|00.00%|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p5
|   |   |   |   |   36.0:    	(0.006087s|00.00%|00.01%)	(52x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.008968s|00.00%|00.01%)	(78x) ${nLinesAutoFlag}
|   |   |   |   |   57.0:    	(0.002699s|00.00%)	(23x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:    	(0.002396s|00.00%)	(23x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:    	(52.423683s|04.81%|98.46%)	(78x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.008551s|00.00%|00.01%)	(78x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(3.620412s|00.33%|06.96%)	(78x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(6.161731s|00.56%|10.53%)	(78x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(5.080656s|00.46%|09.61%)	(78x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(5.966323s|00.54%|10.22%)	(78x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(4.894965s|00.44%|09.13%)	(78x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(3.343378s|00.30%|06.62%)	(78x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.709446s|00.15%|04.11%)	(78x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(3.331503s|00.30%|06.29%)	(78x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.599687s|00.14%|03.99%)	(78x) cksum "${@}"
|   |   |   |   |   |   17.0:	(4.335631s|00.39%|08.78%)	(78x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(9.037475s|00.83%|15.06%)	(78x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.683097s|00.15%|04.26%)	(78x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.650828s|00.15%|04.26%)	(78x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.008838s|00.00%|00.01%)	(75x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.010035s|00.00%|00.01%)	(75x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000107s|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 1.0:        	(0.000572s|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   8.0:    	(0.000302s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p6
|   |   |   |   |   12.0:    	(0.009090s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p6; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.014884s|00.00%|00.02%)	(112x) true
|   |   |   |   |   20.0:    	(0.016392s|00.00%|00.01%)	(112x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.017161s|00.00%|00.01%)	(112x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.004264s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p6
|   |   |   |   |   23.0:    	(0.502039s|00.04%|00.71%)	(112x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.013992s|00.00%|00.01%)	(112x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.016280s|00.00%|00.01%)	(135x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.018929s|00.00%|00.01%)	(135x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.016709s|00.00%|00.01%)	(135x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.174831s|00.01%|00.19%)	(135x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.032321s|00.00%|00.03%)	(135x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003988s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p6
|   |   |   |   |   36.0:    	(0.015452s|00.00%|00.01%)	(135x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.016966s|00.00%|00.01%)	(108x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(68.537979s|06.29%|98.35%)	(108x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.012027s|00.00%|00.01%)	(108x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.602244s|00.42%|06.79%)	(108x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(7.699916s|00.70%|10.42%)	(108x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(6.485507s|00.59%|09.52%)	(108x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(7.650542s|00.70%|10.34%)	(108x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.273914s|00.57%|09.11%)	(108x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.167121s|00.38%|06.32%)	(108x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(2.327166s|00.21%|04.15%)	(108x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.356845s|00.40%|06.28%)	(108x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(2.095546s|00.19%|03.88%)	(108x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.876551s|00.53%|08.82%)	(108x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(12.159955s|01.11%|15.29%)	(108x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.411544s|00.22%|04.43%)	(108x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(2.419101s|00.22%|04.43%)	(108x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.014377s|00.00%|00.01%)	(104x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.019865s|00.00%|00.02%)	(104x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000082s|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 1.0:        	(0.000582s|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   8.0:    	(0.000172s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p7
|   |   |   |   |   12.0:    	(0.012215s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p7; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.003692s|00.00%|00.01%)	(29x) true
|   |   |   |   |   20.0:    	(0.003364s|00.00%|00.01%)	(29x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.003540s|00.00%|00.01%)	(29x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.007340s|00.00%|00.03%)	(29x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p7
|   |   |   |   |   23.0:    	(0.088442s|00.00%|00.45%)	(29x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.003501s|00.00%|00.01%)	(29x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.003343s|00.00%|00.01%)	(28x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.003342s|00.00%|00.01%)	(28x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.003496s|00.00%|00.01%)	(28x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.040984s|00.00%|00.20%)	(28x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.006751s|00.00%|00.03%)	(28x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.007279s|00.00%|00.03%)	(28x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p7
|   |   |   |   |   36.0:    	(0.004555s|00.00%|00.02%)	(28x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.003269s|00.00%|00.01%)	(28x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(19.281902s|01.77%|98.74%)	(28x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.003085s|00.00%|00.01%)	(28x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.446154s|00.13%|07.24%)	(28x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.205183s|00.20%|10.42%)	(28x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.792337s|00.16%|09.44%)	(28x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.127730s|00.19%|10.41%)	(28x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.759573s|00.16%|09.29%)	(28x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.218964s|00.11%|06.30%)	(28x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.626846s|00.05%|03.91%)	(28x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.267027s|00.11%|06.32%)	(28x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.549127s|00.05%|03.57%)	(28x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.593246s|00.14%|08.69%)	(28x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.449060s|00.31%|16.01%)	(28x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.657903s|00.06%|04.37%)	(28x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.585667s|00.05%|03.89%)	(28x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.005153s|00.00%|00.02%)	(27x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.003516s|00.00%|00.01%)	(27x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000079s|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 1.0:        	(0.000590s|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   8.0:    	(0.000086s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p8
|   |   |   |   |   12.0:    	(0.009049s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p8; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.005663s|00.00%|00.01%)	(42x) true
|   |   |   |   |   20.0:    	(0.004992s|00.00%|00.01%)	(42x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.004969s|00.00%|00.01%)	(42x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.003460s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p8
|   |   |   |   |   23.0:    	(0.138323s|00.01%|00.38%)	(42x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.005109s|00.00%|00.01%)	(42x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.004773s|00.00%|00.01%)	(40x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.004627s|00.00%|00.01%)	(40x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.004953s|00.00%|00.01%)	(40x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.056383s|00.00%|00.15%)	(40x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.005123s|00.00%|00.01%)	(40x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003938s|00.00%|00.02%)	(20x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p8
|   |   |   |   |   36.0:    	(0.006820s|00.00%|00.01%)	(40x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.008095s|00.00%|00.01%)	(40x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(35.387209s|03.25%|98.82%)	(40x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004324s|00.00%|00.01%)	(40x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.402970s|00.22%|06.99%)	(40x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.214050s|00.38%|10.50%)	(40x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.450126s|00.31%|09.77%)	(40x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.261287s|00.39%|10.61%)	(40x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.430363s|00.31%|09.64%)	(40x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.139489s|00.19%|06.31%)	(40x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.984881s|00.09%|03.98%)	(40x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.284183s|00.20%|06.32%)	(40x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.841072s|00.07%|03.56%)	(40x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.841186s|00.26%|08.34%)	(40x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.605573s|00.60%|15.31%)	(40x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.992264s|00.09%|04.31%)	(40x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.935441s|00.08%|04.19%)	(40x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.004449s|00.00%|00.01%)	(38x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.008011s|00.00%|00.02%)	(38x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 1.0:        	(0.000603s|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   8.0:    	(0.000269s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p9
|   |   |   |   |   12.0:    	(0.009054s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p9; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004185s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p9
|   |   |   |   |   35.0:    	(0.003969s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p9
|   |   |   |-- 126.0:        	(0.000081s|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 1.0:        	(0.000603s|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   8.0:    	(0.000114s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p10
|   |   |   |   |   12.0:    	(0.010655s|00.00%|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p10; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.012555s|00.00%|00.01%)	(92x) true
|   |   |   |   |   20.0:    	(0.014534s|00.00%|00.01%)	(92x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.011166s|00.00%|00.01%)	(92x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.005190s|00.00%|00.02%)	(23x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p10
|   |   |   |   |   23.0:    	(0.394615s|00.03%|00.52%)	(92x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.011772s|00.00%|00.01%)	(92x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.009505s|00.00%|00.01%)	(66x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.008111s|00.00%|00.01%)	(66x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.008229s|00.00%|00.01%)	(66x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.085527s|00.00%|00.15%)	(66x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.011352s|00.00%|00.01%)	(66x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003345s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p10
|   |   |   |   |   36.0:    	(0.007933s|00.00%|00.01%)	(66x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.016264s|00.00%|00.01%)	(88x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(72.342756s|06.64%|98.58%)	(88x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.009966s|00.00%|00.01%)	(88x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(4.957327s|00.45%|06.99%)	(88x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(8.969071s|00.82%|10.58%)	(88x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(7.039330s|00.64%|09.58%)	(88x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(8.767516s|00.80%|10.20%)	(88x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(6.934994s|00.63%|09.20%)	(88x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(4.430025s|00.40%|06.43%)	(88x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.992932s|00.18%|04.10%)	(88x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(4.505928s|00.41%|06.21%)	(88x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.799028s|00.16%|03.94%)	(88x) cksum "${@}"
|   |   |   |   |   |   17.0:	(5.752166s|00.52%|08.79%)	(88x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(13.168320s|01.20%|14.86%)	(88x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(2.061434s|00.18%|04.53%)	(88x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.954719s|00.17%|04.40%)	(88x) xxhsum -H3 "${@}"
|   |   |   |-- 126.0:        	(0.000078s|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 1.0:        	(0.000619s|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   8.0:    	(0.000086s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p11
|   |   |   |   |   12.0:    	(0.009131s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p11; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003969s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p11
|   |   |   |   |   35.0:    	(0.003965s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p11
|   |   |   |   |   56.1:    	(0.005707s|00.00%|00.01%)	(48x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.013601s|00.00%|00.03%)	(48x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 1.0:        	(0.000641s|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |   8.0:    	(0.000093s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p12
|   |   |   |   |   12.0:    	(0.014842s|00.00%|00.07%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p12; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.001846s|00.00%)	(14x) true
|   |   |   |   |   20.0:    	(0.001593s|00.00%)	(14x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001603s|00.00%)	(14x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.002085s|00.00%|00.01%)	(14x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p12
|   |   |   |   |   23.0:    	(0.067798s|00.00%|00.32%)	(14x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001837s|00.00%)	(14x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.001558s|00.00%)	(13x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.001571s|00.00%)	(13x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001697s|00.00%)	(13x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.016635s|00.00%|00.08%)	(13x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.001850s|00.00%)	(13x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.002030s|00.00%)	(13x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p12
|   |   |   |   |   36.0:    	(0.001494s|00.00%)	(13x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.001557s|00.00%)	(13x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(20.401795s|01.87%|99.16%)	(13x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001478s|00.00%|00.02%)	(13x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.423788s|00.13%|06.77%)	(13x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.868219s|00.26%|10.68%)	(13x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(2.147074s|00.19%|10.49%)	(13x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.850817s|00.26%|10.32%)	(13x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(2.060255s|00.18%|09.15%)	(13x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.236793s|00.11%|06.40%)	(13x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.395894s|00.03%|04.33%)	(13x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.305659s|00.11%|06.28%)	(13x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.336662s|00.03%|04.54%)	(13x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.375962s|00.12%|08.32%)	(13x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.694705s|00.33%|13.03%)	(13x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.370520s|00.03%|04.76%)	(13x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.333969s|00.03%|04.79%)	(13x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.001474s|00.00%)	(12x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.001699s|00.00%)	(12x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000078s|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 1.0:        	(0.000783s|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   8.0:    	(0.000140s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p13
|   |   |   |   |   12.0:    	(0.017399s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p13; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004478s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p13
|   |   |   |   |   35.0:    	(0.005760s|00.00%|00.03%)	(27x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p13
|   |   |   |-- 126.0:        	(0.000139s|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 1.0:        	(0.000885s|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   8.0:    	(0.000087s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p14
|   |   |   |   |   12.0:    	(0.013847s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p14; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003939s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p14
|   |   |   |   |   35.0:    	(0.004016s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p14
|   |   |   |   |   37.0:    	(0.000218s|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   46.0:    	(0.000218s|00.00%)	(2x) ${doneIndicatorFlag}
|   |   |   |   |   47.0:    	(0.000250s|00.00%)	(2x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   49.0:    	(0.000281s|00.00%)	(2x) : > "/dev/shm/.forkrun.AX2tff"/.quit
|   |   |   |   |   50.0:    	(0.000367s|00.00%)	(2x) printf '%.0s\n' "/dev/shm/.forkrun.AX2tff"/.run/p* 1>&20
|   |   |   |   |   51.0:    	(0.000227s|00.00%)	(2x) break
|   |   |   |-- 126.0:        	(0.000123s|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 1.0:        	(0.000936s|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   8.0:    	(0.000086s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p15
|   |   |   |   |   12.0:    	(0.009553s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p15; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004400s|00.00%|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p15
|   |   |   |   |   35.0:    	(0.004083s|00.00%|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p15
|   |   |   |-- 126.0:        	(0.000120s|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 1.0:        	(0.000953s|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   8.0:    	(0.000092s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p16
|   |   |   |   |   12.0:    	(0.011316s|00.00%|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p16; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004823s|00.00%|00.02%)	(32x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p16
|   |   |   |   |   35.0:    	(0.004873s|00.00%|00.02%)	(31x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p16
|   |   |   |   |   56.1:    	(0.003629s|00.00%|00.01%)	(30x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.005304s|00.00%|00.02%)	(30x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000126s|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 1.0:        	(0.000991s|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   8.0:    	(0.000136s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p17
|   |   |   |   |   12.0:    	(0.017151s|00.00%|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p17; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.008265s|00.00%|00.01%)	(60x) true
|   |   |   |   |   20.0:    	(0.007252s|00.00%|00.01%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.007311s|00.00%|00.01%)	(60x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.004626s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p17
|   |   |   |   |   23.0:    	(0.236668s|00.02%|00.62%)	(60x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.007633s|00.00%|00.01%)	(60x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.010108s|00.00%|00.02%)	(58x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.006745s|00.00%|00.01%)	(58x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.007120s|00.00%|00.01%)	(58x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.084483s|00.00%|00.22%)	(58x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.008911s|00.00%|00.02%)	(58x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.004523s|00.00%|00.02%)	(29x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p17
|   |   |   |   |   36.0:    	(0.007006s|00.00%|00.01%)	(58x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.012943s|00.00%|00.03%)	(58x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(37.610025s|03.45%|98.31%)	(58x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.009580s|00.00%|00.03%)	(58x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.738794s|00.25%|07.24%)	(58x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.218592s|00.38%|10.20%)	(58x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.511231s|00.32%|09.48%)	(58x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.213428s|00.38%|10.19%)	(58x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.415270s|00.31%|09.11%)	(58x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.461813s|00.22%|06.68%)	(58x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.285685s|00.11%|04.29%)	(58x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.459957s|00.22%|06.36%)	(58x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(1.152314s|00.10%|04.16%)	(58x) cksum "${@}"
|   |   |   |   |   |   17.0:	(3.082192s|00.28%|08.53%)	(58x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.541610s|00.60%|14.68%)	(58x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(1.290965s|00.11%|04.54%)	(58x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(1.228594s|00.11%|04.36%)	(58x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.006690s|00.00%|00.01%)	(56x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.008484s|00.00%|00.01%)	(56x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000153s|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 1.0:        	(0.000953s|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   8.0:    	(0.000116s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p18
|   |   |   |   |   12.0:    	(0.015674s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p18; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003524s|00.00%|00.02%)	(23x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p18
|   |   |   |   |   35.0:    	(0.006505s|00.00%|00.03%)	(23x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p18
|   |   |   |-- 126.0:        	(0.000122s|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 1.0:        	(0.001000s|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   8.0:    	(0.000136s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p19
|   |   |   |   |   12.0:    	(0.017884s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p19; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003659s|00.00%|00.02%)	(23x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p19
|   |   |   |   |   35.0:    	(0.003502s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p19
|   |   |   |-- 126.0:        	(0.000130s|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 1.0:        	(0.000949s|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   8.0:    	(0.000163s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p20
|   |   |   |   |   12.0:    	(0.018160s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p20; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004095s|00.00%|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p20
|   |   |   |   |   35.0:    	(0.006990s|00.00%|00.03%)	(26x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p20
|   |   |   |-- 126.0:        	(0.000120s|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 1.0:        	(0.000949s|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   8.0:    	(0.000135s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p21
|   |   |   |   |   12.0:    	(0.017486s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p21; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.004810s|00.00%|00.02%)	(12x) true
|   |   |   |   |   20.0:    	(0.001427s|00.00%)	(12x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.001497s|00.00%)	(12x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.001805s|00.00%|00.01%)	(12x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p21
|   |   |   |   |   23.0:    	(0.021516s|00.00%|00.12%)	(12x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.001469s|00.00%)	(12x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.001296s|00.00%)	(11x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.001303s|00.00%)	(11x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.001516s|00.00%)	(11x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.012745s|00.00%|00.07%)	(11x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.005225s|00.00%|00.02%)	(11x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.001608s|00.00%)	(11x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p21
|   |   |   |   |   36.0:    	(0.001246s|00.00%)	(11x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.001210s|00.00%)	(11x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(17.763424s|01.63%|99.11%)	(11x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.001167s|00.00%|00.01%)	(11x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(1.158327s|00.10%|07.20%)	(11x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(2.304374s|00.21%|10.78%)	(11x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(1.669076s|00.15%|09.57%)	(11x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(2.240007s|00.20%|10.91%)	(11x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(1.647037s|00.15%|09.01%)	(11x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(1.010857s|00.09%|06.04%)	(11x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(0.358392s|00.03%|04.16%)	(11x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(1.142555s|00.10%|06.05%)	(11x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.275908s|00.02%|03.35%)	(11x) cksum "${@}"
|   |   |   |   |   |   17.0:	(1.411382s|00.12%|08.21%)	(11x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(3.928040s|00.36%|16.37%)	(11x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.330062s|00.03%|04.23%)	(11x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.286240s|00.02%|03.99%)	(11x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.001126s|00.00%)	(10x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.004341s|00.00%|00.02%)	(10x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000156s|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 1.0:        	(0.000975s|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   8.0:    	(0.000137s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p22
|   |   |   |   |   12.0:    	(0.017155s|00.00%|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p22; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003098s|00.00%|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p22
|   |   |   |   |   35.0:    	(0.002943s|00.00%|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p22
|   |   |   |-- 126.0:        	(0.000123s|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 1.0:        	(0.000982s|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   8.0:    	(0.000127s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p23
|   |   |   |   |   12.0:    	(0.018724s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p23; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   19.0:    	(0.006024s|00.00%|00.01%)	(44x) true
|   |   |   |   |   20.0:    	(0.005212s|00.00%|00.01%)	(44x) ${nLinesAutoFlag}
|   |   |   |   |   20.1:    	(0.005516s|00.00%|00.01%)	(44x) read -r < "/dev/shm/.forkrun.AX2tff"/.nLines
|   |   |   |   |   22.0:    	(0.003479s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p23
|   |   |   |   |   23.0:    	(0.113401s|00.01%|00.32%)	(44x) read -r -u 20 _
|   |   |   |   |   24.0:    	(0.008575s|00.00%|00.02%)	(44x) [[ -f "/dev/shm/.forkrun.AX2tff"/.quit ]]
|   |   |   |   |   28.0:    	(0.005102s|00.00%|00.01%)	(42x) [[ -f "/dev/shm/.forkrun.AX2tff"/.done ]]
|   |   |   |   |   28.1:    	(0.004992s|00.00%|00.01%)	(42x) doneIndicatorFlag=true
|   |   |   |   |   30.0:    	(0.006677s|00.00%|00.01%)	(42x) evfd_wait 24
|   |   |   |   |   31.0:    	(0.055033s|00.00%|00.15%)	(42x) mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
|   |   |   |   |   34.0:    	(0.008517s|00.00%|00.02%)	(42x) printf '\n' 1>&20
|   |   |   |   |   35.0:    	(0.003372s|00.00%|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p23
|   |   |   |   |   36.0:    	(0.008049s|00.00%|00.02%)	(42x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:    	(0.007915s|00.00%|00.02%)	(42x) ${nLinesAutoFlag}
|   |   |   |   |   61.0:    	(34.750282s|03.19%|98.68%)	(42x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:	(0.004868s|00.00%|00.01%)	(42x) ff "${A[@]}"
|   |   |   |   |   |   8.0:	(2.403218s|00.22%|07.13%)	(42x) sha1sum "${@}"
|   |   |   |   |   |   9.0:	(4.158714s|00.38%|10.70%)	(42x) sha256sum "${@}"
|   |   |   |   |   |   10.0:	(3.416254s|00.31%|09.99%)	(42x) sha512sum "${@}"
|   |   |   |   |   |   11.0:	(4.052912s|00.37%|10.29%)	(42x) sha224sum "${@}"
|   |   |   |   |   |   12.0:	(3.250313s|00.29%|09.30%)	(42x) sha384sum "${@}"
|   |   |   |   |   |   13.0:	(2.075948s|00.19%|06.34%)	(42x) md5sum "${@}"
|   |   |   |   |   |   14.0:	(1.001325s|00.09%|03.99%)	(42x) sum -s "${@}"
|   |   |   |   |   |   15.0:	(2.273046s|00.20%|06.48%)	(42x) sum -r "${@}"
|   |   |   |   |   |   16.0:	(0.911271s|00.08%|03.84%)	(42x) cksum "${@}"
|   |   |   |   |   |   17.0:	(2.836529s|00.26%|08.59%)	(42x) b2sum "${@}"
|   |   |   |   |   |   18.0:	(6.484154s|00.59%|15.15%)	(42x) cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0:	(0.955445s|00.08%|04.02%)	(42x) xxhsum "${@}"
|   |   |   |   |   |-- 20.0:	(0.926285s|00.08%|04.00%)	(42x) xxhsum -H3 "${@}"
|   |   |   |   |   56.1:    	(0.004663s|00.00%|00.01%)	(40x) ${nSpawnFlag}
|   |   |   |   |   59.0:    	(0.011599s|00.00%|00.03%)	(40x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 126.0:        	(0.000126s|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 1.0:        	(0.000954s|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   8.0:    	(0.000116s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p24
|   |   |   |   |   12.0:    	(0.020805s|00.00%|00.12%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p24; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.004720s|00.00%|00.02%)	(30x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p24
|   |   |   |   |   35.0:    	(0.008664s|00.00%|00.05%)	(29x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p24
|   |   |   |-- 126.0:        	(0.000126s|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 1.0:        	(0.000965s|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   8.0:    	(0.000160s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p25
|   |   |   |   |   12.0:    	(0.020696s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p25; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003512s|00.00%|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p25
|   |   |   |   |   35.0:    	(0.003501s|00.00%|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p25
|   |   |   |-- 126.0:        	(0.000123s|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 1.0:        	(0.000946s|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   8.0:    	(0.000124s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p26
|   |   |   |   |   12.0:    	(0.017923s|00.00%|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p26; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003330s|00.00%|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p26
|   |   |   |   |   35.0:    	(0.006217s|00.00%|00.03%)	(21x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p26
|   |   |   |-- 126.0:        	(0.000122s|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 1.0:        	(0.000960s|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   8.0:    	(0.000148s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.AX2tff"/.run/p27
|   |   |   |   |   12.0:    	(0.019211s|00.00%|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.AX2tff"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.AX2tff"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.AX2tff"/.run/p27; $'\n'printf '"'"'\n'"'"' >&20' EXIT
|   |   |   |   |   22.0:    	(0.003966s|00.00%|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.AX2tff"/.wait/p27
|   |   |   |   |   35.0:    	(0.003707s|00.00%|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.AX2tff"/.wait/p27
|   |   |   |-- 126.0:        	(0.000124s|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1356.0:            	(0.000154s|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:            	(0.000131s|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1358.0:            	(0.000102s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1361.0:            	(0.000102s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1366.0:            	(0.001122s|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:            	(0.000107s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1433.0:            	(0.000113s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1436.0:            	(0.000102s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1443.0:            	(23.392140s|02.14%|04.30%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:            	(0.000069s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1452.0:            	(0.000065s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -219.0:            	(0.000074s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -218.0:            	(0.000076s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -217.0:            	(0.000902s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -217.1:            	(0.003811s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -217.0:        	(0.003811s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -216.0:            	(0.000076s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -215.0:            	(0.001190s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -215.1:            	(0.003911s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -215.0:        	(0.003911s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |   -214.0:            	(0.000086s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -213.0:            	(0.000616s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   -213.1:            	(0.002251s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- -213.0:        	(0.002251s|00.00%|100.00%)	(1x) ${nSpawnFlag}
|   |   |-- -212.0:            	(0.015134s|00.00%)	(1x) ${nSpawnFlag}
|   |   1458.0:                	(0.000265s|00.00%)	(1x) wait
|-- |-- -219.0:                	(0.003317s|00.00%)	(1x) wait



TOTAL RUN TIME: 1088.538215s
