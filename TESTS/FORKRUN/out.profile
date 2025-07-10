375.0:                        	(543.528603s|99.99%)	(1x) << (FUNCTION): forkrun "${@}" >>
|-- 382.0:                    	(0.000879s|00.00%)	(1x) forkrun "${@}"
|
|   437.0:                    	(543.527724s|99.99%)	(1x) << (SUBSHELL) >>
|   |-- 375.0:                	(0.027269s|00.00%)	(2x) trap - EXIT INT TERM HUP USR1
|   |   439.0:                	(0.000067s|00.00%)	(1x) shopt -s extglob
|   |   442.0:                	(0.000088s|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   443.0:                	(0.000135s|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   444.0:                	(0.000098s|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   445.0:                	(0.000077s|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   446.0:                	(0.000065s|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   451.0:                	(0.000065s|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   454.0:                	(0.000061s|00.00%)	(1x) [[ $# == 0 ]]
|   |   454.1:                	(0.000061s|00.00%)	(1x) optParseFlag=true
|   |   455.0:                	(0.000058s|00.00%)	(1x) ${optParseFlag}
|   |   455.1:                	(0.000060s|00.00%)	(1x) (( $# > 0  ))
|   |   455.2:                	(0.000064s|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   652.0:                	(0.000066s|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   661.0:                	(0.000058s|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   661.1:                	(0.000063s|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   661.2:                	(0.000060s|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   661.3:                	(0.000059s|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   663.0:                	(0.000768s|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   663.1:                	(0.002366s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- 577.0:            	(0.002366s|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   664.0:                	(0.000061s|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   666.0:                	(0.001027s|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   667.0:                	(0.000083s|00.00%)	(1x) : > "${fPath}"
|   |   669.0:                	(0.000058s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   677.0:                	(543.491556s|99.99%)	(1x) << (SUBSHELL) >>
|   |   |-- 677.0:            	(0.000074s|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1831.0:            	(0.000240s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1831.0:        	(0.001452s|100.00%)	(6x) :
|   |   |   1831.1:            	(0.000238s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1831.2:            	(0.000254s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1831.3:            	(0.000239s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1831.4:            	(0.000242s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   1831.5:            	(0.000239s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   692.0:            	(0.000071s|00.00%)	(1x) LC_ALL=C
|   |   |   693.0:            	(0.000064s|00.00%)	(1x) LANG=C
|   |   |   694.0:            	(0.000068s|00.00%)	(1x) IFS=
|   |   |   696.0:            	(0.000229s|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   698.0:            	(0.000071s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   699.0:            	(0.000060s|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   700.0:            	(0.000064s|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   702.0:            	(0.000062s|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   704.0:            	(0.000073s|00.00%)	(1x) shopt -s nullglob
|   |   |   707.0:            	(0.000071s|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   709.0:            	(0.000074s|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   710.0:            	(0.000067s|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   715.0:            	(0.000061s|00.00%)	(1x) ${lseekFlag}
|   |   |   716.0:            	(0.000548s|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   716.1:            	(0.000109s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 716.0:        	(0.000109s|100.00%)	(1x) lseek $fd_read 0
|   |   |   716.2:            	(0.000067s|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   720.0:            	(0.000061s|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   725.0:            	(0.000068s|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   727.0:            	(0.000063s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   728.0:            	(0.000061s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   728.1:            	(0.000060s|00.00%)	(1x) noFuncFlag=false
|   |   |   729.0:            	(0.000062s|00.00%)	(1x) ${noFuncFlag}
|   |   |   730.0:            	(0.000079s|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   734.0:            	(0.000065s|00.00%)	(1x) ${readBytesFlag}
|   |   |   796.0:            	(0.000067s|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   796.1:            	(0.000067s|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   797.0:            	(0.000058s|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   797.1:            	(0.000060s|00.00%)	(1x) nLines=1
|   |   |   801.0:            	(0.000060s|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   806.0:            	(0.000062s|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   2197.0:            	(0.000754s|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 2204.0:        	(0.000056s|07.42%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   2216.0:        	(0.000062s|08.22%)	(1x) local +i -l nn
|   |   |   |   2217.0:        	(0.000059s|07.82%)	(1x) local vOut
|   |   |   |   2219.0:        	(0.000059s|07.82%)	(1x) local -n vOut="$1"
|   |   |   |   2220.0:        	(0.000059s|07.82%)	(1x) shift 1
|   |   |   |   2221.0:        	(0.000062s|08.22%)	(1x) local -g vOut
|   |   |   |   2223.0:        	(0.000058s|07.69%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   2223.1:        	(0.000101s|13.39%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   2225.0:        	(0.000057s|07.55%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   2226.0:        	(0.000061s|08.09%)	(1x) [[ -n ${nn} ]]
|   |   |   |   2226.1:        	(0.000059s|07.82%)	(1x) continue
|   |   |   |-- 2236.0:        	(0.000061s|08.09%)	(1x) local +n vOut
|   |   |   812.0:            	(0.000060s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   814.0:            	(0.000682s|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   814.1:            	(0.001971s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 814.0:        	(0.000189s|09.58%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 814.1:        	(0.001782s|90.41%)	(1x) nproc
|   |   |   815.0:            	(0.000062s|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   816.0:            	(0.000058s|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   816.1:            	(0.000061s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   816.2:            	(0.000060s|00.00%)	(1x) nProcs=${nCPU}
|   |   |   818.0:            	(0.000058s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   822.0:            	(0.000057s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   822.1:            	(0.000059s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   828.0:            	(0.000074s|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   830.0:            	(0.000086s|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   833.0:            	(0.000059s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   833.1:            	(0.000059s|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   833.2:            	(0.000075s|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   835.0:            	(0.000059s|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   838.0:            	(0.000063s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   844.0:            	(0.000135s|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   844.1:            	(0.000058s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   844.2:            	(0.000059s|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   847.0:            	(0.000061s|00.00%)	(1x) ${exportOrderFlag}
|   |   |   850.0:            	(0.000057s|00.00%)	(1x) ${readBytesFlag}
|   |   |   851.0:            	(0.000062s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   852.0:            	(0.000062s|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   873.0:            	(0.000057s|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   874.0:            	(0.000056s|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   875.0:            	(0.000056s|00.00%)	(1x) ${noFuncFlag}
|   |   |   875.1:            	(0.000064s|00.00%)	(1x) ${lseekFlag}
|   |   |   886.0:            	(0.000058s|00.00%)	(1x) ${unescapeFlag}
|   |   |   895.0:            	(0.000586s|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   895.1:            	(0.000088s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 895.0:        	(0.000088s|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   896.0:            	(0.000061s|00.00%)	(1x) ${substituteStringFlag}
|   |   |   899.0:            	(0.000059s|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   905.0:            	(0.000060s|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   907.0:            	(0.001557s|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   908.0:            	(0.000060s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   911.0:            	(0.000068s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   913.0:            	(0.000064s|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   944.0:            	(0.000065s|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   946.0:            	(0.000078s|00.00%)	(1x) evfd_init
|   |   |   951.0:            	(0.000067s|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   953.0:            	(0.000060s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   957.0:            	(0.000057s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   967.0:            	(0.000467s|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   973.0:            	(0.063833s|00.01%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 973.0:        	(0.000098s|00.15%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   375.0:        	(0.007843s|12.28%)	(1x) trap - EXIT
|   |   |   |   375.1:        	(0.018223s|07.20%)	(2x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   375.2:        	(0.018412s|07.23%)	(2x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   375.3:        	(0.018393s|07.29%)	(2x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   375.4:        	(0.018266s|07.22%)	(2x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   981.0:        	(0.000059s|00.09%)	(1x) case ${writeFileProgType} in
|   |   |   |   982.0:        	(0.018966s|29.71%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   987.0:        	(0.000085s|00.13%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   988.0:        	(0.000066s|00.10%)	(1x) evfd_signal
|   |   |   |-- 989.0:        	(0.000059s|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   997.0:            	(0.000070s|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   1002.0:            	(0.000058s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1044.0:            	(0.000063s|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   1048.0:            	(0.000059s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   1050.0:            	(0.000409s|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   1060.0:            	(7.043681s|01.29%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1060.0:        	(0.000095s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   375.0:        	(0.010244s|00.14%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   1068.0:        	(0.000060s|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   1069.0:        	(0.000062s|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   1070.0:        	(0.000059s|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   1072.0:        	(0.000058s|00.00%)	(1x) nLinesRead=0
|   |   |   |   1074.0:        	(0.076066s|01.07%)	(679x) ${fallocateFlag}
|   |   |   |   1076.0:        	(5.763641s|81.82%)	(678x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   1076.1:        	(0.001488s|00.02%)	(11x) continue
|   |   |   |   1078.0:        	(0.073707s|01.04%)	(667x) case ${REPLY} in
|   |   |   |   1092.0:        	(0.076497s|01.08%)	(666x) ${nLinesAutoFlag}
|   |   |   |   1093.0:        	(0.000083s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1096.0:        	(0.000090s|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   1102.0:        	(0.076512s|01.08%)	(667x) ${lseekPosFlag}
|   |   |   |   1103.0:        	(0.091099s|01.29%)	(667x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   1104.0:        	(0.080019s|01.13%)	(667x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   1111.0:        	(0.072549s|01.02%)	(667x) ${nLinesAutoFlag}
|   |   |   |   1111.1:        	(0.083683s|01.18%)	(667x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   1113.0:        	(0.075664s|01.07%)	(667x) ${nSpawnFlag}
|   |   |   |   1115.0:        	(0.073198s|01.03%)	(667x) ${nLinesAutoFlag}
|   |   |   |   1117.0:        	(0.000082s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   1119.0:        	(0.000085s|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   1120.0:        	(0.000573s|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   1120.1:        	(0.002472s|00.03%)	(1x) << (SUBSHELL) >>
|   |   |   |   |-- 1120.0:    	(0.002471s|99.95%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   1121.0:        	(0.000068s|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   1122.0:        	(0.000064s|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   1125.0:        	(0.000066s|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   1127.0:        	(0.000067s|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   1129.0:        	(0.000062s|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   1129.1:        	(0.000060s|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   1129.2:        	(0.000061s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   1131.0:        	(0.000094s|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   1134.0:        	(0.000061s|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1136.0:        	(0.000061s|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   1140.0:        	(0.072809s|01.03%)	(667x) ${fallocateFlag}
|   |   |   |   1141.0:        	(0.071801s|01.01%)	(667x) case ${nWait} in
|   |   |   |   1152.0:        	(0.071009s|01.00%)	(646x) ((nWait--))
|   |   |   |   1157.0:        	(0.075980s|01.07%)	(667x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   1092.1:        	(0.078756s|01.11%)	(665x) ${nSpawnFlag}
|   |   |   |   1143.0:        	(0.002473s|00.03%)	(21x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   1144.0:        	(0.004437s|00.06%)	(21x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   1145.0:        	(0.061521s|00.87%)	(21x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   1146.0:        	(0.002447s|00.03%)	(21x) (( ${verboseLevel} > 2 ))
|   |   |   |   1147.0:        	(0.002362s|00.03%)	(21x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   1149.0:        	(0.002545s|00.03%)	(21x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   1086.0:        	(0.000105s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   1158.0:        	(0.000102s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   1159.0:        	(0.000110s|00.00%)	(1x) fallocateFlag=false
|   |   |   |   1160.0:        	(0.000069s|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   1074.1:        	(0.000119s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1074.2:        	(0.000113s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   160.0:        	(0.000101s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 160.1:        	(0.001435s|00.02%)	(1x) ${nSpawnFlag}
|   |   |   1168.0:            	(0.000067s|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   1169.0:            	(0.000092s|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   1205.0:            	(0.000080s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1674.0:            	(0.001250s|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1691.0:            	(0.005616s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 1691.0:        	(0.000140s|02.49%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1692.0:        	(0.000085s|01.51%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1692.1:        	(0.000101s|01.79%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1700.0:        	(0.000291s|05.18%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1701.0:        	(0.000061s|01.08%)	(1x) ${readBytesFlag}
|   |   |   |   1773.0:        	(0.000059s|01.05%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1776.0:        	(0.000062s|01.10%)	(1x) echo "{"
|   |   |   |   1777.0:        	(0.000059s|01.05%)	(1x) ${nOrderFlag}
|   |   |   |   1778.0:        	(0.000060s|01.06%)	(1x) ${pipeReadFlag}
|   |   |   |   1778.1:        	(0.000062s|01.10%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1779.0:        	(0.000062s|01.10%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1780.0:        	(0.000063s|01.12%)	(1x) ${lseekFlag}
|   |   |   |   1780.1:        	(0.000062s|01.10%)	(1x) printf '%s ' '-t'
|   |   |   |   1781.0:        	(0.000064s|01.13%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1782.0:        	(0.000059s|01.05%)	(1x) ${pipeReadFlag}
|   |   |   |   1782.1:        	(0.000063s|01.12%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1783.0:        	(0.000058s|01.03%)	(1x) ${pipeReadFlag}
|   |   |   |   1783.1:        	(0.000059s|01.05%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1785.0:        	(0.000064s|01.13%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1786.0:        	(0.000059s|01.05%)	(1x) ${pipeReadFlag}
|   |   |   |   1786.1:        	(0.000066s|01.17%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1786.2:        	(0.000063s|01.12%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1787.0:        	(0.000060s|01.06%)	(1x) ${lseekFlag}
|   |   |   |   1790.0:        	(0.000065s|01.15%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1791.0:        	(0.000060s|01.06%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1794.0:        	(0.000064s|01.13%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1832.0:        	(0.000061s|01.08%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1837.0:        	(0.000068s|01.21%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1838.0:        	(0.000063s|01.12%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1839.0:        	(0.000060s|01.06%)	(1x) ${lseekFlag}
|   |   |   |   1839.1:        	(0.000077s|01.37%)	(1x) printf '\n'
|   |   |   |   1840.0:        	(0.000060s|01.06%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1841.0:        	(0.000091s|01.62%)	(1x) echo "}"
|   |   |   |   1843.0:        	(0.000059s|01.05%)	(1x) ${pipeReadFlag}
|   |   |   |   1843.1:        	(0.000076s|01.35%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1843.2:        	(0.000060s|01.06%)	(1x) ${readBytesFlag}
|   |   |   |   1843.3:        	(0.000118s|02.10%)	(1x) echo "}"
|   |   |   |   1844.0:        	(0.000067s|01.19%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1857.0:        	(0.000106s|01.88%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1858.0:        	(0.000060s|01.06%)	(1x) ${lseekPosFlag}
|   |   |   |   1861.0:        	(0.000072s|01.28%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1872.0:        	(0.000078s|01.38%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1873.0:        	(0.000061s|01.08%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1873.1:        	(0.000082s|01.46%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1874.0:        	(0.000064s|01.13%)	(1x) ${nOrderFlag}
|   |   |   |   1875.0:        	(0.000074s|01.31%)	(1x) ${nSpawnFlag}
|   |   |   |   1880.0:        	(0.000086s|01.53%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1881.0:        	(0.000063s|01.12%)	(1x) ${nOrderFlag}
|   |   |   |   1885.0:        	(0.000099s|01.76%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1886.0:        	(0.000061s|01.08%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1886.1:        	(0.000070s|01.24%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1891.0:        	(0.000060s|01.06%)	(1x) ${fallocateFlag}
|   |   |   |   1891.1:        	(0.000067s|01.19%)	(1x) printf '%s' ' || '
|   |   |   |   1892.0:        	(0.000060s|01.06%)	(1x) ${fallocateFlag}
|   |   |   |   1892.1:        	(0.000075s|01.33%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1893.0:        	(0.000060s|01.06%)	(1x) ${pipeReadFlag}
|   |   |   |   1893.1:        	(0.000058s|01.03%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1893.2:        	(0.000059s|01.05%)	(1x) ${readBytesFlag}
|   |   |   |   1893.3:        	(0.000065s|01.15%)	(1x) ${lseekFlag}
|   |   |   |   1901.0:        	(0.000059s|01.05%)	(1x) ${subshellRunFlag}
|   |   |   |   1901.1:        	(0.000082s|01.46%)	(1x) echo '{'
|   |   |   |   1902.0:        	(0.000061s|01.08%)	(1x) ${exportOrderFlag}
|   |   |   |   1902.1:        	(0.000073s|01.29%)	(1x) ${nOrderFlag}
|   |   |   |   1903.0:        	(0.000062s|01.10%)	(1x) ${exportOrderFlag}
|   |   |   |   1904.0:        	(0.000084s|01.49%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1905.0:        	(0.000060s|01.06%)	(1x) ${readBytesFlag}
|   |   |   |   1912.0:        	(0.000059s|01.05%)	(1x) ${stdinRunFlag}
|   |   |   |   1915.0:        	(0.000057s|01.01%)	(1x) ${noFuncFlag}
|   |   |   |   1918.0:        	(0.000058s|01.03%)	(1x) ${substituteStringFlag}
|   |   |   |   1919.0:        	(0.000097s|01.72%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1924.0:        	(0.000065s|01.15%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1936.0:        	(0.000073s|01.29%)	(1x) ${readBytesFlag}
|   |   |   |   1937.0:        	(0.000058s|01.03%)	(1x) ${subshellRunFlag}
|   |   |   |   1937.1:        	(0.000080s|01.42%)	(1x) printf '\n%s ' '}'
|   |   |   |   1938.0:        	(0.000066s|01.17%)	(1x) echo "${outStr}"
|   |   |   |   1939.0:        	(0.000064s|01.13%)	(1x) ${nOrderFlag}
|   |   |   |   1940.0:        	(0.000071s|01.26%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1945.0:        	(0.000076s|01.35%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1679.0:            	(0.000233s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1684.0:            	(0.000232s|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1689.0:            	(0.000061s|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   375.0:            	(0.023444s|00.00%)	(2x) trap "${exitTrapStr}" EXIT
|   |   |   375.1:            	(0.009095s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   375.2:            	(0.008975s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   375.3:            	(0.008996s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1708.0:            	(0.000062s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1709.0:            	(0.000061s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1711.0:            	(0.000057s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1722.0:            	(0.000070s|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1725.0:            	(0.000057s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1726.0:            	(0.002467s|00.00%)	(29x) ((kkProcs=0 ))
|   |   |   1726.1:            	(0.002468s|00.00%)	(29x) ((kkProcs<28 ))
|   |   |   1727.0:            	(0.002321s|00.00%)	(28x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   154.0:            	(512.935572s|94.37%)	(28x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 161.0:        	(0.000580s|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   164.0:        	(512.910849s|99.99%)	(28x) << (SUBSHELL) >>
|   |   |   |   |-- 164.0:    	(0.004132s|00.00%)	(28x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.7fbUEd"
|   |   |   |   |   166.0:    	(0.000305s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p0
|   |   |   |   |   375.0:    	(0.008633s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p0; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   375.1:    	(0.376016s|00.06%)	(28x) trap 'trap - TERM INT HUP USR1; kill -INT 1943505 ${BASHPID}' INT
|   |   |   |   |   375.2:    	(0.385435s|00.07%)	(28x) trap 'trap - TERM INT HUP USR1; kill -TERM 1943505 ${BASHPID}' TERM
|   |   |   |   |   375.3:    	(0.376270s|00.06%)	(28x) trap 'trap - TERM INT HUP USR1; kill -HUP 1943505 ${BASHPID}' HUP
|   |   |   |   |   375.4:    	(0.379008s|00.07%)	(28x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   177.0:    	(0.017371s|00.01%)	(130x) true
|   |   |   |   |   178.0:    	(0.015299s|00.01%)	(130x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.015502s|00.01%)	(130x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   178.2:    	(0.000818s|00.00%)	(12x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   178.3:    	(0.000828s|00.00%)	(12x) nLinesCur=${REPLY}
|   |   |   |   |   180.0:    	(0.003810s|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p0
|   |   |   |   |   181.0:    	(0.641428s|00.71%)	(130x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.015815s|00.01%)	(130x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.011517s|00.01%)	(100x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.011765s|00.01%)	(100x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.012136s|00.01%)	(100x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.128955s|00.17%)	(100x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.011599s|00.01%)	(100x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.014485s|00.01%)	(125x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.029100s|00.03%)	(100x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003766s|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p0
|   |   |   |   |   206.0:    	(0.013719s|00.01%)	(100x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.014013s|00.01%)	(125x) ${nLinesAutoFlag}
|   |   |   |   |   227.0:    	(0.001143s|00.00%)	(12x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   228.0:    	(0.000945s|00.00%)	(12x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   152.0:    	(87.939277s|98.39%)	(125x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.016662s|00.02%)	(125x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(5.949858s|06.77%)	(125x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(10.145064s|10.36%)	(125x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(8.386471s|09.59%)	(125x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(10.020979s|10.36%)	(125x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(8.008160s|09.06%)	(125x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(5.381978s|06.47%)	(125x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(2.756107s|04.12%)	(125x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(5.651717s|06.35%)	(125x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(2.508881s|04.04%)	(125x) cksum "${@}"
|   |   |   |   |   |   168.0:	(7.251884s|08.65%)	(125x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(16.287634s|15.21%)	(125x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(2.807970s|04.37%)	(125x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(2.765912s|04.45%)	(125x) xxhsum -H3 "${@}"
|   |   |   |   |   228.1:    	(0.002740s|00.00%)	(28x) nLinesAutoFlag=false
|   |   |   |   |   226.1:    	(0.008014s|00.01%)	(69x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.021841s|00.03%)	(69x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   183.0:    	(0.002686s|00.00%)	(27x) printf '\n' 1>&26
|   |   |   |   |   184.0:    	(0.002726s|00.00%)	(27x) break
|   |   |   |   |   160.0:    	(0.003110s|00.00%)	(28x) break
|   |   |   |   |   161.0:    	(0.002656s|00.00%)	(28x) break
|   |   |   |   |   161.1:    	(0.041897s|00.00%)	(28x) break
|   |   |   |   |-- 162.0:    	(0.002860s|00.00%)	(28x) break
|   |   |   |-- 237.0:        	(0.000090s|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 161.0:        	(0.000540s|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   |   166.0:    	(0.001543s|00.00%)	(11x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p1
|   |   |   |   |   375.0:    	(0.009576s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p1; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.016969s|00.02%)	(124x) true
|   |   |   |   |   178.0:    	(0.021020s|00.02%)	(124x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.015023s|00.01%)	(124x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.013990s|00.03%)	(62x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p1
|   |   |   |   |   181.0:    	(0.581715s|00.80%)	(124x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.015284s|00.01%)	(124x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.016296s|00.02%)	(120x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.014184s|00.01%)	(120x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.018091s|00.02%)	(120x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.155735s|00.21%)	(120x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.014012s|00.01%)	(120x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.014091s|00.01%)	(120x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.031863s|00.03%)	(120x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.009617s|00.02%)	(60x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p1
|   |   |   |   |   206.0:    	(0.016837s|00.01%)	(120x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.013774s|00.01%)	(120x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(70.962502s|98.10%)	(120x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.012879s|00.01%)	(120x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(4.883071s|06.81%)	(120x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(7.827759s|10.27%)	(120x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(6.741549s|09.60%)	(120x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(7.793091s|10.29%)	(120x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(6.452973s|09.12%)	(120x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(4.433553s|06.42%)	(120x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(2.570917s|04.27%)	(120x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(4.713463s|06.47%)	(120x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(2.270914s|03.98%)	(120x) cksum "${@}"
|   |   |   |   |   |   168.0:	(5.917934s|08.65%)	(120x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(12.227406s|14.95%)	(120x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(2.576586s|04.49%)	(120x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(2.540407s|04.47%)	(120x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.003297s|00.01%)	(28x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.003703s|00.02%)	(28x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 161.0:        	(0.000531s|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   |   166.0:    	(0.001165s|00.00%)	(9x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p2
|   |   |   |   |   375.0:    	(0.008694s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p2; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.009260s|00.01%)	(72x) true
|   |   |   |   |   178.0:    	(0.008126s|00.01%)	(72x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.009515s|00.01%)	(72x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.003525s|00.02%)	(24x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p2
|   |   |   |   |   181.0:    	(0.327730s|00.59%)	(72x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.008603s|00.01%)	(72x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.008142s|00.01%)	(69x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.008990s|00.01%)	(69x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.008404s|00.01%)	(69x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.092539s|00.16%)	(69x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.010757s|00.01%)	(69x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.007843s|00.01%)	(69x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.013083s|00.02%)	(69x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003203s|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p2
|   |   |   |   |   206.0:    	(0.007592s|00.01%)	(69x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.010761s|00.01%)	(69x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(53.799677s|98.67%)	(69x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.007293s|00.01%)	(69x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(3.706997s|06.87%)	(69x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(6.390781s|10.28%)	(69x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(5.215253s|09.49%)	(69x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(6.486346s|10.60%)	(69x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(5.109138s|09.20%)	(69x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(3.316700s|06.49%)	(69x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(1.604632s|04.14%)	(69x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(3.454967s|06.37%)	(69x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(1.401128s|03.90%)	(69x) cksum "${@}"
|   |   |   |   |   |   168.0:	(4.427982s|08.56%)	(69x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(9.597273s|15.24%)	(69x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(1.553320s|04.27%)	(69x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(1.527867s|04.39%)	(69x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.007302s|00.01%)	(63x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.008442s|00.01%)	(63x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000080s|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 161.0:        	(0.000540s|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   |   166.0:    	(0.000287s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p3
|   |   |   |   |   375.0:    	(0.010495s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p3; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.003688s|00.02%)	(28x) true
|   |   |   |   |   178.0:    	(0.003348s|00.01%)	(28x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.003364s|00.01%)	(28x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.004238s|00.02%)	(28x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p3
|   |   |   |   |   181.0:    	(0.125283s|00.69%)	(28x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.003362s|00.01%)	(28x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.006210s|00.03%)	(27x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.003051s|00.01%)	(27x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.003250s|00.01%)	(27x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.030699s|00.17%)	(27x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.003020s|00.01%)	(27x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.003048s|00.01%)	(27x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.003286s|00.01%)	(27x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003897s|00.02%)	(27x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p3
|   |   |   |   |   206.0:    	(0.003058s|00.01%)	(27x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.003082s|00.01%)	(27x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(17.741484s|98.53%)	(27x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.002856s|00.02%)	(27x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.221253s|06.96%)	(27x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.100638s|10.74%)	(27x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.764304s|09.99%)	(27x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.062510s|10.40%)	(27x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.636759s|08.84%)	(27x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.106408s|06.55%)	(27x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.564497s|04.10%)	(27x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.166143s|06.43%)	(27x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.512629s|03.91%)	(27x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.394632s|08.33%)	(27x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(3.036434s|14.58%)	(27x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.577954s|04.44%)	(27x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.594467s|04.57%)	(27x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.005696s|00.01%)	(50x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.012659s|00.03%)	(50x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000074s|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 161.0:        	(0.000543s|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   |   166.0:    	(0.000301s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p4
|   |   |   |   |   375.0:    	(0.010663s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p4; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.003671s|00.01%)	(24x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p4
|   |   |   |   |   205.0:    	(0.003312s|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p4
|   |   |   |-- 237.0:        	(0.000076s|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 161.0:        	(0.000583s|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   |   166.0:    	(0.000116s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p5
|   |   |   |   |   375.0:    	(0.008988s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p5; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.003869s|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p5
|   |   |   |   |   205.0:    	(0.003717s|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p5
|   |   |   |-- 237.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 161.0:        	(0.000566s|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   |   166.0:    	(0.000273s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p6
|   |   |   |   |   375.0:    	(0.008924s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p6; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.001365s|00.00%)	(11x) true
|   |   |   |   |   178.0:    	(0.001194s|00.00%)	(11x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.001206s|00.00%)	(11x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   178.2:    	(0.001905s|00.00%)	(22x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   178.3:    	(0.002040s|00.00%)	(22x) nLinesCur=${REPLY}
|   |   |   |   |   180.0:    	(0.001561s|00.00%)	(11x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p6
|   |   |   |   |   181.0:    	(0.013308s|00.07%)	(11x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.001213s|00.00%)	(11x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.001044s|00.00%)	(10x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.001109s|00.00%)	(10x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.001144s|00.00%)	(10x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.010326s|00.05%)	(10x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.001134s|00.00%)	(10x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.001138s|00.00%)	(10x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.001135s|00.00%)	(10x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003436s|00.01%)	(10x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p6
|   |   |   |   |   206.0:    	(0.001070s|00.00%)	(10x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.001040s|00.00%)	(10x) ${nLinesAutoFlag}
|   |   |   |   |   227.0:    	(0.002444s|00.00%)	(22x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   228.0:    	(0.002119s|00.00%)	(22x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   152.0:    	(18.152970s|99.46%)	(10x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.000995s|00.01%)	(10x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.159385s|06.81%)	(10x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.320302s|11.50%)	(10x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.714899s|09.57%)	(10x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.308615s|11.14%)	(10x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.724317s|09.34%)	(10x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.015605s|06.07%)	(10x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.334603s|03.30%)	(10x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.196849s|06.62%)	(10x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.273983s|02.89%)	(10x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.442235s|08.18%)	(10x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(4.077050s|17.91%)	(10x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.309550s|03.29%)	(10x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.274582s|03.23%)	(10x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.001013s|00.00%)	(9x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.004155s|00.02%)	(9x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 161.0:        	(0.000600s|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   |   166.0:    	(0.000278s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p7
|   |   |   |   |   375.0:    	(0.009416s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p7; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.003887s|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p7
|   |   |   |   |   205.0:    	(0.003667s|00.02%)	(25x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p7
|   |   |   |   |   226.1:    	(0.009100s|00.01%)	(72x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.013939s|00.02%)	(72x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000074s|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 161.0:        	(0.000644s|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   |   166.0:    	(0.000116s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p8
|   |   |   |   |   375.0:    	(0.011343s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p8; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.015364s|00.01%)	(116x) true
|   |   |   |   |   178.0:    	(0.017754s|00.01%)	(116x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.019934s|00.02%)	(116x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.004349s|00.01%)	(29x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p8
|   |   |   |   |   181.0:    	(0.617657s|00.84%)	(116x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.014665s|00.01%)	(116x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.015718s|00.01%)	(112x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.013085s|00.01%)	(112x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.013600s|00.01%)	(112x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.146615s|00.19%)	(112x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.015755s|00.01%)	(112x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.014034s|00.01%)	(112x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.021429s|00.02%)	(112x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.004144s|00.01%)	(28x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p8
|   |   |   |   |   206.0:    	(0.012771s|00.01%)	(112x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.012667s|00.01%)	(112x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(72.614032s|98.28%)	(112x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.012221s|00.01%)	(112x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(5.059634s|06.89%)	(112x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(8.211042s|10.41%)	(112x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(6.935362s|09.57%)	(112x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(8.017755s|10.06%)	(112x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(6.581700s|09.00%)	(112x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(4.619551s|06.49%)	(112x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(2.447775s|04.26%)	(112x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(4.685216s|06.26%)	(112x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(2.182983s|04.02%)	(112x) cksum "${@}"
|   |   |   |   |   |   168.0:	(6.082822s|08.80%)	(112x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(12.794981s|14.84%)	(112x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(2.536618s|04.58%)	(112x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(2.446372s|04.61%)	(112x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.012401s|00.01%)	(108x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.022790s|00.02%)	(108x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000078s|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 161.0:        	(0.000640s|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   |   166.0:    	(0.000195s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p9
|   |   |   |   |   375.0:    	(0.008930s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p9; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.003748s|00.02%)	(24x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p9
|   |   |   |   |   205.0:    	(0.003437s|00.01%)	(23x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p9
|   |   |   |   |   226.1:    	(0.003924s|00.02%)	(22x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.002837s|00.01%)	(22x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 161.0:        	(0.000657s|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   |   166.0:    	(0.000330s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p10
|   |   |   |   |   375.0:    	(0.009287s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p10; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.004412s|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p10
|   |   |   |   |   205.0:    	(0.004150s|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p10
|   |   |   |-- 237.0:        	(0.000079s|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 161.0:        	(0.000646s|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   |   166.0:    	(0.000086s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p11
|   |   |   |   |   375.0:    	(0.008897s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p11; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.006817s|00.03%)	(29x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p11
|   |   |   |   |   205.0:    	(0.004079s|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p11
|   |   |   |-- 237.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 161.0:        	(0.000656s|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   |   166.0:    	(0.000083s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p12
|   |   |   |   |   375.0:    	(0.009148s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p12; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.004357s|00.02%)	(29x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p12
|   |   |   |   |   205.0:    	(0.004099s|00.02%)	(28x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p12
|   |   |   |-- 237.0:        	(0.000079s|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 161.0:        	(0.000639s|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   |   166.0:    	(0.000087s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p13
|   |   |   |   |   375.0:    	(0.010720s|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p13; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.004766s|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p13
|   |   |   |   |   205.0:    	(0.004469s|00.02%)	(30x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p13
|   |   |   |   |   226.1:    	(0.010044s|00.01%)	(87x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.019046s|00.02%)	(87x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000078s|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 161.0:        	(0.000838s|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   |   166.0:    	(0.000130s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p14
|   |   |   |   |   375.0:    	(0.017064s|00.07%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p14; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.002972s|00.01%)	(22x) true
|   |   |   |   |   178.0:    	(0.002633s|00.01%)	(22x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.002565s|00.01%)	(22x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.003440s|00.01%)	(22x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p14
|   |   |   |   |   181.0:    	(0.123239s|00.57%)	(22x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.002786s|00.01%)	(22x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.002460s|00.01%)	(21x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.005506s|00.02%)	(21x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.002581s|00.01%)	(21x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.025996s|00.12%)	(21x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.002592s|00.01%)	(21x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.002485s|00.01%)	(21x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.006537s|00.03%)	(21x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003184s|00.01%)	(21x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p14
|   |   |   |   |   206.0:    	(0.002468s|00.01%)	(21x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.002582s|00.01%)	(21x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(21.187814s|98.64%)	(21x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.002326s|00.01%)	(21x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.613501s|07.75%)	(21x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.561407s|11.13%)	(21x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.969891s|09.55%)	(21x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.496679s|10.59%)	(21x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.914051s|09.05%)	(21x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.345617s|06.24%)	(21x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.532022s|03.50%)	(21x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.457408s|06.64%)	(21x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.455723s|03.26%)	(21x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.679023s|08.42%)	(21x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(4.157775s|16.56%)	(21x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.524602s|03.63%)	(21x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.477789s|03.52%)	(21x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.002438s|00.01%)	(20x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.002787s|00.01%)	(20x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000135s|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 161.0:        	(0.000951s|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   |   166.0:    	(0.000136s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p15
|   |   |   |   |   375.0:    	(0.017737s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p15; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.008173s|00.01%)	(63x) true
|   |   |   |   |   178.0:    	(0.007420s|00.01%)	(63x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.007495s|00.01%)	(63x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.003146s|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p15
|   |   |   |   |   181.0:    	(0.390557s|00.65%)	(63x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.007928s|00.01%)	(63x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.013150s|00.02%)	(60x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.007028s|00.01%)	(60x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.007561s|00.01%)	(60x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.078841s|00.13%)	(60x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.007003s|00.01%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.006967s|00.01%)	(60x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.016373s|00.02%)	(60x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.002924s|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p15
|   |   |   |   |   206.0:    	(0.007106s|00.01%)	(60x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.007677s|00.01%)	(60x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(58.105008s|98.59%)	(60x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.008789s|00.01%)	(60x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(4.104587s|06.96%)	(60x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(7.481036s|10.48%)	(60x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(5.900058s|09.67%)	(60x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(7.436804s|10.17%)	(60x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(5.725988s|09.16%)	(60x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(3.661735s|06.54%)	(60x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(1.472701s|04.08%)	(60x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(3.625696s|06.34%)	(60x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(1.338714s|04.03%)	(60x) cksum "${@}"
|   |   |   |   |   |   168.0:	(4.335832s|08.65%)	(60x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(10.128623s|14.91%)	(60x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(1.456081s|04.32%)	(60x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(1.428364s|04.48%)	(60x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.006723s|00.01%)	(57x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.017558s|00.02%)	(57x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000122s|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 161.0:        	(0.000958s|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   |   166.0:    	(0.000152s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p16
|   |   |   |   |   375.0:    	(0.009561s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p16; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.002968s|00.01%)	(23x) true
|   |   |   |   |   178.0:    	(0.002569s|00.01%)	(23x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.002679s|00.01%)	(23x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.003277s|00.01%)	(23x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p16
|   |   |   |   |   181.0:    	(0.116493s|00.64%)	(23x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.002820s|00.01%)	(23x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.002598s|00.01%)	(22x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.002522s|00.01%)	(22x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.002686s|00.01%)	(22x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.029142s|00.16%)	(22x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.002509s|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.005534s|00.03%)	(22x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.002735s|00.01%)	(22x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003192s|00.01%)	(22x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p16
|   |   |   |   |   206.0:    	(0.002587s|00.01%)	(22x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.002451s|00.01%)	(22x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(17.898565s|98.66%)	(22x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.002337s|00.01%)	(22x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.186376s|06.68%)	(22x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.124581s|10.60%)	(22x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.715795s|09.55%)	(22x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.126456s|10.61%)	(22x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.742261s|09.54%)	(22x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.108945s|06.63%)	(22x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.516121s|03.98%)	(22x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.149994s|06.43%)	(22x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.444876s|03.54%)	(22x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.466171s|08.67%)	(22x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(3.335178s|15.84%)	(22x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.502408s|03.93%)	(22x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.477066s|03.85%)	(22x) xxhsum -H3 "${@}"
|   |   |   |-- 237.0:        	(0.000126s|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 161.0:        	(0.000956s|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   |   166.0:    	(0.000084s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p17
|   |   |   |   |   375.0:    	(0.008931s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p17; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.003077s|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p17
|   |   |   |   |   205.0:    	(0.002933s|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p17
|   |   |   |-- 237.0:        	(0.000116s|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 161.0:        	(0.000913s|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   |   166.0:    	(0.000087s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p18
|   |   |   |   |   375.0:    	(0.008877s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p18; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.002439s|00.01%)	(19x) true
|   |   |   |   |   178.0:    	(0.002158s|00.01%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.002233s|00.01%)	(19x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.002811s|00.01%)	(19x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p18
|   |   |   |   |   181.0:    	(0.167183s|00.95%)	(19x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.002472s|00.01%)	(19x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.002176s|00.01%)	(18x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.002059s|00.01%)	(18x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.002184s|00.01%)	(18x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.021239s|00.12%)	(18x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.002050s|00.01%)	(18x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.002027s|00.01%)	(18x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.003004s|00.01%)	(18x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.002767s|00.01%)	(18x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p18
|   |   |   |   |   206.0:    	(0.002134s|00.01%)	(18x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.002100s|00.01%)	(18x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(17.310660s|98.41%)	(18x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.001911s|00.01%)	(18x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.109923s|06.60%)	(18x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.078831s|10.49%)	(18x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.613194s|09.33%)	(18x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.036530s|10.14%)	(18x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.624765s|09.26%)	(18x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.087364s|06.93%)	(18x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.463023s|04.28%)	(18x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.111206s|06.48%)	(18x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.415775s|04.00%)	(18x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.406230s|08.56%)	(18x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(3.484003s|15.34%)	(18x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.438856s|04.13%)	(18x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.439049s|04.31%)	(18x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.002060s|00.01%)	(17x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.002247s|00.01%)	(17x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000132s|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 161.0:        	(0.000916s|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   |   166.0:    	(0.000083s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p19
|   |   |   |   |   375.0:    	(0.008929s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p19; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.003739s|00.02%)	(27x) true
|   |   |   |   |   178.0:    	(0.003221s|00.01%)	(27x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.003231s|00.01%)	(27x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.004106s|00.02%)	(27x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p19
|   |   |   |   |   181.0:    	(0.165860s|00.93%)	(27x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.003351s|00.01%)	(27x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.006257s|00.01%)	(52x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.006067s|00.01%)	(52x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.006470s|00.01%)	(52x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.062825s|00.17%)	(52x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.006120s|00.01%)	(52x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.002964s|00.01%)	(26x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.010553s|00.02%)	(52x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003828s|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p19
|   |   |   |   |   206.0:    	(0.005926s|00.01%)	(52x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.003003s|00.01%)	(26x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(17.409638s|98.20%)	(26x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.002739s|00.01%)	(26x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.181057s|06.77%)	(26x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.024076s|10.24%)	(26x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.691294s|09.50%)	(26x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.016388s|10.44%)	(26x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.630037s|09.20%)	(26x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.091905s|06.36%)	(26x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.564575s|04.12%)	(26x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.101912s|06.20%)	(26x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.497128s|03.86%)	(26x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.463802s|08.93%)	(26x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(3.020495s|15.21%)	(26x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.574486s|04.53%)	(26x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.549744s|04.48%)	(26x) xxhsum -H3 "${@}"
|   |   |   |-- 237.0:        	(0.000125s|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 161.0:        	(0.000972s|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   |   166.0:    	(0.000133s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p20
|   |   |   |   |   375.0:    	(0.016328s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p20; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.007035s|00.03%)	(26x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p20
|   |   |   |   |   205.0:    	(0.003729s|00.01%)	(25x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p20
|   |   |   |-- 237.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 161.0:        	(0.001004s|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   |   166.0:    	(0.000094s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p21
|   |   |   |   |   375.0:    	(0.008915s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p21; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.003234s|00.01%)	(21x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p21
|   |   |   |   |   205.0:    	(0.003057s|00.01%)	(20x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p21
|   |   |   |-- 237.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 161.0:        	(0.000943s|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   |   166.0:    	(0.000136s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p22
|   |   |   |   |   375.0:    	(0.017157s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p22; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.002216s|00.01%)	(15x) true
|   |   |   |   |   178.0:    	(0.001830s|00.01%)	(15x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.004952s|00.02%)	(15x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.002319s|00.01%)	(15x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p22
|   |   |   |   |   181.0:    	(0.062439s|00.34%)	(15x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.001996s|00.01%)	(15x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.001766s|00.00%)	(14x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.001694s|00.00%)	(14x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.001795s|00.01%)	(14x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.015366s|00.08%)	(14x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.001750s|00.00%)	(14x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.001676s|00.00%)	(14x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.001782s|00.00%)	(14x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.002148s|00.01%)	(14x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p22
|   |   |   |   |   206.0:    	(0.001686s|00.00%)	(14x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.001701s|00.00%)	(14x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(17.659587s|98.82%)	(14x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.001537s|00.01%)	(14x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.153215s|06.94%)	(14x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.192536s|10.90%)	(14x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.658759s|09.55%)	(14x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.165948s|10.59%)	(14x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.630770s|08.86%)	(14x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.002958s|06.01%)	(14x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.402575s|03.78%)	(14x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.169846s|06.50%)	(14x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.335747s|03.60%)	(14x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.422424s|08.47%)	(14x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(3.799596s|16.71%)	(14x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.377189s|04.05%)	(14x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.346487s|03.90%)	(14x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.001647s|00.00%)	(13x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.001836s|00.01%)	(13x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000135s|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 161.0:        	(0.000979s|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   |   166.0:    	(0.000155s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p23
|   |   |   |   |   375.0:    	(0.015404s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p23; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.004896s|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p23
|   |   |   |   |   205.0:    	(0.006548s|00.03%)	(30x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p23
|   |   |   |-- 237.0:        	(0.000115s|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 161.0:        	(0.001009s|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   |   166.0:    	(0.000138s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p24
|   |   |   |   |   375.0:    	(0.015012s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p24; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.002784s|00.01%)	(20x) true
|   |   |   |   |   178.0:    	(0.002438s|00.01%)	(20x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.002430s|00.01%)	(20x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.003135s|00.01%)	(20x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p24
|   |   |   |   |   181.0:    	(0.112969s|00.64%)	(20x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.002518s|00.01%)	(20x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.005330s|00.03%)	(19x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.002267s|00.01%)	(19x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.002377s|00.01%)	(19x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.022979s|00.13%)	(19x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.002370s|00.01%)	(19x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.002298s|00.01%)	(19x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.002484s|00.01%)	(19x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.002951s|00.01%)	(19x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p24
|   |   |   |   |   206.0:    	(0.002231s|00.01%)	(19x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.002204s|00.01%)	(19x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(17.374107s|98.46%)	(19x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.002145s|00.02%)	(19x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.168692s|07.21%)	(19x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(2.086135s|10.24%)	(19x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.663685s|09.71%)	(19x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(2.085797s|10.31%)	(19x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.623300s|09.20%)	(19x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.074109s|06.81%)	(19x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.482448s|04.26%)	(19x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.092288s|06.27%)	(19x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.403282s|03.95%)	(19x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.387594s|08.38%)	(19x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(3.442329s|14.84%)	(19x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.453846s|04.47%)	(19x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.408457s|04.19%)	(19x) xxhsum -H3 "${@}"
|   |   |   |   |   226.1:    	(0.002124s|00.01%)	(18x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.002471s|00.01%)	(18x) printf '\n' >&${fd_nAuto0}
|   |   |   |-- 237.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 161.0:        	(0.001018s|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   |   166.0:    	(0.000156s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p25
|   |   |   |   |   375.0:    	(0.018967s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p25; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.005478s|00.02%)	(31x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p25
|   |   |   |   |   205.0:    	(0.007646s|00.03%)	(30x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p25
|   |   |   |-- 237.0:        	(0.000122s|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 161.0:        	(0.001048s|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   |   166.0:    	(0.000134s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p26
|   |   |   |   |   375.0:    	(0.020826s|00.12%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p26; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   177.0:    	(0.003620s|00.02%)	(25x) true
|   |   |   |   |   178.0:    	(0.006206s|00.03%)	(25x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.003086s|00.01%)	(25x) read -r < "/dev/shm/.forkrun.7fbUEd"/.nLines
|   |   |   |   |   180.0:    	(0.003928s|00.02%)	(25x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p26
|   |   |   |   |   181.0:    	(0.050899s|00.29%)	(25x) read -r -u 26 _
|   |   |   |   |   182.0:    	(0.003162s|00.01%)	(25x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.quit ]]
|   |   |   |   |   186.0:    	(0.005422s|00.03%)	(24x) [[ -f "/dev/shm/.forkrun.7fbUEd"/.done ]]
|   |   |   |   |   186.1:    	(0.003034s|00.01%)	(24x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.003113s|00.01%)	(24x) evfd_wait 30
|   |   |   |   |   189.0:    	(0.038523s|00.22%)	(24x) mapfile -t -n ${nLinesCur} -u 32 A
|   |   |   |   |   191.0:    	(0.002938s|00.01%)	(24x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.006148s|00.03%)	(24x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.006298s|00.03%)	(24x) printf '\n' 1>&26
|   |   |   |   |   205.0:    	(0.003637s|00.02%)	(24x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p26
|   |   |   |   |   206.0:    	(0.002897s|00.01%)	(24x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.002830s|00.01%)	(24x) ${nLinesAutoFlag}
|   |   |   |   |   152.0:    	(16.918559s|98.41%)	(24x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.004686s|00.03%)	(24x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(1.127180s|06.75%)	(24x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(1.955729s|10.58%)	(24x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(1.584563s|09.59%)	(24x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(1.898676s|10.16%)	(24x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(1.532120s|09.12%)	(24x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(1.040458s|06.47%)	(24x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(0.522481s|04.05%)	(24x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(1.133751s|06.42%)	(24x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(0.488235s|03.99%)	(24x) cksum "${@}"
|   |   |   |   |   |   168.0:	(1.420051s|08.66%)	(24x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(3.109803s|15.12%)	(24x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(0.572523s|04.56%)	(24x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(0.528303s|04.37%)	(24x) xxhsum -H3 "${@}"
|   |   |   |-- 237.0:        	(0.000138s|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 161.0:        	(0.001009s|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   |   166.0:    	(0.000137s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.7fbUEd"/.run/p27
|   |   |   |   |   375.0:    	(0.017493s|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.7fbUEd"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.7fbUEd"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.7fbUEd"/.run/p27; $'\n'printf '"'"'\n'"'"' >&26' EXIT
|   |   |   |   |   180.0:    	(0.004089s|00.02%)	(26x) echo 1 > "/dev/shm/.forkrun.7fbUEd"/.wait/p27
|   |   |   |   |   205.0:    	(0.003831s|00.02%)	(26x) echo 0 > "/dev/shm/.forkrun.7fbUEd"/.wait/p27
|   |   |   |   |   207.0:    	(0.000110s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   216.0:    	(0.000107s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   217.0:    	(0.000124s|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   219.0:    	(0.000140s|00.00%)	(1x) : > "/dev/shm/.forkrun.7fbUEd"/.quit
|   |   |   |   |   220.0:    	(0.000196s|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.7fbUEd"/.run/p* 1>&26
|   |   |   |   |   221.0:    	(0.000133s|00.00%)	(1x) break
|   |   |   |-- 237.0:        	(0.000128s|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1730.0:            	(0.000133s|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1731.0:            	(0.000127s|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1732.0:            	(0.000102s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1735.0:            	(0.000098s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1740.0:            	(0.001102s|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1745.0:            	(0.000107s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1807.0:            	(0.000098s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1810.0:            	(0.000104s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1817.0:            	(23.349710s|04.29%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1821.0:            	(0.000199s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1826.0:            	(0.000206s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   160.0:            	(0.000237s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   161.0:            	(0.000245s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   162.0:            	(0.001948s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   162.1:            	(0.005132s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 76.0:        	(0.005132s|100.00%)	(1x) ${nSpawnFlag}
|   |   |   163.0:            	(0.000073s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   164.0:            	(0.001111s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   164.1:            	(0.003881s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |   |-- 78.0:        	(0.003881s|100.00%)	(1x) ${nSpawnFlag}
|   |   |   165.0:            	(0.000080s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   166.0:            	(0.001519s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   166.1:            	(0.003178s|00.00%)	(1x) << (SUBSHELL) >>
|   |   |-- |-- 80.0:        	(0.003178s|100.00%)	(1x) ${nSpawnFlag}
|   |   1832.0:                	(0.000093s|00.00%)	(1x) wait
|   |-- 160.0:                	(0.003238s|00.00%)	(1x) wait
|

221.0:                        	(0.000094s|00.00%)	(1x) 0<&0
|



TOTAL RUN TIME: 543.528697s
