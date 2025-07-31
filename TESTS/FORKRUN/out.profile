6.0:                          	(548.444349s|50.04%)       	(500.193037s|49.96%)       	(1x) << (FUNCTION): forkrun ff < /mnt/ramdisk/flist > /dev/null >>
|-- 1.0:                      	(0.001314s|00.00%|00.00%)	(0.001086s|00.00%|00.00%)	(1x) |-- forkrun ff < /mnt/ramdisk/flist > /dev/null
|   378.0:                    	(548.443035s|99.99%|50.04%)	(500.191951s|99.99%|49.96%)	(1x) |   << (SUBSHELL) >>
|   |-- 378.0:                	(0.023615s|00.00%|00.00%)	(0.023540s|00.00%|00.00%)	(1x) |   |-- trap - EXIT INT TERM HUP USR1
|   |   65.0:                 	(0.000066s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   shopt -s extglob
|   |   68.0:                 	(0.000072s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) |   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                 	(0.000125s|00.00%|00.00%)	(0.000139s|00.00%|00.00%)	(1x) |   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                 	(0.000099s|00.00%|00.00%)	(0.000114s|00.00%|00.00%)	(1x) |   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                 	(0.000081s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) |   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                 	(0.000067s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) |   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                 	(0.000066s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                 	(0.000060s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   [[ $# == 0 ]]
|   |   80.1:                 	(0.000060s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   optParseFlag=true
|   |   81.0:                 	(0.000064s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   ${optParseFlag}
|   |   81.1:                 	(0.000075s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) |   |   (( $# > 0  ))
|   |   81.2:                 	(0.000060s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   [[ "$1" == [-+]* ]]
|   |   278.0:                	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000056s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) |   |   [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000058s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   [[ -d \/dev/shm\ ]]
|   |   287.3:                	(0.000057s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   tmpDirRoot=\/dev/shm\
|   |   289.0:                	(0.001275s|00.00%|00.00%)	(0.001047s|00.00%|00.00%)	(1x) |   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.007248s|00.00%|00.00%)	(0.007249s|00.00%|00.00%)	(1x) |   |   << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.007248s|100.00%|00.00%)	(0.007249s|100.00%|00.00%)	(1x) |   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000066s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.003114s|00.00%|00.00%)	(0.003159s|00.00%|00.00%)	(1x) |   |   mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000085s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) |   |   : > "${fPath}"
|   |   295.0:                	(0.000061s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   ${rmTmpDirFlag}
|   |   295.1:                	(0.011583s|00.00%|00.00%)	(0.000304s|00.00%|00.00%)	(1x) |   |   trap \\rm -rf "\"${tmpDir}"\" 2>/dev/null\ EXIT
|   |   1457.0:               	(548.392032s|99.99%|50.03%)	(500.153403s|99.99%|49.95%)	(1x) |   |   << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000071s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) |   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:           	(0.000081s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 1457.0:       	(0.000780s|100.00%|00.00%)	(0.000891s|100.00%|00.00%)	(6x) |   |   |   |-- :
|   |   |   1457.1:           	(0.000303s|00.00%|00.00%)	(0.000328s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.2:           	(0.000167s|00.00%|00.00%)	(0.000192s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.3:           	(0.000076s|00.00%|00.00%)	(0.000091s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.4:           	(0.000076s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.5:           	(0.000077s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   318.0:            	(0.000079s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) |   |   |   LC_ALL=C
|   |   |   319.0:            	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   LANG=C
|   |   |   320.0:            	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   IFS=
|   |   |   322.0:            	(0.000179s|00.00%|00.00%)	(0.000191s|00.00%|00.00%)	(1x) |   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000080s|00.00%|00.00%)	(0.005500s|00.00%|00.00%)	(1x) |   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   PID0="${BASHPID}"
|   |   |   330.0:            	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   shopt -s nullglob
|   |   |   333.0:            	(0.000069s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) |   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000095s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) |   |   |   enable lseek &> /dev/null
|   |   |   336.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   ${lseekFlag}
|   |   |   342.0:            	(0.002855s|00.00%|00.00%)	(0.002912s|00.00%|00.00%)	(1x) |   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000102s|00.00%|00.00%)	(0.000116s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000102s|100.00%|00.00%)	(0.000116s|100.00%|00.00%)	(1x) |   |   |   |-- lseek $fd_read 0
|   |   |   342.2:            	(0.000073s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) |   |   |   : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   $runCmd=("${@//\\r\/}")
|   |   |   353.0:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   noFuncFlag=false
|   |   |   355.0:            	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   ${noFuncFlag}
|   |   |   356.0:            	(0.000076s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) |   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   ${readBytesFlag}
|   |   |   422.0:            	(0.000065s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000065s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) |   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000077s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) |   |   |   nLines=1
|   |   |   427.0:            	(0.000065s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   |   [[ "${nProcs}" == \-\* ]]
|   |   |   432.0:            	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   [[ "${nProcs}" == *\,\* ]]
|   |   |   436.0:            	(0.000796s|00.00%|00.00%)	(0.000941s|00.00%|00.00%)	(1x) |   |   |   << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:          	(0.000060s|07.53%|00.00%)	(0.000073s|07.75%|00.00%)	(1x) |   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:          	(0.000065s|08.16%|00.00%)	(0.000077s|08.18%|00.00%)	(1x) |   |   |   |   local +i -l nn
|   |   |   |   9.0:          	(0.000061s|07.66%|00.00%)	(0.000074s|07.86%|00.00%)	(1x) |   |   |   |   local vOut
|   |   |   |   11.0:         	(0.000067s|08.41%|00.00%)	(0.000076s|08.07%|00.00%)	(1x) |   |   |   |   local -n vOut="$1"
|   |   |   |   12.0:         	(0.000062s|07.78%|00.00%)	(0.000074s|07.86%|00.00%)	(1x) |   |   |   |   shift 1
|   |   |   |   13.0:         	(0.000065s|08.16%|00.00%)	(0.000077s|08.18%|00.00%)	(1x) |   |   |   |   local -g vOut
|   |   |   |   15.0:         	(0.000072s|09.04%|00.00%)	(0.000084s|08.92%|00.00%)	(1x) |   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:         	(0.000107s|13.44%|00.00%)	(0.000120s|12.75%|00.00%)	(1x) |   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:         	(0.000059s|07.41%|00.00%)	(0.000071s|07.54%|00.00%)	(1x) |   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:         	(0.000057s|07.16%|00.00%)	(0.000069s|07.33%|00.00%)	(1x) |   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.1:         	(0.000058s|07.28%|00.00%)	(0.000070s|07.43%|00.00%)	(1x) |   |   |   |   continue
|   |   |   |-- 28.0:         	(0.000063s|07.91%|00.00%)	(0.000076s|08.07%|00.00%)	(1x) |   |   |   |-- local +n vOut
|   |   |   438.0:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.006484s|00.00%|00.00%)	(0.006582s|00.00%|00.00%)	(1x) |   |   |   $nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \^processor.*: \ /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\\034\}") && tmpA=("${tmpA[@]//!(\\034\)/}") && tmpA=("${tmpA[@]//\\034\/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \8\)"
|   |   |   440.1:            	(0.002319s|00.00%|00.00%)	(0.002421s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000239s|10.30%|00.00%)	(0.000254s|10.49%|00.00%)	(1x) |   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.002080s|89.69%|00.00%)	(0.002167s|89.50%|00.00%)	(1x) |   |   |   |-- nproc
|   |   |   441.0:            	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   (( nCPU < 1 ))
|   |   |   442.0:            	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   442.2:            	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   nProcs=${nCPU}
|   |   |   444.0:            	(0.000064s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   448.0:            	(0.000059s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   448.1:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000082s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) |   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000069s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) |   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000058s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   |   ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000063s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   doneIndicatorFlag=false
|   |   |   464.0:            	(0.000064s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   470.0:            	(0.000165s|00.00%|00.00%)	(0.000178s|00.00%|00.00%)	(1x) |   |   |   type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   470.2:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${exportOrderFlag}
|   |   |   476.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${readBytesFlag}
|   |   |   477.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   478.0:            	(0.000066s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   |   ${nullDelimiterFlag}
|   |   |   499.0:            	(0.000059s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   |   [[ -z ${delimiterVal} ]]
|   |   |   500.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   delimiterVal=\$\"\"\\n\"\"
|   |   |   501.0:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   |   ${noFuncFlag}
|   |   |   501.1:            	(0.000065s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   ${lseekFlag}
|   |   |   512.0:            	(0.000061s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   ${unescapeFlag}
|   |   |   521.0:            	(0.005114s|00.00%|00.00%)	(0.005225s|00.00%|00.00%)	(1x) |   |   |   mapfile -t runCmd < <(printf \%q\n\ "${runCmd[@]}") (&)
|   |   |   521.1:            	(0.000173s|00.00%|00.00%)	(0.000199s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000173s|100.00%|00.00%)	(0.000199s|100.00%|00.00%)	(1x) |   |   |   |-- printf \%q\n\ "${runCmd[@]}"
|   |   |   522.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   ${substituteStringFlag}
|   |   |   525.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   nLinesCur=${nLines}
|   |   |   533.0:            	(0.001596s|00.00%|00.00%)	(0.001667s|00.00%|00.00%)	(1x) |   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000073s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) |   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000074s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) |   |   |   evfd_init
|   |   |   577.0:            	(0.000084s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr=\: >"\"${tmpDir}"\"/.done;\n: >"\"${tmpDir}"\"/.quit;\nkill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) 2>/dev/null; \\\n\
|   |   |   579.0:            	(0.000066s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   583.0:            	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000519s|00.00%|00.00%)	(0.000529s|00.00%|00.00%)	(1x) |   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   599.0:            	(0.072157s|00.01%|00.00%)	(0.072081s|00.01%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000083s|00.11%|00.00%)	(0.000093s|00.12%|00.00%)	(1x) |   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.009225s|12.78%|00.00%)	(0.009200s|12.76%|00.00%)	(1x) |   |   |   |   trap - EXIT
|   |   |   |   602.0:        	(0.012350s|17.11%|00.00%)	(0.012329s|17.10%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -INT \"${PID0}"\ ${BASHPID}\ INT
|   |   |   |   603.0:        	(0.010725s|14.86%|00.00%)	(0.010710s|14.85%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -TERM \"${PID0}"\ ${BASHPID}\ TERM
|   |   |   |   604.0:        	(0.010724s|14.86%|00.00%)	(0.010707s|14.85%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -HUP \"${PID0}"\ ${BASHPID}\ HUP
|   |   |   |   605.0:        	(0.010673s|14.79%|00.00%)	(0.010657s|14.78%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1\ USR1
|   |   |   |   607.0:        	(0.000058s|00.08%|00.00%)	(0.000070s|00.09%|00.00%)	(1x) |   |   |   |   case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.018099s|25.08%|00.00%)	(0.018062s|25.05%|00.00%)	(1x) |   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000093s|00.12%|00.00%)	(0.000102s|00.14%|00.00%)	(1x) |   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000066s|00.09%|00.00%)	(0.000078s|00.10%|00.00%)	(1x) |   |   |   |   evfd_signal
|   |   |   |-- 615.0:        	(0.000061s|00.08%|00.00%)	(0.000073s|00.10%|00.00%)	(1x) |   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   ${nOrderFlag}
|   |   |   670.0:            	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   outStr=\>&\"${fd_stdout}"
|   |   |   674.0:            	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000392s|00.00%|00.00%)	(0.000425s|00.00%|00.00%)	(1x) |   |   |   printf \%s\n\ ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:            	(5.345862s|00.97%|00.48%)	(1.711956s|00.34%|00.17%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000081s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) |   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.011388s|00.21%|00.00%)	(0.011367s|00.66%|00.00%)	(1x) |   |   |   |   trap \[[ -f "\"${tmpDir}"\"/.run/pAuto ]] && \rm -f "\"${tmpDir}"\"/.run/pAuto\ EXIT
|   |   |   |   689.0:        	(0.010835s|00.20%|00.00%)	(0.010822s|00.63%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -INT \"${PID0}"\ ${BASHPID}\ INT
|   |   |   |   690.0:        	(0.010717s|00.20%|00.00%)	(0.010700s|00.62%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -TERM \"${PID0}"\ ${BASHPID}\ TERM
|   |   |   |   691.0:        	(0.010663s|00.19%|00.00%)	(0.010643s|00.62%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -HUP \"${PID0}"\ ${BASHPID}\ HUP
|   |   |   |   692.0:        	(0.010692s|00.20%|00.00%)	(0.010681s|00.62%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1\ USR1
|   |   |   |   694.0:        	(0.000071s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) |   |   |   |   ${fallocateFlag}
|   |   |   |   695.0:        	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   |   fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   |   nLinesRead=0
|   |   |   |   700.0:        	(0.088095s|01.64%|00.00%)	(0.099870s|05.83%|00.00%)	(677x) |   |   |   |   ${fallocateFlag}
|   |   |   |   702.0:        	(3.927438s|73.46%|00.35%)	(0.117717s|06.87%|00.01%)	(676x) |   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001157s|00.02%|00.00%)	(0.001339s|00.07%|00.00%)	(8x) |   |   |   |   continue
|   |   |   |   704.0:        	(0.083278s|01.55%|00.00%)	(0.096919s|05.66%|00.00%)	(668x) |   |   |   |   case ${REPLY} in
|   |   |   |   718.0:        	(0.084369s|01.57%|00.00%)	(0.097197s|05.67%|00.00%)	(667x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000065s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.083563s|01.56%|00.00%)	(0.097169s|05.67%|00.00%)	(668x) |   |   |   |   ${lseekPosFlag}
|   |   |   |   729.0:        	(0.090073s|01.68%|00.00%)	(0.100209s|05.85%|00.01%)	(668x) |   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.089548s|01.67%|00.00%)	(0.100021s|05.84%|00.00%)	(668x) |   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.083461s|01.56%|00.00%)	(0.097160s|05.67%|00.00%)	(668x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.083295s|01.55%|00.00%)	(0.096893s|05.65%|00.00%)	(668x) |   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.083271s|01.55%|00.00%)	(0.096888s|05.65%|00.00%)	(668x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   741.0:        	(0.083447s|01.56%|00.00%)	(0.096882s|05.65%|00.00%)	(668x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000065s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005546s|00.10%|00.00%)	(0.006012s|00.35%|00.00%)	(1x) |   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:        	(0.004072s|00.07%|00.00%)	(0.004816s|00.28%|00.00%)	(1x) |   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002783s|68.34%|00.00%)	(0.003153s|65.46%|00.00%)	(1x) |   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000068s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000114s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) |   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000110s|00.00%|00.00%)	(0.000128s|00.00%|00.00%)	(1x) |   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000116s|00.00%|00.00%)	(0.000134s|00.00%|00.00%)	(1x) |   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000149s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) |   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000064s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   |   nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000164s|00.00%|00.00%)	(0.000176s|00.01%|00.00%)	(1x) |   |   |   |   printf \%s\n\ ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000069s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.082725s|01.54%|00.00%)	(0.096384s|05.63%|00.00%)	(668x) |   |   |   |   ${fallocateFlag}
|   |   |   |   767.0:        	(0.082038s|01.53%|00.00%)	(0.095566s|05.58%|00.00%)	(668x) |   |   |   |   case ${nWait} in
|   |   |   |   778.0:        	(0.083526s|01.56%|00.00%)	(0.093650s|05.47%|00.00%)	(647x) |   |   |   |   ((nWait--))
|   |   |   |   783.0:        	(0.086431s|01.61%|00.00%)	(0.100177s|05.85%|00.01%)	(668x) |   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.084203s|01.57%|00.00%)	(0.097764s|05.71%|00.00%)	(666x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002727s|00.05%|00.00%)	(0.003094s|00.18%|00.00%)	(21x) |   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002610s|00.04%|00.00%)	(0.003018s|00.17%|00.00%)	(21x) |   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.064240s|01.20%|00.00%)	(0.044873s|02.62%|00.00%)	(21x) |   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002735s|00.05%|00.00%)	(0.003170s|00.18%|00.00%)	(21x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002720s|00.05%|00.00%)	(0.003179s|00.18%|00.00%)	(21x) |   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002751s|00.05%|00.00%)	(0.003169s|00.18%|00.00%)	(21x) |   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   712.0:        	(0.000128s|00.00%|00.00%)	(0.000145s|00.00%|00.00%)	(1x) |   |   |   |   nLinesAutoFlag=false
|   |   |   |   784.0:        	(0.000118s|00.00%|00.00%)	(0.000138s|00.00%|00.00%)	(1x) |   |   |   |   nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000116s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) |   |   |   |   fallocateFlag=false
|   |   |   |   786.0:        	(0.000120s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) |   |   |   |   nSpawnFlag=false
|   |   |   |   700.1:        	(0.000119s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000134s|00.00%|00.00%)	(0.000154s|00.00%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   -247.0:       	(0.000122s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(1x) |   |   |   |   -${nSpawnFlag} (?)
|   |   |   |-- -247.1:       	(0.001824s|00.03%|00.00%)	(0.001784s|00.10%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000071s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr+=\printf \"\"\0\\n\"\"\ >&\"${fd_nAuto}"\; \\\n\
|   |   |   795.0:            	(0.000089s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) |   |   |   printf \%s\n\ "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000081s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1300.0:           	(0.001878s|00.00%|00.00%)	(0.001135s|00.00%|00.00%)	(1x) |   |   |   $coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \: >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \\\"\\\"\\\n\\\"\\\"\ >&${fd_continue}\ EXIT\n\ntrap \trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\ INT\ntrap \trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\ TERM\ntrap \trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\ HUP\ntrap \trap - TERM INT HUP USR1\ USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \\\n\ >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \dd\)\n            printf \dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \ "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \iflag=fullblock <&%s\\n\ "${fd_stdin}" || printf \<&%s\\n\ "${fd_read}"\nprintf \[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\"\"\\\\\n\"\"\"0 bytes"* ]] && A=() || A[0]=1\\n\ "${tmpDir}"\n        ;;\n        \head\)\n            printf \head -c %s \ "${nBytes}"\n${pipeReadFlag} && printf \<&%s \ "${fd_stdin}" || printf \<&%s \ "${fd_read}"\nprintf \>"%s"/.stdin.tmp.{<#>}\\n\ "${tmpDir}"\nprintf \[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\ "${tmpDir}"\n        ;;\n        \bash\)\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \if read -r -d \"\\"\ -n %s -u %s\ "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \ -t %s\ "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\\)\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \nBytesRead=1\\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \nBytesRead=0\\necho \fi\\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \\ -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \ -t %s\ "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\\)\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \%s\\0\ \\"\\${A[@]}\\" \n            else\n                printf \%s\ \\"\\${A[0]}\\" \n                printf \\\0%s\ \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \read -r -N %s -u \ "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \%s \ "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \-t %s \ "${tTimeout} ";\n                else\n                    printf \%s \ ${fd_read};\n                fi\necho \-a A\;\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \%s\ """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \%s \ "mapfile"\n${lseekFlag} && printf \%s \ \-t\\nprintf \%s \ \-n\ "\\${nLinesCur}" \-u\\n${pipeReadFlag} && printf \%s \ ${fd_stdin} || printf \%s \ ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \%s \ \-t\\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \\\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\\\\\t\ read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \dd\)\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \\; } || {"""\n                ;;\n                \bash\)\n                    echo """\n                IFS=\\$\\\\\t\ read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \\; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \\\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \\\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \%s\ "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \\\n\ || printf \%s\\n\ "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \0\ >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \\\\\n\ >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\\\\\t\ read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\\\\\t\ read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \x\\\\n\ >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \q\\\\n\ >&${fd_nSpawn}\n            printf \q\\\\n\ >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \%.0s\\\\n\ \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \x%s\\n\ \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \%s\ """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \%s\\\\n\ \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \%s\ \ || \ || echo; }\n${fallocateFlag} && echo "printf \\\\\n\ >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \(\ || echo \{\\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \nOrder0="${nOrder:1}"\\n${exportOrderFlag} && echo "printf \\\034%s:\\035\\n\ \\"\\${nOrder0}\\""\nprintf \%s \ "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \bash\ ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \<"%s"/%s\ "${tmpDir}" \.stdin.tmp.{<#>}\;\n    else\n        printf \"$(<"%s"/%s)"\ "${tmpDir}" \.stdin.tmp.{<#>}\;\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \<<<%s\ "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \%s\ "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \\\\\n\\\\n----------------------------------------------\\\\n\\\\n\\n            echo \ERROR DURING \\"${runCmd[*]}\\" CALL\\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \fd_read:\\n            cat /proc/self/fdinfo/${fd_read}\n            echo \fd_write:\\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \\\n\\\\rm -f "\"${tmpDir}"\"/.stdin.tmp.{<#>}\\n\\n${subshellRunFlag} && printf \\\n%s \ \)\ || printf \\\n%s \ \}\\necho "${outStr}"\n${nOrderFlag} && echo "printf \%s\\\\n\ \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \l%s\\\\nt%s\\\\n\ \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
|   |   |   1317.0:           	(0.016103s|00.00%|00.00%)	(0.097421s|00.01%|00.00%)	(2x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 1317.0:       	(0.000420s|07.39%|00.00%)	(0.000458s|06.87%|00.00%)	(1x) |   |   |   |-- $echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \: >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \\\"\\\"\\\n\\\"\\\"\ >&${fd_continue}\ EXIT\n\ntrap \trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\ INT\ntrap \trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\ TERM\ntrap \trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\ HUP\ntrap \trap - TERM INT HUP USR1\ USR1\n\nwhile true; do"""
|   |   |   |   1318.0:       	(0.000068s|01.19%|00.00%)	(0.000081s|01.21%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1318.1:       	(0.000080s|01.40%|00.00%)	(0.000093s|01.39%|00.00%)	(1x) |   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:       	(0.000226s|03.97%|00.00%)	(0.000235s|03.52%|00.00%)	(1x) |   |   |   |   $echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \\\n\ >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:       	(0.000061s|01.07%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1399.0:       	(0.000058s|01.02%|00.00%)	(0.000071s|01.06%|00.00%)	(1x) |   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1402.0:       	(0.000063s|01.10%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   echo "{"
|   |   |   |   1403.0:       	(0.000061s|01.07%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1404.0:       	(0.000063s|01.10%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1404.1:       	(0.000066s|01.16%|00.00%)	(0.000079s|01.18%|00.00%)	(1x) |   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:       	(0.000064s|01.12%|00.00%)	(0.000077s|01.15%|00.00%)	(1x) |   |   |   |   printf \%s \ "mapfile"
|   |   |   |   1406.0:       	(0.000058s|01.02%|00.00%)	(0.000070s|01.05%|00.00%)	(1x) |   |   |   |   ${lseekFlag}
|   |   |   |   1406.1:       	(0.000063s|01.10%|00.00%)	(0.000075s|01.12%|00.00%)	(1x) |   |   |   |   printf \%s \ \-t\
|   |   |   |   1407.0:       	(0.000064s|01.12%|00.00%)	(0.000077s|01.15%|00.00%)	(1x) |   |   |   |   printf \%s \ \-n\ "\${nLinesCur}" \-u\
|   |   |   |   1408.0:       	(0.000061s|01.07%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1408.1:       	(0.000064s|01.12%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   printf \%s \ ${fd_read}
|   |   |   |   1409.0:       	(0.000060s|01.05%|00.00%)	(0.000072s|01.08%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1409.1:       	(0.000061s|01.07%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1411.0:       	(0.000065s|01.14%|00.00%)	(0.000077s|01.15%|00.00%)	(1x) |   |   |   |   $echo """${delimiterReadStr} A\n    }"""
|   |   |   |   1412.0:       	(0.000062s|01.09%|00.00%)	(0.000075s|01.12%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1412.1:       	(0.000061s|01.07%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1412.2:       	(0.000064s|01.12%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
|   |   |   |   1413.0:       	(0.000060s|01.05%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   ${lseekFlag}
|   |   |   |   1416.0:       	(0.000067s|01.17%|00.00%)	(0.000079s|01.18%|00.00%)	(1x) |   |   |   |   $echo """\n                lseek ${fd_read} -1 SEEK_CUR \\\n                read -r -u ${fd_read} -N 1"""
|   |   |   |   1417.0:       	(0.000060s|01.05%|00.00%)	(0.000072s|01.08%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1420.0:       	(0.000063s|01.10%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
|   |   |   |   1458.0:       	(0.000060s|01.05%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1463.0:       	(0.000069s|01.21%|00.00%)	(0.000081s|01.21%|00.00%)	(1x) |   |   |   |   $echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
|   |   |   |   1464.0:       	(0.000065s|01.14%|00.00%)	(0.000077s|01.15%|00.00%)	(1x) |   |   |   |   printf \%s\ "A[-1]+=\"\${REPLY}\""
|   |   |   |   1465.0:       	(0.000065s|01.14%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   ${lseekFlag}
|   |   |   |   1465.1:       	(0.000064s|01.12%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   printf \\n\
|   |   |   |   1466.0:       	(0.000060s|01.05%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1467.0:       	(0.000093s|01.63%|00.00%)	(0.000104s|01.56%|00.00%)	(1x) |   |   |   |   echo "}"
|   |   |   |   1469.0:       	(0.000061s|01.07%|00.00%)	(0.000072s|01.08%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1469.1:       	(0.000059s|01.03%|00.00%)	(0.000072s|01.08%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1469.2:       	(0.000060s|01.05%|00.00%)	(0.000072s|01.08%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1469.3:       	(0.000070s|01.23%|00.00%)	(0.000082s|01.23%|00.00%)	(1x) |   |   |   |   echo "}"
|   |   |   |   1470.0:       	(0.000069s|01.21%|00.00%)	(0.000082s|01.23%|00.00%)	(1x) |   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1483.0:       	(0.000081s|01.42%|00.00%)	(0.000094s|01.41%|00.00%)	(1x) |   |   |   |   $echo """\n    printf \\\\\n\ >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
|   |   |   |   1484.0:       	(0.000060s|01.05%|00.00%)	(0.000072s|01.08%|00.00%)	(1x) |   |   |   |   ${lseekPosFlag}
|   |   |   |   1487.0:       	(0.000086s|01.51%|00.00%)	(0.000098s|01.47%|00.00%)	(1x) |   |   |   |   $echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:       	(0.000071s|01.25%|00.00%)	(0.000083s|01.24%|00.00%)	(1x) |   |   |   |   $echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
|   |   |   |   1499.0:       	(0.000063s|01.10%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1499.1:       	(0.000066s|01.16%|00.00%)	(0.000079s|01.18%|00.00%)	(1x) |   |   |   |   echo "printf \x\\n\ >&\${fd_nAuto0}"
|   |   |   |   1500.0:       	(0.000064s|01.12%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1501.0:       	(0.000062s|01.09%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   1506.0:       	(0.000069s|01.21%|00.00%)	(0.000080s|01.20%|00.00%)	(1x) |   |   |   |   $echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \%.0s\\\\n\ \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
|   |   |   |   1507.0:       	(0.000060s|01.05%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1511.0:       	(0.000089s|01.56%|00.00%)	(0.000102s|01.53%|00.00%)	(1x) |   |   |   |   $echo """fi\n        continue\n    }"""
|   |   |   |   1512.0:       	(0.000060s|01.05%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1512.1:       	(0.000084s|01.47%|00.00%)	(0.000097s|01.45%|00.00%)	(1x) |   |   |   |   $printf \%s\ """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \%s\\\\n\ \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
|   |   |   |   1517.0:       	(0.000059s|01.03%|00.00%)	(0.000070s|01.05%|00.00%)	(1x) |   |   |   |   ${fallocateFlag}
|   |   |   |   1517.1:       	(0.000065s|01.14%|00.00%)	(0.000077s|01.15%|00.00%)	(1x) |   |   |   |   printf \%s\ \ || \
|   |   |   |   1518.0:       	(0.000058s|01.02%|00.00%)	(0.000069s|01.03%|00.00%)	(1x) |   |   |   |   ${fallocateFlag}
|   |   |   |   1518.1:       	(0.000091s|01.60%|00.00%)	(0.000103s|01.54%|00.00%)	(1x) |   |   |   |   echo "printf \\\n\ >&\${fd_nAuto0}"
|   |   |   |   1519.0:       	(0.000059s|01.03%|00.00%)	(0.000071s|01.06%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1519.1:       	(0.000059s|01.03%|00.00%)	(0.000072s|01.08%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1519.2:       	(0.000058s|01.02%|00.00%)	(0.000070s|01.05%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1519.3:       	(0.000063s|01.10%|00.00%)	(0.000075s|01.12%|00.00%)	(1x) |   |   |   |   ${lseekFlag}
|   |   |   |   1527.0:       	(0.000059s|01.03%|00.00%)	(0.000071s|01.06%|00.00%)	(1x) |   |   |   |   ${subshellRunFlag}
|   |   |   |   1527.1:       	(0.000084s|01.47%|00.00%)	(0.000096s|01.44%|00.00%)	(1x) |   |   |   |   echo \{\
|   |   |   |   1528.0:       	(0.000059s|01.03%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   ${exportOrderFlag}
|   |   |   |   1528.1:       	(0.000064s|01.12%|00.00%)	(0.000077s|01.15%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1529.0:       	(0.000061s|01.07%|00.00%)	(0.000074s|01.11%|00.00%)	(1x) |   |   |   |   ${exportOrderFlag}
|   |   |   |   1530.0:       	(0.000086s|01.51%|00.00%)	(0.000096s|01.44%|00.00%)	(1x) |   |   |   |   printf \%s \ "${runCmd[@]}"
|   |   |   |   1531.0:       	(0.000076s|01.33%|00.00%)	(0.000088s|01.32%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1538.0:       	(0.000060s|01.05%|00.00%)	(0.000073s|01.09%|00.00%)	(1x) |   |   |   |   ${stdinRunFlag}
|   |   |   |   1541.0:       	(0.000075s|01.32%|00.00%)	(0.000087s|01.30%|00.00%)	(1x) |   |   |   |   ${noFuncFlag}
|   |   |   |   1544.0:       	(0.000060s|01.05%|00.00%)	(0.000071s|01.06%|00.00%)	(1x) |   |   |   |   ${substituteStringFlag}
|   |   |   |   1545.0:       	(0.000078s|01.37%|00.00%)	(0.000091s|01.36%|00.00%)	(1x) |   |   |   |   printf \%s\ "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:       	(0.000066s|01.16%|00.00%)	(0.000078s|01.17%|00.00%)	(1x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:       	(0.000063s|01.10%|00.00%)	(0.000075s|01.12%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1563.0:       	(0.000058s|01.02%|00.00%)	(0.000069s|01.03%|00.00%)	(1x) |   |   |   |   ${subshellRunFlag}
|   |   |   |   1563.1:       	(0.000081s|01.42%|00.00%)	(0.000093s|01.39%|00.00%)	(1x) |   |   |   |   printf \\n%s \ \}\
|   |   |   |   1564.0:       	(0.000066s|01.16%|00.00%)	(0.000078s|01.17%|00.00%)	(1x) |   |   |   |   echo "${outStr}"
|   |   |   |   1565.0:       	(0.000064s|01.12%|00.00%)	(0.000076s|01.14%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1566.0:       	(0.000063s|01.10%|00.00%)	(0.000075s|01.12%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1571.0:       	(0.000071s|01.25%|00.00%)	(0.000084s|01.26%|00.00%)	(1x) |   |   |   |-- $echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
|   |   |   1305.0:           	(0.000298s|00.00%|00.00%)	(0.000342s|00.00%|00.00%)	(1x) |   |   |   ${nOrderFlag}
|   |   |   1310.0:           	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr+=\kill $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \"${exitTrapStr_kill}"\ 2>/dev/null; \n        kill -9 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) 2>/dev/null; \\\n\
|   |   |   1315.0:           	(0.000065s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr+=\trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\
|   |   |   1322.0:           	(0.010899s|00.00%|00.00%)	(0.010880s|00.00%|00.00%)	(1x) |   |   |   $trap \trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) \"${PID0}" INT
|   |   |   1327.0:           	(0.010643s|00.00%|00.00%)	(0.010622s|00.00%|00.00%)	(1x) |   |   |   $trap \trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) \"${PID0}" TERM
|   |   |   1332.0:           	(0.010360s|00.00%|00.00%)	(0.010344s|00.00%|00.00%)	(1x) |   |   |   $trap \trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) \"${PID0}" HUP
|   |   |   1334.0:           	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1335.0:           	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1337.0:           	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1348.0:           	(0.000066s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   printf \\n\ >&${fd_continue}
|   |   |   1351.0:           	(0.000058s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1352.0:           	(0.002625s|00.00%|00.00%)	(0.003084s|00.00%|00.00%)	(29x) |   |   |   ((kkProcs=0 ))
|   |   |   1352.1:           	(0.002573s|00.00%|00.00%)	(0.003046s|00.00%|00.00%)	(29x) |   |   |   ((kkProcs<28 ))
|   |   |   1353.0:           	(0.002568s|00.00%|00.00%)	(0.003010s|00.00%|00.00%)	(28x) |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:           	(518.969182s|94.63%|47.35%)	(498.146771s|99.59%|49.75%)	(28x) |   |   |   << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:          	(0.000586s|00.00%|00.00%)	(0.000604s|00.00%|00.00%)	(1x) |   |   |   |-- local p0 p0_PID (&)
|   |   |   |   72.0:         	(518.943275s|99.99%|47.35%)	(498.119818s|99.99%|49.75%)	(28x) |   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 72.0:     	(0.005365s|00.00%|00.00%)	(0.006063s|00.00%|00.00%)	(28x) |   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.ajREge"
|   |   |   |   |   8.0:      	(0.000221s|00.00%|00.00%)	(0.000255s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p0
|   |   |   |   |   12.0:     	(0.011320s|00.05%|00.00%)	(0.011303s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p0; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   14.0:     	(0.435696s|00.07%|00.03%)	(0.433312s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1; kill -INT 111798 ${BASHPID}\ INT
|   |   |   |   |   15.0:     	(0.452014s|00.08%|00.04%)	(0.450725s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1; kill -TERM 111798 ${BASHPID}\ TERM
|   |   |   |   |   16.0:     	(0.442841s|00.08%|00.04%)	(0.441274s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1; kill -HUP 111798 ${BASHPID}\ HUP
|   |   |   |   |   17.0:     	(0.445528s|00.08%|00.04%)	(0.444402s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1\ USR1
|   |   |   |   |   19.0:     	(0.108818s|00.01%|00.00%)	(0.123643s|00.02%|00.01%)	(695x) |   |   |   |   |   true
|   |   |   |   |   20.0:     	(0.093794s|00.01%|00.00%)	(0.107896s|00.01%|00.01%)	(695x) |   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.1:     	(0.097210s|00.01%|00.00%)	(0.109980s|00.01%|00.01%)	(695x) |   |   |   |   |   read -r < "/dev/shm/.forkrun.ajREge"/.nLines
|   |   |   |   |   20.2:     	(0.003171s|00.00%|00.00%)	(0.003742s|00.00%|00.00%)	(33x) |   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:     	(0.003035s|00.00%|00.00%)	(0.003578s|00.00%|00.00%)	(33x) |   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.0:     	(0.003722s|00.01%|00.00%)	(0.004197s|00.02%|00.00%)	(23x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p0
|   |   |   |   |   23.0:     	(6.186749s|01.19%|00.56%)	(0.151241s|00.02%|00.01%)	(695x) |   |   |   |   |   read -r -u 21 _
|   |   |   |   |   24.0:     	(0.099520s|00.01%|00.00%)	(0.114120s|00.01%|00.01%)	(695x) |   |   |   |   |   [[ -f "/dev/shm/.forkrun.ajREge"/.quit ]]
|   |   |   |   |   28.0:     	(0.099548s|00.01%|00.00%)	(0.107094s|00.01%|00.01%)	(668x) |   |   |   |   |   [[ -f "/dev/shm/.forkrun.ajREge"/.done ]]
|   |   |   |   |   28.1:     	(0.091964s|00.01%|00.00%)	(0.102685s|00.01%|00.01%)	(668x) |   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.0:     	(0.093138s|00.01%|00.00%)	(0.107115s|00.01%|00.01%)	(668x) |   |   |   |   |   evfd_wait 25
|   |   |   |   |   31.0:     	(0.812487s|00.15%|00.07%)	(0.795840s|00.15%|00.07%)	(668x) |   |   |   |   |   mapfile -t -n ${nLinesCur} -u 27 A
|   |   |   |   |   33.0:     	(0.089144s|00.01%|00.00%)	(0.102969s|00.01%|00.01%)	(668x) |   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   33.1:     	(0.091534s|00.01%|00.00%)	(0.102116s|00.01%|00.01%)	(667x) |   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.0:     	(0.144822s|00.02%|00.01%)	(0.110508s|00.01%|00.01%)	(668x) |   |   |   |   |   printf \\n\ 1>&21
|   |   |   |   |   47.0:     	(0.003350s|00.01%|00.00%)	(0.003801s|00.01%|00.00%)	(22x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p0
|   |   |   |   |   48.0:     	(0.088156s|00.01%|00.00%)	(0.102038s|00.01%|00.01%)	(668x) |   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   68.0:     	(0.087234s|00.01%|00.00%)	(0.101118s|00.01%|00.01%)	(667x) |   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   69.0:     	(0.003563s|00.00%|00.00%)	(0.004136s|00.00%|00.00%)	(33x) |   |   |   |   |   printf \%s\n\ ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   70.0:     	(0.003049s|00.00%|00.00%)	(0.003597s|00.00%|00.00%)	(33x) |   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   73.0:     	(508.041457s|97.87%|46.35%)	(493.136524s|98.98%|49.25%)	(667x) |   |   |   |   |   << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:  	(0.083996s|00.02%|00.00%)	(0.096419s|00.02%|00.00%)	(667x) |   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.0:  	(34.800686s|06.90%|03.17%)	(33.718093s|06.91%|03.36%)	(667x) |   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.0:  	(60.078577s|10.42%|05.48%)	(58.640158s|10.45%|05.85%)	(667x) |   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.0: 	(48.994079s|09.59%|04.47%)	(47.516666s|09.61%|04.74%)	(667x) |   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.0: 	(59.601264s|10.32%|05.43%)	(58.127805s|10.36%|05.80%)	(667x) |   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.0: 	(47.672739s|09.22%|04.35%)	(46.204190s|09.18%|04.61%)	(667x) |   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.0: 	(31.256573s|06.45%|02.85%)	(30.193474s|06.42%|03.01%)	(667x) |   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.0: 	(15.326568s|04.18%|01.39%)	(14.649004s|04.14%|01.46%)	(667x) |   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.0: 	(33.040710s|06.38%|03.01%)	(31.848007s|06.34%|03.18%)	(667x) |   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.0: 	(13.480831s|03.90%|01.23%)	(12.847248s|03.89%|01.28%)	(667x) |   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.0: 	(41.378239s|08.68%|03.77%)	(40.057774s|08.67%|04.00%)	(667x) |   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.0: 	(92.342157s|15.03%|08.42%)	(90.719224s|15.20%|09.06%)	(667x) |   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0: 	(15.349344s|04.40%|01.40%)	(14.573548s|04.36%|01.45%)	(667x) |   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.0: 	(14.635694s|04.36%|01.33%)	(13.944914s|04.33%|01.39%)	(667x) |   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   70.1:     	(0.002945s|00.00%|00.00%)	(0.003419s|00.00%|00.00%)	(28x) |   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   68.1:     	(0.084285s|00.01%|00.00%)	(0.097581s|00.01%|00.00%)	(634x) |   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   71.0:     	(0.118504s|00.01%|00.01%)	(0.108170s|00.01%|00.01%)	(634x) |   |   |   |   |   printf \\n\ >&${fd_nAuto0}
|   |   |   |   |   25.0:     	(0.002879s|00.00%|00.00%)	(0.003314s|00.00%|00.00%)	(27x) |   |   |   |   |   printf \\n\ 1>&21
|   |   |   |   |   26.0:     	(0.002910s|00.00%|00.00%)	(0.003375s|00.00%|00.00%)	(27x) |   |   |   |   |   break
|   |   |   |   |   2.0:      	(0.003328s|00.00%|00.00%)	(0.003810s|00.00%|00.00%)	(28x) |   |   |   |   |   break
|   |   |   |   |   3.0:      	(0.002795s|00.00%|00.00%)	(0.003263s|00.00%|00.00%)	(28x) |   |   |   |   |   break
|   |   |   |   |   3.1:      	(0.046842s|00.00%|00.00%)	(0.046802s|00.00%|00.00%)	(28x) |   |   |   |   |   break
|   |   |   |   |-- 4.0:      	(0.003049s|00.00%|00.00%)	(0.003514s|00.00%|00.00%)	(28x) |   |   |   |   |-- break
|   |   |   |-- 145.0:        	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p0_PID})
|   |   |   |-- 1.0:          	(0.000550s|00.00%|00.00%)	(0.000565s|00.00%|00.00%)	(1x) |   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.0:      	(0.000277s|00.00%|00.00%)	(0.000305s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p1
|   |   |   |   |   12.0:     	(0.012055s|00.06%|00.00%)	(0.012037s|00.07%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p1; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005043s|00.02%|00.00%)	(0.005658s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p1
|   |   |   |   |   47.0:     	(0.004697s|00.02%|00.00%)	(0.005327s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p1
|   |   |   |-- 145.0:        	(0.000111s|00.00%|00.00%)	(0.000118s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p1_PID})
|   |   |   |-- 1.0:          	(0.000574s|00.00%|00.00%)	(0.000592s|00.00%|00.00%)	(1x) |   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.0:      	(0.000114s|00.00%|00.00%)	(0.000130s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p2
|   |   |   |   |   12.0:     	(0.011969s|00.06%|00.00%)	(0.011950s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p2; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003728s|00.01%|00.00%)	(0.004180s|00.02%|00.00%)	(23x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p2
|   |   |   |   |   47.0:     	(0.003497s|00.01%|00.00%)	(0.003941s|00.02%|00.00%)	(22x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p2
|   |   |   |-- 145.0:        	(0.000089s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p2_PID})
|   |   |   |-- 1.0:          	(0.000568s|00.00%|00.00%)	(0.000584s|00.00%|00.00%)	(1x) |   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.0:      	(0.000084s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p3
|   |   |   |   |   12.0:     	(0.010190s|00.05%|00.00%)	(0.010181s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p3; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.002634s|00.01%|00.00%)	(0.002978s|00.01%|00.00%)	(17x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p3
|   |   |   |   |   47.0:     	(0.002425s|00.01%|00.00%)	(0.002762s|00.01%|00.00%)	(16x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p3
|   |   |   |-- 145.0:        	(0.000087s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p3_PID})
|   |   |   |-- 1.0:          	(0.000587s|00.00%|00.00%)	(0.000603s|00.00%|00.00%)	(1x) |   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.0:      	(0.000087s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p4
|   |   |   |   |   12.0:     	(0.010471s|00.05%|00.00%)	(0.010460s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p4; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.001935s|00.00%|00.00%)	(0.002149s|00.01%|00.00%)	(13x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p4
|   |   |   |   |   47.0:     	(0.001821s|00.00%|00.00%)	(0.002068s|00.01%|00.00%)	(12x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p4
|   |   |   |-- 145.0:        	(0.000086s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p4_PID})
|   |   |   |-- 1.0:          	(0.000576s|00.00%|00.00%)	(0.000591s|00.00%|00.00%)	(1x) |   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.0:      	(0.000336s|00.00%|00.00%)	(0.000381s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p5
|   |   |   |   |   12.0:     	(0.010474s|00.05%|00.00%)	(0.010460s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p5; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004251s|00.02%|00.00%)	(0.004813s|00.02%|00.00%)	(25x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p5
|   |   |   |   |   47.0:     	(0.003948s|00.02%|00.00%)	(0.004464s|00.02%|00.00%)	(24x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p5
|   |   |   |-- 145.0:        	(0.000086s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p5_PID})
|   |   |   |-- 1.0:          	(0.000595s|00.00%|00.00%)	(0.000615s|00.00%|00.00%)	(1x) |   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.0:      	(0.000350s|00.00%|00.00%)	(0.000384s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p6
|   |   |   |   |   12.0:     	(0.010993s|00.06%|00.00%)	(0.010986s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p6; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005532s|00.03%|00.00%)	(0.006233s|00.03%|00.00%)	(33x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p6
|   |   |   |   |   47.0:     	(0.005191s|00.02%|00.00%)	(0.005850s|00.03%|00.00%)	(32x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p6
|   |   |   |-- 145.0:        	(0.000092s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p6_PID})
|   |   |   |-- 1.0:          	(0.000592s|00.00%|00.00%)	(0.000611s|00.00%|00.00%)	(1x) |   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.0:      	(0.000149s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p7
|   |   |   |   |   12.0:     	(0.013110s|00.07%|00.00%)	(0.013088s|00.07%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p7; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003574s|00.01%|00.00%)	(0.004027s|00.02%|00.00%)	(22x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p7
|   |   |   |   |   47.0:     	(0.003631s|00.02%|00.00%)	(0.004095s|00.02%|00.00%)	(21x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p7
|   |   |   |-- 145.0:        	(0.000091s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p7_PID})
|   |   |   |-- 1.0:          	(0.000595s|00.00%|00.00%)	(0.000611s|00.00%|00.00%)	(1x) |   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.0:      	(0.000087s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p8
|   |   |   |   |   12.0:     	(0.010478s|00.06%|00.00%)	(0.010468s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p8; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005055s|00.02%|00.00%)	(0.005687s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p8
|   |   |   |   |   47.0:     	(0.004526s|00.02%|00.00%)	(0.005111s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p8
|   |   |   |-- 145.0:        	(0.000091s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p8_PID})
|   |   |   |-- 1.0:          	(0.000594s|00.00%|00.00%)	(0.000616s|00.00%|00.00%)	(1x) |   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.0:      	(0.000090s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p9
|   |   |   |   |   12.0:     	(0.010445s|00.05%|00.00%)	(0.010435s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p9; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004460s|00.02%|00.00%)	(0.005022s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p9
|   |   |   |   |   47.0:     	(0.004289s|00.02%|00.00%)	(0.004866s|00.02%|00.00%)	(27x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p9
|   |   |   |   |   49.0:     	(0.000122s|00.00%|00.00%)	(0.000142s|00.00%|00.00%)	(1x) |   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   58.0:     	(0.000121s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) |   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   59.0:     	(0.000139s|00.00%|00.00%)	(0.000160s|00.00%|00.00%)	(1x) |   |   |   |   |   printf \x\n\ >&${fd_nAuto0}
|   |   |   |   |   61.0:     	(0.000160s|00.00%|00.00%)	(0.000182s|00.00%|00.00%)	(1x) |   |   |   |   |   : > "/dev/shm/.forkrun.ajREge"/.quit
|   |   |   |   |   62.0:     	(0.000201s|00.00%|00.00%)	(0.000222s|00.00%|00.00%)	(1x) |   |   |   |   |   printf \%.0s\n\ "/dev/shm/.forkrun.ajREge"/.run/p* 1>&21
|   |   |   |   |   63.0:     	(0.000161s|00.00%|00.00%)	(0.000183s|00.00%|00.00%)	(1x) |   |   |   |   |   break
|   |   |   |-- 145.0:        	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p9_PID})
|   |   |   |-- 1.0:          	(0.000653s|00.00%|00.00%)	(0.000668s|00.00%|00.00%)	(1x) |   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.0:      	(0.000089s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p10
|   |   |   |   |   12.0:     	(0.010471s|00.05%|00.00%)	(0.010458s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p10; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005131s|00.02%|00.00%)	(0.005784s|00.02%|00.00%)	(31x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p10
|   |   |   |   |   47.0:     	(0.004808s|00.02%|00.00%)	(0.005451s|00.02%|00.00%)	(30x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p10
|   |   |   |-- 145.0:        	(0.000096s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p10_PID})
|   |   |   |-- 1.0:          	(0.000664s|00.00%|00.00%)	(0.000680s|00.00%|00.00%)	(1x) |   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.0:      	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p11
|   |   |   |   |   12.0:     	(0.012776s|00.07%|00.00%)	(0.012742s|00.07%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p11; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005089s|00.02%|00.00%)	(0.005725s|00.03%|00.00%)	(30x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p11
|   |   |   |   |   47.0:     	(0.004703s|00.02%|00.00%)	(0.005342s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p11
|   |   |   |-- 145.0:        	(0.000087s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p11_PID})
|   |   |   |-- 1.0:          	(0.000652s|00.00%|00.00%)	(0.000668s|00.00%|00.00%)	(1x) |   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.0:      	(0.000137s|00.00%|00.00%)	(0.000129s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p12
|   |   |   |   |   12.0:     	(0.010767s|00.06%|00.00%)	(0.010684s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p12; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004698s|00.02%|00.00%)	(0.005326s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p12
|   |   |   |   |   47.0:     	(0.004698s|00.02%|00.00%)	(0.005328s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p12
|   |   |   |-- 145.0:        	(0.000082s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p12_PID})
|   |   |   |-- 1.0:          	(0.000799s|00.00%|00.00%)	(0.000824s|00.00%|00.00%)	(1x) |   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.0:      	(0.000152s|00.00%|00.00%)	(0.000168s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p13
|   |   |   |   |   12.0:     	(0.020066s|00.09%|00.00%)	(0.020011s|00.10%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p13; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004879s|00.02%|00.00%)	(0.005486s|00.02%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p13
|   |   |   |   |   47.0:     	(0.004453s|00.02%|00.00%)	(0.005055s|00.02%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p13
|   |   |   |-- 145.0:        	(0.000154s|00.00%|00.00%)	(0.000175s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p13_PID})
|   |   |   |-- 1.0:          	(0.000988s|00.00%|00.00%)	(0.001017s|00.00%|00.00%)	(1x) |   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.0:      	(0.000143s|00.00%|00.00%)	(0.000164s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p14
|   |   |   |   |   12.0:     	(0.020045s|00.11%|00.00%)	(0.019964s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p14; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004022s|00.02%|00.00%)	(0.004472s|00.02%|00.00%)	(23x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p14
|   |   |   |   |   47.0:     	(0.003767s|00.02%|00.00%)	(0.004261s|00.02%|00.00%)	(22x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p14
|   |   |   |-- 145.0:        	(0.000153s|00.00%|00.00%)	(0.000173s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p14_PID})
|   |   |   |-- 1.0:          	(0.000945s|00.00%|00.00%)	(0.000970s|00.00%|00.00%)	(1x) |   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.0:      	(0.000089s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p15
|   |   |   |   |   12.0:     	(0.010653s|00.06%|00.00%)	(0.010634s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p15; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005188s|00.02%|00.00%)	(0.005858s|00.03%|00.00%)	(30x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p15
|   |   |   |   |   47.0:     	(0.005043s|00.02%|00.00%)	(0.005511s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p15
|   |   |   |-- 145.0:        	(0.000143s|00.00%|00.00%)	(0.000163s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p15_PID})
|   |   |   |-- 1.0:          	(0.000944s|00.00%|00.00%)	(0.000968s|00.00%|00.00%)	(1x) |   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.0:      	(0.000088s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p16
|   |   |   |   |   12.0:     	(0.013110s|00.07%|00.00%)	(0.013070s|00.07%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p16; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.002202s|00.01%|00.00%)	(0.002477s|00.01%|00.00%)	(13x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p16
|   |   |   |   |   47.0:     	(0.001976s|00.01%|00.00%)	(0.002234s|00.01%|00.00%)	(12x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p16
|   |   |   |-- 145.0:        	(0.000153s|00.00%|00.00%)	(0.000174s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p16_PID})
|   |   |   |-- 1.0:          	(0.000948s|00.00%|00.00%)	(0.000973s|00.00%|00.00%)	(1x) |   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.0:      	(0.000089s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p17
|   |   |   |   |   12.0:     	(0.010453s|00.05%|00.00%)	(0.010442s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p17; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005062s|00.02%|00.00%)	(0.005679s|00.02%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p17
|   |   |   |   |   47.0:     	(0.004598s|00.02%|00.00%)	(0.005223s|00.02%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p17
|   |   |   |-- 145.0:        	(0.000142s|00.00%|00.00%)	(0.000163s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p17_PID})
|   |   |   |-- 1.0:          	(0.000998s|00.00%|00.00%)	(0.001022s|00.00%|00.00%)	(1x) |   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.0:      	(0.000173s|00.00%|00.00%)	(0.000192s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p18
|   |   |   |   |   12.0:     	(0.017717s|00.10%|00.00%)	(0.017656s|00.10%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p18; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004779s|00.02%|00.00%)	(0.005401s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p18
|   |   |   |   |   47.0:     	(0.004655s|00.02%|00.00%)	(0.005265s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p18
|   |   |   |-- 145.0:        	(0.000144s|00.00%|00.00%)	(0.000164s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p18_PID})
|   |   |   |-- 1.0:          	(0.000973s|00.00%|00.00%)	(0.000996s|00.00%|00.00%)	(1x) |   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.0:      	(0.000196s|00.00%|00.00%)	(0.000215s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p19
|   |   |   |   |   12.0:     	(0.017934s|00.09%|00.00%)	(0.017888s|00.10%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p19; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004972s|00.02%|00.00%)	(0.005587s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p19
|   |   |   |   |   47.0:     	(0.004605s|00.02%|00.00%)	(0.005227s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p19
|   |   |   |-- 145.0:        	(0.000143s|00.00%|00.00%)	(0.000163s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p19_PID})
|   |   |   |-- 1.0:          	(0.000988s|00.00%|00.00%)	(0.001012s|00.00%|00.00%)	(1x) |   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.0:      	(0.000138s|00.00%|00.00%)	(0.000155s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p20
|   |   |   |   |   12.0:     	(0.019433s|00.11%|00.00%)	(0.019372s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p20; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004453s|00.02%|00.00%)	(0.004999s|00.02%|00.00%)	(26x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p20
|   |   |   |   |   47.0:     	(0.004054s|00.02%|00.00%)	(0.004587s|00.02%|00.00%)	(25x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p20
|   |   |   |-- 145.0:        	(0.000147s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p20_PID})
|   |   |   |-- 1.0:          	(0.000898s|00.00%|00.00%)	(0.000929s|00.00%|00.00%)	(1x) |   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.0:      	(0.000147s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p21
|   |   |   |   |   12.0:     	(0.020201s|00.11%|00.00%)	(0.020138s|00.12%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p21; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004420s|00.02%|00.00%)	(0.004975s|00.02%|00.00%)	(25x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p21
|   |   |   |   |   47.0:     	(0.004393s|00.02%|00.00%)	(0.004946s|00.02%|00.00%)	(24x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p21
|   |   |   |-- 145.0:        	(0.000157s|00.00%|00.00%)	(0.000178s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p21_PID})
|   |   |   |-- 1.0:          	(0.001088s|00.00%|00.00%)	(0.001111s|00.00%|00.00%)	(1x) |   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.0:      	(0.000155s|00.00%|00.00%)	(0.000176s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p22
|   |   |   |   |   12.0:     	(0.021173s|00.10%|00.00%)	(0.021093s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p22; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003449s|00.01%|00.00%)	(0.003858s|00.02%|00.00%)	(21x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p22
|   |   |   |   |   47.0:     	(0.003428s|00.01%|00.00%)	(0.003841s|00.02%|00.00%)	(20x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p22
|   |   |   |-- 145.0:        	(0.000151s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p22_PID})
|   |   |   |-- 1.0:          	(0.001014s|00.00%|00.00%)	(0.001036s|00.00%|00.00%)	(1x) |   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.0:      	(0.000159s|00.00%|00.00%)	(0.000175s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p23
|   |   |   |   |   12.0:     	(0.020751s|00.09%|00.00%)	(0.020687s|00.09%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p23; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.002887s|00.01%|00.00%)	(0.003233s|00.01%|00.00%)	(17x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p23
|   |   |   |   |   47.0:     	(0.002719s|00.01%|00.00%)	(0.003066s|00.01%|00.00%)	(16x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p23
|   |   |   |-- 145.0:        	(0.000154s|00.00%|00.00%)	(0.000174s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p23_PID})
|   |   |   |-- 1.0:          	(0.001031s|00.00%|00.00%)	(0.001052s|00.00%|00.00%)	(1x) |   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.0:      	(0.000141s|00.00%|00.00%)	(0.000162s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p24
|   |   |   |   |   12.0:     	(0.019512s|00.11%|00.00%)	(0.019446s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p24; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004578s|00.02%|00.00%)	(0.005141s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p24
|   |   |   |   |   47.0:     	(0.004369s|00.02%|00.00%)	(0.004951s|00.03%|00.00%)	(26x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p24
|   |   |   |-- 145.0:        	(0.000141s|00.00%|00.00%)	(0.000161s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p24_PID})
|   |   |   |-- 1.0:          	(0.001003s|00.00%|00.00%)	(0.001026s|00.00%|00.00%)	(1x) |   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.0:      	(0.000172s|00.00%|00.00%)	(0.000192s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p25
|   |   |   |   |   12.0:     	(0.024749s|00.13%|00.00%)	(0.021185s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p25; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003763s|00.02%|00.00%)	(0.004225s|00.02%|00.00%)	(21x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p25
|   |   |   |   |   47.0:     	(0.003347s|00.01%|00.00%)	(0.003778s|00.02%|00.00%)	(20x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p25
|   |   |   |-- 145.0:        	(0.000149s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p25_PID})
|   |   |   |-- 1.0:          	(0.001050s|00.00%|00.00%)	(0.001074s|00.00%|00.00%)	(1x) |   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.0:      	(0.000163s|00.00%|00.00%)	(0.000186s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p26
|   |   |   |   |   12.0:     	(0.021243s|00.11%|00.00%)	(0.021165s|00.12%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p26; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003526s|00.01%|00.00%)	(0.003995s|00.02%|00.00%)	(20x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p26
|   |   |   |   |   47.0:     	(0.003230s|00.01%|00.00%)	(0.003651s|00.02%|00.00%)	(19x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p26
|   |   |   |-- 145.0:        	(0.000147s|00.00%|00.00%)	(0.000168s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p26_PID})
|   |   |   |-- 1.0:          	(0.001051s|00.00%|00.00%)	(0.001071s|00.00%|00.00%)	(1x) |   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.0:      	(0.000158s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.ajREge"/.run/p27
|   |   |   |   |   12.0:     	(0.020116s|00.11%|00.00%)	(0.019937s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.ajREge"/.quit; \n[[ -f "/dev/shm/.forkrun.ajREge"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun.ajREge"/.run/p27; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004647s|00.02%|00.00%)	(0.005231s|00.03%|00.00%)	(26x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.ajREge"/.wait/p27
|   |   |   |   |   47.0:     	(0.004150s|00.02%|00.00%)	(0.004694s|00.02%|00.00%)	(25x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.ajREge"/.wait/p27
|   |   |   |-- 145.0:        	(0.000150s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1356.0:           	(0.000149s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) |   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:           	(0.000142s|00.00%|00.00%)	(0.000163s|00.00%|00.00%)	(1x) |   |   |   : > "${tmpDir}"/.spawned
|   |   |   1358.0:           	(0.000121s|00.00%|00.00%)	(0.000140s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1361.0:           	(0.000115s|00.00%|00.00%)	(0.000134s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1366.0:           	(0.001233s|00.00%|00.00%)	(0.001253s|00.00%|00.00%)	(1x) |   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:           	(0.000122s|00.00%|00.00%)	(0.000142s|00.00%|00.00%)	(1x) |   |   |   ${nOrderFlag}
|   |   |   1433.0:           	(0.000130s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1436.0:           	(0.000115s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1443.0:           	(23.873496s|04.35%|02.17%)	(0.001876s|00.00%|00.00%)	(1x) |   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:           	(0.000282s|00.00%|00.00%)	(0.000326s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1452.0:           	(0.000280s|00.00%|00.00%)	(0.000323s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   -247.0:           	(0.000148s|00.00%|00.00%)	(0.000164s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -246.0:           	(0.000076s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -245.0:           	(0.001716s|00.00%|00.00%)	(0.001585s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -245.1:           	(0.008140s|00.00%|00.00%)	(0.008141s|00.00%|00.00%)	(1x) |   |   |   -<< (SUBSHELL) >>
|   |   |   |-- -245.0:       	(0.008140s|100.00%|00.00%)	(0.008141s|100.00%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag}
|   |   |   -244.0:           	(0.000075s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -243.0:           	(0.003316s|00.00%|00.00%)	(0.003393s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -243.1:           	(0.003355s|00.00%|00.00%)	(0.003356s|00.00%|00.00%)	(1x) |   |   |   -<< (SUBSHELL) >>
|   |   |   |-- -243.0:       	(0.003355s|100.00%|00.00%)	(0.003356s|100.00%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag}
|   |   |   -242.0:           	(0.000087s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -241.0:           	(0.004973s|00.00%|00.00%)	(0.005028s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -241.1:           	(0.005044s|00.00%|00.00%)	(0.005045s|00.00%|00.00%)	(1x) |   |   |   -<< (SUBSHELL) >>
|   |   |   |-- -241.0:       	(0.005044s|100.00%|00.00%)	(0.005045s|100.00%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag}
|   |   |-- -240.0:           	(0.017154s|00.00%|00.00%)	(0.017120s|00.00%|00.00%)	(1x) |   |   |-- -${nSpawnFlag} (?)
|   |   1458.0:               	(0.000324s|00.00%|00.00%)	(0.000374s|00.00%|00.00%)	(1x) |   |   wait
|-- |-- -247.0:               	(0.002447s|00.00%|00.00%)	(0.001206s|00.00%|00.00%)	(1x) |-- |-- -wait (?)

7.0:                          	(547.468702s|49.95%)       	(500.968386s|50.03%)       	(1x) << (FUNCTION): forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
|-- 1.0:                      	(0.001008s|00.00%|00.00%)	(0.000705s|00.00%|00.00%)	(1x) |-- forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
|   378.0:                    	(547.467694s|99.99%|49.95%)	(500.967681s|99.99%|50.03%)	(1x) |   << (SUBSHELL) >>
|   |-- 378.0:                	(0.021564s|00.00%|00.00%)	(0.021525s|00.00%|00.00%)	(1x) |   |-- trap - EXIT INT TERM HUP USR1
|   |   65.0:                 	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   shopt -s extglob
|   |   68.0:                 	(0.000069s|00.00%|00.00%)	(0.000083s|00.00%|00.00%)	(1x) |   |   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
|   |   69.0:                 	(0.000119s|00.00%|00.00%)	(0.000132s|00.00%|00.00%)	(1x) |   |   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
|   |   70.0:                 	(0.000095s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) |   |   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
|   |   71.0:                 	(0.000077s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) |   |   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
|   |   72.0:                 	(0.000063s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
|   |   77.0:                 	(0.000069s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) |   |   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
|   |   80.0:                 	(0.000055s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) |   |   [[ $# == 0 ]]
|   |   80.1:                 	(0.000056s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) |   |   optParseFlag=true
|   |   81.0:                 	(0.000117s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(2x) |   |   ${optParseFlag}
|   |   81.1:                 	(0.000113s|00.00%|00.00%)	(0.000139s|00.00%|00.00%)	(2x) |   |   (( $# > 0  ))
|   |   81.2:                 	(0.000114s|00.00%|00.00%)	(0.000141s|00.00%|00.00%)	(2x) |   |   [[ "$1" == [-+]* ]]
|   |   82.0:                 	(0.000090s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) |   |   case "${1}" in
|   |   209.0:                	(0.000067s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) |   |   [[ "${1:0:1}" == \-\ ]]
|   |   209.1:                	(0.000059s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   nullDelimiterFlag=true
|   |   273.0:                	(0.000062s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   shift 1
|   |   274.0:                	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   [[ ${#} == 0 ]]
|   |   278.0:                	(0.000061s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   [ -t "${fd_stdin0}" ]
|   |   287.0:                	(0.000058s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   [[ -n ${tmpDirRoot} ]]
|   |   287.1:                	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   [[ -n ${TMPDIR} ]]
|   |   287.2:                	(0.000062s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   [[ -d \/dev/shm\ ]]
|   |   287.3:                	(0.000057s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   tmpDirRoot=\/dev/shm\
|   |   289.0:                	(0.001263s|00.00%|00.00%)	(0.001021s|00.00%|00.00%)	(1x) |   |   tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
|   |   289.1:                	(0.005721s|00.00%|00.00%)	(0.005722s|00.00%|00.00%)	(1x) |   |   << (SUBSHELL) >>
|   |   |-- 289.0:            	(0.005721s|100.00%|00.00%)	(0.005722s|100.00%|00.00%)	(1x) |   |   |-- mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
|   |   290.0:                	(0.000061s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   fPath="${tmpDir}"/.stdin
|   |   292.0:                	(0.003107s|00.00%|00.00%)	(0.003159s|00.00%|00.00%)	(1x) |   |   mkdir -p "${tmpDir}"/.run
|   |   293.0:                	(0.000083s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) |   |   : > "${fPath}"
|   |   295.0:                	(0.000058s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   ${rmTmpDirFlag}
|   |   295.1:                	(0.011416s|00.00%|00.00%)	(0.000263s|00.00%|00.00%)	(1x) |   |   trap \\rm -rf "\"${tmpDir}"\" 2>/dev/null\ EXIT
|   |   1457.0:               	(547.418649s|99.99%|49.95%)	(500.932583s|99.99%|50.03%)	(1x) |   |   << (SUBSHELL) >>
|   |   |-- 303.0:            	(0.000069s|00.00%|00.00%)	(0.000085s|00.00%|00.00%)	(1x) |   |   |-- [[ -n ${DEBUG_FORKRUN} ]]
|   |   |   1457.0:           	(0.000090s|00.00%|00.00%)	(0.000109s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 1457.0:       	(0.001406s|100.00%|00.00%)	(0.001658s|100.00%|00.00%)	(6x) |   |   |   |-- :
|   |   |   1457.1:           	(0.000183s|00.00%|00.00%)	(0.000218s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.2:           	(0.000279s|00.00%|00.00%)	(0.000330s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.3:           	(0.000280s|00.00%|00.00%)	(0.000332s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.4:           	(0.000280s|00.00%|00.00%)	(0.000331s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   1457.5:           	(0.000294s|00.00%|00.00%)	(0.000338s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   318.0:            	(0.000080s|00.00%|00.00%)	(0.000095s|00.00%|00.00%)	(1x) |   |   |   LC_ALL=C
|   |   |   319.0:            	(0.000065s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   LANG=C
|   |   |   320.0:            	(0.000064s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   IFS=
|   |   |   322.0:            	(0.000187s|00.00%|00.00%)	(0.000210s|00.00%|00.00%)	(1x) |   |   |   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
|   |   |   324.0:            	(0.000069s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) |   |   |   export LC_ALL=C LANG=C IFS=
|   |   |   325.0:            	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   FORKRUN_TMPDIR="$tmpDir"
|   |   |   326.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   export FORKRUN_TMPDIR="$tmpDir"
|   |   |   328.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   PID0="${BASHPID}"
|   |   |   330.0:            	(0.000077s|00.00%|00.00%)	(0.008813s|00.00%|00.00%)	(1x) |   |   |   shopt -s nullglob
|   |   |   333.0:            	(0.000081s|00.00%|00.00%)	(0.008857s|00.00%|00.00%)	(1x) |   |   |   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
|   |   |   335.0:            	(0.000077s|00.00%|00.00%)	(0.000090s|00.00%|00.00%)	(1x) |   |   |   enable lseek &> /dev/null
|   |   |   336.0:            	(0.000063s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   : "${lseekFlag:=true}"
|   |   |   341.0:            	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   ${lseekFlag}
|   |   |   342.0:            	(0.002913s|00.00%|00.00%)	(0.002966s|00.00%|00.00%)	(1x) |   |   |   [[ "$(lseek $fd_read 0)" == 0 ]]
|   |   |   342.1:            	(0.000104s|00.00%|00.00%)	(0.000121s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 342.0:        	(0.000104s|100.00%|00.00%)	(0.000121s|100.00%|00.00%)	(1x) |   |   |   |-- lseek $fd_read 0
|   |   |   342.2:            	(0.000072s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) |   |   |   : "${lseekPosFlag:=true}"
|   |   |   346.0:            	(0.000065s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   |   ${FORCE_allowCarriageReturnsFlag:-false}
|   |   |   351.0:            	(0.000068s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) |   |   |   $runCmd=("${@//\\r\/}")
|   |   |   353.0:            	(0.000068s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   354.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   (( ${#runCmd[@]} > 0 ))
|   |   |   354.1:            	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   noFuncFlag=false
|   |   |   355.0:            	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   ${noFuncFlag}
|   |   |   356.0:            	(0.000080s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) |   |   |   hash "${runCmd[0]}" &> /dev/null
|   |   |   360.0:            	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   ${readBytesFlag}
|   |   |   422.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   [[ -n ${nLines} ]]
|   |   |   422.1:            	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   : "${nLinesAutoFlag:=true}"
|   |   |   423.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   [[ -z ${nLines} ]]
|   |   |   423.1:            	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   nLines=1
|   |   |   427.0:            	(0.000067s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   [[ "${nProcs}" == \-\* ]]
|   |   |   432.0:            	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   [[ "${nProcs}" == *\,\* ]]
|   |   |   436.0:            	(0.000827s|00.00%|00.00%)	(0.000979s|00.00%|00.00%)	(1x) |   |   |   << (FUNCTION): _forkrun_getVal nProcs "${nProcs%%,*}" >>
|   |   |   |-- 1.0:          	(0.000078s|09.43%|00.00%)	(0.000091s|09.29%|00.00%)	(1x) |   |   |   |-- _forkrun_getVal nProcs "${nProcs%%,*}"
|   |   |   |   8.0:          	(0.000062s|07.49%|00.00%)	(0.000075s|07.66%|00.00%)	(1x) |   |   |   |   local +i -l nn
|   |   |   |   9.0:          	(0.000063s|07.61%|00.00%)	(0.000076s|07.76%|00.00%)	(1x) |   |   |   |   local vOut
|   |   |   |   11.0:         	(0.000064s|07.73%|00.00%)	(0.000078s|07.96%|00.00%)	(1x) |   |   |   |   local -n vOut="$1"
|   |   |   |   12.0:         	(0.000070s|08.46%|00.00%)	(0.000083s|08.47%|00.00%)	(1x) |   |   |   |   shift 1
|   |   |   |   13.0:         	(0.000063s|07.61%|00.00%)	(0.000076s|07.76%|00.00%)	(1x) |   |   |   |   local -g vOut
|   |   |   |   15.0:         	(0.000059s|07.13%|00.00%)	(0.000072s|07.35%|00.00%)	(1x) |   |   |   |   (( ${#pMap[@]} == 20 ))
|   |   |   |   15.1:         	(0.000119s|14.38%|00.00%)	(0.000128s|13.07%|00.00%)	(1x) |   |   |   |   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
|   |   |   |   17.0:         	(0.000062s|07.49%|00.00%)	(0.000075s|07.66%|00.00%)	(1x) |   |   |   |   for nn in "${@%%[Bb]*}"
|   |   |   |   18.0:         	(0.000060s|07.25%|00.00%)	(0.000073s|07.45%|00.00%)	(1x) |   |   |   |   [[ -n ${nn} ]]
|   |   |   |   18.1:         	(0.000062s|07.49%|00.00%)	(0.000074s|07.55%|00.00%)	(1x) |   |   |   |   continue
|   |   |   |-- 28.0:         	(0.000065s|07.85%|00.00%)	(0.000078s|07.96%|00.00%)	(1x) |   |   |   |-- local +n vOut
|   |   |   438.0:            	(0.000063s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   : "${nSpawnFlag:=false}"
|   |   |   440.0:            	(0.005937s|00.00%|00.00%)	(0.006029s|00.00%|00.00%)	(1x) |   |   |   $nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \^processor.*: \ /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\\034\}") && tmpA=("${tmpA[@]//!(\\034\)/}") && tmpA=("${tmpA[@]//\\034\/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \8\)"
|   |   |   440.1:            	(0.002145s|00.00%|00.00%)	(0.002227s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 440.0:        	(0.000217s|10.11%|00.00%)	(0.000235s|10.55%|00.00%)	(1x) |   |   |   |-- type -a nproc &> /dev/null
|   |   |   |-- 440.1:        	(0.001928s|89.88%|00.00%)	(0.001992s|89.44%|00.00%)	(1x) |   |   |   |-- nproc
|   |   |   441.0:            	(0.000066s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   (( nCPU < 1 ))
|   |   |   442.0:            	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   |   [[ -n ${nProcs} ]]
|   |   |   442.1:            	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   442.2:            	(0.000063s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   nProcs=${nCPU}
|   |   |   444.0:            	(0.000073s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   448.0:            	(0.000061s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   448.1:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   : "${nSpawnFlag:=false}"
|   |   |   454.0:            	(0.000079s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) |   |   |   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
|   |   |   456.0:            	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
|   |   |   459.0:            	(0.000066s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   |   ${nLinesAutoFlag}
|   |   |   459.1:            	(0.000062s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) |   |   |   (( nLinesMax < 2 * nLines ))
|   |   |   459.2:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   (( nLinesMax < nLines ))
|   |   |   461.0:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   doneIndicatorFlag=false
|   |   |   464.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   470.0:            	(0.000177s|00.00%|00.00%)	(0.000188s|00.00%|00.00%)	(1x) |   |   |   type -a fallocate &> /dev/null
|   |   |   470.1:            	(0.000072s|00.00%|00.00%)	(0.000084s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   470.2:            	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   : "${fallocateFlag:=true}"
|   |   |   473.0:            	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${exportOrderFlag}
|   |   |   476.0:            	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   ${readBytesFlag}
|   |   |   477.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   478.0:            	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${nullDelimiterFlag}
|   |   |   479.0:            	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   delimiterReadStr="-d \\"
|   |   |   480.0:            	(0.000059s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${lseekFlag}
|   |   |   480.1:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   : "${nullDelimiterProg:=\lseek\}"
|   |   |   481.0:            	(0.000061s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   : "${nullDelimiterProg:=bash}"
|   |   |   482.0:            	(0.000099s|00.00%|00.00%)	(0.000111s|00.00%|00.00%)	(1x) |   |   |   type -p dd &> /dev/null
|   |   |   483.0:            	(0.000064s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   ddAvailableFlag=true
|   |   |   484.0:            	(0.005988s|00.00%|00.00%)	(0.008442s|00.00%|00.00%)	(2x) |   |   |   dd --version | grep -qF \coreutils\
|   |   |   492.0:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
|   |   |   493.0:            	(0.000062s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${FORCE_allowUnsafeNullDelimiterFlag}
|   |   |   494.0:            	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   nullDelimiterProg=\\
|   |   |   512.0:            	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   ${unescapeFlag}
|   |   |   521.0:            	(0.002789s|00.00%|00.00%)	(0.002908s|00.00%|00.00%)	(1x) |   |   |   mapfile -t runCmd < <(printf \%q\n\ "${runCmd[@]}") (&)
|   |   |   521.1:            	(0.000079s|00.00%|00.00%)	(0.000093s|00.00%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 521.0:        	(0.000079s|100.00%|00.00%)	(0.000093s|100.00%|00.00%)	(1x) |   |   |   |-- printf \%q\n\ "${runCmd[@]}"
|   |   |   522.0:            	(0.000065s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   ${substituteStringFlag}
|   |   |   525.0:            	(0.000073s|00.00%|00.00%)	(0.000086s|00.00%|00.00%)	(1x) |   |   |   ${substituteStringIDFlag}
|   |   |   531.0:            	(0.000059s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   |   nLinesCur=${nLines}
|   |   |   533.0:            	(0.001352s|00.00%|00.00%)	(0.001434s|00.00%|00.00%)	(1x) |   |   |   mkdir -p "${tmpDir}"/.{run,wait}
|   |   |   534.0:            	(0.000069s|00.00%|00.00%)	(0.000081s|00.00%|00.00%)	(1x) |   |   |   ${nLinesReadLimitFlag}
|   |   |   537.0:            	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   ${rmTmpDirFlag}
|   |   |   539.0:            	(0.000069s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 0 ))
|   |   |   570.0:            	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   tStart="${EPOCHREALTIME//./}"
|   |   |   572.0:            	(0.000075s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) |   |   |   evfd_init
|   |   |   577.0:            	(0.000069s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr=\: >"\"${tmpDir}"\"/.done;\n: >"\"${tmpDir}"\"/.quit;\nkill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) 2>/dev/null; \\\n\
|   |   |   579.0:            	(0.000059s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${pipeReadFlag}
|   |   |   583.0:            	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${nLinesReadLimitFlag}
|   |   |   593.0:            	(0.000513s|00.00%|00.00%)	(0.000532s|00.00%|00.00%)	(1x) |   |   |   : "${writeFileProgType:=1}" (&)
|   |   |   599.0:            	(0.071717s|00.01%|00.00%)	(0.071084s|00.01%|00.00%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 599.0:        	(0.000078s|00.10%|00.00%)	(0.000091s|00.12%|00.00%)	(1x) |   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   601.0:        	(0.009347s|13.03%|00.00%)	(0.009269s|13.03%|00.00%)	(1x) |   |   |   |   trap - EXIT
|   |   |   |   602.0:        	(0.010774s|15.02%|00.00%)	(0.010695s|15.04%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -INT \"${PID0}"\ ${BASHPID}\ INT
|   |   |   |   603.0:        	(0.010725s|14.95%|00.00%)	(0.010711s|15.06%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -TERM \"${PID0}"\ ${BASHPID}\ TERM
|   |   |   |   604.0:        	(0.010827s|15.09%|00.00%)	(0.010767s|15.14%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -HUP \"${PID0}"\ ${BASHPID}\ HUP
|   |   |   |   605.0:        	(0.010731s|14.96%|00.00%)	(0.010667s|15.00%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1\ USR1
|   |   |   |   607.0:        	(0.000063s|00.08%|00.00%)	(0.000075s|00.10%|00.00%)	(1x) |   |   |   |   case ${writeFileProgType} in
|   |   |   |   608.0:        	(0.018957s|26.43%|00.00%)	(0.018554s|26.10%|00.00%)	(1x) |   |   |   |   evfd_copy ${fd_write} ${fd_stdin}
|   |   |   |   613.0:        	(0.000091s|00.12%|00.00%)	(0.000105s|00.14%|00.00%)	(1x) |   |   |   |   : > "${tmpDir}"/.done
|   |   |   |   614.0:        	(0.000063s|00.08%|00.00%)	(0.000076s|00.10%|00.00%)	(1x) |   |   |   |   evfd_signal
|   |   |   |-- 615.0:        	(0.000061s|00.08%|00.00%)	(0.000074s|00.10%|00.00%)	(1x) |   |   |   |-- (( ${verboseLevel} > 1 ))
|   |   |   623.0:            	(0.000066s|00.00%|00.00%)	(0.000079s|00.00%|00.00%)	(1x) |   |   |   exitTrapStr_kill+="${pWrite_PID} "
|   |   |   628.0:            	(0.000060s|00.00%|00.00%)	(0.000072s|00.00%|00.00%)	(1x) |   |   |   ${nOrderFlag}
|   |   |   670.0:            	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   outStr=\>&\"${fd_stdout}"
|   |   |   674.0:            	(0.000060s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   ${nLinesAutoFlag}
|   |   |   676.0:            	(0.000400s|00.00%|00.00%)	(0.000425s|00.00%|00.00%)	(1x) |   |   |   printf \%s\n\ ${nLines} > "${tmpDir}"/.nLines (&)
|   |   |   686.0:            	(5.312470s|00.97%|00.48%)	(1.708175s|00.34%|00.17%)	(1x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 686.0:        	(0.000083s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) |   |   |   |-- export LC_ALL=C LANG=C IFS=
|   |   |   |   688.0:        	(0.010245s|00.19%|00.00%)	(0.010228s|00.59%|00.00%)	(1x) |   |   |   |   trap \[[ -f "\"${tmpDir}"\"/.run/pAuto ]] && \rm -f "\"${tmpDir}"\"/.run/pAuto\ EXIT
|   |   |   |   689.0:        	(0.010702s|00.20%|00.00%)	(0.010693s|00.62%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -INT \"${PID0}"\ ${BASHPID}\ INT
|   |   |   |   690.0:        	(0.010699s|00.20%|00.00%)	(0.010687s|00.62%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -TERM \"${PID0}"\ ${BASHPID}\ TERM
|   |   |   |   691.0:        	(0.010667s|00.20%|00.00%)	(0.010656s|00.62%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1; kill -HUP \"${PID0}"\ ${BASHPID}\ HUP
|   |   |   |   692.0:        	(0.010733s|00.20%|00.00%)	(0.010726s|00.62%|00.00%)	(1x) |   |   |   |   trap \trap - TERM INT HUP USR1\ USR1
|   |   |   |   694.0:        	(0.000059s|00.00%|00.00%)	(0.000070s|00.00%|00.00%)	(1x) |   |   |   |   ${fallocateFlag}
|   |   |   |   695.0:        	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   696.0:        	(0.000060s|00.00%|00.00%)	(0.000071s|00.00%|00.00%)	(1x) |   |   |   |   fd_read_pos_old=0
|   |   |   |   698.0:        	(0.000062s|00.00%|00.00%)	(0.000073s|00.00%|00.00%)	(1x) |   |   |   |   nLinesRead=0
|   |   |   |   700.0:        	(0.086002s|01.61%|00.00%)	(0.099729s|05.83%|00.00%)	(677x) |   |   |   |   ${fallocateFlag}
|   |   |   |   702.0:        	(3.897258s|73.36%|00.35%)	(0.116732s|06.83%|00.01%)	(676x) |   |   |   |   read -u ${fd_nAuto} -t 0.1
|   |   |   |   702.1:        	(0.001495s|00.02%|00.00%)	(0.001724s|00.10%|00.00%)	(11x) |   |   |   |   continue
|   |   |   |   704.0:        	(0.088339s|01.66%|00.00%)	(0.096992s|05.67%|00.00%)	(665x) |   |   |   |   case ${REPLY} in
|   |   |   |   718.0:        	(0.086289s|01.62%|00.00%)	(0.096886s|05.67%|00.00%)	(665x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   719.0:        	(0.000090s|00.00%|00.00%)	(0.000106s|00.00%|00.00%)	(1x) |   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   722.0:        	(0.000094s|00.00%|00.00%)	(0.000109s|00.00%|00.00%)	(1x) |   |   |   |   nLinesRead=$(( nLinesRead + ${REPLY} ))
|   |   |   |   728.0:        	(0.083482s|01.57%|00.00%)	(0.097084s|05.68%|00.00%)	(665x) |   |   |   |   ${lseekPosFlag}
|   |   |   |   729.0:        	(0.086565s|01.62%|00.00%)	(0.100068s|05.85%|00.00%)	(665x) |   |   |   |   lseek $fd_read 0 SEEK_CUR fd_read_pos
|   |   |   |   730.0:        	(0.088703s|01.66%|00.00%)	(0.099783s|05.84%|00.00%)	(665x) |   |   |   |   lseek $fd_write 0 SEEK_CUR fd_write_pos
|   |   |   |   737.0:        	(0.084308s|01.58%|00.00%)	(0.096052s|05.62%|00.00%)	(665x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   737.1:        	(0.083405s|01.56%|00.00%)	(0.096950s|05.67%|00.00%)	(665x) |   |   |   |   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
|   |   |   |   739.0:        	(0.083248s|01.56%|00.00%)	(0.096751s|05.66%|00.00%)	(665x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   741.0:        	(0.083042s|01.56%|00.00%)	(0.096611s|05.65%|00.00%)	(665x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   743.0:        	(0.000062s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   745.0:        	(0.000065s|00.00%|00.00%)	(0.000078s|00.00%|00.00%)	(1x) |   |   |   |   [[ -d "${tmpDir}"/.wait ]]
|   |   |   |   746.0:        	(0.005574s|00.10%|00.00%)	(0.006046s|00.35%|00.00%)	(1x) |   |   |   |   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
|   |   |   |   746.1:        	(0.004183s|00.07%|00.00%)	(0.004961s|00.29%|00.00%)	(1x) |   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 746.0:    	(0.002863s|68.44%|00.00%)	(0.003250s|65.51%|00.00%)	(1x) |   |   |   |   |-- : | cat "${tmpDir}"/.wait 2> /dev/null
|   |   |   |   747.0:        	(0.000067s|00.00%|00.00%)	(0.000080s|00.00%|00.00%)	(1x) |   |   |   |   nProcsA=(${nProcsA//0/})
|   |   |   |   748.0:        	(0.000064s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   |   (( ${#nProcsA[@]} > 0 ))
|   |   |   |   751.0:        	(0.000077s|00.00%|00.00%)	(0.000089s|00.00%|00.00%)	(1x) |   |   |   |   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
|   |   |   |   753.0:        	(0.000070s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   |   (( ${nLinesNew} > ${nLinesCur} ))
|   |   |   |   755.0:        	(0.000061s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   |   (( ${nLinesNew} >= ${nLinesMax} ))
|   |   |   |   755.1:        	(0.000063s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   |   nLinesNew=${nLinesMax}
|   |   |   |   755.2:        	(0.000062s|00.00%|00.00%)	(0.000077s|00.00%|00.00%)	(1x) |   |   |   |   nLinesAutoFlag=false
|   |   |   |   757.0:        	(0.000083s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) |   |   |   |   printf \%s\n\ ${nLinesNew} > "${tmpDir}"/.nLines
|   |   |   |   760.0:        	(0.000062s|00.00%|00.00%)	(0.000075s|00.00%|00.00%)	(1x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   762.0:        	(0.000063s|00.00%|00.00%)	(0.000074s|00.00%|00.00%)	(1x) |   |   |   |   nLinesCur=${nLinesNew}
|   |   |   |   766.0:        	(0.082919s|01.56%|00.00%)	(0.096499s|05.64%|00.00%)	(665x) |   |   |   |   ${fallocateFlag}
|   |   |   |   767.0:        	(0.081816s|01.54%|00.00%)	(0.095379s|05.58%|00.00%)	(665x) |   |   |   |   case ${nWait} in
|   |   |   |   778.0:        	(0.080049s|01.50%|00.00%)	(0.092988s|05.44%|00.00%)	(644x) |   |   |   |   ((nWait--))
|   |   |   |   783.0:        	(0.085617s|01.61%|00.00%)	(0.099351s|05.81%|00.00%)	(665x) |   |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   |   718.1:        	(0.089008s|01.67%|00.00%)	(0.097990s|05.73%|00.00%)	(664x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   769.0:        	(0.002794s|00.05%|00.00%)	(0.003231s|00.18%|00.00%)	(21x) |   |   |   |   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
|   |   |   |   770.0:        	(0.002658s|00.05%|00.00%)	(0.003074s|00.17%|00.00%)	(21x) |   |   |   |   (( ${fd_read_pos} > ${fd_read_pos_old} ))
|   |   |   |   771.0:        	(0.060247s|01.13%|00.00%)	(0.046019s|02.69%|00.00%)	(21x) |   |   |   |   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
|   |   |   |   772.0:        	(0.002894s|00.05%|00.00%)	(0.003354s|00.19%|00.00%)	(21x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   773.0:        	(0.002961s|00.05%|00.00%)	(0.003429s|00.20%|00.00%)	(21x) |   |   |   |   fd_read_pos_old=${fd_read_pos}
|   |   |   |   775.0:        	(0.002917s|00.05%|00.00%)	(0.003363s|00.19%|00.00%)	(21x) |   |   |   |   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
|   |   |   |   784.0:        	(0.000111s|00.00%|00.00%)	(0.000131s|00.00%|00.00%)	(1x) |   |   |   |   nLinesAutoFlag=false
|   |   |   |   785.0:        	(0.000124s|00.00%|00.00%)	(0.000146s|00.00%|00.00%)	(1x) |   |   |   |   fallocateFlag=false
|   |   |   |   786.0:        	(0.000121s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(1x) |   |   |   |   nSpawnFlag=false
|   |   |   |   700.1:        	(0.000123s|00.00%|00.00%)	(0.000143s|00.00%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   700.2:        	(0.000132s|00.00%|00.00%)	(0.000148s|00.00%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   -247.0:       	(0.000124s|00.00%|00.00%)	(0.000146s|00.00%|00.00%)	(1x) |   |   |   |   -${nSpawnFlag} (?)
|   |   |   |-- -247.1:       	(0.001607s|00.03%|00.00%)	(0.001735s|00.10%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag} (?)
|   |   |   794.0:            	(0.000070s|00.00%|00.00%)	(0.000082s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr+=\printf \"\"\0\\n\"\"\ >&\"${fd_nAuto}"\; \\\n\
|   |   |   795.0:            	(0.000088s|00.00%|00.00%)	(0.000102s|00.00%|00.00%)	(1x) |   |   |   printf \%s\n\ "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
|   |   |   831.0:            	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1300.0:           	(0.001906s|00.00%|00.00%)	(0.001162s|00.00%|00.00%)	(1x) |   |   |   $coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \: >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \\\"\\\"\\\n\\\"\\\"\ >&${fd_continue}\ EXIT\n\ntrap \trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\ INT\ntrap \trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\ TERM\ntrap \trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\ HUP\ntrap \trap - TERM INT HUP USR1\ USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \\\n\ >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \dd\)\n            printf \dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \ "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \iflag=fullblock <&%s\\n\ "${fd_stdin}" || printf \<&%s\\n\ "${fd_read}"\nprintf \[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\"\"\\\\\n\"\"\"0 bytes"* ]] && A=() || A[0]=1\\n\ "${tmpDir}"\n        ;;\n        \head\)\n            printf \head -c %s \ "${nBytes}"\n${pipeReadFlag} && printf \<&%s \ "${fd_stdin}" || printf \<&%s \ "${fd_read}"\nprintf \>"%s"/.stdin.tmp.{<#>}\\n\ "${tmpDir}"\nprintf \[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\ "${tmpDir}"\n        ;;\n        \bash\)\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \if read -r -d \"\\"\ -n %s -u %s\ "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \ -t %s\ "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\\)\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \nBytesRead=1\\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \nBytesRead=0\\necho \fi\\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \\ -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \ -t %s\ "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\\)\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \%s\\0\ \\"\\${A[@]}\\" \n            else\n                printf \%s\ \\"\\${A[0]}\\" \n                printf \\\0%s\ \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \read -r -N %s -u \ "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \%s \ "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \-t %s \ "${tTimeout} ";\n                else\n                    printf \%s \ ${fd_read};\n                fi\necho \-a A\;\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \%s\ """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \%s \ "mapfile"\n${lseekFlag} && printf \%s \ \-t\\nprintf \%s \ \-n\ "\\${nLinesCur}" \-u\\n${pipeReadFlag} && printf \%s \ ${fd_stdin} || printf \%s \ ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \%s \ \-t\\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \\\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\\\\\t\ read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \dd\)\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \\; } || {"""\n                ;;\n                \bash\)\n                    echo """\n                IFS=\\$\\\\\t\ read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \\; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \\\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \\\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \%s\ "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \\\n\ || printf \%s\\n\ "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \0\ >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \\\\\n\ >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\\\\\t\ read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\\\\\t\ read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \x\\\\n\ >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \q\\\\n\ >&${fd_nSpawn}\n            printf \q\\\\n\ >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \%.0s\\\\n\ \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \x%s\\n\ \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \%s\ """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \%s\\\\n\ \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \%s\ \ || \ || echo; }\n${fallocateFlag} && echo "printf \\\\\n\ >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \(\ || echo \{\\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \nOrder0="${nOrder:1}"\\n${exportOrderFlag} && echo "printf \\\034%s:\\035\\n\ \\"\\${nOrder0}\\""\nprintf \%s \ "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \bash\ ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \<"%s"/%s\ "${tmpDir}" \.stdin.tmp.{<#>}\;\n    else\n        printf \"$(<"%s"/%s)"\ "${tmpDir}" \.stdin.tmp.{<#>}\;\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \<<<%s\ "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \%s\ "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \\\\\n\\\\n----------------------------------------------\\\\n\\\\n\\n            echo \ERROR DURING \\"${runCmd[*]}\\" CALL\\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \fd_read:\\n            cat /proc/self/fdinfo/${fd_read}\n            echo \fd_write:\\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \\\n\\\\rm -f "\"${tmpDir}"\"/.stdin.tmp.{<#>}\\n\\n${subshellRunFlag} && printf \\\n%s \ \)\ || printf \\\n%s \ \}\\necho "${outStr}"\n${nOrderFlag} && echo "printf \%s\\\\n\ \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \l%s\\\\nt%s\\\\n\ \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
|   |   |   1317.0:           	(0.016894s|00.00%|00.00%)	(0.097113s|00.01%|00.00%)	(2x) |   |   |   << (SUBSHELL) >>
|   |   |   |-- 1317.0:       	(0.000392s|07.85%|00.00%)	(0.000437s|07.49%|00.00%)	(1x) |   |   |   |-- $echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \: >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \\\"\\\"\\\n\\\"\\\"\ >&${fd_continue}\ EXIT\n\ntrap \trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\ INT\ntrap \trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\ TERM\ntrap \trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\ HUP\ntrap \trap - TERM INT HUP USR1\ USR1\n\nwhile true; do"""
|   |   |   |   1318.0:       	(0.000264s|05.28%|00.00%)	(0.000284s|04.86%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1318.1:       	(0.000076s|01.52%|00.00%)	(0.000088s|01.50%|00.00%)	(1x) |   |   |   |   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
|   |   |   |   1326.0:       	(0.000210s|04.20%|00.00%)	(0.000223s|03.82%|00.00%)	(1x) |   |   |   |   $echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \\\n\ >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
|   |   |   |   1327.0:       	(0.000062s|01.24%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1399.0:       	(0.000059s|01.18%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1402.0:       	(0.000063s|01.26%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   echo "{"
|   |   |   |   1403.0:       	(0.000061s|01.22%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1404.0:       	(0.000060s|01.20%|00.00%)	(0.000073s|01.25%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1404.1:       	(0.000062s|01.24%|00.00%)	(0.000074s|01.26%|00.00%)	(1x) |   |   |   |   echo "evfd_wait ${fd_nSpawn}"
|   |   |   |   1405.0:       	(0.000064s|01.28%|00.00%)	(0.000073s|01.25%|00.00%)	(1x) |   |   |   |   printf \%s \ "mapfile"
|   |   |   |   1406.0:       	(0.000060s|01.20%|00.00%)	(0.000072s|01.23%|00.00%)	(1x) |   |   |   |   ${lseekFlag}
|   |   |   |   1406.1:       	(0.000063s|01.26%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   printf \%s \ \-t\
|   |   |   |   1407.0:       	(0.000067s|01.34%|00.00%)	(0.000079s|01.35%|00.00%)	(1x) |   |   |   |   printf \%s \ \-n\ "\${nLinesCur}" \-u\
|   |   |   |   1408.0:       	(0.000060s|01.20%|00.00%)	(0.000073s|01.25%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1408.1:       	(0.000062s|01.24%|00.00%)	(0.000074s|01.26%|00.00%)	(1x) |   |   |   |   printf \%s \ ${fd_read}
|   |   |   |   1409.0:       	(0.000076s|01.52%|00.00%)	(0.000089s|01.52%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1409.1:       	(0.000063s|01.26%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1409.2:       	(0.000065s|01.30%|00.00%)	(0.000077s|01.32%|00.00%)	(1x) |   |   |   |   printf \%s \ \-t\
|   |   |   |   1411.0:       	(0.000065s|01.30%|00.00%)	(0.000077s|01.32%|00.00%)	(1x) |   |   |   |   $echo """${delimiterReadStr} A\n    }"""
|   |   |   |   1412.0:       	(0.000060s|01.20%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1412.1:       	(0.000059s|01.18%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1412.2:       	(0.000089s|01.78%|00.00%)	(0.000102s|01.74%|00.00%)	(1x) |   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1469.0:       	(0.000060s|01.20%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1469.1:       	(0.000060s|01.20%|00.00%)	(0.000073s|01.25%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1469.2:       	(0.000067s|01.34%|00.00%)	(0.000079s|01.35%|00.00%)	(1x) |   |   |   |   [[ -z ${nullDelimiterProg} ]]
|   |   |   |   1470.0:       	(0.000069s|01.38%|00.00%)	(0.000082s|01.40%|00.00%)	(1x) |   |   |   |   ${nLinesReadLimitFlag}
|   |   |   |   1483.0:       	(0.000081s|01.62%|00.00%)	(0.000093s|01.59%|00.00%)	(1x) |   |   |   |   $echo """\n    printf \\\\\n\ >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
|   |   |   |   1484.0:       	(0.000060s|01.20%|00.00%)	(0.000072s|01.23%|00.00%)	(1x) |   |   |   |   ${lseekPosFlag}
|   |   |   |   1487.0:       	(0.000086s|01.72%|00.00%)	(0.000098s|01.68%|00.00%)	(1x) |   |   |   |   $echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
|   |   |   |   1498.0:       	(0.000070s|01.40%|00.00%)	(0.000083s|01.42%|00.00%)	(1x) |   |   |   |   $echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
|   |   |   |   1499.0:       	(0.000060s|01.20%|00.00%)	(0.000072s|01.23%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1499.1:       	(0.000067s|01.34%|00.00%)	(0.000079s|01.35%|00.00%)	(1x) |   |   |   |   echo "printf \x\\n\ >&\${fd_nAuto0}"
|   |   |   |   1500.0:       	(0.000064s|01.28%|00.00%)	(0.000076s|01.30%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1501.0:       	(0.000064s|01.28%|00.00%)	(0.000076s|01.30%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |   1506.0:       	(0.000086s|01.72%|00.00%)	(0.000108s|01.85%|00.00%)	(1x) |   |   |   |   $echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \%.0s\\\\n\ \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
|   |   |   |   1507.0:       	(0.000061s|01.22%|00.00%)	(0.000073s|01.25%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1511.0:       	(0.000074s|01.48%|00.00%)	(0.000087s|01.49%|00.00%)	(1x) |   |   |   |   $echo """fi\n        continue\n    }"""
|   |   |   |   1512.0:       	(0.000058s|01.16%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   1512.1:       	(0.000088s|01.76%|00.00%)	(0.000098s|01.68%|00.00%)	(1x) |   |   |   |   $printf \%s\ """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \%s\\\\n\ \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
|   |   |   |   1517.0:       	(0.000059s|01.18%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${fallocateFlag}
|   |   |   |   1517.1:       	(0.000082s|01.64%|00.00%)	(0.000094s|01.61%|00.00%)	(1x) |   |   |   |   printf \%s\ \ || \
|   |   |   |   1518.0:       	(0.000060s|01.20%|00.00%)	(0.000072s|01.23%|00.00%)	(1x) |   |   |   |   ${fallocateFlag}
|   |   |   |   1518.1:       	(0.000075s|01.50%|00.00%)	(0.000088s|01.50%|00.00%)	(1x) |   |   |   |   echo "printf \\\n\ >&\${fd_nAuto0}"
|   |   |   |   1519.0:       	(0.000058s|01.16%|00.00%)	(0.000070s|01.20%|00.00%)	(1x) |   |   |   |   ${pipeReadFlag}
|   |   |   |   1519.1:       	(0.000063s|01.26%|00.00%)	(0.000076s|01.30%|00.00%)	(1x) |   |   |   |   ${nullDelimiterFlag}
|   |   |   |   1527.0:       	(0.000058s|01.16%|00.00%)	(0.000070s|01.20%|00.00%)	(1x) |   |   |   |   ${subshellRunFlag}
|   |   |   |   1527.1:       	(0.000066s|01.32%|00.00%)	(0.000077s|01.32%|00.00%)	(1x) |   |   |   |   echo \{\
|   |   |   |   1528.0:       	(0.000059s|01.18%|00.00%)	(0.000072s|01.23%|00.00%)	(1x) |   |   |   |   ${exportOrderFlag}
|   |   |   |   1528.1:       	(0.000064s|01.28%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1529.0:       	(0.000060s|01.20%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${exportOrderFlag}
|   |   |   |   1530.0:       	(0.000099s|01.98%|00.00%)	(0.000111s|01.90%|00.00%)	(1x) |   |   |   |   printf \%s \ "${runCmd[@]}"
|   |   |   |   1531.0:       	(0.000059s|01.18%|00.00%)	(0.000072s|01.23%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1538.0:       	(0.000057s|01.14%|00.00%)	(0.000070s|01.20%|00.00%)	(1x) |   |   |   |   ${stdinRunFlag}
|   |   |   |   1541.0:       	(0.000059s|01.18%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${noFuncFlag}
|   |   |   |   1544.0:       	(0.000058s|01.16%|00.00%)	(0.000071s|01.21%|00.00%)	(1x) |   |   |   |   ${substituteStringFlag}
|   |   |   |   1545.0:       	(0.000092s|01.84%|00.00%)	(0.000105s|01.80%|00.00%)	(1x) |   |   |   |   printf \%s\ "\"\${A[@]${delimiterRemoveStr}}\""
|   |   |   |   1550.0:       	(0.000065s|01.30%|00.00%)	(0.000077s|01.32%|00.00%)	(1x) |   |   |   |   (( ${verboseLevel} > 2 ))
|   |   |   |   1562.0:       	(0.000062s|01.24%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   ${readBytesFlag}
|   |   |   |   1563.0:       	(0.000058s|01.16%|00.00%)	(0.000070s|01.20%|00.00%)	(1x) |   |   |   |   ${subshellRunFlag}
|   |   |   |   1563.1:       	(0.000066s|01.32%|00.00%)	(0.000079s|01.35%|00.00%)	(1x) |   |   |   |   printf \\n%s \ \}\
|   |   |   |   1564.0:       	(0.000070s|01.40%|00.00%)	(0.000080s|01.37%|00.00%)	(1x) |   |   |   |   echo "${outStr}"
|   |   |   |   1565.0:       	(0.000062s|01.24%|00.00%)	(0.000073s|01.25%|00.00%)	(1x) |   |   |   |   ${nOrderFlag}
|   |   |   |   1566.0:       	(0.000063s|01.26%|00.00%)	(0.000075s|01.28%|00.00%)	(1x) |   |   |   |   ${nSpawnFlag}
|   |   |   |-- 1571.0:       	(0.000080s|01.60%|00.00%)	(0.000093s|01.59%|00.00%)	(1x) |   |   |   |-- $echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
|   |   |   1305.0:           	(0.000262s|00.00%|00.00%)	(0.000302s|00.00%|00.00%)	(1x) |   |   |   ${nOrderFlag}
|   |   |   1310.0:           	(0.000270s|00.00%|00.00%)	(0.000312s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr+=\kill $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \"${exitTrapStr_kill}"\ 2>/dev/null; \n        kill -9 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) 2>/dev/null; \\\n\
|   |   |   1315.0:           	(0.000064s|00.00%|00.00%)	(0.000076s|00.00%|00.00%)	(1x) |   |   |   $exitTrapStr+=\trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\
|   |   |   1322.0:           	(0.010866s|00.00%|00.00%)	(0.010855s|00.00%|00.00%)	(1x) |   |   |   $trap \trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) \"${PID0}" INT
|   |   |   1327.0:           	(0.010668s|00.00%|00.00%)	(0.010650s|00.00%|00.00%)	(1x) |   |   |   $trap \trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) \"${PID0}" TERM
|   |   |   1332.0:           	(0.010484s|00.00%|00.00%)	(0.010472s|00.00%|00.00%)	(1x) |   |   |   $trap \trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\"${tmpDir}"\"/.run/p* 2>/dev/null) \"${PID0}" HUP
|   |   |   1334.0:           	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1335.0:           	(0.000057s|00.00%|00.00%)	(0.000068s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1337.0:           	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1348.0:           	(0.000075s|00.00%|00.00%)	(0.000087s|00.00%|00.00%)	(1x) |   |   |   printf \\n\ >&${fd_continue}
|   |   |   1351.0:           	(0.000057s|00.00%|00.00%)	(0.000069s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1352.0:           	(0.002652s|00.00%|00.00%)	(0.003125s|00.00%|00.00%)	(29x) |   |   |   ((kkProcs=0 ))
|   |   |   1352.1:           	(0.002770s|00.00%|00.00%)	(0.003250s|00.00%|00.00%)	(29x) |   |   |   ((kkProcs<28 ))
|   |   |   1353.0:           	(0.002631s|00.00%|00.00%)	(0.003081s|00.00%|00.00%)	(28x) |   |   |   [[ -f "${tmpDir}"/.quit ]]
|   |   |   1354.0:           	(518.117788s|94.64%|47.27%)	(498.915004s|99.59%|49.83%)	(28x) |   |   |   << (FUNCTION): local p0 p0_PID >>
|   |   |   |-- 1.0:          	(0.000542s|00.00%|00.00%)	(0.000561s|00.00%|00.00%)	(1x) |   |   |   |-- local p0 p0_PID (&)
|   |   |   |   72.0:         	(518.091935s|99.99%|47.27%)	(498.888075s|99.99%|49.83%)	(28x) |   |   |   |   << (SUBSHELL) >>
|   |   |   |   |-- 72.0:     	(0.005328s|00.00%|00.00%)	(0.006050s|00.00%|00.00%)	(28x) |   |   |   |   |-- export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.FdxqWn"
|   |   |   |   |   8.0:      	(0.000163s|00.00%|00.00%)	(0.000186s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p0
|   |   |   |   |   12.0:     	(0.011365s|00.06%|00.00%)	(0.011303s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p0; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   14.0:     	(0.453166s|00.08%|00.04%)	(0.438105s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1; kill -INT 120595 ${BASHPID}\ INT
|   |   |   |   |   15.0:     	(0.446110s|00.08%|00.04%)	(0.443779s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1; kill -TERM 120595 ${BASHPID}\ TERM
|   |   |   |   |   16.0:     	(0.443256s|00.08%|00.04%)	(0.442012s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1; kill -HUP 120595 ${BASHPID}\ HUP
|   |   |   |   |   17.0:     	(0.452426s|00.08%|00.04%)	(0.451106s|00.08%|00.04%)	(28x) |   |   |   |   |   trap \trap - TERM INT HUP USR1\ USR1
|   |   |   |   |   19.0:     	(0.108982s|00.01%|00.00%)	(0.123442s|00.02%|00.01%)	(694x) |   |   |   |   |   true
|   |   |   |   |   20.0:     	(0.093076s|00.01%|00.00%)	(0.107279s|00.01%|00.01%)	(694x) |   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   20.1:     	(0.101960s|00.01%|00.00%)	(0.109973s|00.01%|00.01%)	(694x) |   |   |   |   |   read -r < "/dev/shm/.forkrun.FdxqWn"/.nLines
|   |   |   |   |   20.2:     	(0.002976s|00.00%|00.00%)	(0.003502s|00.00%|00.00%)	(32x) |   |   |   |   |   [[ ${REPLY} == +([0-9]) ]]
|   |   |   |   |   20.3:     	(0.002877s|00.00%|00.00%)	(0.003347s|00.00%|00.00%)	(32x) |   |   |   |   |   nLinesCur=${REPLY}
|   |   |   |   |   22.0:     	(0.004529s|00.02%|00.00%)	(0.005117s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p0
|   |   |   |   |   23.0:     	(3.564200s|00.69%|00.32%)	(0.140918s|00.02%|00.01%)	(694x) |   |   |   |   |   read -r -u 21 _
|   |   |   |   |   24.0:     	(0.099706s|00.01%|00.00%)	(0.113175s|00.01%|00.01%)	(694x) |   |   |   |   |   [[ -f "/dev/shm/.forkrun.FdxqWn"/.quit ]]
|   |   |   |   |   28.0:     	(0.100174s|00.01%|00.00%)	(0.107861s|00.01%|00.01%)	(668x) |   |   |   |   |   [[ -f "/dev/shm/.forkrun.FdxqWn"/.done ]]
|   |   |   |   |   28.1:     	(0.087794s|00.01%|00.00%)	(0.101534s|00.01%|00.01%)	(668x) |   |   |   |   |   doneIndicatorFlag=true
|   |   |   |   |   30.0:     	(0.096238s|00.01%|00.00%)	(0.107468s|00.01%|00.01%)	(668x) |   |   |   |   |   evfd_wait 25
|   |   |   |   |   31.0:     	(0.821176s|00.15%|00.07%)	(0.796797s|00.15%|00.07%)	(668x) |   |   |   |   |   mapfile -t -n ${nLinesCur} -u 27 -t -d \\ A
|   |   |   |   |   34.0:     	(0.143887s|00.02%|00.01%)	(0.112245s|00.01%|00.01%)	(668x) |   |   |   |   |   printf \\n\ 1>&21
|   |   |   |   |   35.0:     	(0.004416s|00.02%|00.00%)	(0.005016s|00.02%|00.00%)	(26x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p0
|   |   |   |   |   36.0:     	(0.094090s|00.01%|00.00%)	(0.102703s|00.01%|00.01%)	(668x) |   |   |   |   |   [[ ${#A[@]} == 0 ]]
|   |   |   |   |   56.0:     	(0.089598s|00.01%|00.00%)	(0.100658s|00.01%|00.01%)	(666x) |   |   |   |   |   ${nLinesAutoFlag}
|   |   |   |   |   57.0:     	(0.003437s|00.00%|00.00%)	(0.003982s|00.00%|00.00%)	(32x) |   |   |   |   |   printf \%s\n\ ${#A[@]} >&${fd_nAuto0}
|   |   |   |   |   58.0:     	(0.002971s|00.00%|00.00%)	(0.003502s|00.00%|00.00%)	(32x) |   |   |   |   |   (( ${nLinesCur} < 1024 ))
|   |   |   |   |   61.0:     	(509.931985s|98.40%|46.53%)	(494.092500s|99.02%|49.35%)	(666x) |   |   |   |   |   << (FUNCTION): ff "${A[@]}" >>
|   |   |   |   |   |-- 1.0:  	(0.089586s|00.02%|00.00%)	(0.097630s|00.02%|00.00%)	(666x) |   |   |   |   |   |-- ff "${A[@]}"
|   |   |   |   |   |   8.0:  	(34.807211s|06.90%|03.17%)	(33.570487s|06.88%|03.35%)	(666x) |   |   |   |   |   |   sha1sum "${@}"
|   |   |   |   |   |   9.0:  	(60.419523s|10.46%|05.51%)	(58.704863s|10.47%|05.86%)	(666x) |   |   |   |   |   |   sha256sum "${@}"
|   |   |   |   |   |   10.0: 	(49.184540s|09.64%|04.48%)	(47.574929s|09.62%|04.75%)	(666x) |   |   |   |   |   |   sha512sum "${@}"
|   |   |   |   |   |   11.0: 	(59.831465s|10.30%|05.45%)	(58.359009s|10.35%|05.82%)	(666x) |   |   |   |   |   |   sha224sum "${@}"
|   |   |   |   |   |   12.0: 	(47.296315s|09.08%|04.31%)	(46.215429s|09.16%|04.61%)	(666x) |   |   |   |   |   |   sha384sum "${@}"
|   |   |   |   |   |   13.0: 	(31.521289s|06.47%|02.87%)	(30.352469s|06.42%|03.03%)	(666x) |   |   |   |   |   |   md5sum "${@}"
|   |   |   |   |   |   14.0: 	(15.460485s|04.16%|01.41%)	(14.722223s|04.15%|01.47%)	(666x) |   |   |   |   |   |   sum -s "${@}"
|   |   |   |   |   |   15.0: 	(33.151797s|06.39%|03.02%)	(31.901721s|06.34%|03.18%)	(666x) |   |   |   |   |   |   sum -r "${@}"
|   |   |   |   |   |   16.0: 	(13.797614s|03.96%|01.25%)	(12.879979s|03.89%|01.28%)	(666x) |   |   |   |   |   |   cksum "${@}"
|   |   |   |   |   |   17.0: 	(41.382358s|08.66%|03.77%)	(39.926912s|08.63%|03.98%)	(666x) |   |   |   |   |   |   b2sum "${@}"
|   |   |   |   |   |   18.0: 	(92.863343s|15.03%|08.47%)	(91.176806s|15.21%|09.10%)	(666x) |   |   |   |   |   |   cksum -a sm3 "${@}"
|   |   |   |   |   |   19.0: 	(15.409104s|04.41%|01.40%)	(14.638051s|04.38%|01.46%)	(666x) |   |   |   |   |   |   xxhsum "${@}"
|   |   |   |   |   |-- 20.0: 	(14.717355s|04.37%|01.34%)	(13.971992s|04.34%|01.39%)	(666x) |   |   |   |   |   |-- xxhsum -H3 "${@}"
|   |   |   |   |   58.1:     	(0.002769s|00.00%|00.00%)	(0.003256s|00.00%|00.00%)	(28x) |   |   |   |   |   nLinesAutoFlag=false
|   |   |   |   |   56.1:     	(0.091663s|00.01%|00.00%)	(0.097666s|00.01%|00.00%)	(634x) |   |   |   |   |   ${nSpawnFlag}
|   |   |   |   |   59.0:     	(0.108652s|00.01%|00.00%)	(0.108680s|00.01%|00.01%)	(634x) |   |   |   |   |   printf \\n\ >&${fd_nAuto0}
|   |   |   |   |   25.0:     	(0.002633s|00.00%|00.00%)	(0.003051s|00.00%|00.00%)	(26x) |   |   |   |   |   printf \\n\ 1>&21
|   |   |   |   |   26.0:     	(0.002699s|00.00%|00.00%)	(0.003125s|00.00%|00.00%)	(26x) |   |   |   |   |   break
|   |   |   |   |   2.0:      	(0.003364s|00.00%|00.00%)	(0.003849s|00.00%|00.00%)	(28x) |   |   |   |   |   break
|   |   |   |   |   3.0:      	(0.002870s|00.00%|00.00%)	(0.003338s|00.00%|00.00%)	(28x) |   |   |   |   |   break
|   |   |   |   |   3.1:      	(0.051211s|00.00%|00.00%)	(0.049351s|00.00%|00.00%)	(28x) |   |   |   |   |   break
|   |   |   |   |-- 4.0:      	(0.003150s|00.00%|00.00%)	(0.003657s|00.00%|00.00%)	(28x) |   |   |   |   |-- break
|   |   |   |-- 133.0:        	(0.000081s|00.00%|00.00%)	(0.000094s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p0_PID})
|   |   |   |-- 1.0:          	(0.000553s|00.00%|00.00%)	(0.000572s|00.00%|00.00%)	(1x) |   |   |   |-- local p1 p1_PID (&)
|   |   |   |   |   8.0:      	(0.000345s|00.00%|00.00%)	(0.000383s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p1
|   |   |   |   |   12.0:     	(0.010205s|00.05%|00.00%)	(0.010195s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p1; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003513s|00.01%|00.00%)	(0.003983s|00.02%|00.00%)	(21x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p1
|   |   |   |   |   35.0:     	(0.003250s|00.01%|00.00%)	(0.003657s|00.01%|00.00%)	(20x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p1
|   |   |   |-- 133.0:        	(0.000084s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p1_PID})
|   |   |   |-- 1.0:          	(0.000540s|00.00%|00.00%)	(0.000559s|00.00%|00.00%)	(1x) |   |   |   |-- local p2 p2_PID (&)
|   |   |   |   |   8.0:      	(0.000341s|00.00%|00.00%)	(0.000379s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p2
|   |   |   |   |   12.0:     	(0.011538s|00.06%|00.00%)	(0.011527s|00.07%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p2; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005147s|00.02%|00.00%)	(0.005781s|00.03%|00.00%)	(31x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p2
|   |   |   |   |   35.0:     	(0.004808s|00.02%|00.00%)	(0.005456s|00.03%|00.00%)	(30x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p2
|   |   |   |-- 133.0:        	(0.000086s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p2_PID})
|   |   |   |-- 1.0:          	(0.000543s|00.00%|00.00%)	(0.000566s|00.00%|00.00%)	(1x) |   |   |   |-- local p3 p3_PID (&)
|   |   |   |   |   8.0:      	(0.000087s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p3
|   |   |   |   |   12.0:     	(0.010254s|00.05%|00.00%)	(0.010240s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p3; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004729s|00.02%|00.00%)	(0.005319s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p3
|   |   |   |   |   35.0:     	(0.004332s|00.02%|00.00%)	(0.004927s|00.02%|00.00%)	(26x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p3
|   |   |   |-- 133.0:        	(0.000085s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p3_PID})
|   |   |   |-- 1.0:          	(0.000587s|00.00%|00.00%)	(0.000602s|00.00%|00.00%)	(1x) |   |   |   |-- local p4 p4_PID (&)
|   |   |   |   |   8.0:      	(0.000091s|00.00%|00.00%)	(0.000105s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p4
|   |   |   |   |   12.0:     	(0.010354s|00.05%|00.00%)	(0.010345s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p4; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003521s|00.01%|00.00%)	(0.003969s|00.02%|00.00%)	(22x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p4
|   |   |   |   |   35.0:     	(0.003487s|00.01%|00.00%)	(0.003923s|00.02%|00.00%)	(21x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p4
|   |   |   |-- 133.0:        	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p4_PID})
|   |   |   |-- 1.0:          	(0.000572s|00.00%|00.00%)	(0.000598s|00.00%|00.00%)	(1x) |   |   |   |-- local p5 p5_PID (&)
|   |   |   |   |   8.0:      	(0.000224s|00.00%|00.00%)	(0.000254s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p5
|   |   |   |   |   12.0:     	(0.010947s|00.05%|00.00%)	(0.010935s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p5; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004417s|00.02%|00.00%)	(0.004975s|00.02%|00.00%)	(27x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p5
|   |   |   |   |   35.0:     	(0.004340s|00.02%|00.00%)	(0.004922s|00.02%|00.00%)	(26x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p5
|   |   |   |-- 133.0:        	(0.000085s|00.00%|00.00%)	(0.000098s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p5_PID})
|   |   |   |-- 1.0:          	(0.000596s|00.00%|00.00%)	(0.000610s|00.00%|00.00%)	(1x) |   |   |   |-- local p6 p6_PID (&)
|   |   |   |   |   8.0:      	(0.000347s|00.00%|00.00%)	(0.000393s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p6
|   |   |   |   |   12.0:     	(0.010448s|00.04%|00.00%)	(0.010436s|00.04%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p6; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004868s|00.02%|00.00%)	(0.005505s|00.02%|00.00%)	(30x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p6
|   |   |   |   |   35.0:     	(0.004588s|00.02%|00.00%)	(0.005193s|00.02%|00.00%)	(29x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p6
|   |   |   |-- 133.0:        	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p6_PID})
|   |   |   |-- 1.0:          	(0.000577s|00.00%|00.00%)	(0.000598s|00.00%|00.00%)	(1x) |   |   |   |-- local p7 p7_PID (&)
|   |   |   |   |   8.0:      	(0.000320s|00.00%|00.00%)	(0.000363s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p7
|   |   |   |   |   12.0:     	(0.012301s|00.07%|00.00%)	(0.012273s|00.07%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p7; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004952s|00.02%|00.00%)	(0.005527s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p7
|   |   |   |   |   35.0:     	(0.004342s|00.02%|00.00%)	(0.004918s|00.02%|00.00%)	(27x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p7
|   |   |   |-- 133.0:        	(0.000086s|00.00%|00.00%)	(0.000100s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p7_PID})
|   |   |   |-- 1.0:          	(0.000575s|00.00%|00.00%)	(0.000588s|00.00%|00.00%)	(1x) |   |   |   |-- local p8 p8_PID (&)
|   |   |   |   |   8.0:      	(0.000094s|00.00%|00.00%)	(0.000108s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p8
|   |   |   |   |   12.0:     	(0.010659s|00.06%|00.00%)	(0.010648s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p8; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004276s|00.02%|00.00%)	(0.004780s|00.02%|00.00%)	(25x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p8
|   |   |   |   |   35.0:     	(0.003929s|00.02%|00.00%)	(0.004458s|00.02%|00.00%)	(24x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p8
|   |   |   |-- 133.0:        	(0.000086s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p8_PID})
|   |   |   |-- 1.0:          	(0.000599s|00.00%|00.00%)	(0.000616s|00.00%|00.00%)	(1x) |   |   |   |-- local p9 p9_PID (&)
|   |   |   |   |   8.0:      	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p9
|   |   |   |   |   12.0:     	(0.010477s|00.05%|00.00%)	(0.010465s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p9; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003263s|00.01%|00.00%)	(0.003687s|00.02%|00.00%)	(20x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p9
|   |   |   |   |   35.0:     	(0.003343s|00.01%|00.00%)	(0.003680s|00.02%|00.00%)	(19x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p9
|   |   |   |-- 133.0:        	(0.000088s|00.00%|00.00%)	(0.000101s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p9_PID})
|   |   |   |-- 1.0:          	(0.000636s|00.00%|00.00%)	(0.000656s|00.00%|00.00%)	(1x) |   |   |   |-- local p10 p10_PID (&)
|   |   |   |   |   8.0:      	(0.000093s|00.00%|00.00%)	(0.000107s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p10
|   |   |   |   |   12.0:     	(0.010520s|00.05%|00.00%)	(0.010481s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p10; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005152s|00.02%|00.00%)	(0.005768s|00.02%|00.00%)	(30x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p10
|   |   |   |   |   35.0:     	(0.004667s|00.02%|00.00%)	(0.005282s|00.02%|00.00%)	(29x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p10
|   |   |   |-- 133.0:        	(0.000084s|00.00%|00.00%)	(0.000097s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p10_PID})
|   |   |   |-- 1.0:          	(0.000649s|00.00%|00.00%)	(0.000667s|00.00%|00.00%)	(1x) |   |   |   |-- local p11 p11_PID (&)
|   |   |   |   |   8.0:      	(0.000089s|00.00%|00.00%)	(0.000104s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p11
|   |   |   |   |   12.0:     	(0.010525s|00.05%|00.00%)	(0.010500s|00.06%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p11; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003263s|00.01%|00.00%)	(0.003650s|00.02%|00.00%)	(19x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p11
|   |   |   |   |   35.0:     	(0.003161s|00.01%|00.00%)	(0.003574s|00.02%|00.00%)	(19x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p11
|   |   |   |   |   37.0:     	(0.000273s|00.00%|00.00%)	(0.000319s|00.00%|00.00%)	(2x) |   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   46.0:     	(0.000331s|00.00%|00.00%)	(0.000383s|00.00%|00.00%)	(2x) |   |   |   |   |   ${doneIndicatorFlag}
|   |   |   |   |   47.0:     	(0.000318s|00.00%|00.00%)	(0.000366s|00.00%|00.00%)	(2x) |   |   |   |   |   printf \x\n\ >&${fd_nAuto0}
|   |   |   |   |   49.0:     	(0.000374s|00.00%|00.00%)	(0.000432s|00.00%|00.00%)	(2x) |   |   |   |   |   : > "/dev/shm/.forkrun.FdxqWn"/.quit
|   |   |   |   |   50.0:     	(0.000466s|00.00%|00.00%)	(0.000520s|00.00%|00.00%)	(2x) |   |   |   |   |   printf \%.0s\n\ "/dev/shm/.forkrun.FdxqWn"/.run/p* 1>&21
|   |   |   |   |   51.0:     	(0.000374s|00.00%|00.00%)	(0.000427s|00.00%|00.00%)	(2x) |   |   |   |   |   break
|   |   |   |-- 133.0:        	(0.000083s|00.00%|00.00%)	(0.000096s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p11_PID})
|   |   |   |-- 1.0:          	(0.000778s|00.00%|00.00%)	(0.000808s|00.00%|00.00%)	(1x) |   |   |   |-- local p12 p12_PID (&)
|   |   |   |   |   8.0:      	(0.000148s|00.00%|00.00%)	(0.000168s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p12
|   |   |   |   |   12.0:     	(0.020091s|00.11%|00.00%)	(0.020036s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p12; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004934s|00.02%|00.00%)	(0.005527s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p12
|   |   |   |   |   35.0:     	(0.004672s|00.02%|00.00%)	(0.005292s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p12
|   |   |   |-- 133.0:        	(0.000161s|00.00%|00.00%)	(0.000182s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p12_PID})
|   |   |   |-- 1.0:          	(0.000910s|00.00%|00.00%)	(0.000933s|00.00%|00.00%)	(1x) |   |   |   |-- local p13 p13_PID (&)
|   |   |   |   |   8.0:      	(0.000150s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p13
|   |   |   |   |   12.0:     	(0.019967s|00.10%|00.00%)	(0.019908s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p13; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003452s|00.01%|00.00%)	(0.003889s|00.02%|00.00%)	(20x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p13
|   |   |   |   |   35.0:     	(0.003228s|00.01%|00.00%)	(0.003632s|00.02%|00.00%)	(19x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p13
|   |   |   |-- 133.0:        	(0.000151s|00.00%|00.00%)	(0.000170s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p13_PID})
|   |   |   |-- 1.0:          	(0.000918s|00.00%|00.00%)	(0.000943s|00.00%|00.00%)	(1x) |   |   |   |-- local p14 p14_PID (&)
|   |   |   |   |   8.0:      	(0.000094s|00.00%|00.00%)	(0.000108s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p14
|   |   |   |   |   12.0:     	(0.014665s|00.08%|00.00%)	(0.014603s|00.08%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p14; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003653s|00.02%|00.00%)	(0.004117s|00.02%|00.00%)	(22x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p14
|   |   |   |   |   35.0:     	(0.003298s|00.01%|00.00%)	(0.003736s|00.02%|00.00%)	(21x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p14
|   |   |   |-- 133.0:        	(0.000145s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p14_PID})
|   |   |   |-- 1.0:          	(0.001025s|00.00%|00.00%)	(0.001048s|00.00%|00.00%)	(1x) |   |   |   |-- local p15 p15_PID (&)
|   |   |   |   |   8.0:      	(0.000151s|00.00%|00.00%)	(0.000172s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p15
|   |   |   |   |   12.0:     	(0.022133s|00.12%|00.00%)	(0.022059s|00.13%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p15; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005179s|00.03%|00.00%)	(0.005830s|00.03%|00.00%)	(31x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p15
|   |   |   |   |   35.0:     	(0.005224s|00.03%|00.00%)	(0.005834s|00.03%|00.00%)	(30x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p15
|   |   |   |-- 133.0:        	(0.000143s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p15_PID})
|   |   |   |-- 1.0:          	(0.000948s|00.00%|00.00%)	(0.000972s|00.00%|00.00%)	(1x) |   |   |   |-- local p16 p16_PID (&)
|   |   |   |   |   8.0:      	(0.000089s|00.00%|00.00%)	(0.000103s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p16
|   |   |   |   |   12.0:     	(0.010528s|00.05%|00.00%)	(0.010501s|00.05%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p16; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004078s|00.02%|00.00%)	(0.004603s|00.02%|00.00%)	(24x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p16
|   |   |   |   |   35.0:     	(0.003898s|00.02%|00.00%)	(0.004355s|00.02%|00.00%)	(23x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p16
|   |   |   |-- 133.0:        	(0.000138s|00.00%|00.00%)	(0.000158s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p16_PID})
|   |   |   |-- 1.0:          	(0.000984s|00.00%|00.00%)	(0.001009s|00.00%|00.00%)	(1x) |   |   |   |-- local p17 p17_PID (&)
|   |   |   |   |   8.0:      	(0.000175s|00.00%|00.00%)	(0.000198s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p17
|   |   |   |   |   12.0:     	(0.015893s|00.08%|00.00%)	(0.015845s|00.09%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p17; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003576s|00.01%|00.00%)	(0.004056s|00.02%|00.00%)	(21x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p17
|   |   |   |   |   35.0:     	(0.003490s|00.01%|00.00%)	(0.003934s|00.02%|00.00%)	(20x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p17
|   |   |   |-- 133.0:        	(0.000147s|00.00%|00.00%)	(0.000163s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p17_PID})
|   |   |   |-- 1.0:          	(0.000958s|00.00%|00.00%)	(0.000981s|00.00%|00.00%)	(1x) |   |   |   |-- local p18 p18_PID (&)
|   |   |   |   |   8.0:      	(0.000176s|00.00%|00.00%)	(0.000195s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p18
|   |   |   |   |   12.0:     	(0.017418s|00.09%|00.00%)	(0.017363s|00.10%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p18; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004609s|00.02%|00.00%)	(0.005198s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p18
|   |   |   |   |   35.0:     	(0.004514s|00.02%|00.00%)	(0.005111s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p18
|   |   |   |-- 133.0:        	(0.000138s|00.00%|00.00%)	(0.000159s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p18_PID})
|   |   |   |-- 1.0:          	(0.000933s|00.00%|00.00%)	(0.000956s|00.00%|00.00%)	(1x) |   |   |   |-- local p19 p19_PID (&)
|   |   |   |   |   8.0:      	(0.000166s|00.00%|00.00%)	(0.000191s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p19
|   |   |   |   |   12.0:     	(0.023431s|00.13%|00.00%)	(0.023364s|00.14%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p19; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004575s|00.02%|00.00%)	(0.005164s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p19
|   |   |   |   |   35.0:     	(0.004374s|00.02%|00.00%)	(0.004945s|00.02%|00.00%)	(26x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p19
|   |   |   |-- 133.0:        	(0.000154s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p19_PID})
|   |   |   |-- 1.0:          	(0.000830s|00.00%|00.00%)	(0.000861s|00.00%|00.00%)	(1x) |   |   |   |-- local p20 p20_PID (&)
|   |   |   |   |   8.0:      	(0.000151s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p20
|   |   |   |   |   12.0:     	(0.020166s|00.09%|00.00%)	(0.020104s|00.09%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p20; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.002146s|00.01%|00.00%)	(0.002425s|00.01%|00.00%)	(13x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p20
|   |   |   |   |   35.0:     	(0.001975s|00.00%|00.00%)	(0.002225s|00.01%|00.00%)	(12x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p20
|   |   |   |-- 133.0:        	(0.000158s|00.00%|00.00%)	(0.000180s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p20_PID})
|   |   |   |-- 1.0:          	(0.001006s|00.00%|00.00%)	(0.001030s|00.00%|00.00%)	(1x) |   |   |   |-- local p21 p21_PID (&)
|   |   |   |   |   8.0:      	(0.000149s|00.00%|00.00%)	(0.000171s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p21
|   |   |   |   |   12.0:     	(0.019945s|00.11%|00.00%)	(0.019850s|00.12%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p21; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004817s|00.02%|00.00%)	(0.005442s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p21
|   |   |   |   |   35.0:     	(0.004667s|00.02%|00.00%)	(0.005274s|00.03%|00.00%)	(27x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p21
|   |   |   |-- 133.0:        	(0.000145s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p21_PID})
|   |   |   |-- 1.0:          	(0.001016s|00.00%|00.00%)	(0.001033s|00.00%|00.00%)	(1x) |   |   |   |-- local p22 p22_PID (&)
|   |   |   |   |   8.0:      	(0.000133s|00.00%|00.00%)	(0.000151s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p22
|   |   |   |   |   12.0:     	(0.021226s|00.11%|00.00%)	(0.021145s|00.12%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p22; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003442s|00.01%|00.00%)	(0.003867s|00.02%|00.00%)	(20x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p22
|   |   |   |   |   35.0:     	(0.003169s|00.01%|00.00%)	(0.003589s|00.02%|00.00%)	(19x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p22
|   |   |   |-- 133.0:        	(0.000144s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p22_PID})
|   |   |   |-- 1.0:          	(0.001054s|00.00%|00.00%)	(0.001077s|00.00%|00.00%)	(1x) |   |   |   |-- local p23 p23_PID (&)
|   |   |   |   |   8.0:      	(0.000153s|00.00%|00.00%)	(0.000172s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p23
|   |   |   |   |   12.0:     	(0.017420s|00.09%|00.00%)	(0.017350s|00.10%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p23; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.005163s|00.02%|00.00%)	(0.005799s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p23
|   |   |   |   |   35.0:     	(0.004844s|00.02%|00.00%)	(0.005458s|00.03%|00.00%)	(28x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p23
|   |   |   |-- 133.0:        	(0.000147s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p23_PID})
|   |   |   |-- 1.0:          	(0.001027s|00.00%|00.00%)	(0.001051s|00.00%|00.00%)	(1x) |   |   |   |-- local p24 p24_PID (&)
|   |   |   |   |   8.0:      	(0.000207s|00.00%|00.00%)	(0.000233s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p24
|   |   |   |   |   12.0:     	(0.021537s|00.10%|00.00%)	(0.021446s|00.11%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p24; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003239s|00.01%|00.00%)	(0.003654s|00.01%|00.00%)	(19x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p24
|   |   |   |   |   35.0:     	(0.003131s|00.01%|00.00%)	(0.003519s|00.01%|00.00%)	(18x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p24
|   |   |   |-- 133.0:        	(0.000148s|00.00%|00.00%)	(0.000169s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p24_PID})
|   |   |   |-- 1.0:          	(0.000999s|00.00%|00.00%)	(0.001022s|00.00%|00.00%)	(1x) |   |   |   |-- local p25 p25_PID (&)
|   |   |   |   |   8.0:      	(0.000162s|00.00%|00.00%)	(0.000184s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p25
|   |   |   |   |   12.0:     	(0.021175s|00.12%|00.00%)	(0.021022s|00.13%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p25; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004998s|00.02%|00.00%)	(0.005628s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p25
|   |   |   |   |   35.0:     	(0.004906s|00.02%|00.00%)	(0.005556s|00.03%|00.00%)	(29x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p25
|   |   |   |-- 133.0:        	(0.000149s|00.00%|00.00%)	(0.000165s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p25_PID})
|   |   |   |-- 1.0:          	(0.001061s|00.00%|00.00%)	(0.001082s|00.00%|00.00%)	(1x) |   |   |   |-- local p26 p26_PID (&)
|   |   |   |   |   8.0:      	(0.000147s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p26
|   |   |   |   |   12.0:     	(0.020101s|00.09%|00.00%)	(0.020004s|00.09%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p26; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.003860s|00.01%|00.00%)	(0.004318s|00.02%|00.00%)	(23x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p26
|   |   |   |   |   35.0:     	(0.003798s|00.01%|00.00%)	(0.004285s|00.02%|00.00%)	(22x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p26
|   |   |   |-- 133.0:        	(0.000143s|00.00%|00.00%)	(0.000163s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p26_PID})
|   |   |   |-- 1.0:          	(0.001057s|00.00%|00.00%)	(0.001078s|00.00%|00.00%)	(1x) |   |   |   |-- local p27 p27_PID (&)
|   |   |   |   |   8.0:      	(0.000147s|00.00%|00.00%)	(0.000168s|00.00%|00.00%)	(1x) |   |   |   |   |   echo "${BASH_PID}" > "/dev/shm/.forkrun.FdxqWn"/.run/p27
|   |   |   |   |   12.0:     	(0.026098s|00.12%|00.00%)	(0.019990s|00.09%|00.00%)	(1x) |   |   |   |   |   $trap \: >"/dev/shm/.forkrun.FdxqWn"/.quit; \n[[ -f "/dev/shm/.forkrun.FdxqWn"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun.FdxqWn"/.run/p27; \nprintf \"\"\\\n\"\"\ >&21\ EXIT
|   |   |   |   |   22.0:     	(0.004055s|00.01%|00.00%)	(0.004576s|00.02%|00.00%)	(24x) |   |   |   |   |   echo 1 > "/dev/shm/.forkrun.FdxqWn"/.wait/p27
|   |   |   |   |   35.0:     	(0.004051s|00.01%|00.00%)	(0.004568s|00.02%|00.00%)	(23x) |   |   |   |   |   echo 0 > "/dev/shm/.forkrun.FdxqWn"/.wait/p27
|   |   |   |-- 133.0:        	(0.000145s|00.00%|00.00%)	(0.000166s|00.00%|00.00%)	(1x) |   |   |   |-- p_PID+=(${p27_PID})
|   |   |   1356.0:           	(0.000147s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) |   |   |   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
|   |   |   1357.0:           	(0.000150s|00.00%|00.00%)	(0.000167s|00.00%|00.00%)	(1x) |   |   |   : > "${tmpDir}"/.spawned
|   |   |   1358.0:           	(0.000115s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1361.0:           	(0.000115s|00.00%|00.00%)	(0.000135s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 3 ))
|   |   |   1366.0:           	(0.001283s|00.00%|00.00%)	(0.001294s|00.00%|00.00%)	(1x) |   |   |   declare -p > "${tmpDir}"/.vars
|   |   |   1371.0:           	(0.000127s|00.00%|00.00%)	(0.000147s|00.00%|00.00%)	(1x) |   |   |   ${nOrderFlag}
|   |   |   1433.0:           	(0.000128s|00.00%|00.00%)	(0.000144s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1436.0:           	(0.000120s|00.00%|00.00%)	(0.000139s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   1443.0:           	(23.782804s|04.34%|02.17%)	(0.001477s|00.00%|00.00%)	(1x) |   |   |   wait "${p_PID[@]}" &> /dev/null
|   |   |   1447.0:           	(0.000216s|00.00%|00.00%)	(0.000241s|00.00%|00.00%)	(1x) |   |   |   (( ${verboseLevel} > 1 ))
|   |   |   1452.0:           	(0.000183s|00.00%|00.00%)	(0.000212s|00.00%|00.00%)	(1x) |   |   |   ${nSpawnFlag}
|   |   |   -247.0:           	(0.000202s|00.00%|00.00%)	(0.000231s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -246.0:           	(0.000078s|00.00%|00.00%)	(0.000092s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -245.0:           	(0.005206s|00.00%|00.00%)	(0.005312s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -245.1:           	(0.005189s|00.00%|00.00%)	(0.005190s|00.00%|00.00%)	(1x) |   |   |   -<< (SUBSHELL) >>
|   |   |   |-- -245.0:       	(0.005189s|100.00%|00.00%)	(0.005190s|100.00%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag}
|   |   |   -244.0:           	(0.000075s|00.00%|00.00%)	(0.000088s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -243.0:           	(0.001743s|00.00%|00.00%)	(0.001644s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -243.1:           	(0.005890s|00.00%|00.00%)	(0.005891s|00.00%|00.00%)	(1x) |   |   |   -<< (SUBSHELL) >>
|   |   |   |-- -243.0:       	(0.005890s|100.00%|00.00%)	(0.005891s|100.00%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag}
|   |   |   -242.0:           	(0.000086s|00.00%|00.00%)	(0.000099s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -241.0:           	(0.001761s|00.00%|00.00%)	(0.001641s|00.00%|00.00%)	(1x) |   |   |   -${nSpawnFlag} (?)
|   |   |   -241.1:           	(0.005073s|00.00%|00.00%)	(0.005074s|00.00%|00.00%)	(1x) |   |   |   -<< (SUBSHELL) >>
|   |   |   |-- -241.0:       	(0.005073s|100.00%|00.00%)	(0.005074s|100.00%|00.00%)	(1x) |   |   |   |-- -${nSpawnFlag}
|   |   |-- -240.0:           	(0.017394s|00.00%|00.00%)	(0.017347s|00.00%|00.00%)	(1x) |   |   |-- -${nSpawnFlag} (?)
|   |   1458.0:               	(0.000302s|00.00%|00.00%)	(0.000346s|00.00%|00.00%)	(1x) |   |   wait
|-- |-- -247.0:               	(0.003821s|00.00%|00.00%)	(0.000834s|00.00%|00.00%)	(1x) |-- |-- -wait (?)



TOTAL RUN TIME: 1095.913051s
TOTAL CPU TIME: 1001.161423s
