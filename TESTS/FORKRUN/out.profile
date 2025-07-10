375.0:                        	(543.150253s|99.99%)	(1x) << (FUNCTION): forkrun "${@}" >>
|
|-- 382.0:                    	(0.000792s|00.00%)	(1x) forkrun "${@}"
|   |	(2622.009143s|07.81%)	(572x) |   |
|   437.0:                    	(543.149461s|99.99%)	(1x) << (SUBSHELL): 1323578 >>
|   |-- 375.0:                	(0.030096s|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   439.0:                	(0.000072s|00.00%)	(1x) shopt -s extglob
|   |   442.0:                	(0.000074s|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   443.0:                	(0.000132s|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   444.0:                	(0.000103s|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   445.0:                	(0.000078s|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   446.0:                	(0.000066s|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   451.0:                	(0.000089s|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   454.0:                	(0.000096s|00.00%)	(1x) [[ $# == 0 ]]
|   |   454.1:                	(0.000114s|00.00%)	(1x) optParseFlag=true
|   |   455.0:                	(0.000098s|00.00%)	(1x) ${optParseFlag}
|   |   455.1:                	(0.000094s|00.00%)	(1x) (( $# > 0  ))
|   |   455.2:                	(0.000096s|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   652.0:                	(0.000067s|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   661.0:                	(0.000058s|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   661.1:                	(0.000059s|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   661.2:                	(0.000061s|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   661.3:                	(0.000059s|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   663.0:                	(0.001155s|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   663.1:                	(0.001982s|00.00%)	(1x) << (SUBSHELL): 1323578 >>
|   |   |-- 577.0:            	(0.001982s|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   664.0:                	(0.000065s|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   666.0:                	(0.001339s|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   667.0:                	(0.000121s|00.00%)	(1x) : > "${fPath}"
|   |   669.0:                	(0.000061s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   1831.0:                	(543.110600s|99.99%)	(1x) << (SUBSHELL): 1323582 >>
|   |   |-- 677.0:            	(0.000068s|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1831.0:            	(0.000127s|00.00%)	(1x) << (SUBSHELL): 1323583 >>
|   |   |   |-- 1831.0:        	(0.000904s|100.00%)	(1x) :
|   |   |   1831.1:            	(0.000117s|00.00%)	(1x) << (SUBSHELL): 1323584 >>
|   |   |   1831.2:            	(0.000134s|00.00%)	(1x) << (SUBSHELL): 1323585 >>
|   |   |   1831.3:            	(0.000200s|00.00%)	(1x) << (SUBSHELL): 1323586 >>
|   |   |   1831.4:            	(0.000093s|00.00%)	(1x) << (SUBSHELL): 1323587 >>
|   |   |   1831.5:            	(0.000233s|00.00%)	(1x) << (SUBSHELL): 1323588 >>
|   |   |   692.0:            	(0.000079s|00.00%)	(1x) LC_ALL=C
|   |   |   693.0:            	(0.000065s|00.00%)	(1x) LANG=C
|   |   |   694.0:            	(0.000061s|00.00%)	(1x) IFS=
|   |   |   696.0:            	(0.000230s|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   698.0:            	(0.000072s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   699.0:            	(0.000060s|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   700.0:            	(0.000062s|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   702.0:            	(0.000063s|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   704.0:            	(0.000063s|00.00%)	(1x) shopt -s nullglob
|   |   |   707.0:            	(0.000070s|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   709.0:            	(0.000079s|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   710.0:            	(0.000062s|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   715.0:            	(0.000059s|00.00%)	(1x) ${lseekFlag}
|   |   |   716.0:            	(0.000746s|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   716.1:            	(0.000101s|00.00%)	(1x) << (SUBSHELL): 1323589 >>
|   |   |   |-- 716.0:        	(0.000101s|100.00%)	(1x) lseek $fd_read 0
|   |   |   716.2:            	(0.000073s|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   720.0:            	(0.000061s|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   725.0:            	(0.000066s|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   727.0:            	(0.000062s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   728.0:            	(0.000060s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   728.1:            	(0.000060s|00.00%)	(1x) noFuncFlag=false
|   |   |   729.0:            	(0.000064s|00.00%)	(1x) ${noFuncFlag}
|   |   |   730.0:            	(0.000083s|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   734.0:            	(0.000064s|00.00%)	(1x) ${readBytesFlag}
|   |   |   796.0:            	(0.000061s|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   796.1:            	(0.000068s|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   797.0:            	(0.000061s|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   797.1:            	(0.000063s|00.00%)	(1x) nLines=1
|   |   |   801.0:            	(0.000060s|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   806.0:            	(0.000062s|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   2197.0:            	(0.000775s|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 2204.0:        	(0.000057s|07.35%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   2216.0:        	(0.000062s|08.00%)	(1x) local +i -l nn
|   |   |   |   2217.0:        	(0.000061s|07.87%)	(1x) local vOut
|   |   |   |   2219.0:        	(0.000062s|08.00%)	(1x) local -n vOut="$1"
|   |   |   |   2220.0:        	(0.000060s|07.74%)	(1x) shift 1
|   |   |   |   2221.0:        	(0.000063s|08.12%)	(1x) local -g vOut
|   |   |   |   2223.0:        	(0.000060s|07.74%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   2223.1:        	(0.000106s|13.67%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   2225.0:        	(0.000059s|07.61%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   2226.0:        	(0.000060s|07.74%)	(1x) [[ -n ${nn} ]]
|   |   |   |   2226.1:        	(0.000061s|07.87%)	(1x) continue
|   |   |   |-- 2236.0:        	(0.000064s|08.25%)	(1x) local +n vOut
|   |   |   812.0:            	(0.000062s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   814.0:            	(0.000923s|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   814.1:            	(0.002047s|00.00%)	(1x) << (SUBSHELL): 1323590 >>
|   |   |   |-- 814.0:        	(0.000252s|12.31%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 814.1:        	(0.001795s|87.68%)	(1x) nproc
|   |   |   815.0:            	(0.000064s|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   816.0:            	(0.000061s|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   816.1:            	(0.000059s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   816.2:            	(0.000060s|00.00%)	(1x) nProcs=${nCPU}
|   |   |   818.0:            	(0.000060s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   822.0:            	(0.000059s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   822.1:            	(0.000060s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   828.0:            	(0.000074s|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   830.0:            	(0.000069s|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   833.0:            	(0.000061s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   833.1:            	(0.000060s|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   833.2:            	(0.000070s|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   835.0:            	(0.000059s|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   838.0:            	(0.000063s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   844.0:            	(0.000143s|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   844.1:            	(0.000058s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   844.2:            	(0.000061s|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   847.0:            	(0.000058s|00.00%)	(1x) ${exportOrderFlag}
|   |   |   850.0:            	(0.000058s|00.00%)	(1x) ${readBytesFlag}
|   |   |   851.0:            	(0.000058s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   852.0:            	(0.000063s|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   873.0:            	(0.000058s|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   874.0:            	(0.000062s|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   875.0:            	(0.000062s|00.00%)	(1x) ${noFuncFlag}
|   |   |   875.1:            	(0.000063s|00.00%)	(1x) ${lseekFlag}
|   |   |   886.0:            	(0.000059s|00.00%)	(1x) ${unescapeFlag}
|   |   |   895.0:            	(0.000812s|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   895.1:            	(0.000114s|00.00%)	(1x) << (SUBSHELL): 1323592 >>
|   |   |   |-- 895.0:        	(0.000114s|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   896.0:            	(0.000062s|00.00%)	(1x) ${substituteStringFlag}
|   |   |   899.0:            	(0.000061s|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   905.0:            	(0.000067s|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   907.0:            	(0.001510s|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   908.0:            	(0.000060s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   911.0:            	(0.000064s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   913.0:            	(0.000060s|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   944.0:            	(0.000066s|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   946.0:            	(0.000074s|00.00%)	(1x) evfd_init
|   |   |   951.0:            	(0.000066s|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   953.0:            	(0.000064s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   957.0:            	(0.000059s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   967.0:            	(0.000481s|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   973.0:            	(0.064171s|00.01%)	(1x) << (SUBSHELL): 1323594 >>
|   |   |   |-- 973.0:        	(0.000157s|00.24%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   375.0:        	(0.007854s|12.23%)	(1x) trap - EXIT
|   |   |   |   375.1:        	(0.018317s|07.16%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   375.2:        	(0.018485s|07.22%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   375.3:        	(0.018396s|07.29%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   375.4:        	(0.018157s|07.11%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   981.0:        	(0.000057s|00.08%)	(1x) case ${writeFileProgType} in
|   |   |   |   982.0:        	(0.019239s|29.98%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   987.0:        	(0.000085s|00.13%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   988.0:        	(0.000069s|00.10%)	(1x) evfd_signal
|   |   |   |-- 989.0:        	(0.000061s|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   997.0:            	(0.000066s|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   1002.0:            	(0.000060s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1044.0:            	(0.000065s|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   1048.0:            	(0.000061s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   1050.0:            	(0.000394s|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   1060.0:            	(7.074309s|01.30%)	(1x) << (SUBSHELL): 1323595 >>
|   |   |   |-- 1060.0:        	(0.000156s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   375.0:        	(0.012768s|00.18%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   1068.0:        	(0.000061s|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1069.0:        	(0.000061s|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   1070.0:        	(0.000060s|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   1072.0:        	(0.000058s|00.00%)	(1x) nLinesRead=0
|   |   |   |   1074.0:        	(0.075437s|01.06%)	(1x) ${fallocateFlag}
|   |   |   |   1076.0:        	(5.813187s|82.17%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   1076.1:        	(0.001841s|00.02%)	(1x) continue
|   |   |   |   1078.0:        	(0.072895s|01.03%)	(1x) case ${REPLY} in
|   |   |   |   1092.0:        	(0.080701s|01.14%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1093.0:        	(0.000060s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1096.0:        	(0.000067s|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   1102.0:        	(0.075511s|01.06%)	(1x) ${lseekPosFlag}
|   |   |   |   1103.0:        	(0.077352s|01.09%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   1104.0:        	(0.076367s|01.07%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   1111.0:        	(0.071808s|01.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1111.1:        	(0.083218s|01.17%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   1113.0:        	(0.071990s|01.01%)	(1x) ${nSpawnFlag}
|   |   |   |   1115.0:        	(0.071939s|01.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1117.0:        	(0.000061s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1119.0:        	(0.000062s|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   1120.0:        	(0.000703s|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   1120.1:        	(0.003888s|00.05%)	(1x) << (SUBSHELL): 1323609 >>
|   |   |   |   |-- 1120.0:    	(0.003887s|99.97%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   1121.0:        	(0.000067s|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   1122.0:        	(0.000063s|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   1125.0:        	(0.000065s|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   1127.0:        	(0.000062s|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   1129.0:        	(0.000061s|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   1129.1:        	(0.000060s|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   1129.2:        	(0.000064s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   1131.0:        	(0.000086s|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   1134.0:        	(0.000060s|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1136.0:        	(0.000065s|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   1140.0:        	(0.074058s|01.04%)	(1x) ${fallocateFlag}
|   |   |   |   1141.0:        	(0.070914s|01.00%)	(1x) case ${nWait} in
|   |   |   |   1152.0:        	(0.069350s|00.98%)	(1x) ((nWait--))
|   |   |   |   1157.0:        	(0.078395s|01.10%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   1092.1:        	(0.084918s|01.20%)	(1x) ${nSpawnFlag}
|   |   |   |   1143.0:        	(0.002356s|00.03%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   1144.0:        	(0.002232s|00.03%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   1145.0:        	(0.055308s|00.78%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   1146.0:        	(0.002381s|00.03%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1147.0:        	(0.002337s|00.03%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   1149.0:        	(0.002481s|00.03%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   1086.0:        	(0.000116s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   1158.0:        	(0.000123s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   1159.0:        	(0.000117s|00.00%)	(1x) fallocateFlag=false
|   |   |   |   1160.0:        	(0.000121s|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   1074.1:        	(0.000112s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1074.2:        	(0.000124s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   160.0:        	(0.000145s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 160.1:        	(0.001111s|00.01%)	(1x) ${nSpawnFlag}
|   |   |   1168.0:            	(0.000065s|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   1169.0:            	(0.000089s|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   1205.0:            	(0.000080s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1674.0:            	(0.001105s|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1691.0:            	(0.005290s|00.00%)	(1x) << (SUBSHELL): 1323596 >>
|   |   |   |-- 1691.0:        	(0.000103s|01.94%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1692.0:        	(0.000064s|01.20%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1692.1:        	(0.000073s|01.37%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1700.0:        	(0.000210s|03.96%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1701.0:        	(0.000061s|01.15%)	(1x) ${readBytesFlag}
|   |   |   |   1773.0:        	(0.000058s|01.09%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1776.0:        	(0.000061s|01.15%)	(1x) echo "{"
|   |   |   |   1777.0:        	(0.000058s|01.09%)	(1x) ${nOrderFlag}
|   |   |   |   1778.0:        	(0.000058s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1778.1:        	(0.000061s|01.15%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1779.0:        	(0.000061s|01.15%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1780.0:        	(0.000058s|01.09%)	(1x) ${lseekFlag}
|   |   |   |   1780.1:        	(0.000064s|01.20%)	(1x) printf '%s ' '-t'
|   |   |   |   1781.0:        	(0.000062s|01.17%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1782.0:        	(0.000059s|01.11%)	(1x) ${pipeReadFlag}
|   |   |   |   1782.1:        	(0.000062s|01.17%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1783.0:        	(0.000058s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1783.1:        	(0.000059s|01.11%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1785.0:        	(0.000067s|01.26%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1786.0:        	(0.000058s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1786.1:        	(0.000058s|01.09%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1786.2:        	(0.000061s|01.15%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1787.0:        	(0.000059s|01.11%)	(1x) ${lseekFlag}
|   |   |   |   1790.0:        	(0.000066s|01.24%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1791.0:        	(0.000058s|01.09%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1794.0:        	(0.000078s|01.47%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1832.0:        	(0.000058s|01.09%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1837.0:        	(0.000083s|01.56%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1838.0:        	(0.000062s|01.17%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1839.0:        	(0.000058s|01.09%)	(1x) ${lseekFlag}
|   |   |   |   1839.1:        	(0.000076s|01.43%)	(1x) printf '\n'
|   |   |   |   1840.0:        	(0.000058s|01.09%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1841.0:        	(0.000090s|01.70%)	(1x) echo "}"
|   |   |   |   1843.0:        	(0.000059s|01.11%)	(1x) ${pipeReadFlag}
|   |   |   |   1843.1:        	(0.000060s|01.13%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1843.2:        	(0.000058s|01.09%)	(1x) ${readBytesFlag}
|   |   |   |   1843.3:        	(0.000085s|01.60%)	(1x) echo "}"
|   |   |   |   1844.0:        	(0.000070s|01.32%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1857.0:        	(0.000079s|01.49%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1858.0:        	(0.000059s|01.11%)	(1x) ${lseekPosFlag}
|   |   |   |   1861.0:        	(0.000072s|01.36%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1872.0:        	(0.000071s|01.34%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1873.0:        	(0.000060s|01.13%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1873.1:        	(0.000080s|01.51%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1874.0:        	(0.000064s|01.20%)	(1x) ${nOrderFlag}
|   |   |   |   1875.0:        	(0.000062s|01.17%)	(1x) ${nSpawnFlag}
|   |   |   |   1880.0:        	(0.000076s|01.43%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1881.0:        	(0.000062s|01.17%)	(1x) ${nOrderFlag}
|   |   |   |   1885.0:        	(0.000087s|01.64%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1886.0:        	(0.000060s|01.13%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1886.1:        	(0.000084s|01.58%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1891.0:        	(0.000058s|01.09%)	(1x) ${fallocateFlag}
|   |   |   |   1891.1:        	(0.000066s|01.24%)	(1x) printf '%s' ' || '
|   |   |   |   1892.0:        	(0.000060s|01.13%)	(1x) ${fallocateFlag}
|   |   |   |   1892.1:        	(0.000090s|01.70%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1893.0:        	(0.000059s|01.11%)	(1x) ${pipeReadFlag}
|   |   |   |   1893.1:        	(0.000059s|01.11%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1893.2:        	(0.000060s|01.13%)	(1x) ${readBytesFlag}
|   |   |   |   1893.3:        	(0.000072s|01.36%)	(1x) ${lseekFlag}
|   |   |   |   1901.0:        	(0.000057s|01.07%)	(1x) ${subshellRunFlag}
|   |   |   |   1901.1:        	(0.000066s|01.24%)	(1x) echo '{'
|   |   |   |   1902.0:        	(0.000058s|01.09%)	(1x) ${exportOrderFlag}
|   |   |   |   1902.1:        	(0.000064s|01.20%)	(1x) ${nOrderFlag}
|   |   |   |   1903.0:        	(0.000061s|01.15%)	(1x) ${exportOrderFlag}
|   |   |   |   1904.0:        	(0.000084s|01.58%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1905.0:        	(0.000060s|01.13%)	(1x) ${readBytesFlag}
|   |   |   |   1912.0:        	(0.000059s|01.11%)	(1x) ${stdinRunFlag}
|   |   |   |   1915.0:        	(0.000063s|01.19%)	(1x) ${noFuncFlag}
|   |   |   |   1918.0:        	(0.000057s|01.07%)	(1x) ${substituteStringFlag}
|   |   |   |   1919.0:        	(0.000093s|01.75%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1924.0:        	(0.000065s|01.22%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1936.0:        	(0.000062s|01.17%)	(1x) ${readBytesFlag}
|   |   |   |   1937.0:        	(0.000058s|01.09%)	(1x) ${subshellRunFlag}
|   |   |   |   1937.1:        	(0.000064s|01.20%)	(1x) printf '\n%s ' '}'
|   |   |   |   1938.0:        	(0.000065s|01.22%)	(1x) echo "${outStr}"
|   |   |   |   1939.0:        	(0.000063s|01.19%)	(1x) ${nOrderFlag}
|   |   |   |   1940.0:        	(0.000064s|01.20%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1945.0:        	(0.000075s|01.41%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1679.0:            	(0.000180s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1684.0:            	(0.000174s|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1689.0:            	(0.000164s|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   375.0:            	(0.026091s|00.00%)	(1x) trap "${exitTrapStr}" EXIT
|   |   |   375.1:            	(0.009150s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   375.2:            	(0.009027s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   375.3:            	(0.008849s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1708.0:            	(0.000059s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1709.0:            	(0.000062s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1711.0:            	(0.000057s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1722.0:            	(0.000071s|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1725.0:            	(0.000057s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1726.0:            	(0.002609s|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1726.1:            	(0.002591s|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1727.0:            	(0.002391s|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   154.0:            	(512.482385s|94.36%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 161.0:        	(0.000540s|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   164.0:        	(17.162659s|99.99%)	(1x) << (SUBSHELL): 1323597 >>
|   |   |   |   |-- 164.0:    	(0.003905s|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.bC9on4"
|   |   |   |   |   166.0:    	(0.000202s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p0
|   |   |   |   |   375.0:    	(0.010465s|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p0; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   375.1:    	(0.372545s|00.06%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 1323582 ${BASHPID}' INT
|   |   |   |   |   375.2:    	(0.372994s|00.06%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 1323582 ${BASHPID}' TERM
|   |   |   |   |   375.3:    	(0.372962s|00.06%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 1323582 ${BASHPID}' HUP
|   |   |   |   |   375.4:    	(0.366044s|00.06%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   177.0:    	(0.100701s|00.01%)	(1x) true
|   |   |   |   |   178.0:    	(0.093956s|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.089714s|00.01%)	(1x) read -r < "/dev/shm/.forkrun.bC9on4"/.nLines
|   |   |   |   |   178.2:    	(0.002704s|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   178.3:    	(0.002670s|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   180.0:    	(0.004260s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p0
|   |   |   |   |   181.0:    	(4.673002s|00.91%)	(1x) read -r -u 11 _
|   |   |   |   |   182.0:    	(0.087281s|00.01%)	(1x) [[ -f "/dev/shm/.forkrun.bC9on4"/.quit ]]
|   |   |   |   |   186.0:    	(0.099148s|00.01%)	(1x) [[ -f "/dev/shm/.forkrun.bC9on4"/.done ]]
|   |   |   |   |   186.1:    	(0.080520s|00.01%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.084769s|00.01%)	(1x) evfd_wait 22
|   |   |   |   |   189.0:    	(0.909862s|00.17%)	(1x) mapfile -t -n ${nLinesCur} -u 24 A
|   |   |   |   |   191.0:    	(0.077228s|00.00%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.091971s|00.01%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.151433s|00.02%)	(1x) printf '\n' 1>&11
|   |   |   |   |   205.0:    	(0.004188s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p0
|   |   |   |   |   206.0:    	(0.089156s|00.01%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.100725s|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   227.0:    	(0.003115s|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   228.0:    	(0.002687s|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   152.0:    	(503.361399s|98.20%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.074367s|00.01%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(34.664166s|06.90%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(59.687967s|10.48%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(48.499086s|09.63%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(59.034227s|10.41%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(47.177516s|09.22%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(30.967209s|06.38%)	(1x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(15.200113s|04.11%)	(1x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(32.430546s|06.34%)	(1x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(13.477604s|03.88%)	(1x) cksum "${@}"
|   |   |   |   |   |   168.0:	(40.930116s|08.63%)	(1x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(91.653783s|15.19%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(14.994200s|04.30%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(14.570499s|04.30%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   228.1:    	(0.002590s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   226.1:    	(0.091849s|00.01%)	(1x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.129591s|00.02%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   207.0:    	(0.000273s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   216.0:    	(0.000228s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   217.0:    	(0.000243s|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   219.0:    	(0.003628s|00.01%)	(1x) : > "/dev/shm/.forkrun.bC9on4"/.quit
|   |   |   |   |   220.0:    	(0.000376s|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.bC9on4"/.run/p* 1>&11
|   |   |   |   |   221.0:    	(0.000256s|00.00%)	(1x) break
|   |   |   |   |   160.0:    	(0.003104s|00.00%)	(1x) break
|   |   |   |   |   161.0:    	(0.002597s|00.00%)	(1x) break
|   |   |   |   |   161.1:    	(0.041808s|00.00%)	(1x) break
|   |   |   |   |-- 162.0:    	(0.002909s|00.00%)	(1x) break
|   |   |   |-- 237.0:        	(0.000090s|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 161.0:        	(0.000594s|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   164.0:        	(20.548247s|99.99%)	(1x) << (SUBSHELL): 1323598 >>
|   |   |   |   |   166.0:    	(0.002251s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p1
|   |   |   |   |   375.0:    	(0.008674s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p1; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.087226s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p1
|   |   |   |   |   205.0:    	(0.076554s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p1
|   |   |   |   |   183.0:    	(0.002568s|00.00%)	(1x) printf '\n' 1>&11
|   |   |   |   |   184.0:    	(0.002511s|00.00%)	(1x) break
|   |   |   |-- 237.0:        	(0.000079s|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 161.0:        	(0.000562s|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   164.0:        	(17.706875s|99.99%)	(1x) << (SUBSHELL): 1323599 >>
|   |   |   |   |   166.0:    	(0.002543s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p2
|   |   |   |   |   375.0:    	(0.011319s|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p2; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.068210s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p2
|   |   |   |   |   205.0:    	(0.063611s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p2
|   |   |   |-- 237.0:        	(0.000084s|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 161.0:        	(0.000537s|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   164.0:        	(17.222993s|99.99%)	(1x) << (SUBSHELL): 1323600 >>
|   |   |   |   |   166.0:    	(0.000085s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p3
|   |   |   |   |   375.0:    	(0.008907s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p3; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004219s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p3
|   |   |   |   |   205.0:    	(0.006986s|00.04%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p3
|   |   |   |-- 237.0:        	(0.000074s|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 161.0:        	(0.000534s|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   164.0:        	(18.177653s|99.99%)	(1x) << (SUBSHELL): 1323601 >>
|   |   |   |   |   166.0:    	(0.000090s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p4
|   |   |   |   |   375.0:    	(0.008783s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p4; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.001468s|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p4
|   |   |   |   |   205.0:    	(0.001238s|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p4
|   |   |   |-- 237.0:        	(0.000074s|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 161.0:        	(0.000567s|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   164.0:        	(20.880071s|99.99%)	(1x) << (SUBSHELL): 1323602 >>
|   |   |   |   |   166.0:    	(0.000300s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p5
|   |   |   |   |   375.0:    	(0.010064s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p5; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.003027s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p5
|   |   |   |   |   205.0:    	(0.002833s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p5
|   |   |   |-- 237.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 161.0:        	(0.000539s|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   164.0:        	(17.419718s|99.99%)	(1x) << (SUBSHELL): 1323603 >>
|   |   |   |   |   166.0:    	(0.000109s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p6
|   |   |   |   |   375.0:    	(0.008882s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p6; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004135s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p6
|   |   |   |   |   205.0:    	(0.003773s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p6
|   |   |   |-- 237.0:        	(0.000081s|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 161.0:        	(0.000556s|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   164.0:        	(19.494901s|99.99%)	(1x) << (SUBSHELL): 1323604 >>
|   |   |   |   |   166.0:    	(0.000145s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p7
|   |   |   |   |   375.0:    	(0.009709s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p7; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004511s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p7
|   |   |   |   |   205.0:    	(0.004141s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p7
|   |   |   |-- 237.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 161.0:        	(0.000568s|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   164.0:        	(17.821107s|99.99%)	(1x) << (SUBSHELL): 1323605 >>
|   |   |   |   |   166.0:    	(0.000301s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p8
|   |   |   |   |   375.0:    	(0.009098s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p8; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.003872s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p8
|   |   |   |   |   205.0:    	(0.003782s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p8
|   |   |   |-- 237.0:        	(0.000074s|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 161.0:        	(0.000563s|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   164.0:        	(17.963058s|99.99%)	(1x) << (SUBSHELL): 1323606 >>
|   |   |   |   |   166.0:    	(0.000118s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p9
|   |   |   |   |   375.0:    	(0.010914s|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p9; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004148s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p9
|   |   |   |   |   205.0:    	(0.004074s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p9
|   |   |   |-- 237.0:        	(0.000076s|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 161.0:        	(0.000590s|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   164.0:        	(17.160566s|99.99%)	(1x) << (SUBSHELL): 1323610 >>
|   |   |   |   |   166.0:    	(0.000087s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p10
|   |   |   |   |   375.0:    	(0.009679s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p10; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004118s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p10
|   |   |   |   |   205.0:    	(0.003981s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p10
|   |   |   |-- 237.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 161.0:        	(0.000568s|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   164.0:        	(17.990058s|99.99%)	(1x) << (SUBSHELL): 1323617 >>
|   |   |   |   |   166.0:    	(0.000086s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p11
|   |   |   |   |   375.0:    	(0.008965s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p11; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004011s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p11
|   |   |   |   |   205.0:    	(0.003809s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p11
|   |   |   |-- 237.0:        	(0.000087s|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 161.0:        	(0.000597s|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   164.0:        	(17.559934s|99.99%)	(1x) << (SUBSHELL): 1323627 >>
|   |   |   |   |   166.0:    	(0.000083s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p12
|   |   |   |   |   375.0:    	(0.009121s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p12; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004231s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p12
|   |   |   |   |   205.0:    	(0.003996s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p12
|   |   |   |-- 237.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 161.0:        	(0.000787s|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   164.0:        	(21.040430s|99.99%)	(1x) << (SUBSHELL): 1323643 >>
|   |   |   |   |   166.0:    	(0.000134s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p13
|   |   |   |   |   375.0:    	(0.017192s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p13; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004425s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p13
|   |   |   |   |   205.0:    	(0.004368s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p13
|   |   |   |-- 237.0:        	(0.000145s|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 161.0:        	(0.000860s|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   164.0:        	(17.239433s|99.99%)	(1x) << (SUBSHELL): 1323654 >>
|   |   |   |   |   166.0:    	(0.000088s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p14
|   |   |   |   |   375.0:    	(0.008980s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p14; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004532s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p14
|   |   |   |   |   205.0:    	(0.004143s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p14
|   |   |   |-- 237.0:        	(0.000124s|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 161.0:        	(0.000902s|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   164.0:        	(17.205961s|99.99%)	(1x) << (SUBSHELL): 1323665 >>
|   |   |   |   |   166.0:    	(0.000088s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p15
|   |   |   |   |   375.0:    	(0.008887s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p15; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004116s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p15
|   |   |   |   |   205.0:    	(0.003854s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p15
|   |   |   |-- 237.0:        	(0.000122s|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 161.0:        	(0.000942s|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   164.0:        	(17.684628s|99.99%)	(1x) << (SUBSHELL): 1323674 >>
|   |   |   |   |   166.0:    	(0.000088s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p16
|   |   |   |   |   375.0:    	(0.010495s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p16; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.006182s|00.03%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p16
|   |   |   |   |   205.0:    	(0.002982s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p16
|   |   |   |-- 237.0:        	(0.000118s|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 161.0:        	(0.000895s|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   164.0:        	(18.404164s|99.99%)	(1x) << (SUBSHELL): 1323678 >>
|   |   |   |   |   166.0:    	(0.000154s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p17
|   |   |   |   |   375.0:    	(0.009930s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p17; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.002971s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p17
|   |   |   |   |   205.0:    	(0.002759s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p17
|   |   |   |-- 237.0:        	(0.000132s|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 161.0:        	(0.000912s|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   164.0:        	(22.319491s|99.99%)	(1x) << (SUBSHELL): 1323685 >>
|   |   |   |   |   166.0:    	(0.000085s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p18
|   |   |   |   |   375.0:    	(0.011346s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p18; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.003812s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p18
|   |   |   |   |   205.0:    	(0.003500s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p18
|   |   |   |-- 237.0:        	(0.000123s|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 161.0:        	(0.000957s|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   164.0:        	(18.466006s|99.99%)	(1x) << (SUBSHELL): 1323690 >>
|   |   |   |   |   166.0:    	(0.000088s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p19
|   |   |   |   |   375.0:    	(0.014813s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p19; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.003897s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p19
|   |   |   |   |   205.0:    	(0.003579s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p19
|   |   |   |-- 237.0:        	(0.000120s|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 161.0:        	(0.001020s|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   164.0:        	(17.129697s|99.99%)	(1x) << (SUBSHELL): 1323697 >>
|   |   |   |   |   166.0:    	(0.000160s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p20
|   |   |   |   |   375.0:    	(0.019060s|00.11%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p20; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004468s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p20
|   |   |   |   |   205.0:    	(0.004010s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p20
|   |   |   |-- 237.0:        	(0.000120s|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 161.0:        	(0.000901s|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   164.0:        	(17.798583s|99.99%)	(1x) << (SUBSHELL): 1323703 >>
|   |   |   |   |   166.0:    	(0.000134s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p21
|   |   |   |   |   375.0:    	(0.017180s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p21; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.006042s|00.03%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p21
|   |   |   |   |   205.0:    	(0.003956s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p21
|   |   |   |-- 237.0:        	(0.000130s|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 161.0:        	(0.000986s|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   164.0:        	(20.801919s|99.99%)	(1x) << (SUBSHELL): 1323711 >>
|   |   |   |   |   166.0:    	(0.000154s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p22
|   |   |   |   |   375.0:    	(0.019230s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p22; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.002883s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p22
|   |   |   |   |   205.0:    	(0.002728s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p22
|   |   |   |-- 237.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 161.0:        	(0.000965s|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   164.0:        	(17.280752s|99.99%)	(1x) << (SUBSHELL): 1323716 >>
|   |   |   |   |   166.0:    	(0.000160s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p23
|   |   |   |   |   375.0:    	(0.018142s|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p23; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004266s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p23
|   |   |   |   |   205.0:    	(0.004078s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p23
|   |   |   |-- 237.0:        	(0.000129s|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 161.0:        	(0.000867s|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   164.0:        	(17.391856s|99.99%)	(1x) << (SUBSHELL): 1323728 >>
|   |   |   |   |   166.0:    	(0.000133s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p24
|   |   |   |   |   375.0:    	(0.017226s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p24; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.004375s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p24
|   |   |   |   |   205.0:    	(0.004167s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p24
|   |   |   |-- 237.0:        	(0.000132s|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 161.0:        	(0.000937s|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   164.0:        	(17.751217s|99.99%)	(1x) << (SUBSHELL): 1323735 >>
|   |   |   |   |   166.0:    	(0.000143s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p25
|   |   |   |   |   375.0:    	(0.017046s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p25; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.003873s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p25
|   |   |   |   |   205.0:    	(0.003613s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p25
|   |   |   |-- 237.0:        	(0.000123s|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 161.0:        	(0.001022s|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   164.0:        	(17.564439s|99.99%)	(1x) << (SUBSHELL): 1323743 >>
|   |   |   |   |   166.0:    	(0.000135s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p26
|   |   |   |   |   375.0:    	(0.016995s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p26; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.002715s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p26
|   |   |   |   |   205.0:    	(0.002555s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p26
|   |   |   |-- 237.0:        	(0.000127s|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 161.0:        	(0.001044s|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   164.0:        	(17.271697s|99.99%)	(1x) << (SUBSHELL): 1323752 >>
|   |   |   |   |   166.0:    	(0.000144s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.bC9on4"/.run/p27
|   |   |   |   |   375.0:    	(0.032265s|00.18%)	(1x) trap ': >"/dev/shm/.forkrun.bC9on4"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.bC9on4"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.bC9on4"/.run/p27; $'\n'printf '"'"'\n'"'"' >&11' EXIT
|   |   |   |   |   180.0:    	(0.003834s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.bC9on4"/.wait/p27
|   |   |   |   |   205.0:    	(0.003703s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.bC9on4"/.wait/p27
|   |   |   |-- 237.0:        	(0.000127s|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1730.0:            	(0.000141s|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1731.0:            	(0.000137s|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1732.0:            	(0.000111s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1735.0:            	(0.000100s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1740.0:            	(0.001125s|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1745.0:            	(0.000106s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1807.0:            	(0.000097s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1810.0:            	(0.000112s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1817.0:            	(23.394182s|04.30%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1821.0:            	(0.000221s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1826.0:            	(0.000082s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   160.0:            	(0.000096s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   161.0:            	(0.000100s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   162.0:            	(0.000671s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   162.1:            	(0.002271s|00.00%)	(1x) << (SUBSHELL): 1323582 >>
|   |   |   |-- 76.0:        	(0.002271s|100.00%)	(1x) ${nSpawnFlag}
|   |   |   163.0:            	(0.000097s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   164.0:            	(0.001684s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   164.1:            	(0.003752s|00.00%)	(1x) << (SUBSHELL): 1323582 >>
|   |   |   |-- 78.0:        	(0.003752s|100.00%)	(1x) ${nSpawnFlag}
|   |   |   165.0:            	(0.000082s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   166.0:            	(0.000610s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   166.1:            	(0.002230s|00.00%)	(1x) << (SUBSHELL): 1323582 >>
|   |   |-- |-- 80.0:        	(0.002230s|100.00%)	(1x) ${nSpawnFlag}
|   |   1832.0:                	(0.000269s|00.00%)	(1x) wait
|   |-- 160.0:                	(0.002357s|00.00%)	(1x) wait
|-- |	(0.002230s|50.00%)	(2x) |-- |
|

221.0:                        	(0.000117s|00.00%)	(1x) 0<&0
|
|



TOTAL RUN TIME: 543.150370s
