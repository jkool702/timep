412.0:                        	(567.230233s|99.99%)	(1x) << (FUNCTION): forkrun "${@}" >>
|
|-- 419.0:                    	(0.000639s|00.00%)	(1x) forkrun "${@}"
|   |	(2739.422600s|07.81%)	(572x) |   |
|   420.0:                    	(567.229594s|99.99%)	(1x) << (SUBSHELL): 807870 >>
|   |-- 375.0:                	(0.027714s|00.00%)	(1x) trap - EXIT INT TERM HUP USR1
|   |   421.0:                	(0.000066s|00.00%)	(1x) shopt -s extglob
|   |   422.0:                	(0.000076s|00.00%)	(1x) local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   423.0:                	(0.000156s|00.00%)	(1x) local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   424.0:                	(0.000099s|00.00%)	(1x) local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   425.0:                	(0.000078s|00.00%)	(1x) local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   426.0:                	(0.000068s|00.00%)	(1x) local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   427.0:                	(0.000066s|00.00%)	(1x) : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   428.0:                	(0.000058s|00.00%)	(1x) [[ $# == 0 ]]
|   |   428.1:                	(0.000060s|00.00%)	(1x) optParseFlag=true
|   |   429.0:                	(0.000060s|00.00%)	(1x) ${optParseFlag}
|   |   429.1:                	(0.000057s|00.00%)	(1x) (( $# > 0  ))
|   |   429.2:                	(0.000064s|00.00%)	(1x) [[ "$1" == [-+]* ]]
|   |   614.0:                	(0.000062s|00.00%)	(1x) [ -t "${fd_stdin0}" ]
|   |   619.0:                	(0.000058s|00.00%)	(1x) [[ -n ${tmpDirRoot} ]]
|   |   620.0:                	(0.000058s|00.00%)	(1x) [[ -n ${TMPDIR} ]]
|   |   622.0:                	(0.000058s|00.00%)	(1x) [[ -d '/dev/shm' ]]
|   |   622.1:                	(0.000057s|00.00%)	(1x) tmpDirRoot='/dev/shm'
|   |   626.0:                	(0.000531s|00.00%)	(1x) tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   626.1:                	(0.001637s|00.00%)	(1x) << (SUBSHELL): 807870 >>
|   |   |-- 540.0:            	(0.001637s|100.00%)	(1x) mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   627.0:                	(0.000063s|00.00%)	(1x) fPath="${tmpDir}"/.stdin
|   |   628.0:                	(0.000997s|00.00%)	(1x) mkdir -p "${tmpDir}"/.run
|   |   629.0:                	(0.000082s|00.00%)	(1x) : > "${fPath}"
|   |   630.0:                	(0.000058s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   1480.0:                	(567.194936s|99.99%)	(1x) << (SUBSHELL): 807873 >>
|   |   |-- 631.0:            	(0.000187s|00.00%)	(1x) [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1480.0:            	(0.000471s|00.00%)	(1x) << (SUBSHELL): 807874 >>
|   |   |   |-- 1480.0:        	(0.001335s|100.00%)	(1x) :
|   |   |   1480.1:            	(0.000230s|00.00%)	(1x) << (SUBSHELL): 807875 >>
|   |   |   1480.2:            	(0.000234s|00.00%)	(1x) << (SUBSHELL): 807876 >>
|   |   |   1480.3:            	(0.000165s|00.00%)	(1x) << (SUBSHELL): 807877 >>
|   |   |   1480.4:            	(0.000230s|00.00%)	(1x) << (SUBSHELL): 807878 >>
|   |   |   1480.5:            	(0.000232s|00.00%)	(1x) << (SUBSHELL): 807879 >>
|   |   |   634.0:            	(0.000078s|00.00%)	(1x) LC_ALL=C
|   |   |   635.0:            	(0.000065s|00.00%)	(1x) LANG=C
|   |   |   636.0:            	(0.000061s|00.00%)	(1x) IFS=
|   |   |   637.0:            	(0.000177s|00.00%)	(1x) enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   638.0:            	(0.000071s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   639.0:            	(0.000061s|00.00%)	(1x) FORKRUN_TMPDIR="$tmpDir"
|   |   |   640.0:            	(0.000063s|00.00%)	(1x) export FORKRUN_TMPDIR="$tmpDir"
|   |   |   641.0:            	(0.000062s|00.00%)	(1x) PID0="${BASHPID}"
|   |   |   642.0:            	(0.000069s|00.00%)	(1x) shopt -s nullglob
|   |   |   643.0:            	(0.000073s|00.00%)	(1x) : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   644.0:            	(0.000076s|00.00%)	(1x) enable lseek &> /dev/null
|   |   |   645.0:            	(0.000063s|00.00%)	(1x) : "${lseekFlag:=true}"
|   |   |   649.0:            	(0.000062s|00.00%)	(1x) ${lseekFlag}
|   |   |   650.0:            	(0.000524s|00.00%)	(1x) [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   650.1:            	(0.000103s|00.00%)	(1x) << (SUBSHELL): 807880 >>
|   |   |   |-- 650.0:        	(0.000103s|100.00%)	(1x) lseek $fd_read 0
|   |   |   650.2:            	(0.000071s|00.00%)	(1x) : "${lseekPosFlag:=true}"
|   |   |   652.0:            	(0.000062s|00.00%)	(1x) ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   655.0:            	(0.000067s|00.00%)	(1x) runCmd=("${@//''/}")
|   |   |   657.0:            	(0.000061s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   658.0:            	(0.000061s|00.00%)	(1x) (( ${#runCmd[@]} > 0 ))
|   |   |   658.1:            	(0.000062s|00.00%)	(1x) noFuncFlag=false
|   |   |   659.0:            	(0.000061s|00.00%)	(1x) ${noFuncFlag}
|   |   |   660.0:            	(0.000075s|00.00%)	(1x) hash "${runCmd[0]}" &> /dev/null
|   |   |   661.0:            	(0.000064s|00.00%)	(1x) ${readBytesFlag}
|   |   |   712.0:            	(0.000060s|00.00%)	(1x) [[ -n ${nLines} ]]
|   |   |   716.0:            	(0.000063s|00.00%)	(1x) : "${nLinesAutoFlag:=true}"
|   |   |   718.0:            	(0.000064s|00.00%)	(1x) [[ -z ${nLines} ]]
|   |   |   719.0:            	(0.000061s|00.00%)	(1x) nLines=1
|   |   |   721.0:            	(0.000063s|00.00%)	(1x) [[ "${nProcs}" == '-'* ]]
|   |   |   725.0:            	(0.000062s|00.00%)	(1x) [[ "${nProcs}" == *','* ]]
|   |   |   1813.0:            	(0.000793s|00.00%)	(1x) << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1820.0:        	(0.000057s|07.18%)	(1x) _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   1821.0:        	(0.000064s|08.07%)	(1x) local +i -l nn
|   |   |   |   1822.0:        	(0.000063s|07.94%)	(1x) local vOut
|   |   |   |   1823.0:        	(0.000063s|07.94%)	(1x) local -n vOut="$1"
|   |   |   |   1824.0:        	(0.000062s|07.81%)	(1x) shift 1
|   |   |   |   1825.0:        	(0.000063s|07.94%)	(1x) local -g vOut
|   |   |   |   1826.0:        	(0.000060s|07.56%)	(1x) (( ${#pMap[@]} == 20 ))
|   |   |   |   1826.1:        	(0.000110s|13.87%)	(1x) local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   1827.0:        	(0.000061s|07.69%)	(1x) for nn in "${@%%[Bb]*}"
|   |   |   |   1829.0:        	(0.000061s|07.69%)	(1x) [[ -n ${nn} ]]
|   |   |   |   1829.1:        	(0.000063s|07.94%)	(1x) continue
|   |   |   |-- 1839.0:        	(0.000066s|08.32%)	(1x) local +n vOut
|   |   |   730.0:            	(0.000065s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   731.0:            	(0.000854s|00.00%)	(1x) nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
|   |   |   731.1:            	(0.002056s|00.00%)	(1x) << (SUBSHELL): 807881 >>
|   |   |   |-- 731.0:        	(0.000271s|13.18%)	(1x) type -a nproc &> /dev/null
|   |   |   |-- 731.1:        	(0.001785s|86.81%)	(1x) nproc
|   |   |   732.0:            	(0.000065s|00.00%)	(1x) (( nCPU < 1 ))
|   |   |   734.0:            	(0.000063s|00.00%)	(1x) [[ -n ${nProcs} ]]
|   |   |   736.0:            	(0.000060s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   736.1:            	(0.000064s|00.00%)	(1x) nProcs=${nCPU}
|   |   |   738.0:            	(0.000060s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   742.0:            	(0.000060s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   743.0:            	(0.000064s|00.00%)	(1x) : "${nSpawnFlag:=false}"
|   |   |   744.0:            	(0.000075s|00.00%)	(1x) : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   745.0:            	(0.000070s|00.00%)	(1x) local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   746.0:            	(0.000059s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   747.0:            	(0.000075s|00.00%)	(1x) (( nLinesMax < 2 * nLines ))
|   |   |   749.0:            	(0.000060s|00.00%)	(1x) (( nLinesMax < nLines ))
|   |   |   751.0:            	(0.000073s|00.00%)	(1x) doneIndicatorFlag=false
|   |   |   752.0:            	(0.000061s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   756.0:            	(0.000148s|00.00%)	(1x) type -a fallocate &> /dev/null
|   |   |   756.1:            	(0.000058s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   756.2:            	(0.000060s|00.00%)	(1x) : "${fallocateFlag:=true}"
|   |   |   757.0:            	(0.000076s|00.00%)	(1x) ${exportOrderFlag}
|   |   |   758.0:            	(0.000059s|00.00%)	(1x) ${readBytesFlag}
|   |   |   759.0:            	(0.000058s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   763.0:            	(0.000062s|00.00%)	(1x) ${nullDelimiterFlag}
|   |   |   785.0:            	(0.000058s|00.00%)	(1x) [[ -z ${delimiterVal} ]]
|   |   |   786.0:            	(0.000058s|00.00%)	(1x) delimiterVal='$'"'"'\n'"'"
|   |   |   787.0:            	(0.000058s|00.00%)	(1x) ${noFuncFlag}
|   |   |   787.1:            	(0.000065s|00.00%)	(1x) ${lseekFlag}
|   |   |   797.0:            	(0.000059s|00.00%)	(1x) ${unescapeFlag}
|   |   |   806.0:            	(0.001479s|00.00%)	(1x) mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
|   |   |   806.1:            	(0.000256s|00.00%)	(1x) << (SUBSHELL): 807883 >>
|   |   |   |-- 806.0:        	(0.000256s|100.00%)	(1x) printf '%q\n' "${runCmd[@]}"
|   |   |   807.0:            	(0.000060s|00.00%)	(1x) ${substituteStringFlag}
|   |   |   810.0:            	(0.000062s|00.00%)	(1x) ${substituteStringIDFlag}
|   |   |   815.0:            	(0.000060s|00.00%)	(1x) nLinesCur=${nLines}
|   |   |   816.0:            	(0.002256s|00.00%)	(1x) mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   817.0:            	(0.000062s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   818.0:            	(0.000061s|00.00%)	(1x) ${rmTmpDirFlag}
|   |   |   819.0:            	(0.000059s|00.00%)	(1x) (( ${verboseLevel} > 0 ))
|   |   |   846.0:            	(0.000065s|00.00%)	(1x) tStart="${EPOCHREALTIME//./}"
|   |   |   847.0:            	(0.000085s|00.00%)	(1x) evfd_init
|   |   |   851.0:            	(0.000071s|00.00%)	(1x) exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   852.0:            	(0.000064s|00.00%)	(1x) ${pipeReadFlag}
|   |   |   855.0:            	(0.000059s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   866.0:            	(0.000479s|00.00%)	(1x) : "${writeFileProgType:=1}" (&)
|   |   |   869.0:            	(0.063614s|00.01%)	(1x) << (SUBSHELL): 807885 >>
|   |   |   |-- 869.0:        	(0.000074s|00.11%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   375.0:        	(0.007874s|12.37%)	(1x) trap - EXIT
|   |   |   |   375.1:        	(0.018219s|07.20%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
|   |   |   |   375.2:        	(0.018196s|07.20%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
|   |   |   |   375.3:        	(0.018197s|07.20%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
|   |   |   |   375.4:        	(0.018253s|07.20%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   875.0:        	(0.000078s|00.12%)	(1x) case ${writeFileProgType} in
|   |   |   |   877.0:        	(0.018984s|29.84%)	(1x) evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   886.0:        	(0.000086s|00.13%)	(1x) : > "${tmpDir}"/.done
|   |   |   |   887.0:        	(0.000065s|00.10%)	(1x) evfd_signal
|   |   |   |-- 888.0:        	(0.000061s|00.09%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   891.0:            	(0.000064s|00.00%)	(1x) exitTrapStr_kill+="${pWrite_PID} "
|   |   |   893.0:            	(0.000059s|00.00%)	(1x) ${nOrderFlag}
|   |   |   898.0:            	(0.000063s|00.00%)	(1x) outStr='>&'"${fd_stdout}"
|   |   |   900.0:            	(0.000064s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   901.0:            	(0.000391s|00.00%)	(1x) printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   904.0:            	(7.991518s|01.40%)	(1x) << (SUBSHELL): 807886 >>
|   |   |   |-- 904.0:        	(0.000245s|00.00%)	(1x) export LC_ALL=C LANG=C IFS=
|   |   |   |   375.0:        	(0.009519s|00.11%)	(1x) trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
|   |   |   |   910.0:        	(0.000060s|00.00%)	(1x) ${fallocateFlag}
|   |   |   |   911.0:        	(0.000066s|00.00%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   912.0:        	(0.000058s|00.00%)	(1x) fd_read_pos_old=0
|   |   |   |   914.0:        	(0.000058s|00.00%)	(1x) nLinesRead=0
|   |   |   |   915.0:        	(0.076559s|00.95%)	(1x) ${fallocateFlag}
|   |   |   |   916.0:        	(6.738084s|84.31%)	(1x) read -u ${fd_nAuto} -t 0.1
|   |   |   |   916.1:        	(0.002191s|00.02%)	(1x) continue
|   |   |   |   917.0:        	(0.077393s|00.96%)	(1x) case ${REPLY} in
|   |   |   |   931.0:        	(0.082118s|01.02%)	(1x) ${nLinesAutoFlag}
|   |   |   |   932.0:        	(0.000061s|00.00%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   935.0:        	(0.000069s|00.00%)	(1x) nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   940.0:        	(0.075330s|00.94%)	(1x) ${lseekPosFlag}
|   |   |   |   941.0:        	(0.081220s|01.01%)	(1x) lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   942.0:        	(0.076395s|00.95%)	(1x) lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   948.0:        	(0.073442s|00.91%)	(1x) ${nLinesAutoFlag}
|   |   |   |   949.0:        	(0.000074s|00.00%)	(1x) nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   950.0:        	(0.074284s|00.92%)	(1x) ${nSpawnFlag}
|   |   |   |   951.0:        	(0.076185s|00.95%)	(1x) ${nLinesAutoFlag}
|   |   |   |   952.0:        	(0.000060s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   953.0:        	(0.000064s|00.00%)	(1x) [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   954.0:        	(0.000594s|00.00%)	(1x) mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   954.1:        	(0.002443s|00.03%)	(1x) << (SUBSHELL): 807901 >>
|   |   |   |   |-- 954.0:    	(0.002442s|99.95%)	(1x) : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   955.0:        	(0.000066s|00.00%)	(1x) nProcsA=(${nProcsA//0/})
|   |   |   |   956.0:        	(0.000064s|00.00%)	(1x) (( ${#nProcsA[@]} > 0 ))
|   |   |   |   958.0:        	(0.000069s|00.00%)	(1x) nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   959.0:        	(0.000062s|00.00%)	(1x) (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   960.0:        	(0.000061s|00.00%)	(1x) (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   961.0:        	(0.000061s|00.00%)	(1x) nLinesNew=${nLinesMax}
|   |   |   |   962.0:        	(0.000060s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   964.0:        	(0.000085s|00.00%)	(1x) printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   965.0:        	(0.000060s|00.00%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   966.0:        	(0.000090s|00.00%)	(1x) nLinesCur=${nLinesNew}
|   |   |   |   969.0:        	(0.074918s|00.93%)	(1x) ${fallocateFlag}
|   |   |   |   970.0:        	(0.071896s|00.89%)	(1x) case ${nWait} in
|   |   |   |   981.0:        	(0.070679s|00.88%)	(1x) ((nWait--))
|   |   |   |   985.0:        	(0.075843s|00.94%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   931.1:        	(0.075404s|00.94%)	(1x) ${nSpawnFlag}
|   |   |   |   948.1:        	(0.077179s|00.96%)	(1x) ${nSpawnFlag}
|   |   |   |   972.0:        	(0.002359s|00.02%)	(1x) fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   973.0:        	(0.002315s|00.02%)	(1x) (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   974.0:        	(0.047738s|00.59%)	(1x) fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   975.0:        	(0.002383s|00.02%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   976.0:        	(0.002415s|00.03%)	(1x) fd_read_pos_old=${fd_read_pos}
|   |   |   |   978.0:        	(0.002465s|00.03%)	(1x) nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   925.0:        	(0.000113s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   986.0:        	(0.000107s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   987.0:        	(0.000114s|00.00%)	(1x) fallocateFlag=false
|   |   |   |   988.0:        	(0.000109s|00.00%)	(1x) nSpawnFlag=false
|   |   |   |   915.1:        	(0.000102s|00.00%)	(1x) ${nLinesAutoFlag}
|   |   |   |   915.2:        	(0.000131s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   160.0:        	(0.000111s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |-- 160.1:        	(0.001414s|00.01%)	(1x) ${nSpawnFlag}
|   |   |   994.0:            	(0.000064s|00.00%)	(1x) exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
|   |   |   995.0:            	(0.000090s|00.00%)	(1x) printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   997.0:            	(0.000077s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1376.0:            	(0.001380s|00.00%)	(1x) coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
|   |   |   1393.0:            	(0.005371s|00.00%)	(1x) << (SUBSHELL): 807887 >>
|   |   |   |-- 1393.0:        	(0.000221s|04.11%)	(1x) echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
|   |   |   |   1394.0:        	(0.000063s|01.17%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1394.1:        	(0.000076s|01.41%)	(1x) echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1402.0:        	(0.000210s|03.90%)	(1x) echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1403.0:        	(0.000065s|01.21%)	(1x) ${readBytesFlag}
|   |   |   |   1475.0:        	(0.000059s|01.09%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1478.0:        	(0.000063s|01.17%)	(1x) echo "{"
|   |   |   |   1479.0:        	(0.000059s|01.09%)	(1x) ${nOrderFlag}
|   |   |   |   1480.0:        	(0.000059s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1480.1:        	(0.000063s|01.17%)	(1x) echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1481.0:        	(0.000063s|01.17%)	(1x) printf '%s ' "mapfile"
|   |   |   |   1482.0:        	(0.000059s|01.09%)	(1x) ${lseekFlag}
|   |   |   |   1482.1:        	(0.000062s|01.15%)	(1x) printf '%s ' '-t'
|   |   |   |   1483.0:        	(0.000067s|01.24%)	(1x) printf '%s ' '-n' "\${nLinesCur}" '-u'
|   |   |   |   1484.0:        	(0.000059s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1484.1:        	(0.000064s|01.19%)	(1x) printf '%s ' ${fd_read}
|   |   |   |   1485.0:        	(0.000059s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1485.1:        	(0.000060s|01.11%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1487.0:        	(0.000065s|01.21%)	(1x) echo """${delimiterReadStr} A$'\n'    }"""
|   |   |   |   1488.0:        	(0.000059s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1488.1:        	(0.000060s|01.11%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1488.2:        	(0.000063s|01.17%)	(1x) echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1489.0:        	(0.000064s|01.19%)	(1x) ${lseekFlag}
|   |   |   |   1492.0:        	(0.000067s|01.24%)	(1x) echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
|   |   |   |   1493.0:        	(0.000059s|01.09%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1496.0:        	(0.000064s|01.19%)	(1x) echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1534.0:        	(0.000060s|01.11%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1539.0:        	(0.000067s|01.24%)	(1x) echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
|   |   |   |   1540.0:        	(0.000063s|01.17%)	(1x) printf '%s' "A[-1]+=\"\${REPLY}\""
|   |   |   |   1541.0:        	(0.000059s|01.09%)	(1x) ${lseekFlag}
|   |   |   |   1541.1:        	(0.000061s|01.13%)	(1x) printf '\n'
|   |   |   |   1542.0:        	(0.000065s|01.21%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1543.0:        	(0.000091s|01.69%)	(1x) echo "}"
|   |   |   |   1545.0:        	(0.000059s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1545.1:        	(0.000060s|01.11%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1545.2:        	(0.000059s|01.09%)	(1x) ${readBytesFlag}
|   |   |   |   1545.3:        	(0.000070s|01.30%)	(1x) echo "}"
|   |   |   |   1546.0:        	(0.000070s|01.30%)	(1x) ${nLinesReadLimitFlag}
|   |   |   |   1559.0:        	(0.000084s|01.56%)	(1x) echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
|   |   |   |   1560.0:        	(0.000060s|01.11%)	(1x) ${lseekPosFlag}
|   |   |   |   1563.0:        	(0.000072s|01.34%)	(1x) echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1574.0:        	(0.000071s|01.32%)	(1x) echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
|   |   |   |   1575.0:        	(0.000059s|01.09%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1575.1:        	(0.000066s|01.22%)	(1x) echo "printf 'x\\n' >&\${fd_nAuto0}"
|   |   |   |   1576.0:        	(0.000063s|01.17%)	(1x) ${nOrderFlag}
|   |   |   |   1577.0:        	(0.000065s|01.21%)	(1x) ${nSpawnFlag}
|   |   |   |   1582.0:        	(0.000071s|01.32%)	(1x) echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
|   |   |   |   1583.0:        	(0.000062s|01.15%)	(1x) ${nOrderFlag}
|   |   |   |   1587.0:        	(0.000073s|01.35%)	(1x) echo """fi$'\n'        continue$'\n'    }"""
|   |   |   |   1588.0:        	(0.000060s|01.11%)	(1x) ${nLinesAutoFlag}
|   |   |   |   1588.1:        	(0.000069s|01.28%)	(1x) printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
|   |   |   |   1593.0:        	(0.000059s|01.09%)	(1x) ${fallocateFlag}
|   |   |   |   1593.1:        	(0.000067s|01.24%)	(1x) printf '%s' ' || '
|   |   |   |   1594.0:        	(0.000060s|01.11%)	(1x) ${fallocateFlag}
|   |   |   |   1594.1:        	(0.000079s|01.47%)	(1x) echo "printf '\\n' >&\${fd_nAuto0}"
|   |   |   |   1595.0:        	(0.000059s|01.09%)	(1x) ${pipeReadFlag}
|   |   |   |   1595.1:        	(0.000060s|01.11%)	(1x) ${nullDelimiterFlag}
|   |   |   |   1595.2:        	(0.000060s|01.11%)	(1x) ${readBytesFlag}
|   |   |   |   1595.3:        	(0.000065s|01.21%)	(1x) ${lseekFlag}
|   |   |   |   1603.0:        	(0.000060s|01.11%)	(1x) ${subshellRunFlag}
|   |   |   |   1603.1:        	(0.000067s|01.24%)	(1x) echo '{'
|   |   |   |   1604.0:        	(0.000059s|01.09%)	(1x) ${exportOrderFlag}
|   |   |   |   1604.1:        	(0.000064s|01.19%)	(1x) ${nOrderFlag}
|   |   |   |   1605.0:        	(0.000062s|01.15%)	(1x) ${exportOrderFlag}
|   |   |   |   1606.0:        	(0.000084s|01.56%)	(1x) printf '%s ' "${runCmd[@]}"
|   |   |   |   1607.0:        	(0.000060s|01.11%)	(1x) ${readBytesFlag}
|   |   |   |   1614.0:        	(0.000059s|01.09%)	(1x) ${stdinRunFlag}
|   |   |   |   1617.0:        	(0.000059s|01.09%)	(1x) ${noFuncFlag}
|   |   |   |   1620.0:        	(0.000060s|01.11%)	(1x) ${substituteStringFlag}
|   |   |   |   1621.0:        	(0.000094s|01.75%)	(1x) printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1626.0:        	(0.000070s|01.30%)	(1x) (( ${verboseLevel} > 2 ))
|   |   |   |   1638.0:        	(0.000062s|01.15%)	(1x) ${readBytesFlag}
|   |   |   |   1639.0:        	(0.000060s|01.11%)	(1x) ${subshellRunFlag}
|   |   |   |   1639.1:        	(0.000066s|01.22%)	(1x) printf '\n%s ' '}'
|   |   |   |   1640.0:        	(0.000066s|01.22%)	(1x) echo "${outStr}"
|   |   |   |   1641.0:        	(0.000064s|01.19%)	(1x) ${nOrderFlag}
|   |   |   |   1642.0:        	(0.000062s|01.15%)	(1x) ${nSpawnFlag}
|   |   |   |-- 1647.0:        	(0.000093s|01.73%)	(1x) echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
|   |   |   1377.0:            	(0.000169s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1382.0:            	(0.000156s|00.00%)	(1x) exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
|   |   |   1384.0:            	(0.000145s|00.00%)	(1x) exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
|   |   |   375.0:            	(0.023438s|00.00%)	(1x) trap "${exitTrapStr}" EXIT
|   |   |   375.1:            	(0.009283s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
|   |   |   375.2:            	(0.009142s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
|   |   |   375.3:            	(0.009061s|00.00%)	(1x) trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
|   |   |   1398.0:            	(0.000064s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1399.0:            	(0.000058s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1403.0:            	(0.000060s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1407.0:            	(0.000068s|00.00%)	(1x) printf '\n' >&${fd_continue}
|   |   |   1408.0:            	(0.000058s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1409.0:            	(0.002425s|00.00%)	(1x) ((kkProcs=0 ))
|   |   |   1409.1:            	(0.002614s|00.00%)	(1x) ((kkProcs<28 ))
|   |   |   1411.0:            	(0.002384s|00.00%)	(1x) [[ -f "${tmpDir}"/.quit ]]
|   |   |   154.0:            	(534.906168s|94.30%)	(1x) << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 161.0:        	(0.000553s|00.00%)	(1x) local p0 p0_PID (&)
|   |   |   |   164.0:        	(20.427270s|99.99%)	(1x) << (SUBSHELL): 807888 >>
|   |   |   |   |-- 164.0:    	(0.004059s|00.00%)	(1x) export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.Kq0b7q"
|   |   |   |   |   166.0:    	(0.000148s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p0
|   |   |   |   |   375.0:    	(0.009856s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p0; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   375.1:    	(0.390680s|00.06%)	(1x) trap 'trap - TERM INT HUP USR1; kill -INT 807873 ${BASHPID}' INT
|   |   |   |   |   375.2:    	(0.394953s|00.07%)	(1x) trap 'trap - TERM INT HUP USR1; kill -TERM 807873 ${BASHPID}' TERM
|   |   |   |   |   375.3:    	(0.400503s|00.07%)	(1x) trap 'trap - TERM INT HUP USR1; kill -HUP 807873 ${BASHPID}' HUP
|   |   |   |   |   375.4:    	(0.415009s|00.07%)	(1x) trap 'trap - TERM INT HUP USR1' USR1
|   |   |   |   |   177.0:    	(0.094077s|00.01%)	(1x) true
|   |   |   |   |   178.0:    	(0.092500s|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   178.1:    	(0.087184s|00.01%)	(1x) read -r < "/dev/shm/.forkrun.Kq0b7q"/.nLines
|   |   |   |   |   178.2:    	(0.002884s|00.00%)	(1x) [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   178.3:    	(0.002803s|00.00%)	(1x) nLinesCur=${REPLY}
|   |   |   |   |   180.0:    	(0.004271s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p0
|   |   |   |   |   181.0:    	(3.574941s|00.66%)	(1x) read -r -u 18 _
|   |   |   |   |   182.0:    	(0.086868s|00.00%)	(1x) [[ -f "/dev/shm/.forkrun.Kq0b7q"/.quit ]]
|   |   |   |   |   186.0:    	(0.086709s|00.01%)	(1x) [[ -f "/dev/shm/.forkrun.Kq0b7q"/.done ]]
|   |   |   |   |   186.1:    	(0.078044s|00.00%)	(1x) doneIndicatorFlag=true
|   |   |   |   |   188.0:    	(0.082732s|00.00%)	(1x) evfd_wait 22
|   |   |   |   |   189.0:    	(0.856468s|00.15%)	(1x) mapfile -t -n ${nLinesCur} -u 24 A
|   |   |   |   |   191.0:    	(0.080589s|00.00%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   191.1:    	(0.079808s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   204.0:    	(0.151124s|00.02%)	(1x) printf '\n' 1>&18
|   |   |   |   |   205.0:    	(0.004055s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p0
|   |   |   |   |   206.0:    	(0.086830s|00.01%)	(1x) [[ ${#A[@]} == 0 ]]
|   |   |   |   |   226.0:    	(0.094771s|00.01%)	(1x) ${nLinesAutoFlag}
|   |   |   |   |   227.0:    	(0.003405s|00.00%)	(1x) printf '%s\n' ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   228.0:    	(0.002964s|00.00%)	(1x) (( ${nLinesCur} < 1024 ))
|   |   |   |   |   152.0:    	(526.867701s|98.49%)	(1x) << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 159.0:	(0.084279s|00.01%)	(1x) ff "${A[@]}"
|   |   |   |   |   |   159.1:	(36.667290s|07.01%)	(1x) sha1sum "${@}"
|   |   |   |   |   |   160.0:	(62.065097s|10.50%)	(1x) sha256sum "${@}"
|   |   |   |   |   |   161.0:	(50.856551s|09.69%)	(1x) sha512sum "${@}"
|   |   |   |   |   |   162.0:	(61.036176s|10.37%)	(1x) sha224sum "${@}"
|   |   |   |   |   |   163.0:	(49.232819s|09.21%)	(1x) sha384sum "${@}"
|   |   |   |   |   |   164.0:	(33.217441s|06.55%)	(1x) md5sum "${@}"
|   |   |   |   |   |   165.0:	(16.578262s|04.17%)	(1x) sum -s "${@}"
|   |   |   |   |   |   166.0:	(34.244502s|06.36%)	(1x) sum -r "${@}"
|   |   |   |   |   |   167.0:	(14.715090s|03.94%)	(1x) cksum "${@}"
|   |   |   |   |   |   168.0:	(43.799796s|08.85%)	(1x) b2sum "${@}"
|   |   |   |   |   |   169.0:	(94.194175s|14.91%)	(1x) cksum -a sm3 "${@}"
|   |   |   |   |   |   170.0:	(15.311083s|04.11%)	(1x) xxhsum "${@}"
|   |   |   |   |   |-- 171.0:	(14.865140s|04.12%)	(1x) xxhsum -H3 "${@}"
|   |   |   |   |   228.1:    	(0.002891s|00.00%)	(1x) nLinesAutoFlag=false
|   |   |   |   |   226.1:    	(0.075721s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   |   |   229.0:    	(0.127691s|00.01%)	(1x) printf '\n' >&${fd_nAuto0}
|   |   |   |   |   183.0:    	(0.002665s|00.00%)	(1x) printf '\n' 1>&18
|   |   |   |   |   184.0:    	(0.002757s|00.00%)	(1x) break
|   |   |   |   |   160.0:    	(0.003195s|00.00%)	(1x) break
|   |   |   |   |   161.0:    	(0.002662s|00.00%)	(1x) break
|   |   |   |   |   161.1:    	(0.045484s|00.00%)	(1x) break
|   |   |   |   |-- 162.0:    	(0.002910s|00.00%)	(1x) break
|   |   |   |-- 237.0:        	(0.000075s|00.00%)	(1x) p_PID+=(${p0_PID})
|   |   |   |-- 161.0:        	(0.000534s|00.00%)	(1x) local p1 p1_PID (&)
|   |   |   |   164.0:        	(18.476701s|99.99%)	(1x) << (SUBSHELL): 807889 >>
|   |   |   |   |   166.0:    	(0.002835s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p1
|   |   |   |   |   375.0:    	(0.010132s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p1; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.079109s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p1
|   |   |   |   |   205.0:    	(0.073335s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p1
|   |   |   |-- 237.0:        	(0.000073s|00.00%)	(1x) p_PID+=(${p1_PID})
|   |   |   |-- 161.0:        	(0.000525s|00.00%)	(1x) local p2 p2_PID (&)
|   |   |   |   164.0:        	(18.508374s|99.99%)	(1x) << (SUBSHELL): 807890 >>
|   |   |   |   |   166.0:    	(0.002356s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p2
|   |   |   |   |   375.0:    	(0.009432s|00.05%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p2; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.062055s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p2
|   |   |   |   |   205.0:    	(0.061358s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p2
|   |   |   |-- 237.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p2_PID})
|   |   |   |-- 161.0:        	(0.000554s|00.00%)	(1x) local p3 p3_PID (&)
|   |   |   |   164.0:        	(18.085863s|99.99%)	(1x) << (SUBSHELL): 807891 >>
|   |   |   |   |   166.0:    	(0.000285s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p3
|   |   |   |   |   375.0:    	(0.011301s|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p3; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004605s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p3
|   |   |   |   |   205.0:    	(0.004241s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p3
|   |   |   |-- 237.0:        	(0.000103s|00.00%)	(1x) p_PID+=(${p3_PID})
|   |   |   |-- 161.0:        	(0.000571s|00.00%)	(1x) local p4 p4_PID (&)
|   |   |   |   164.0:        	(18.072117s|99.99%)	(1x) << (SUBSHELL): 807892 >>
|   |   |   |   |   166.0:    	(0.000256s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p4
|   |   |   |   |   375.0:    	(0.010852s|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p4; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.003895s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p4
|   |   |   |   |   205.0:    	(0.003712s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p4
|   |   |   |-- 237.0:        	(0.000098s|00.00%)	(1x) p_PID+=(${p4_PID})
|   |   |   |-- 161.0:        	(0.000568s|00.00%)	(1x) local p5 p5_PID (&)
|   |   |   |   164.0:        	(18.904486s|99.99%)	(1x) << (SUBSHELL): 807893 >>
|   |   |   |   |   166.0:    	(0.000111s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p5
|   |   |   |   |   375.0:    	(0.008997s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p5; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004221s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p5
|   |   |   |   |   205.0:    	(0.004144s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p5
|   |   |   |-- 237.0:        	(0.000085s|00.00%)	(1x) p_PID+=(${p5_PID})
|   |   |   |-- 161.0:        	(0.000619s|00.00%)	(1x) local p6 p6_PID (&)
|   |   |   |   164.0:        	(18.283980s|99.99%)	(1x) << (SUBSHELL): 807894 >>
|   |   |   |   |   166.0:    	(0.000088s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p6
|   |   |   |   |   375.0:    	(0.008892s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p6; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.007342s|00.04%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p6
|   |   |   |   |   205.0:    	(0.003761s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p6
|   |   |   |-- 237.0:        	(0.000082s|00.00%)	(1x) p_PID+=(${p6_PID})
|   |   |   |-- 161.0:        	(0.000564s|00.00%)	(1x) local p7 p7_PID (&)
|   |   |   |   164.0:        	(22.073827s|99.99%)	(1x) << (SUBSHELL): 807895 >>
|   |   |   |   |   166.0:    	(0.000085s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p7
|   |   |   |   |   375.0:    	(0.008986s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p7; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004274s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p7
|   |   |   |   |   205.0:    	(0.004156s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p7
|   |   |   |-- 237.0:        	(0.000079s|00.00%)	(1x) p_PID+=(${p7_PID})
|   |   |   |-- 161.0:        	(0.000575s|00.00%)	(1x) local p8 p8_PID (&)
|   |   |   |   164.0:        	(18.335318s|99.99%)	(1x) << (SUBSHELL): 807896 >>
|   |   |   |   |   166.0:    	(0.000130s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p8
|   |   |   |   |   375.0:    	(0.011517s|00.06%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p8; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.003411s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p8
|   |   |   |   |   205.0:    	(0.003119s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p8
|   |   |   |-- 237.0:        	(0.000081s|00.00%)	(1x) p_PID+=(${p8_PID})
|   |   |   |-- 161.0:        	(0.000571s|00.00%)	(1x) local p9 p9_PID (&)
|   |   |   |   164.0:        	(18.188951s|99.99%)	(1x) << (SUBSHELL): 807897 >>
|   |   |   |   |   166.0:    	(0.000085s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p9
|   |   |   |   |   375.0:    	(0.008894s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p9; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004286s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p9
|   |   |   |   |   205.0:    	(0.007008s|00.03%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p9
|   |   |   |-- 237.0:        	(0.000077s|00.00%)	(1x) p_PID+=(${p9_PID})
|   |   |   |-- 161.0:        	(0.000625s|00.00%)	(1x) local p10 p10_PID (&)
|   |   |   |   164.0:        	(21.051513s|99.99%)	(1x) << (SUBSHELL): 807899 >>
|   |   |   |   |   166.0:    	(0.000287s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p10
|   |   |   |   |   375.0:    	(0.008911s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p10; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.003318s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p10
|   |   |   |   |   205.0:    	(0.003198s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p10
|   |   |   |-- 237.0:        	(0.000079s|00.00%)	(1x) p_PID+=(${p10_PID})
|   |   |   |-- 161.0:        	(0.000724s|00.00%)	(1x) local p11 p11_PID (&)
|   |   |   |   164.0:        	(18.748786s|99.99%)	(1x) << (SUBSHELL): 807903 >>
|   |   |   |   |   166.0:    	(0.000131s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p11
|   |   |   |   |   375.0:    	(0.017157s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p11; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004341s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p11
|   |   |   |   |   205.0:    	(0.003978s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p11
|   |   |   |-- 237.0:        	(0.000140s|00.00%)	(1x) p_PID+=(${p11_PID})
|   |   |   |-- 161.0:        	(0.000840s|00.00%)	(1x) local p12 p12_PID (&)
|   |   |   |   164.0:        	(18.759795s|99.99%)	(1x) << (SUBSHELL): 807920 >>
|   |   |   |   |   166.0:    	(0.000084s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p12
|   |   |   |   |   375.0:    	(0.008964s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p12; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.003824s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p12
|   |   |   |   |   205.0:    	(0.003714s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p12
|   |   |   |-- 237.0:        	(0.000137s|00.00%)	(1x) p_PID+=(${p12_PID})
|   |   |   |-- 161.0:        	(0.000895s|00.00%)	(1x) local p13 p13_PID (&)
|   |   |   |   164.0:        	(22.725245s|99.99%)	(1x) << (SUBSHELL): 807939 >>
|   |   |   |   |   166.0:    	(0.000086s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p13
|   |   |   |   |   375.0:    	(0.008875s|00.03%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p13; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004862s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p13
|   |   |   |   |   205.0:    	(0.004655s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p13
|   |   |   |-- 237.0:        	(0.000135s|00.00%)	(1x) p_PID+=(${p13_PID})
|   |   |   |-- 161.0:        	(0.000873s|00.00%)	(1x) local p14 p14_PID (&)
|   |   |   |   164.0:        	(18.293593s|99.99%)	(1x) << (SUBSHELL): 807951 >>
|   |   |   |   |   166.0:    	(0.000087s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p14
|   |   |   |   |   375.0:    	(0.008950s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p14; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004047s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p14
|   |   |   |   |   205.0:    	(0.003524s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p14
|   |   |   |-- 237.0:        	(0.000132s|00.00%)	(1x) p_PID+=(${p14_PID})
|   |   |   |-- 161.0:        	(0.000903s|00.00%)	(1x) local p15 p15_PID (&)
|   |   |   |   164.0:        	(21.299356s|99.99%)	(1x) << (SUBSHELL): 807960 >>
|   |   |   |   |   166.0:    	(0.000089s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p15
|   |   |   |   |   375.0:    	(0.017099s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p15; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004827s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p15
|   |   |   |   |   205.0:    	(0.004190s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p15
|   |   |   |-- 237.0:        	(0.000138s|00.00%)	(1x) p_PID+=(${p15_PID})
|   |   |   |-- 161.0:        	(0.000882s|00.00%)	(1x) local p16 p16_PID (&)
|   |   |   |   164.0:        	(18.704496s|99.99%)	(1x) << (SUBSHELL): 807966 >>
|   |   |   |   |   166.0:    	(0.000084s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p16
|   |   |   |   |   375.0:    	(0.008953s|00.04%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p16; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004110s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p16
|   |   |   |   |   205.0:    	(0.003796s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p16
|   |   |   |-- 237.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p16_PID})
|   |   |   |-- 161.0:        	(0.000976s|00.00%)	(1x) local p17 p17_PID (&)
|   |   |   |   164.0:        	(21.026202s|99.99%)	(1x) << (SUBSHELL): 807972 >>
|   |   |   |   |   166.0:    	(0.000131s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p17
|   |   |   |   |   375.0:    	(0.016901s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p17; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.002688s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p17
|   |   |   |   |   205.0:    	(0.002497s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p17
|   |   |   |-- 237.0:        	(0.000127s|00.00%)	(1x) p_PID+=(${p17_PID})
|   |   |   |-- 161.0:        	(0.000979s|00.00%)	(1x) local p18 p18_PID (&)
|   |   |   |   164.0:        	(19.595686s|99.99%)	(1x) << (SUBSHELL): 807976 >>
|   |   |   |   |   166.0:    	(0.000138s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p18
|   |   |   |   |   375.0:    	(0.016904s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p18; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.002459s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p18
|   |   |   |   |   205.0:    	(0.002279s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p18
|   |   |   |-- 237.0:        	(0.000124s|00.00%)	(1x) p_PID+=(${p18_PID})
|   |   |   |-- 161.0:        	(0.000939s|00.00%)	(1x) local p19 p19_PID (&)
|   |   |   |   164.0:        	(18.472471s|99.99%)	(1x) << (SUBSHELL): 807982 >>
|   |   |   |   |   166.0:    	(0.000157s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p19
|   |   |   |   |   375.0:    	(0.015620s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p19; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.002792s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p19
|   |   |   |   |   205.0:    	(0.002677s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p19
|   |   |   |-- 237.0:        	(0.000112s|00.00%)	(1x) p_PID+=(${p19_PID})
|   |   |   |-- 161.0:        	(0.000832s|00.00%)	(1x) local p20 p20_PID (&)
|   |   |   |   164.0:        	(18.075057s|99.99%)	(1x) << (SUBSHELL): 807987 >>
|   |   |   |   |   166.0:    	(0.000132s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p20
|   |   |   |   |   375.0:    	(0.017161s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p20; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.004187s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p20
|   |   |   |   |   205.0:    	(0.003730s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p20
|   |   |   |-- 237.0:        	(0.000138s|00.00%)	(1x) p_PID+=(${p20_PID})
|   |   |   |-- 161.0:        	(0.000941s|00.00%)	(1x) local p21 p21_PID (&)
|   |   |   |   164.0:        	(18.961356s|99.99%)	(1x) << (SUBSHELL): 807993 >>
|   |   |   |   |   166.0:    	(0.000148s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p21
|   |   |   |   |   375.0:    	(0.016903s|00.08%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p21; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.002555s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p21
|   |   |   |   |   205.0:    	(0.002223s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p21
|   |   |   |-- 237.0:        	(0.000131s|00.00%)	(1x) p_PID+=(${p21_PID})
|   |   |   |-- 161.0:        	(0.001027s|00.00%)	(1x) local p22 p22_PID (&)
|   |   |   |   164.0:        	(18.031278s|99.99%)	(1x) << (SUBSHELL): 808001 >>
|   |   |   |   |   166.0:    	(0.000164s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p22
|   |   |   |   |   375.0:    	(0.019272s|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p22; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.007087s|00.03%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p22
|   |   |   |   |   205.0:    	(0.003793s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p22
|   |   |   |-- 237.0:        	(0.000128s|00.00%)	(1x) p_PID+=(${p22_PID})
|   |   |   |-- 161.0:        	(0.001016s|00.00%)	(1x) local p23 p23_PID (&)
|   |   |   |   164.0:        	(18.877184s|99.99%)	(1x) << (SUBSHELL): 808008 >>
|   |   |   |   |   166.0:    	(0.000154s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p23
|   |   |   |   |   375.0:    	(0.017482s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p23; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.001431s|00.00%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p23
|   |   |   |   |   205.0:    	(0.001132s|00.00%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p23
|   |   |   |-- 237.0:        	(0.000135s|00.00%)	(1x) p_PID+=(${p23_PID})
|   |   |   |-- 161.0:        	(0.001009s|00.00%)	(1x) local p24 p24_PID (&)
|   |   |   |   164.0:        	(18.523813s|99.99%)	(1x) << (SUBSHELL): 808015 >>
|   |   |   |   |   166.0:    	(0.000133s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p24
|   |   |   |   |   375.0:    	(0.017011s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p24; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.003756s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p24
|   |   |   |   |   205.0:    	(0.006719s|00.03%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p24
|   |   |   |-- 237.0:        	(0.000124s|00.00%)	(1x) p_PID+=(${p24_PID})
|   |   |   |-- 161.0:        	(0.000969s|00.00%)	(1x) local p25 p25_PID (&)
|   |   |   |   164.0:        	(18.401322s|99.99%)	(1x) << (SUBSHELL): 808020 >>
|   |   |   |   |   166.0:    	(0.000138s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p25
|   |   |   |   |   375.0:    	(0.020218s|00.10%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p25; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.002479s|00.01%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p25
|   |   |   |   |   205.0:    	(0.002341s|00.01%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p25
|   |   |   |-- 237.0:        	(0.000126s|00.00%)	(1x) p_PID+=(${p25_PID})
|   |   |   |-- 161.0:        	(0.001026s|00.00%)	(1x) local p26 p26_PID (&)
|   |   |   |   164.0:        	(17.969842s|99.99%)	(1x) << (SUBSHELL): 808030 >>
|   |   |   |   |   166.0:    	(0.000135s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p26
|   |   |   |   |   375.0:    	(0.023438s|00.13%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p26; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.003627s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p26
|   |   |   |   |   205.0:    	(0.005154s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p26
|   |   |   |   |   207.0:    	(0.000141s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   216.0:    	(0.000148s|00.00%)	(1x) ${doneIndicatorFlag}
|   |   |   |   |   217.0:    	(0.000161s|00.00%)	(1x) printf 'x\n' >&${fd_nAuto0}
|   |   |   |   |   219.0:    	(0.000178s|00.00%)	(1x) : > "/dev/shm/.forkrun.Kq0b7q"/.quit
|   |   |   |   |   220.0:    	(0.000252s|00.00%)	(1x) printf '%.0s\n' "/dev/shm/.forkrun.Kq0b7q"/.run/p* 1>&18
|   |   |   |   |   221.0:    	(0.000159s|00.00%)	(1x) break
|   |   |   |-- 237.0:        	(0.000121s|00.00%)	(1x) p_PID+=(${p26_PID})
|   |   |   |-- 161.0:        	(0.001007s|00.00%)	(1x) local p27 p27_PID (&)
|   |   |   |   164.0:        	(18.007080s|99.99%)	(1x) << (SUBSHELL): 808033 >>
|   |   |   |   |   166.0:    	(0.000133s|00.00%)	(1x) echo "${BASH_PID}" > "/dev/shm/.forkrun.Kq0b7q"/.run/p27
|   |   |   |   |   375.0:    	(0.017053s|00.09%)	(1x) trap ': >"/dev/shm/.forkrun.Kq0b7q"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Kq0b7q"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.Kq0b7q"/.run/p27; $'\n'printf '"'"'\n'"'"' >&18' EXIT
|   |   |   |   |   180.0:    	(0.003949s|00.02%)	(1x) echo 1 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p27
|   |   |   |   |   205.0:    	(0.003777s|00.02%)	(1x) echo 0 > "/dev/shm/.forkrun.Kq0b7q"/.wait/p27
|   |   |   |-- 237.0:        	(0.000131s|00.00%)	(1x) p_PID+=(${p27_PID})
|   |   |   1414.0:            	(0.000135s|00.00%)	(1x) echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1415.0:            	(0.000151s|00.00%)	(1x) : > "${tmpDir}"/.spawned
|   |   |   1416.0:            	(0.000119s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1418.0:            	(0.000111s|00.00%)	(1x) (( ${verboseLevel} > 3 ))
|   |   |   1422.0:            	(0.001388s|00.00%)	(1x) declare -p > "${tmpDir}"/.vars
|   |   |   1423.0:            	(0.000109s|00.00%)	(1x) ${nOrderFlag}
|   |   |   1467.0:            	(0.000129s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   1468.0:            	(0.000108s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   1475.0:            	(24.136517s|04.25%)	(1x) wait "${p_PID[@]}" &> /dev/null
|   |   |   1477.0:            	(0.000224s|00.00%)	(1x) (( ${verboseLevel} > 1 ))
|   |   |   160.0:            	(0.000262s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   161.0:            	(0.000273s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   162.0:            	(0.000943s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   162.1:            	(0.003996s|00.00%)	(1x) << (SUBSHELL): 807873 >>
|   |   |   |-- 76.0:        	(0.003996s|100.00%)	(1x) ${nSpawnFlag}
|   |   |   163.0:            	(0.000076s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   164.0:            	(0.000810s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   164.1:            	(0.003687s|00.00%)	(1x) << (SUBSHELL): 807873 >>
|   |   |   |-- 78.0:        	(0.003687s|100.00%)	(1x) ${nSpawnFlag}
|   |   |   165.0:            	(0.000081s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   166.0:            	(0.000604s|00.00%)	(1x) ${nSpawnFlag}
|   |   |   166.1:            	(0.002177s|00.00%)	(1x) << (SUBSHELL): 807873 >>
|   |   |-- |-- 80.0:        	(0.002177s|100.00%)	(1x) ${nSpawnFlag}
|   |   1481.0:                	(0.000248s|00.00%)	(1x) wait
|   |-- 160.0:                	(0.002127s|00.00%)	(1x) wait
|-- |	(0.002177s|50.00%)	(2x) |-- |
|

221.0:                        	(0.000068s|00.00%)	(1x) 0<&0
|
|



TOTAL RUN TIME: 567.230301s
