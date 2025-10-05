LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________
1.0.0:          ( 563.774749s | 51.00% )            ( 497.549268s | 50.89% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000689s |  0.00% |  0.00% )   ( 0.000329s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
6.1.0:          ( 563.774060s | 51.00% | 99.99% )   ( 497.548939s | 50.89% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
6.2.0:          ( 0.033200s |  0.00% |  0.00% )   ( 0.033104s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
7.2.0:          ( 0.000081s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
8.2.0:          ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
9.2.0:          ( 0.000135s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
10.2.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
11.2.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
12.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
13.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
14.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
14.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
15.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
15.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
15.2.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
200.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
205.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
206.2.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
208.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
208.2.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
212.2.0:        ( 0.001340s |  0.00% |  0.00% )   ( 0.001118s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
212.2.1:        ( 0.008372s |  0.00% |  0.00% )   ( 0.008372s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
212.3.0:        ( 0.008372s |  0.00% |100.00% )   ( 0.008372s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
213.2.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
214.2.0:        ( 0.001242s |  0.00% |  0.00% )   ( 0.001339s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
215.2.0:        ( 0.000117s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
216.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
216.2.1:        ( 0.023752s |  0.00% |  0.00% )   ( 0.001024s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
217.2.0:        ( 563.698438s | 50.99% | 99.98% )   ( 497.499175s | 50.88% | 99.98% )    	(1x)	│  │ << (SUBSHELL) >>
217.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
1066.3.0:       ( 0.000848s |  0.00% |  0.00% )   ( 0.000984s |  0.00% |  0.00% )    	(5x)	│  │  │ << (SUBSHELL) >>
1066.4.0:       ( 0.000848s |  0.00% |100.00% )   ( 0.000984s |  0.00% |100.00% )    	(5x)	│  │  │  └─:
1066.3.5:       ( 0.000220s |  0.00% |  0.00% )   ( 0.000257s |  0.00% |  0.00% )    	(1x)	│  │  │ @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 427494  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
220.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
221.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.004783s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
222.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
223.3.0:        ( 0.000267s |  0.00% |  0.00% )   ( 0.007191s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
224.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
225.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
226.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
227.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
228.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
229.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
230.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
231.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
235.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
236.3.0:        ( 0.003579s |  0.00% |  0.00% )   ( 0.003634s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
236.3.1:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
236.4.0:        ( 0.000132s |  0.00% |100.00% )   ( 0.000145s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
236.3.2:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
238.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
241.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ $'runCmd=("${@//\'\r\'/}")
243.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
244.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
244.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
245.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
246.3.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
247.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
298.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
302.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
304.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
305.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
307.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
311.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
315.3.0:        ( 0.000924s |  0.00% |  0.00% )   ( 0.001065s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000080s |  0.00% |  8.65% )   ( 0.000088s |  0.00% |  8.26% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
6.4.0:          ( 0.000072s |  0.00% |  7.79% )   ( 0.000084s |  0.00% |  7.88% )    	(1x)	│  │  │  │ local +i -l nn
7.4.0:          ( 0.000071s |  0.00% |  7.68% )   ( 0.000083s |  0.00% |  7.79% )    	(1x)	│  │  │  │ local vOut
8.4.0:          ( 0.000072s |  0.00% |  7.79% )   ( 0.000084s |  0.00% |  7.88% )    	(1x)	│  │  │  │ local -n vOut="$1"
9.4.0:          ( 0.000069s |  0.00% |  7.46% )   ( 0.000082s |  0.00% |  7.69% )    	(1x)	│  │  │  │ shift 1
10.4.0:         ( 0.000073s |  0.00% |  7.90% )   ( 0.000085s |  0.00% |  7.98% )    	(1x)	│  │  │  │ local -g vOut
11.4.0:         ( 0.000073s |  0.00% |  7.90% )   ( 0.000082s |  0.00% |  7.69% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
11.4.1:         ( 0.000126s |  0.00% | 13.63% )   ( 0.000139s |  0.00% | 13.05% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
12.4.0:         ( 0.000070s |  0.00% |  7.57% )   ( 0.000082s |  0.00% |  7.69% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
14.4.0:         ( 0.000068s |  0.00% |  7.35% )   ( 0.000081s |  0.00% |  7.60% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
14.4.1:         ( 0.000071s |  0.00% |  7.68% )   ( 0.000083s |  0.00% |  7.79% )    	(1x)	│  │  │  │ continue
24.4.0:         ( 0.000079s |  0.00% |  8.54% )   ( 0.000092s |  0.00% |  8.63% )    	(1x)	│  │  │  └─local +n vOut
316.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
317.3.0:        ( 0.001289s |  0.00% |  0.00% )   ( 0.001016s |  0.00% |  0.00% )    	(1x)	│  │  │ $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
317.3.1:        ( 0.003292s |  0.00% |  0.00% )   ( 0.003462s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
317.4.0:        ( 0.000622s |  0.00% | 18.89% )   ( 0.000652s |  0.00% | 18.83% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
317.4.1:        ( 0.002670s |  0.00% | 81.10% )   ( 0.002810s |  0.00% | 81.16% )    	(1x)	│  │  │  └─nproc
318.3.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
320.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
322.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
322.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
324.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
328.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
329.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
330.3.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
331.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
332.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
333.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
335.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
337.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
338.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
342.3.0:        ( 0.000172s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
342.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
342.3.2:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
343.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
344.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
345.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
349.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
371.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
372.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
373.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
373.3.1:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
383.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
392.3.0:        ( 0.004551s |  0.00% |  0.00% )   ( 0.004679s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
392.3.1:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
392.4.0:        ( 0.000127s |  0.00% |100.00% )   ( 0.000144s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
393.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
396.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
401.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
402.3.0:        ( 0.001541s |  0.00% |  0.00% )   ( 0.001629s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
403.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
404.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
405.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
432.3.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
433.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
437.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
438.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
441.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
452.3.0:        ( 0.000663s |  0.00% |  0.00% )   ( 0.000683s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
455.3.0:        ( 0.119634s |  0.01% |  0.02% )   ( 0.119368s |  0.01% |  0.02% )    	(1x)	│  │  │ << (SUBSHELL) >>
455.4.0:        ( 0.000096s |  0.00% |  0.08% )   ( 0.000120s |  0.00% |  0.10% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
456.4.0:        ( 0.018348s |  0.00% | 15.33% )   ( 0.018271s |  0.00% | 15.30% )    	(1x)	│  │  │  │ trap - EXIT
457.4.0:        ( 0.020900s |  0.00% | 17.46% )   ( 0.020846s |  0.00% | 17.46% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
458.4.0:        ( 0.020703s |  0.00% | 17.30% )   ( 0.020658s |  0.00% | 17.30% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
459.4.0:        ( 0.020736s |  0.00% | 17.33% )   ( 0.020693s |  0.00% | 17.33% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
460.4.0:        ( 0.020835s |  0.00% | 17.41% )   ( 0.020751s |  0.00% | 17.38% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
461.4.0:        ( 0.000070s |  0.00% |  0.05% )   ( 0.000082s |  0.00% |  0.06% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
463.4.0:        ( 0.017698s |  0.00% | 14.79% )   ( 0.017661s |  0.00% | 14.79% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
472.4.0:        ( 0.000103s |  0.00% |  0.08% )   ( 0.000116s |  0.00% |  0.09% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
473.4.0:        ( 0.000076s |  0.00% |  0.06% )   ( 0.000088s |  0.00% |  0.07% )    	(1x)	│  │  │  │ evfd_signal
474.4.0:        ( 0.000069s |  0.00% |  0.05% )   ( 0.000082s |  0.00% |  0.06% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
477.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
479.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
484.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
486.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
487.3.0:        ( 0.000543s |  0.00% |  0.00% )   ( 0.000571s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
490.3.0:        ( 4.377674s |  0.39% |  0.77% )   ( 1.882597s |  0.19% |  0.37% )    	(1x)	│  │  │ << (SUBSHELL) >>
490.4.0:        ( 0.000104s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
491.4.0:        ( 0.020691s |  0.00% |  0.47% )   ( 0.020655s |  0.00% |  1.09% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
492.4.0:        ( 0.020890s |  0.00% |  0.47% )   ( 0.020847s |  0.00% |  1.10% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
493.4.0:        ( 0.020725s |  0.00% |  0.47% )   ( 0.020681s |  0.00% |  1.09% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
494.4.0:        ( 0.020682s |  0.00% |  0.47% )   ( 0.020639s |  0.00% |  1.09% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
495.4.0:        ( 0.021011s |  0.00% |  0.47% )   ( 0.020969s |  0.00% |  1.11% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
496.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
497.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
498.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
500.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
501.4.0:        ( 0.093487s |  0.00% |  0.00% )   ( 0.106805s |  0.01% |  0.00% )    	(675x)	│  │  │  │ ${fallocateFlag}
502.4.0:        ( 2.790754s |  0.25% |  0.09% )   ( 0.126275s |  0.01% |  0.00% )    	(674x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
502.4.1:        ( 0.001277s |  0.00% |  0.00% )   ( 0.001414s |  0.00% |  0.01% )    	(7x)	│  │  │  │ continue
503.4.0:        ( 0.091390s |  0.00% |  0.00% )   ( 0.104534s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${REPLY} in
517.4.0:        ( 0.095289s |  0.00% |  0.00% )   ( 0.105803s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
518.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
521.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
526.4.0:        ( 0.094498s |  0.00% |  0.00% )   ( 0.104812s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${lseekPosFlag}
527.4.0:        ( 0.094859s |  0.00% |  0.00% )   ( 0.108006s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
528.4.0:        ( 0.094031s |  0.00% |  0.00% )   ( 0.107242s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
534.4.0:        ( 0.089557s |  0.00% |  0.00% )   ( 0.102624s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
535.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
536.4.0:        ( 0.090591s |  0.00% |  0.00% )   ( 0.103737s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
537.4.0:        ( 0.090165s |  0.00% |  0.00% )   ( 0.103414s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
538.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
539.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
540.4.0:        ( 0.006440s |  0.00% |  0.14% )   ( 0.006916s |  0.00% |  0.36% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
540.4.1:        ( 0.003028s |  0.00% |  0.06% )   ( 0.003412s |  0.00% |  0.18% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
540.5.0:        ( 0.003028s |  0.00% |100.00% )   ( 0.003412s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
541.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
542.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
544.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
545.4.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
546.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
547.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
548.4.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
550.4.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
551.4.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
552.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
555.4.0:        ( 0.089679s |  0.00% |  0.00% )   ( 0.102867s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${fallocateFlag}
556.4.0:        ( 0.088895s |  0.00% |  0.00% )   ( 0.102134s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${nWait} in
567.4.0:        ( 0.087455s |  0.00% |  0.00% )   ( 0.100306s |  0.01% |  0.00% )    	(646x)	│  │  │  │ ((nWait--))
571.4.0:        ( 0.094122s |  0.00% |  0.00% )   ( 0.107397s |  0.01% |  0.00% )    	(667x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
517.4.1:        ( 0.091796s |  0.00% |  0.00% )   ( 0.105090s |  0.01% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
534.4.1:        ( 0.090347s |  0.00% |  0.00% )   ( 0.103693s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
558.4.0:        ( 0.002825s |  0.00% |  0.00% )   ( 0.003232s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
559.4.0:        ( 0.002788s |  0.00% |  0.00% )   ( 0.003181s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
560.4.0:        ( 0.070814s |  0.00% |  0.07% )   ( 0.044482s |  0.00% |  0.11% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
561.4.0:        ( 0.003548s |  0.00% |  0.00% )   ( 0.003986s |  0.00% |  0.01% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
562.4.0:        ( 0.003406s |  0.00% |  0.00% )   ( 0.003866s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
564.4.0:        ( 0.003152s |  0.00% |  0.00% )   ( 0.003603s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
511.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
572.4.0:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
573.4.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
574.4.0:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
501.4.1:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
501.4.2:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
7.4.0:          ( 0.006764s |  0.00% |  0.15% )   ( 0.006860s |  0.00% |  0.36% )    	(1x)	│  │  │  └─@TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/pAuto
580.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
581.3.0:        ( 0.000105s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
583.3.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
962.3.0:        ( 0.002015s |  0.00% |  0.00% )   ( 0.001158s |  0.00% |  0.00% )    	(1x)	│  │  │ $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
979.3.0:        ( 0.006668s |  0.00% |  0.00% )   ( 0.007651s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
979.4.0:        ( 0.000429s |  0.00% |  6.43% )   ( 0.000463s |  0.00% |  6.05% )    	(1x)	│  │  │  ├─$'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
980.4.0:        ( 0.000275s |  0.00% |  4.12% )   ( 0.000320s |  0.00% |  4.18% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
980.4.1:        ( 0.000095s |  0.00% |  1.42% )   ( 0.000105s |  0.00% |  1.37% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
988.4.0:        ( 0.000225s |  0.00% |  3.37% )   ( 0.000236s |  0.00% |  3.08% )    	(1x)	│  │  │  │ $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
989.4.0:        ( 0.000070s |  0.00% |  1.04% )   ( 0.000082s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${readBytesFlag}
1061.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
1064.4.0:       ( 0.000072s |  0.00% |  1.07% )   ( 0.000083s |  0.00% |  1.08% )    	(1x)	│  │  │  │ echo "{"
1065.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000079s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${nOrderFlag}
1066.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1066.4.1:       ( 0.000071s |  0.00% |  1.06% )   ( 0.000083s |  0.00% |  1.08% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
1067.4.0:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
1068.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${lseekFlag}
1068.4.1:       ( 0.000071s |  0.00% |  1.06% )   ( 0.000083s |  0.00% |  1.08% )    	(1x)	│  │  │  │ printf '%s ' '-t'
1069.4.0:       ( 0.000075s |  0.00% |  1.12% )   ( 0.000086s |  0.00% |  1.12% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
1070.4.0:       ( 0.000072s |  0.00% |  1.07% )   ( 0.000081s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1070.4.1:       ( 0.000072s |  0.00% |  1.07% )   ( 0.000084s |  0.00% |  1.09% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
1071.4.0:       ( 0.000072s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1071.4.1:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1073.4.0:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │ $'echo """${delimiterReadStr} A\n    }"""
1074.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1074.4.1:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1074.4.2:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1075.4.0:       ( 0.000119s |  0.00% |  1.78% )   ( 0.000144s |  0.00% |  1.88% )    	(1x)	│  │  │  │ ${lseekFlag}
1078.4.0:       ( 0.000138s |  0.00% |  2.06% )   ( 0.000153s |  0.00% |  1.99% )    	(1x)	│  │  │  │ $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1079.4.0:       ( 0.000111s |  0.00% |  1.66% )   ( 0.000127s |  0.00% |  1.65% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1082.4.0:       ( 0.000117s |  0.00% |  1.75% )   ( 0.000133s |  0.00% |  1.73% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1120.4.0:       ( 0.000072s |  0.00% |  1.07% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
1125.4.0:       ( 0.000077s |  0.00% |  1.15% )   ( 0.000088s |  0.00% |  1.15% )    	(1x)	│  │  │  │ $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1126.4.0:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000086s |  0.00% |  1.12% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
1127.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000079s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${lseekFlag}
1127.4.1:       ( 0.000078s |  0.00% |  1.16% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │ printf '\n'
1128.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
1129.4.0:       ( 0.000107s |  0.00% |  1.60% )   ( 0.000118s |  0.00% |  1.54% )    	(1x)	│  │  │  │ echo "}"
1131.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1131.4.1:       ( 0.000069s |  0.00% |  1.03% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1131.4.2:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${readBytesFlag}
1131.4.3:       ( 0.000078s |  0.00% |  1.16% )   ( 0.000090s |  0.00% |  1.17% )    	(1x)	│  │  │  │ echo "}"
1132.4.0:       ( 0.000074s |  0.00% |  1.10% )   ( 0.000086s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
1145.4.0:       ( 0.000090s |  0.00% |  1.34% )   ( 0.000102s |  0.00% |  1.33% )    	(1x)	│  │  │  │ $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1146.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000081s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${lseekPosFlag}
1149.4.0:       ( 0.000082s |  0.00% |  1.22% )   ( 0.000094s |  0.00% |  1.22% )    	(1x)	│  │  │  │ $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1160.4.0:       ( 0.000086s |  0.00% |  1.28% )   ( 0.000094s |  0.00% |  1.22% )    	(1x)	│  │  │  │ $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1161.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000079s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
1161.4.1:       ( 0.000075s |  0.00% |  1.12% )   ( 0.000087s |  0.00% |  1.13% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
1162.4.0:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${nOrderFlag}
1163.4.0:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000086s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nSpawnFlag}
1168.4.0:       ( 0.000082s |  0.00% |  1.22% )   ( 0.000094s |  0.00% |  1.22% )    	(1x)	│  │  │  │ $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1169.4.0:       ( 0.000071s |  0.00% |  1.06% )   ( 0.000082s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${nOrderFlag}
1173.4.0:       ( 0.000082s |  0.00% |  1.22% )   ( 0.000094s |  0.00% |  1.22% )    	(1x)	│  │  │  │ $'echo """fi\n        continue\n    }"""
1174.4.0:       ( 0.000069s |  0.00% |  1.03% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
1174.4.1:       ( 0.000080s |  0.00% |  1.19% )   ( 0.000091s |  0.00% |  1.18% )    	(1x)	│  │  │  │ $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1179.4.0:       ( 0.000069s |  0.00% |  1.03% )   ( 0.000081s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${fallocateFlag}
1179.4.1:       ( 0.000077s |  0.00% |  1.15% )   ( 0.000088s |  0.00% |  1.15% )    	(1x)	│  │  │  │ printf '%s' ' || '
1180.4.0:       ( 0.000069s |  0.00% |  1.03% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${fallocateFlag}
1180.4.1:       ( 0.000084s |  0.00% |  1.25% )   ( 0.000096s |  0.00% |  1.25% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
1181.4.0:       ( 0.000067s |  0.00% |  1.00% )   ( 0.000078s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1181.4.1:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1181.4.2:       ( 0.000069s |  0.00% |  1.03% )   ( 0.000081s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${readBytesFlag}
1181.4.3:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000086s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${lseekFlag}
1189.4.0:       ( 0.000067s |  0.00% |  1.00% )   ( 0.000079s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${subshellRunFlag}
1189.4.1:       ( 0.000077s |  0.00% |  1.15% )   ( 0.000089s |  0.00% |  1.16% )    	(1x)	│  │  │  │ echo '{'
1190.4.0:       ( 0.000068s |  0.00% |  1.01% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${exportOrderFlag}
1190.4.1:       ( 0.000075s |  0.00% |  1.12% )   ( 0.000087s |  0.00% |  1.13% )    	(1x)	│  │  │  │ ${nOrderFlag}
1191.4.0:       ( 0.000074s |  0.00% |  1.10% )   ( 0.000083s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${exportOrderFlag}
1192.4.0:       ( 0.000095s |  0.00% |  1.42% )   ( 0.000106s |  0.00% |  1.38% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
1193.4.0:       ( 0.000067s |  0.00% |  1.00% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${readBytesFlag}
1200.4.0:       ( 0.000069s |  0.00% |  1.03% )   ( 0.000081s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${stdinRunFlag}
1203.4.0:       ( 0.000067s |  0.00% |  1.00% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${noFuncFlag}
1206.4.0:       ( 0.000066s |  0.00% |  0.98% )   ( 0.000078s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${substituteStringFlag}
1207.4.0:       ( 0.000086s |  0.00% |  1.28% )   ( 0.000098s |  0.00% |  1.28% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1212.4.0:       ( 0.000073s |  0.00% |  1.09% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
1224.4.0:       ( 0.000072s |  0.00% |  1.07% )   ( 0.000084s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${readBytesFlag}
1225.4.0:       ( 0.000067s |  0.00% |  1.00% )   ( 0.000080s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${subshellRunFlag}
1225.4.1:       ( 0.000075s |  0.00% |  1.12% )   ( 0.000087s |  0.00% |  1.13% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
1226.4.0:       ( 0.000078s |  0.00% |  1.16% )   ( 0.000087s |  0.00% |  1.13% )    	(1x)	│  │  │  │ echo "${outStr}"
1227.4.0:       ( 0.000072s |  0.00% |  1.07% )   ( 0.000083s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${nOrderFlag}
1228.4.0:       ( 0.000071s |  0.00% |  1.06% )   ( 0.000082s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${nSpawnFlag}
1233.4.0:       ( 0.000095s |  0.00% |  1.42% )   ( 0.000107s |  0.00% |  1.39% )    	(1x)	│  │  │  └─$'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
963.3.0:        ( 0.000103s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
968.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
970.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
971.3.0:        ( 0.021405s |  0.00% |  0.00% )   ( 0.021356s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
975.3.0:        ( 0.021219s |  0.00% |  0.00% )   ( 0.150762s |  0.01% |  0.03% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
979.3.0:        ( 0.020707s |  0.00% |  0.00% )   ( 0.020656s |  0.00% |  0.00% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
983.3.0:        ( 0.020446s |  0.00% |  0.00% )   ( 0.020404s |  0.00% |  0.00% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
984.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
985.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
989.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
993.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
994.3.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
995.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
995.3.1:        ( 0.003148s |  0.00% |  0.00% )   ( 0.003597s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
997.3.0:        ( 0.002886s |  0.00% |  0.00% )   ( 0.003310s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
998.3.0:        ( 23.777814s |  2.15% |  4.21% )   ( 22.640969s |  2.31% |  4.55% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000733s |  0.00% |  0.00% )   ( 0.000759s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p0 p0_PID (&)
6.4.0:          ( 23.776991s |  2.15% | 99.99% )   ( 22.640107s |  2.31% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000122s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000134s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p0
12.5.0:         ( 0.020739s |  0.00% |  0.08% )   ( 0.020696s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020826s |  0.00% |  0.08% )   ( 0.020768s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.020932s |  0.00% |  0.08% )   ( 0.020888s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021018s |  0.00% |  0.08% )   ( 0.020978s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021071s |  0.00% |  0.08% )   ( 0.021028s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004064s |  0.00% |  0.00% )   ( 0.004555s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
20.5.0:         ( 0.003702s |  0.00% |  0.00% )   ( 0.004161s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000246s |  0.00% |  0.00% )   ( 0.000277s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004378s |  0.00% |  0.00% )   ( 0.004885s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p0
23.5.0:         ( 0.448943s |  0.04% |  0.07% )   ( 0.006436s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004049s |  0.00% |  0.00% )   ( 0.004544s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004111s |  0.00% |  0.00% )   ( 0.004643s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003661s |  0.00% |  0.00% )   ( 0.004138s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003907s |  0.00% |  0.00% )   ( 0.004401s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035259s |  0.00% |  0.00% )   ( 0.028030s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003505s |  0.00% |  0.00% )   ( 0.003973s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003536s |  0.00% |  0.00% )   ( 0.004010s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.007759s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004224s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p0
48.5.0:         ( 0.003459s |  0.00% |  0.00% )   ( 0.003939s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003412s |  0.00% |  0.00% )   ( 0.003891s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
73.5.0:         ( 23.116135s |  2.09% |  4.05% )   ( 22.426350s |  2.29% |  4.12% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003534s |  0.00% |  0.01% )   ( 0.004014s |  0.00% |  0.01% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.731446s |  0.15% |  7.49% )   ( 1.615471s |  0.16% |  7.20% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.746760s |  0.24% | 11.88% )   ( 2.663296s |  0.27% | 11.87% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.167707s |  0.19% |  9.37% )   ( 2.069970s |  0.21% |  9.23% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.709908s |  0.24% | 11.72% )   ( 2.677024s |  0.27% | 11.93% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 2.059869s |  0.18% |  8.91% )   ( 2.041652s |  0.20% |  9.10% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.435692s |  0.12% |  6.21% )   ( 1.429467s |  0.14% |  6.37% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.557890s |  0.05% |  2.41% )   ( 0.551412s |  0.05% |  2.45% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.556757s |  0.14% |  6.73% )   ( 1.502115s |  0.15% |  6.69% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.466687s |  0.04% |  2.01% )   ( 0.464188s |  0.04% |  2.06% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.797012s |  0.16% |  7.77% )   ( 1.786665s |  0.18% |  7.96% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.781982s |  0.43% | 20.68% )   ( 4.594685s |  0.46% | 20.48% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.563571s |  0.05% |  2.43% )   ( 0.531783s |  0.05% |  2.37% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.537320s |  0.04% |  2.32% )   ( 0.494608s |  0.05% |  2.20% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
70.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.003526s |  0.00% |  0.00% )   ( 0.003995s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003243s |  0.00% |  0.00% )   ( 0.003678s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004626s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005311s |  0.00% |  0.02% )   ( 0.005382s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p0\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p0_PID})
995.3.0:        ( 0.002929s |  0.00% |  0.00% )   ( 0.003378s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
998.3.0:        ( 18.268912s |  1.65% |  3.24% )   ( 17.215214s |  1.76% |  3.46% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000816s |  0.00% |  0.00% )   ( 0.000833s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p1 p1_PID (&)
6.4.0:          ( 18.268004s |  1.65% | 99.99% )   ( 17.214277s |  1.76% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000328s |  0.00% |  0.00% )   ( 0.000362s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000337s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p1
12.5.0:         ( 0.020760s |  0.00% |  0.11% )   ( 0.020717s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020904s |  0.00% |  0.11% )   ( 0.020868s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021017s |  0.00% |  0.11% )   ( 0.020972s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021166s |  0.00% |  0.11% )   ( 0.021107s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021054s |  0.00% |  0.11% )   ( 0.021013s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005052s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004625s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004742s |  0.00% |  0.00% )   ( 0.005262s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p1
23.5.0:         ( 0.404680s |  0.03% |  0.08% )   ( 0.006581s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.007161s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004462s |  0.00% |  0.00% )   ( 0.005016s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003679s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004189s |  0.00% |  0.00% )   ( 0.004710s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038975s |  0.00% |  0.00% )   ( 0.029914s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003785s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.003769s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004623s |  0.00% |  0.00% )   ( 0.005156s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p1
48.5.0:         ( 0.006755s |  0.00% |  0.00% )   ( 0.004259s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003583s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000224s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
73.5.0:         ( 17.635467s |  1.59% |  3.86% )   ( 16.988791s |  1.73% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003840s |  0.00% |  0.02% )   ( 0.004343s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.245132s |  0.11% |  7.06% )   ( 1.111277s |  0.11% |  6.54% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.125794s |  0.19% | 12.05% )   ( 2.003422s |  0.20% | 11.79% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.634356s |  0.14% |  9.26% )   ( 1.626490s |  0.16% |  9.57% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.028268s |  0.18% | 11.50% )   ( 1.990698s |  0.20% | 11.71% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.646042s |  0.14% |  9.33% )   ( 1.563656s |  0.15% |  9.20% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.057128s |  0.09% |  5.99% )   ( 1.021924s |  0.10% |  6.01% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.535291s |  0.04% |  3.03% )   ( 0.507189s |  0.05% |  2.98% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.035626s |  0.09% |  5.87% )   ( 1.025299s |  0.10% |  6.03% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.445231s |  0.04% |  2.52% )   ( 0.442616s |  0.04% |  2.60% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.468196s |  0.13% |  8.32% )   ( 1.424201s |  0.14% |  8.38% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.345071s |  0.30% | 18.96% )   ( 3.280650s |  0.33% | 19.31% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.516600s |  0.04% |  2.92% )   ( 0.502250s |  0.05% |  2.95% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.548892s |  0.04% |  3.11% )   ( 0.484776s |  0.04% |  2.85% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
70.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004301s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003572s |  0.00% |  0.00% )   ( 0.004048s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.006246s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009151s |  0.00% |  0.05% )   ( 0.009221s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p1\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p1_PID})
998.3.0:        ( 18.631190s |  1.68% |  3.30% )   ( 17.245477s |  1.76% |  3.46% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000782s |  0.00% |  0.00% )   ( 0.000798s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p2 p2_PID (&)
6.4.0:          ( 18.630312s |  1.68% | 99.99% )   ( 17.244571s |  1.76% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000353s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p2
12.5.0:         ( 0.020833s |  0.00% |  0.11% )   ( 0.020797s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020955s |  0.00% |  0.11% )   ( 0.020916s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021090s |  0.00% |  0.11% )   ( 0.021045s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021129s |  0.00% |  0.11% )   ( 0.021079s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021026s |  0.00% |  0.11% )   ( 0.020975s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004147s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
20.5.0:         ( 0.003716s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000246s |  0.00% |  0.00% )   ( 0.000279s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000227s |  0.00% |  0.00% )   ( 0.000262s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000210s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004365s |  0.00% |  0.00% )   ( 0.004864s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p2
23.5.0:         ( 0.514662s |  0.04% |  0.11% )   ( 0.005803s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004359s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004312s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003357s |  0.00% |  0.00% )   ( 0.003807s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004076s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.029834s |  0.00% |  0.00% )   ( 0.027207s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003407s |  0.00% |  0.00% )   ( 0.003868s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003414s |  0.00% |  0.00% )   ( 0.003876s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.007863s |  0.00% |  0.00% )   ( 0.004060s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004596s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p2
48.5.0:         ( 0.003261s |  0.00% |  0.00% )   ( 0.003723s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003203s |  0.00% |  0.00% )   ( 0.003661s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000241s |  0.00% |  0.00% )   ( 0.000270s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
73.5.0:         ( 17.908148s |  1.62% |  4.17% )   ( 17.030514s |  1.74% |  4.29% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003396s |  0.00% |  0.01% )   ( 0.003859s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.192761s |  0.10% |  6.66% )   ( 1.100359s |  0.11% |  6.46% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.132845s |  0.19% | 11.90% )   ( 1.992663s |  0.20% | 11.70% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.716608s |  0.15% |  9.58% )   ( 1.633145s |  0.16% |  9.58% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.087417s |  0.18% | 11.65% )   ( 2.010438s |  0.20% | 11.80% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.667125s |  0.15% |  9.30% )   ( 1.591461s |  0.16% |  9.34% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.036530s |  0.09% |  5.78% )   ( 1.033144s |  0.10% |  6.06% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.507744s |  0.04% |  2.83% )   ( 0.487482s |  0.04% |  2.86% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.118079s |  0.10% |  6.24% )   ( 1.079299s |  0.11% |  6.33% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.465866s |  0.04% |  2.60% )   ( 0.416678s |  0.04% |  2.44% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.427254s |  0.12% |  7.96% )   ( 1.391196s |  0.14% |  8.16% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.513203s |  0.31% | 19.61% )   ( 3.366951s |  0.34% | 19.77% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.552460s |  0.04% |  3.08% )   ( 0.477411s |  0.04% |  2.80% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.486860s |  0.04% |  2.71% )   ( 0.446428s |  0.04% |  2.62% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
70.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.003512s |  0.00% |  0.00% )   ( 0.004001s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003118s |  0.00% |  0.00% )   ( 0.003553s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003313s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008543s |  0.00% |  0.04% )   ( 0.008628s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p2\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p2_PID})
998.3.0:        ( 18.627105s |  1.68% |  3.30% )   ( 16.892048s |  1.72% |  3.39% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000785s |  0.00% |  0.00% )   ( 0.000806s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p3 p3_PID (&)
6.4.0:          ( 18.626233s |  1.68% | 99.99% )   ( 16.891143s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000340s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000374s |  0.00% |  0.00% )   ( 0.000419s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p3
12.5.0:         ( 0.020936s |  0.00% |  0.11% )   ( 0.020899s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021255s |  0.00% |  0.11% )   ( 0.021166s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021119s |  0.00% |  0.11% )   ( 0.021069s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021073s |  0.00% |  0.11% )   ( 0.021034s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.020968s |  0.00% |  0.11% )   ( 0.020928s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004194s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.003890s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004744s |  0.00% |  0.00% )   ( 0.005299s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p3
23.5.0:         ( 0.573593s |  0.05% |  0.11% )   ( 0.007046s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004587s |  0.00% |  0.00% )   ( 0.005136s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004885s |  0.00% |  0.00% )   ( 0.005457s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003957s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004366s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038908s |  0.00% |  0.00% )   ( 0.032226s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003783s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003710s |  0.00% |  0.00% )   ( 0.004208s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.007246s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004635s |  0.00% |  0.00% )   ( 0.005172s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p3
48.5.0:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004322s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004122s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.832925s |  1.61% |  3.82% )   ( 16.665885s |  1.70% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003870s |  0.00% |  0.02% )   ( 0.004384s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.304615s |  0.11% |  7.31% )   ( 1.098995s |  0.11% |  6.59% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.046838s |  0.18% | 11.47% )   ( 1.893094s |  0.19% | 11.35% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.716719s |  0.15% |  9.62% )   ( 1.613135s |  0.16% |  9.67% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.079269s |  0.18% | 11.65% )   ( 1.952134s |  0.19% | 11.71% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.668126s |  0.15% |  9.35% )   ( 1.572815s |  0.16% |  9.43% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.048820s |  0.09% |  5.88% )   ( 1.026003s |  0.10% |  6.15% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.579957s |  0.05% |  3.25% )   ( 0.525832s |  0.05% |  3.15% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.135039s |  0.10% |  6.36% )   ( 1.082322s |  0.11% |  6.49% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.521499s |  0.04% |  2.92% )   ( 0.464198s |  0.04% |  2.78% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.510015s |  0.13% |  8.46% )   ( 1.393377s |  0.14% |  8.36% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.142850s |  0.28% | 17.62% )   ( 3.024049s |  0.30% | 18.14% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.565821s |  0.05% |  3.17% )   ( 0.515260s |  0.05% |  3.09% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.509487s |  0.04% |  2.85% )   ( 0.500287s |  0.05% |  3.00% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003900s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003543s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004088s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005180s |  0.00% |  0.02% )   ( 0.005250s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p3\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p3_PID})
998.3.0:        ( 18.027073s |  1.63% |  3.19% )   ( 16.609453s |  1.69% |  3.33% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000817s |  0.00% |  0.00% )   ( 0.000835s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p4 p4_PID (&)
6.4.0:          ( 18.026166s |  1.63% | 99.99% )   ( 16.608515s |  1.69% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000340s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000101s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p4
12.5.0:         ( 0.021028s |  0.00% |  0.11% )   ( 0.020997s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021075s |  0.00% |  0.11% )   ( 0.021032s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021122s |  0.00% |  0.11% )   ( 0.021077s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021051s |  0.00% |  0.11% )   ( 0.021004s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021016s |  0.00% |  0.11% )   ( 0.020971s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004764s |  0.00% |  0.00% )   ( 0.005336s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004237s |  0.00% |  0.00% )   ( 0.004770s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005082s |  0.00% |  0.00% )   ( 0.005631s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p4
23.5.0:         ( 0.492235s |  0.04% |  0.10% )   ( 0.007002s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004593s |  0.00% |  0.00% )   ( 0.005125s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.005068s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004676s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004404s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038790s |  0.00% |  0.00% )   ( 0.032139s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003895s |  0.00% |  0.00% )   ( 0.004425s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.007359s |  0.00% |  0.00% )   ( 0.004978s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.005150s |  0.00% |  0.00% )   ( 0.005722s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p4
48.5.0:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004347s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.301334s |  1.56% |  3.69% )   ( 16.374704s |  1.67% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003852s |  0.00% |  0.02% )   ( 0.004402s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.238043s |  0.11% |  7.15% )   ( 1.116389s |  0.11% |  6.81% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.924796s |  0.17% | 11.12% )   ( 1.876459s |  0.19% | 11.45% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.670848s |  0.15% |  9.65% )   ( 1.575802s |  0.16% |  9.62% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.987259s |  0.17% | 11.48% )   ( 1.853952s |  0.18% | 11.32% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.671157s |  0.15% |  9.65% )   ( 1.523267s |  0.15% |  9.30% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.074734s |  0.09% |  6.21% )   ( 0.988913s |  0.10% |  6.03% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.546108s |  0.04% |  3.15% )   ( 0.513908s |  0.05% |  3.13% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.082555s |  0.09% |  6.25% )   ( 1.027618s |  0.10% |  6.27% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.495253s |  0.04% |  2.86% )   ( 0.466138s |  0.04% |  2.84% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.469354s |  0.13% |  8.49% )   ( 1.391933s |  0.14% |  8.50% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.071727s |  0.27% | 17.75% )   ( 3.002567s |  0.30% | 18.33% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.535123s |  0.04% |  3.09% )   ( 0.520397s |  0.05% |  3.17% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.530525s |  0.04% |  3.06% )   ( 0.512959s |  0.05% |  3.13% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004132s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.004799s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.006790s |  0.00% |  0.00% )   ( 0.004665s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
49.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
58.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
59.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
61.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit
62.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p* 1>&21
63.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.010606s |  0.00% |  0.05% )   ( 0.009285s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p4\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p4_PID})
998.3.0:        ( 21.874843s |  1.97% |  3.88% )   ( 20.242909s |  2.07% |  4.06% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000826s |  0.00% |  0.00% )   ( 0.000842s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p5 p5_PID (&)
6.4.0:          ( 21.873928s |  1.97% | 99.99% )   ( 20.241966s |  2.07% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000274s |  0.00% |  0.00% )   ( 0.000310s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000282s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p5
12.5.0:         ( 0.022291s |  0.00% |  0.10% )   ( 0.022234s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021164s |  0.00% |  0.09% )   ( 0.021122s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021083s |  0.00% |  0.09% )   ( 0.021036s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021035s |  0.00% |  0.09% )   ( 0.020994s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.023295s |  0.00% |  0.10% )   ( 0.023247s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004671s |  0.00% |  0.00% )   ( 0.005210s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004530s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004926s |  0.00% |  0.00% )   ( 0.005471s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p5
23.5.0:         ( 0.585601s |  0.05% |  0.09% )   ( 0.007749s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004875s |  0.00% |  0.00% )   ( 0.005415s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004823s |  0.00% |  0.00% )   ( 0.005413s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004442s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.046891s |  0.00% |  0.00% )   ( 0.031771s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003975s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.010092s |  0.00% |  0.00% )   ( 0.004582s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004906s |  0.00% |  0.00% )   ( 0.005450s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p5
48.5.0:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004599s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003845s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 21.051620s |  1.90% |  3.70% )   ( 20.010263s |  2.04% |  3.80% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003791s |  0.00% |  0.01% )   ( 0.004315s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.583710s |  0.14% |  7.52% )   ( 1.350134s |  0.13% |  6.74% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.605245s |  0.23% | 12.37% )   ( 2.452332s |  0.25% | 12.25% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.900977s |  0.17% |  9.03% )   ( 1.868588s |  0.19% |  9.33% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.364572s |  0.21% | 11.23% )   ( 2.295716s |  0.23% | 11.47% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.904501s |  0.17% |  9.04% )   ( 1.839899s |  0.18% |  9.19% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.345234s |  0.12% |  6.39% )   ( 1.283400s |  0.13% |  6.41% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.622267s |  0.05% |  2.95% )   ( 0.580972s |  0.05% |  2.90% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.368761s |  0.12% |  6.50% )   ( 1.336560s |  0.13% |  6.67% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.558374s |  0.05% |  2.65% )   ( 0.492028s |  0.05% |  2.45% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.666330s |  0.15% |  7.91% )   ( 1.623183s |  0.16% |  8.11% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.932802s |  0.35% | 18.68% )   ( 3.790506s |  0.38% | 18.94% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.602787s |  0.05% |  2.86% )   ( 0.563153s |  0.05% |  2.81% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.592269s |  0.05% |  2.81% )   ( 0.529477s |  0.05% |  2.64% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003848s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004100s |  0.00% |  0.00% )   ( 0.004601s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005335s |  0.00% |  0.02% )   ( 0.005410s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p5\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p5_PID})
998.3.0:        ( 18.533838s |  1.67% |  3.28% )   ( 16.982332s |  1.73% |  3.41% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000827s |  0.00% |  0.00% )   ( 0.000844s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p6 p6_PID (&)
6.4.0:          ( 18.532921s |  1.67% | 99.99% )   ( 16.981385s |  1.73% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000332s |  0.00% |  0.00% )   ( 0.000376s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000100s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p6
12.5.0:         ( 0.021190s |  0.00% |  0.11% )   ( 0.021149s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021112s |  0.00% |  0.11% )   ( 0.021071s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021035s |  0.00% |  0.11% )   ( 0.020993s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021073s |  0.00% |  0.11% )   ( 0.021026s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021010s |  0.00% |  0.11% )   ( 0.020970s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003783s |  0.00% |  0.00% )   ( 0.004246s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
20.5.0:         ( 0.003544s |  0.00% |  0.00% )   ( 0.004013s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005996s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p6
23.5.0:         ( 0.412726s |  0.03% |  0.09% )   ( 0.006000s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004032s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003628s |  0.00% |  0.00% )   ( 0.004082s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003180s |  0.00% |  0.00% )   ( 0.003607s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003374s |  0.00% |  0.00% )   ( 0.003799s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.028032s |  0.00% |  0.00% )   ( 0.025379s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003241s |  0.00% |  0.00% )   ( 0.003662s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003147s |  0.00% |  0.00% )   ( 0.003557s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.003303s |  0.00% |  0.00% )   ( 0.003702s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.003883s |  0.00% |  0.00% )   ( 0.004328s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p6
48.5.0:         ( 0.003040s |  0.00% |  0.00% )   ( 0.003472s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003141s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.917092s |  1.62% |  4.39% )   ( 16.772705s |  1.71% |  4.48% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003254s |  0.00% |  0.01% )   ( 0.003700s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.138480s |  0.10% |  6.35% )   ( 1.068173s |  0.10% |  6.36% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.051675s |  0.18% | 11.45% )   ( 1.965250s |  0.20% | 11.71% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.708789s |  0.15% |  9.53% )   ( 1.587720s |  0.16% |  9.46% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.066585s |  0.18% | 11.53% )   ( 1.981234s |  0.20% | 11.81% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.631896s |  0.14% |  9.10% )   ( 1.552246s |  0.15% |  9.25% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.081249s |  0.09% |  6.03% )   ( 0.992103s |  0.10% |  5.91% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.549484s |  0.04% |  3.06% )   ( 0.477698s |  0.04% |  2.84% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.177075s |  0.10% |  6.56% )   ( 1.073343s |  0.10% |  6.39% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.491333s |  0.04% |  2.74% )   ( 0.411962s |  0.04% |  2.45% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.516497s |  0.13% |  8.46% )   ( 1.396544s |  0.14% |  8.32% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.427431s |  0.31% | 19.12% )   ( 3.344230s |  0.34% | 19.93% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.515542s |  0.04% |  2.87% )   ( 0.470755s |  0.04% |  2.80% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.557802s |  0.05% |  3.11% )   ( 0.447747s |  0.04% |  2.66% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003393s |  0.00% |  0.00% )   ( 0.003862s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.006172s |  0.00% |  0.00% )   ( 0.003598s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003287s |  0.00% |  0.00% )   ( 0.003713s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008229s |  0.00% |  0.04% )   ( 0.008326s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p6\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p6_PID})
998.3.0:        ( 17.972811s |  1.62% |  3.18% )   ( 16.371008s |  1.67% |  3.29% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000829s |  0.00% |  0.00% )   ( 0.000845s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p7 p7_PID (&)
6.4.0:          ( 17.971891s |  1.62% | 99.99% )   ( 16.370059s |  1.67% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p7
12.5.0:         ( 0.023319s |  0.00% |  0.12% )   ( 0.023120s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021128s |  0.00% |  0.11% )   ( 0.021022s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021184s |  0.00% |  0.11% )   ( 0.021071s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021274s |  0.00% |  0.11% )   ( 0.021103s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021144s |  0.00% |  0.11% )   ( 0.021035s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005572s |  0.00% |  0.00% )   ( 0.006201s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ true
20.5.0:         ( 0.004839s |  0.00% |  0.00% )   ( 0.005467s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.006006s |  0.00% |  0.00% )   ( 0.006651s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p7
23.5.0:         ( 0.485193s |  0.04% |  0.08% )   ( 0.008448s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.005180s |  0.00% |  0.00% )   ( 0.005797s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.005156s |  0.00% |  0.00% )   ( 0.005824s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004742s |  0.00% |  0.00% )   ( 0.005373s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.005102s |  0.00% |  0.00% )   ( 0.005733s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.048810s |  0.00% |  0.00% )   ( 0.037710s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.004661s |  0.00% |  0.00% )   ( 0.005268s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.004671s |  0.00% |  0.00% )   ( 0.005263s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.007975s |  0.00% |  0.00% )   ( 0.005605s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.005756s |  0.00% |  0.00% )   ( 0.006392s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p7
48.5.0:         ( 0.007605s |  0.00% |  0.00% )   ( 0.005229s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.004439s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.238012s |  1.55% |  3.19% )   ( 16.120611s |  1.64% |  3.28% )    	(30x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004276s |  0.00% |  0.02% )   ( 0.004862s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.280501s |  0.11% |  7.42% )   ( 1.079215s |  0.11% |  6.69% )    	(30x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.049361s |  0.18% | 11.88% )   ( 1.789079s |  0.18% | 11.09% )    	(30x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.630032s |  0.14% |  9.45% )   ( 1.566797s |  0.16% |  9.71% )    	(30x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.879810s |  0.17% | 10.90% )   ( 1.773945s |  0.18% | 11.00% )    	(30x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.532477s |  0.13% |  8.89% )   ( 1.479046s |  0.15% |  9.17% )    	(30x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.035256s |  0.09% |  6.00% )   ( 0.992045s |  0.10% |  6.15% )    	(30x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.601964s |  0.05% |  3.49% )   ( 0.577371s |  0.05% |  3.58% )    	(30x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.125793s |  0.10% |  6.53% )   ( 1.025558s |  0.10% |  6.36% )    	(30x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.551733s |  0.04% |  3.20% )   ( 0.525558s |  0.05% |  3.26% )    	(30x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.403442s |  0.12% |  8.14% )   ( 1.376084s |  0.14% |  8.53% )    	(30x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.844526s |  0.25% | 16.50% )   ( 2.767438s |  0.28% | 17.16% )    	(30x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.645345s |  0.05% |  3.74% )   ( 0.586091s |  0.05% |  3.63% )    	(30x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.653496s |  0.05% |  3.79% )   ( 0.577522s |  0.05% |  3.58% )    	(30x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005283s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.004303s |  0.00% |  0.00% )   ( 0.004887s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004908s |  0.00% |  0.00% )   ( 0.005489s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005291s |  0.00% |  0.02% )   ( 0.005365s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p7\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p7_PID})
998.3.0:        ( 19.170648s |  1.73% |  3.40% )   ( 17.952097s |  1.83% |  3.60% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000839s |  0.00% |  0.00% )   ( 0.000859s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p8 p8_PID (&)
6.4.0:          ( 19.169715s |  1.73% | 99.99% )   ( 17.951131s |  1.83% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000327s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p8
12.5.0:         ( 0.021149s |  0.00% |  0.11% )   ( 0.021105s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021071s |  0.00% |  0.10% )   ( 0.021005s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021044s |  0.00% |  0.10% )   ( 0.020998s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021282s |  0.00% |  0.11% )   ( 0.021240s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021029s |  0.00% |  0.10% )   ( 0.020987s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003900s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
20.5.0:         ( 0.003483s |  0.00% |  0.00% )   ( 0.003956s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004147s |  0.00% |  0.00% )   ( 0.004611s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p8
23.5.0:         ( 0.433700s |  0.03% |  0.09% )   ( 0.006185s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.005903s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003319s |  0.00% |  0.00% )   ( 0.003761s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004992s |  0.00% |  0.00% )   ( 0.004066s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.030016s |  0.00% |  0.00% )   ( 0.026909s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003262s |  0.00% |  0.00% )   ( 0.003697s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003291s |  0.00% |  0.00% )   ( 0.003723s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.003889s |  0.00% |  0.00% )   ( 0.003932s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p8
48.5.0:         ( 0.003422s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003208s |  0.00% |  0.00% )   ( 0.003671s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 18.531783s |  1.67% |  4.39% )   ( 17.740209s |  1.81% |  4.49% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003269s |  0.00% |  0.01% )   ( 0.003723s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.302750s |  0.11% |  7.02% )   ( 1.172045s |  0.11% |  6.60% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.176561s |  0.19% | 11.74% )   ( 2.127708s |  0.21% | 11.99% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.799410s |  0.16% |  9.70% )   ( 1.702201s |  0.17% |  9.59% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.249310s |  0.20% | 12.13% )   ( 2.122069s |  0.21% | 11.96% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.716247s |  0.15% |  9.26% )   ( 1.642782s |  0.16% |  9.26% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.174076s |  0.10% |  6.33% )   ( 1.089258s |  0.11% |  6.14% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.496093s |  0.04% |  2.67% )   ( 0.492575s |  0.05% |  2.77% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.194238s |  0.10% |  6.44% )   ( 1.153179s |  0.11% |  6.50% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.416071s |  0.03% |  2.24% )   ( 0.414019s |  0.04% |  2.33% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.483183s |  0.13% |  8.00% )   ( 1.446377s |  0.14% |  8.15% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.473326s |  0.31% | 18.74% )   ( 3.451187s |  0.35% | 19.45% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.482568s |  0.04% |  2.60% )   ( 0.479486s |  0.04% |  2.70% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.564681s |  0.05% |  3.04% )   ( 0.443600s |  0.04% |  2.50% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003313s |  0.00% |  0.00% )   ( 0.003754s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003099s |  0.00% |  0.00% )   ( 0.003504s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003280s |  0.00% |  0.00% )   ( 0.003691s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.006622s |  0.00% |  0.03% )   ( 0.006677s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p8\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p8_PID})
998.3.0:        ( 18.099159s |  1.63% |  3.21% )   ( 16.882861s |  1.72% |  3.39% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000787s |  0.00% |  0.00% )   ( 0.000801s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p9 p9_PID (&)
6.4.0:          ( 18.098272s |  1.63% | 99.99% )   ( 16.881950s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p9
12.5.0:         ( 0.023341s |  0.00% |  0.12% )   ( 0.023285s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021240s |  0.00% |  0.11% )   ( 0.021191s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021228s |  0.00% |  0.11% )   ( 0.021179s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021330s |  0.00% |  0.11% )   ( 0.021283s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021245s |  0.00% |  0.11% )   ( 0.021189s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005006s |  0.00% |  0.00% )   ( 0.005603s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004295s |  0.00% |  0.00% )   ( 0.004849s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005226s |  0.00% |  0.00% )   ( 0.005805s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p9
23.5.0:         ( 0.390469s |  0.03% |  0.07% )   ( 0.006926s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004423s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004860s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004176s |  0.00% |  0.00% )   ( 0.004706s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.037438s |  0.00% |  0.00% )   ( 0.033652s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003972s |  0.00% |  0.00% )   ( 0.004505s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003939s |  0.00% |  0.00% )   ( 0.004457s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.004044s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004729s |  0.00% |  0.00% )   ( 0.005255s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p9
48.5.0:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003753s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.484163s |  1.58% |  3.71% )   ( 16.646563s |  1.70% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004124s |  0.00% |  0.02% )   ( 0.004595s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.148762s |  0.10% |  6.57% )   ( 1.083477s |  0.11% |  6.50% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.047156s |  0.18% | 11.70% )   ( 1.891550s |  0.19% | 11.36% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.601154s |  0.14% |  9.15% )   ( 1.581531s |  0.16% |  9.50% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.921269s |  0.17% | 10.98% )   ( 1.884746s |  0.19% | 11.32% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.615741s |  0.14% |  9.24% )   ( 1.536558s |  0.15% |  9.23% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.098024s |  0.09% |  6.28% )   ( 1.012581s |  0.10% |  6.08% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.530922s |  0.04% |  3.03% )   ( 0.526469s |  0.05% |  3.16% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.121251s |  0.10% |  6.41% )   ( 1.065780s |  0.10% |  6.40% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.503063s |  0.04% |  2.87% )   ( 0.470131s |  0.04% |  2.82% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.538475s |  0.13% |  8.79% )   ( 1.416591s |  0.14% |  8.50% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.187414s |  0.28% | 18.23% )   ( 3.124401s |  0.31% | 18.76% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.582861s |  0.05% |  3.33% )   ( 0.535321s |  0.05% |  3.21% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.583947s |  0.05% |  3.33% )   ( 0.512832s |  0.05% |  3.08% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003811s |  0.00% |  0.00% )   ( 0.004334s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004282s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008767s |  0.00% |  0.04% )   ( 0.008837s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p9\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p9_PID})
998.3.0:        ( 18.742017s |  1.69% |  3.32% )   ( 17.275666s |  1.76% |  3.47% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000765s |  0.00% |  0.00% )   ( 0.000778s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p10 p10_PID (&)
6.4.0:          ( 18.741158s |  1.69% | 99.99% )   ( 17.274781s |  1.76% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p10
12.5.0:         ( 0.021099s |  0.00% |  0.11% )   ( 0.021034s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.023838s |  0.00% |  0.12% )   ( 0.023770s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021065s |  0.00% |  0.11% )   ( 0.021018s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021105s |  0.00% |  0.11% )   ( 0.021059s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021072s |  0.00% |  0.11% )   ( 0.021031s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003509s |  0.00% |  0.00% )   ( 0.003942s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ true
20.5.0:         ( 0.003211s |  0.00% |  0.00% )   ( 0.003645s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003870s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p10
23.5.0:         ( 0.410871s |  0.03% |  0.10% )   ( 0.005203s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003569s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003402s |  0.00% |  0.00% )   ( 0.003845s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003021s |  0.00% |  0.00% )   ( 0.003408s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003157s |  0.00% |  0.00% )   ( 0.003554s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.026028s |  0.00% |  0.00% )   ( 0.023378s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.005042s |  0.00% |  0.00% )   ( 0.003453s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.002997s |  0.00% |  0.00% )   ( 0.003386s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.006350s |  0.00% |  0.00% )   ( 0.003652s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p10
48.5.0:         ( 0.003151s |  0.00% |  0.00% )   ( 0.003587s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003026s |  0.00% |  0.00% )   ( 0.003452s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 18.126219s |  1.63% |  4.83% )   ( 17.069650s |  1.74% |  4.94% )    	(20x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005984s |  0.00% |  0.03% )   ( 0.003389s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.161817s |  0.10% |  6.40% )   ( 1.112323s |  0.11% |  6.51% )    	(20x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.146287s |  0.19% | 11.84% )   ( 2.041429s |  0.20% | 11.95% )    	(20x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.738961s |  0.15% |  9.59% )   ( 1.619119s |  0.16% |  9.48% )    	(20x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.147268s |  0.19% | 11.84% )   ( 2.065332s |  0.21% | 12.09% )    	(20x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.679532s |  0.15% |  9.26% )   ( 1.591724s |  0.16% |  9.32% )    	(20x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.077100s |  0.09% |  5.94% )   ( 0.997208s |  0.10% |  5.84% )    	(20x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.477547s |  0.04% |  2.63% )   ( 0.448963s |  0.04% |  2.63% )    	(20x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.159186s |  0.10% |  6.39% )   ( 1.107352s |  0.11% |  6.48% )    	(20x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.403098s |  0.03% |  2.22% )   ( 0.380067s |  0.03% |  2.22% )    	(20x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.528346s |  0.13% |  8.43% )   ( 1.420337s |  0.14% |  8.32% )    	(20x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.633310s |  0.32% | 20.04% )   ( 3.441102s |  0.35% | 20.15% )    	(20x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.492175s |  0.04% |  2.71% )   ( 0.436361s |  0.04% |  2.55% )    	(20x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.475608s |  0.04% |  2.62% )   ( 0.404944s |  0.04% |  2.37% )    	(20x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003090s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.002983s |  0.00% |  0.00% )   ( 0.003392s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.006358s |  0.00% |  0.00% )   ( 0.003757s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008307s |  0.00% |  0.04% )   ( 0.008391s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p10\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p10_PID})
998.3.0:        ( 18.474494s |  1.67% |  3.27% )   ( 16.630067s |  1.70% |  3.34% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000767s |  0.00% |  0.00% )   ( 0.000784s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p11 p11_PID (&)
6.4.0:          ( 18.473627s |  1.67% | 99.99% )   ( 16.629176s |  1.70% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000172s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000112s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p11
12.5.0:         ( 0.023542s |  0.00% |  0.12% )   ( 0.023446s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.029833s |  0.00% |  0.16% )   ( 0.029740s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.030925s |  0.00% |  0.16% )   ( 0.030836s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.022169s |  0.00% |  0.12% )   ( 0.022126s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.039570s |  0.00% |  0.21% )   ( 0.039434s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004494s |  0.00% |  0.00% )   ( 0.005028s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004081s |  0.00% |  0.00% )   ( 0.004630s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004879s |  0.00% |  0.00% )   ( 0.005444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p11
23.5.0:         ( 0.508551s |  0.04% |  0.10% )   ( 0.006954s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004666s |  0.00% |  0.00% )   ( 0.005170s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004505s |  0.00% |  0.00% )   ( 0.005060s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004452s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004293s |  0.00% |  0.00% )   ( 0.004801s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.041425s |  0.00% |  0.00% )   ( 0.032891s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003957s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003988s |  0.00% |  0.00% )   ( 0.004517s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.007371s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004923s |  0.00% |  0.00% )   ( 0.005450s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p11
48.5.0:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003932s |  0.00% |  0.00% )   ( 0.004464s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.700525s |  1.60% |  3.68% )   ( 16.361182s |  1.67% |  3.78% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003883s |  0.00% |  0.02% )   ( 0.004410s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.334206s |  0.12% |  7.53% )   ( 1.101787s |  0.11% |  6.73% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.139956s |  0.19% | 12.08% )   ( 1.908580s |  0.19% | 11.66% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.720067s |  0.15% |  9.71% )   ( 1.584847s |  0.16% |  9.68% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.985909s |  0.17% | 11.21% )   ( 1.895757s |  0.19% | 11.58% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.606906s |  0.14% |  9.07% )   ( 1.549943s |  0.15% |  9.47% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.173531s |  0.10% |  6.62% )   ( 0.997074s |  0.10% |  6.09% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.572115s |  0.05% |  3.23% )   ( 0.535311s |  0.05% |  3.27% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.142062s |  0.10% |  6.45% )   ( 1.052187s |  0.10% |  6.43% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.506609s |  0.04% |  2.86% )   ( 0.468234s |  0.04% |  2.86% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.414103s |  0.12% |  7.98% )   ( 1.370049s |  0.14% |  8.37% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.002383s |  0.27% | 16.96% )   ( 2.861292s |  0.29% | 17.48% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.572290s |  0.05% |  3.23% )   ( 0.517935s |  0.05% |  3.16% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.526505s |  0.04% |  2.97% )   ( 0.513776s |  0.05% |  3.14% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003665s |  0.00% |  0.00% )   ( 0.004172s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005304s |  0.00% |  0.02% )   ( 0.005374s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p11\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p11_PID})
998.3.0:        ( 17.914283s |  1.62% |  3.17% )   ( 16.037200s |  1.64% |  3.22% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000771s |  0.00% |  0.00% )   ( 0.000790s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p12 p12_PID (&)
6.4.0:          ( 17.913417s |  1.62% | 99.99% )   ( 16.036303s |  1.64% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000109s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p12
12.5.0:         ( 0.021171s |  0.00% |  0.11% )   ( 0.021070s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021140s |  0.00% |  0.11% )   ( 0.021098s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.021079s |  0.00% |  0.11% )   ( 0.021036s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.021066s |  0.00% |  0.11% )   ( 0.021028s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.021985s |  0.00% |  0.12% )   ( 0.021950s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004529s |  0.00% |  0.00% )   ( 0.005052s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004802s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005068s |  0.00% |  0.00% )   ( 0.005654s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p12
23.5.0:         ( 0.487396s |  0.04% |  0.10% )   ( 0.007894s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004929s |  0.00% |  0.00% )   ( 0.005488s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004799s |  0.00% |  0.00% )   ( 0.005364s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004078s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004406s |  0.00% |  0.00% )   ( 0.004949s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.040962s |  0.00% |  0.00% )   ( 0.032655s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003955s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.011675s |  0.00% |  0.00% )   ( 0.004930s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004972s |  0.00% |  0.00% )   ( 0.005526s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p12
48.5.0:         ( 0.007017s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003939s |  0.00% |  0.00% )   ( 0.004471s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.184040s |  1.55% |  3.68% )   ( 15.800137s |  1.61% |  3.78% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004048s |  0.00% |  0.02% )   ( 0.004583s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.209194s |  0.10% |  7.03% )   ( 1.052986s |  0.10% |  6.66% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.024071s |  0.18% | 11.77% )   ( 1.804582s |  0.18% | 11.42% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.655120s |  0.14% |  9.63% )   ( 1.517719s |  0.15% |  9.60% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.937368s |  0.17% | 11.27% )   ( 1.798282s |  0.18% | 11.38% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.614492s |  0.14% |  9.39% )   ( 1.479502s |  0.15% |  9.36% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.114275s |  0.10% |  6.48% )   ( 0.961263s |  0.09% |  6.08% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.529728s |  0.04% |  3.08% )   ( 0.510941s |  0.05% |  3.23% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.009992s |  0.09% |  5.87% )   ( 0.989089s |  0.10% |  6.26% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.466253s |  0.04% |  2.71% )   ( 0.459457s |  0.04% |  2.90% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.445567s |  0.13% |  8.41% )   ( 1.331094s |  0.13% |  8.42% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.029197s |  0.27% | 17.62% )   ( 2.865133s |  0.29% | 18.13% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.589416s |  0.05% |  3.43% )   ( 0.524648s |  0.05% |  3.32% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.555319s |  0.05% |  3.23% )   ( 0.500858s |  0.05% |  3.16% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004106s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.004057s |  0.00% |  0.00% )   ( 0.004574s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.007624s |  0.00% |  0.00% )   ( 0.004815s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.010047s |  0.00% |  0.05% )   ( 0.009684s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p12\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p12_PID})
998.3.0:        ( 18.723874s |  1.69% |  3.32% )   ( 17.723045s |  1.81% |  3.56% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000970s |  0.00% |  0.00% )   ( 0.000994s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p13 p13_PID (&)
6.4.0:          ( 18.722714s |  1.69% | 99.99% )   ( 17.721837s |  1.81% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000165s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p13
12.5.0:         ( 0.040379s |  0.00% |  0.21% )   ( 0.040248s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040506s |  0.00% |  0.21% )   ( 0.040367s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.040397s |  0.00% |  0.21% )   ( 0.040260s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.040602s |  0.00% |  0.21% )   ( 0.040460s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.040307s |  0.00% |  0.21% )   ( 0.040159s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003037s |  0.00% |  0.00% )   ( 0.003397s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ true
20.5.0:         ( 0.002888s |  0.00% |  0.00% )   ( 0.003258s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003573s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p13
23.5.0:         ( 0.380419s |  0.03% |  0.11% )   ( 0.004869s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003176s |  0.00% |  0.00% )   ( 0.003545s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003017s |  0.00% |  0.00% )   ( 0.003373s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.002581s |  0.00% |  0.00% )   ( 0.002905s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.002771s |  0.00% |  0.00% )   ( 0.003116s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.027514s |  0.00% |  0.00% )   ( 0.021738s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.002470s |  0.00% |  0.00% )   ( 0.002806s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.002515s |  0.00% |  0.00% )   ( 0.002839s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.005698s |  0.00% |  0.00% )   ( 0.003021s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.003119s |  0.00% |  0.00% )   ( 0.003476s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p13
48.5.0:         ( 0.002515s |  0.00% |  0.00% )   ( 0.002837s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.002463s |  0.00% |  0.00% )   ( 0.002812s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 18.050870s |  1.63% |  5.67% )   ( 17.432671s |  1.78% |  5.78% )    	(17x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002463s |  0.00% |  0.01% )   ( 0.002796s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.255498s |  0.11% |  6.95% )   ( 1.158423s |  0.11% |  6.64% )    	(17x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.281612s |  0.20% | 12.63% )   ( 2.171618s |  0.22% | 12.45% )    	(17x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.720535s |  0.15% |  9.53% )   ( 1.669703s |  0.17% |  9.57% )    	(17x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.144611s |  0.19% | 11.88% )   ( 2.132289s |  0.21% | 12.23% )    	(17x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.623875s |  0.14% |  8.99% )   ( 1.612671s |  0.16% |  9.25% )    	(17x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.018250s |  0.09% |  5.64% )   ( 1.012805s |  0.10% |  5.80% )    	(17x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.419023s |  0.03% |  2.32% )   ( 0.412794s |  0.04% |  2.36% )    	(17x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.223909s |  0.11% |  6.78% )   ( 1.131157s |  0.11% |  6.48% )    	(17x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.350546s |  0.03% |  1.94% )   ( 0.346375s |  0.03% |  1.98% )    	(17x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.469685s |  0.13% |  8.14% )   ( 1.413056s |  0.14% |  8.10% )    	(17x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.668358s |  0.33% | 20.32% )   ( 3.598597s |  0.36% | 20.64% )    	(17x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.439062s |  0.03% |  2.43% )   ( 0.401701s |  0.04% |  2.30% )    	(17x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.433443s |  0.03% |  2.40% )   ( 0.368686s |  0.03% |  2.11% )    	(17x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.002702s |  0.00% |  0.00% )   ( 0.003066s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.002301s |  0.00% |  0.00% )   ( 0.002611s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.002679s |  0.00% |  0.00% )   ( 0.002986s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.012781s |  0.00% |  0.06% )   ( 0.009521s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p13\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p13_PID})
998.3.0:        ( 17.952397s |  1.62% |  3.18% )   ( 15.847013s |  1.62% |  3.18% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001117s |  0.00% |  0.00% )   ( 0.001129s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p14 p14_PID (&)
6.4.0:          ( 17.951119s |  1.62% | 99.99% )   ( 15.845704s |  1.62% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000103s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000103s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p14
12.5.0:         ( 0.036787s |  0.00% |  0.20% )   ( 0.036652s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.023794s |  0.00% |  0.13% )   ( 0.023721s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.023796s |  0.00% |  0.13% )   ( 0.023722s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.022957s |  0.00% |  0.12% )   ( 0.022895s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.026577s |  0.00% |  0.14% )   ( 0.026488s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004902s |  0.00% |  0.00% )   ( 0.005501s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
20.5.0:         ( 0.004330s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005455s |  0.00% |  0.00% )   ( 0.006049s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p14
23.5.0:         ( 0.472847s |  0.04% |  0.09% )   ( 0.007649s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.005142s |  0.00% |  0.00% )   ( 0.005765s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004967s |  0.00% |  0.00% )   ( 0.005574s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004583s |  0.00% |  0.00% )   ( 0.005159s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004538s |  0.00% |  0.00% )   ( 0.005044s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.043671s |  0.00% |  0.00% )   ( 0.034336s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004853s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.004036s |  0.00% |  0.00% )   ( 0.004564s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.004302s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.005009s |  0.00% |  0.00% )   ( 0.005555s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p14
48.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004600s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.218178s |  1.55% |  3.55% )   ( 15.578563s |  1.59% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004218s |  0.00% |  0.02% )   ( 0.004793s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.169540s |  0.10% |  6.79% )   ( 1.048928s |  0.10% |  6.73% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.912081s |  0.17% | 11.10% )   ( 1.752891s |  0.17% | 11.25% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.614139s |  0.14% |  9.37% )   ( 1.475461s |  0.15% |  9.47% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.978757s |  0.17% | 11.49% )   ( 1.745040s |  0.17% | 11.20% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.520825s |  0.13% |  8.83% )   ( 1.448398s |  0.14% |  9.29% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.017802s |  0.09% |  5.91% )   ( 0.957748s |  0.09% |  6.14% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.586738s |  0.05% |  3.40% )   ( 0.539491s |  0.05% |  3.46% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.162484s |  0.10% |  6.75% )   ( 0.986827s |  0.10% |  6.33% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.557532s |  0.05% |  3.23% )   ( 0.472204s |  0.04% |  3.03% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.472845s |  0.13% |  8.55% )   ( 1.306616s |  0.13% |  8.38% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.050579s |  0.27% | 17.71% )   ( 2.792647s |  0.28% | 17.92% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.585784s |  0.05% |  3.40% )   ( 0.528538s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.584854s |  0.05% |  3.39% )   ( 0.518981s |  0.05% |  3.33% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004420s |  0.00% |  0.00% )   ( 0.004989s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004528s |  0.00% |  0.00% )   ( 0.005090s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008791s |  0.00% |  0.04% )   ( 0.008871s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p14\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p14_PID})
998.3.0:        ( 17.808427s |  1.61% |  3.15% )   ( 16.067788s |  1.64% |  3.22% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001139s |  0.00% |  0.00% )   ( 0.001159s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p15 p15_PID (&)
6.4.0:          ( 17.807133s |  1.61% | 99.99% )   ( 16.066458s |  1.64% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000202s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000172s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p15
12.5.0:         ( 0.024159s |  0.00% |  0.13% )   ( 0.024082s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.024228s |  0.00% |  0.13% )   ( 0.024149s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.026709s |  0.00% |  0.14% )   ( 0.026611s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.026196s |  0.00% |  0.14% )   ( 0.026112s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.024016s |  0.00% |  0.13% )   ( 0.023940s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005100s |  0.00% |  0.00% )   ( 0.005684s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
20.5.0:         ( 0.004506s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005475s |  0.00% |  0.00% )   ( 0.006021s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p15
23.5.0:         ( 0.519899s |  0.04% |  0.10% )   ( 0.007580s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004958s |  0.00% |  0.00% )   ( 0.005541s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004806s |  0.00% |  0.00% )   ( 0.005442s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004411s |  0.00% |  0.00% )   ( 0.005010s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005266s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.037844s |  0.00% |  0.00% )   ( 0.035320s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005131s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.004421s |  0.00% |  0.00% )   ( 0.004993s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.011013s |  0.00% |  0.00% )   ( 0.005224s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.005974s |  0.00% |  0.00% )   ( 0.006014s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p15
48.5.0:         ( 0.005242s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.004074s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.031096s |  1.54% |  3.41% )   ( 15.804182s |  1.61% |  3.51% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004068s |  0.00% |  0.02% )   ( 0.004614s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.169017s |  0.10% |  6.86% )   ( 1.050588s |  0.10% |  6.64% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.864929s |  0.16% | 10.95% )   ( 1.775530s |  0.18% | 11.23% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.793609s |  0.16% | 10.53% )   ( 1.523766s |  0.15% |  9.64% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.957815s |  0.17% | 11.49% )   ( 1.763719s |  0.18% | 11.15% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.547996s |  0.14% |  9.08% )   ( 1.468766s |  0.15% |  9.29% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 0.992907s |  0.08% |  5.82% )   ( 0.970120s |  0.09% |  6.13% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.634010s |  0.05% |  3.72% )   ( 0.547788s |  0.05% |  3.46% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.128285s |  0.10% |  6.62% )   ( 1.004786s |  0.10% |  6.35% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.529404s |  0.04% |  3.10% )   ( 0.487164s |  0.04% |  3.08% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.418617s |  0.12% |  8.32% )   ( 1.329030s |  0.13% |  8.40% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.842490s |  0.25% | 16.69% )   ( 2.794841s |  0.28% | 17.68% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.555078s |  0.05% |  3.25% )   ( 0.548666s |  0.05% |  3.47% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.592871s |  0.05% |  3.48% )   ( 0.534804s |  0.05% |  3.38% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004359s |  0.00% |  0.00% )   ( 0.004902s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004410s |  0.00% |  0.00% )   ( 0.004963s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009638s |  0.00% |  0.05% )   ( 0.009728s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p15\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p15_PID})
998.3.0:        ( 20.968970s |  1.89% |  3.71% )   ( 19.783598s |  2.02% |  3.97% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001115s |  0.00% |  0.00% )   ( 0.001141s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p16 p16_PID (&)
6.4.0:          ( 20.967696s |  1.89% | 99.99% )   ( 19.782278s |  2.02% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000184s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000182s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p16
12.5.0:         ( 0.037864s |  0.00% |  0.18% )   ( 0.037735s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.035031s |  0.00% |  0.16% )   ( 0.034916s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.038422s |  0.00% |  0.18% )   ( 0.038310s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.037892s |  0.00% |  0.18% )   ( 0.037784s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.040920s |  0.00% |  0.19% )   ( 0.040784s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003667s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ true
20.5.0:         ( 0.002996s |  0.00% |  0.00% )   ( 0.003392s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003689s |  0.00% |  0.00% )   ( 0.004118s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p16
23.5.0:         ( 0.357125s |  0.03% |  0.08% )   ( 0.005363s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003273s |  0.00% |  0.00% )   ( 0.003680s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003049s |  0.00% |  0.00% )   ( 0.003449s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003263s |  0.00% |  0.00% )   ( 0.003670s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.030684s |  0.00% |  0.00% )   ( 0.025012s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.002950s |  0.00% |  0.00% )   ( 0.003331s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.002911s |  0.00% |  0.00% )   ( 0.003282s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.009122s |  0.00% |  0.00% )   ( 0.003515s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.003584s |  0.00% |  0.00% )   ( 0.004000s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p16
48.5.0:         ( 0.003349s |  0.00% |  0.00% )   ( 0.003292s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.002737s |  0.00% |  0.00% )   ( 0.003103s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 20.325218s |  1.83% |  5.10% )   ( 19.497723s |  1.99% |  5.18% )    	(19x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002959s |  0.00% |  0.01% )   ( 0.003373s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.585847s |  0.14% |  7.80% )   ( 1.363448s |  0.13% |  6.99% )    	(19x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.418881s |  0.21% | 11.90% )   ( 2.341562s |  0.23% | 12.00% )    	(19x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.921844s |  0.17% |  9.45% )   ( 1.830697s |  0.18% |  9.38% )    	(19x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.411543s |  0.21% | 11.86% )   ( 2.377383s |  0.24% | 12.19% )    	(19x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.821258s |  0.16% |  8.96% )   ( 1.803993s |  0.18% |  9.25% )    	(19x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.180712s |  0.10% |  5.80% )   ( 1.179532s |  0.12% |  6.04% )    	(19x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.482123s |  0.04% |  2.37% )   ( 0.470886s |  0.04% |  2.41% )    	(19x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.296806s |  0.11% |  6.38% )   ( 1.278072s |  0.13% |  6.55% )    	(19x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.402214s |  0.03% |  1.97% )   ( 0.396197s |  0.04% |  2.03% )    	(19x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.643417s |  0.14% |  8.08% )   ( 1.567750s |  0.16% |  8.04% )    	(19x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.192750s |  0.37% | 20.62% )   ( 4.019582s |  0.41% | 20.61% )    	(19x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.493926s |  0.04% |  2.43% )   ( 0.450540s |  0.04% |  2.31% )    	(19x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.470938s |  0.04% |  2.31% )   ( 0.414708s |  0.04% |  2.12% )    	(19x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.002817s |  0.00% |  0.00% )   ( 0.003205s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.002599s |  0.00% |  0.00% )   ( 0.002978s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.002964s |  0.00% |  0.00% )   ( 0.003320s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.006763s |  0.00% |  0.03% )   ( 0.006814s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p16\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p16_PID})
998.3.0:        ( 18.268427s |  1.65% |  3.24% )   ( 17.347660s |  1.77% |  3.48% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001143s |  0.00% |  0.00% )   ( 0.001168s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p17 p17_PID (&)
6.4.0:          ( 18.267127s |  1.65% | 99.99% )   ( 17.346314s |  1.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000171s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p17
12.5.0:         ( 0.040532s |  0.00% |  0.22% )   ( 0.040381s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.023852s |  0.00% |  0.13% )   ( 0.023781s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.023772s |  0.00% |  0.13% )   ( 0.023703s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.040636s |  0.00% |  0.22% )   ( 0.040503s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.040862s |  0.00% |  0.22% )   ( 0.040720s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004430s |  0.00% |  0.00% )   ( 0.004964s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
20.5.0:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004786s |  0.00% |  0.00% )   ( 0.005338s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p17
23.5.0:         ( 0.412691s |  0.03% |  0.09% )   ( 0.006383s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004332s |  0.00% |  0.00% )   ( 0.004843s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004659s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004143s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003940s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.027406s |  0.00% |  0.00% )   ( 0.027809s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003505s |  0.00% |  0.00% )   ( 0.003974s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003535s |  0.00% |  0.00% )   ( 0.004007s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004503s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004680s |  0.00% |  0.00% )   ( 0.005204s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p17
48.5.0:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.582902s |  1.59% |  4.01% )   ( 17.060283s |  1.74% |  4.09% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003581s |  0.00% |  0.02% )   ( 0.004082s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.200838s |  0.10% |  6.82% )   ( 1.143481s |  0.11% |  6.70% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.000405s |  0.18% | 11.37% )   ( 1.951093s |  0.19% | 11.43% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.676568s |  0.15% |  9.53% )   ( 1.601716s |  0.16% |  9.38% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.117708s |  0.19% | 12.04% )   ( 1.955738s |  0.20% | 11.46% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.631286s |  0.14% |  9.27% )   ( 1.549326s |  0.15% |  9.08% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.176308s |  0.10% |  6.69% )   ( 1.138948s |  0.11% |  6.67% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.524167s |  0.04% |  2.98% )   ( 0.513663s |  0.05% |  3.01% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.151345s |  0.10% |  6.54% )   ( 1.139859s |  0.11% |  6.68% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.454016s |  0.04% |  2.58% )   ( 0.450044s |  0.04% |  2.63% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.470470s |  0.13% |  8.36% )   ( 1.460559s |  0.14% |  8.56% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.178257s |  0.28% | 18.07% )   ( 3.163115s |  0.32% | 18.54% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.509226s |  0.04% |  2.89% )   ( 0.500165s |  0.05% |  2.93% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.488727s |  0.04% |  2.77% )   ( 0.488494s |  0.04% |  2.86% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003640s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003468s |  0.00% |  0.00% )   ( 0.003933s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003993s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009151s |  0.00% |  0.05% )   ( 0.009244s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p17\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p17_PID})
998.3.0:        ( 18.584660s |  1.68% |  3.29% )   ( 17.117232s |  1.75% |  3.44% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001081s |  0.00% |  0.00% )   ( 0.001097s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p18 p18_PID (&)
6.4.0:          ( 18.583423s |  1.68% | 99.99% )   ( 17.115959s |  1.75% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000103s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p18
12.5.0:         ( 0.025203s |  0.00% |  0.13% )   ( 0.025116s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.023534s |  0.00% |  0.12% )   ( 0.023465s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.039169s |  0.00% |  0.21% )   ( 0.039027s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.040090s |  0.00% |  0.21% )   ( 0.039955s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.040020s |  0.00% |  0.21% )   ( 0.039880s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004657s |  0.00% |  0.00% )   ( 0.005215s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004193s |  0.00% |  0.00% )   ( 0.004754s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004985s |  0.00% |  0.00% )   ( 0.005561s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p18
23.5.0:         ( 0.513872s |  0.04% |  0.10% )   ( 0.007227s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004835s |  0.00% |  0.00% )   ( 0.005401s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004733s |  0.00% |  0.00% )   ( 0.005270s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004062s |  0.00% |  0.00% )   ( 0.004609s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004336s |  0.00% |  0.00% )   ( 0.004870s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038118s |  0.00% |  0.00% )   ( 0.033160s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.004027s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004722s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004978s |  0.00% |  0.00% )   ( 0.005524s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p18
48.5.0:         ( 0.006868s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004407s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.777477s |  1.60% |  3.67% )   ( 16.822423s |  1.72% |  3.78% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003957s |  0.00% |  0.02% )   ( 0.004498s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.197341s |  0.10% |  6.73% )   ( 1.136045s |  0.11% |  6.75% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.217522s |  0.20% | 12.47% )   ( 1.969520s |  0.20% | 11.70% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.724425s |  0.15% |  9.70% )   ( 1.607538s |  0.16% |  9.55% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.025214s |  0.18% | 11.39% )   ( 1.913886s |  0.19% | 11.37% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.645722s |  0.14% |  9.25% )   ( 1.535797s |  0.15% |  9.12% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.118478s |  0.10% |  6.29% )   ( 1.028453s |  0.10% |  6.11% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.578878s |  0.05% |  3.25% )   ( 0.533892s |  0.05% |  3.17% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.124348s |  0.10% |  6.32% )   ( 1.073761s |  0.10% |  6.38% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.471657s |  0.04% |  2.65% )   ( 0.466950s |  0.04% |  2.77% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.442540s |  0.13% |  8.11% )   ( 1.405039s |  0.14% |  8.35% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.169517s |  0.28% | 17.82% )   ( 3.109278s |  0.31% | 18.48% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.527991s |  0.04% |  2.96% )   ( 0.527623s |  0.05% |  3.13% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.529887s |  0.04% |  2.98% )   ( 0.510143s |  0.05% |  3.03% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004778s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.009817s |  0.00% |  0.00% )   ( 0.004341s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.006696s |  0.00% |  0.03% )   ( 0.006760s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p18\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p18_PID})
998.3.0:        ( 22.314984s |  2.01% |  3.95% )   ( 22.063694s |  2.25% |  4.43% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001114s |  0.00% |  0.00% )   ( 0.001137s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p19 p19_PID (&)
6.4.0:          ( 22.313721s |  2.01% | 99.99% )   ( 22.062388s |  2.25% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p19
12.5.0:         ( 0.043376s |  0.00% |  0.19% )   ( 0.043212s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.037970s |  0.00% |  0.17% )   ( 0.037806s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.039059s |  0.00% |  0.17% )   ( 0.038926s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.039298s |  0.00% |  0.17% )   ( 0.039157s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.039515s |  0.00% |  0.17% )   ( 0.039389s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.000929s |  0.00% |  0.00% )   ( 0.001019s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │ true
20.5.0:         ( 0.000783s |  0.00% |  0.00% )   ( 0.000891s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.000987s |  0.00% |  0.00% )   ( 0.001095s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p19
23.5.0:         ( 0.097692s |  0.00% |  0.07% )   ( 0.001323s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.000788s |  0.00% |  0.00% )   ( 0.000895s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.000736s |  0.00% |  0.00% )   ( 0.000842s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.000620s |  0.00% |  0.00% )   ( 0.000711s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.000812s |  0.00% |  0.00% )   ( 0.000912s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.005699s |  0.00% |  0.00% )   ( 0.005786s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.000757s |  0.00% |  0.00% )   ( 0.000842s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.000719s |  0.00% |  0.00% )   ( 0.000815s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.005387s |  0.00% |  0.00% )   ( 0.000983s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.000895s |  0.00% |  0.00% )   ( 0.000984s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p19
48.5.0:         ( 0.000723s |  0.00% |  0.00% )   ( 0.000831s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.000674s |  0.00% |  0.00% )   ( 0.000759s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 21.986773s |  1.98% | 19.70% )   ( 21.835208s |  2.23% | 19.79% )    	(5x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.000616s |  0.00% |  0.00% )   ( 0.000701s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.500317s |  0.13% |  6.82% )   ( 1.495611s |  0.15% |  6.84% )    	(5x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 3.126412s |  0.28% | 14.21% )   ( 3.111903s |  0.31% | 14.25% )    	(5x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.233681s |  0.20% | 10.15% )   ( 2.224364s |  0.22% | 10.18% )    	(5x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 3.163198s |  0.28% | 14.38% )   ( 3.133382s |  0.32% | 14.35% )    	(5x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 2.268139s |  0.20% | 10.31% )   ( 2.225945s |  0.22% | 10.19% )    	(5x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.323127s |  0.11% |  6.01% )   ( 1.317010s |  0.13% |  6.03% )    	(5x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.297017s |  0.02% |  1.35% )   ( 0.296277s |  0.03% |  1.35% )    	(5x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.463183s |  0.13% |  6.65% )   ( 1.456620s |  0.14% |  6.67% )    	(5x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.212507s |  0.01% |  0.96% )   ( 0.211707s |  0.02% |  0.96% )    	(5x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.496146s |  0.13% |  6.80% )   ( 1.484927s |  0.15% |  6.80% )    	(5x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.479403s |  0.40% | 20.37% )   ( 4.463193s |  0.45% | 20.44% )    	(5x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.238695s |  0.02% |  1.08% )   ( 0.231475s |  0.02% |  1.06% )    	(5x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.184332s |  0.01% |  0.83% )   ( 0.182093s |  0.01% |  0.83% )    	(5x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.000634s |  0.00% |  0.00% )   ( 0.000723s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.000513s |  0.00% |  0.00% )   ( 0.000584s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.000543s |  0.00% |  0.00% )   ( 0.000615s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.006542s |  0.00% |  0.02% )   ( 0.006612s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p19\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p19_PID})
998.3.0:        ( 18.259641s |  1.65% |  3.23% )   ( 17.070866s |  1.74% |  3.43% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001158s |  0.00% |  0.00% )   ( 0.001179s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p20 p20_PID (&)
6.4.0:          ( 18.258334s |  1.65% | 99.99% )   ( 17.069517s |  1.74% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p20
12.5.0:         ( 0.039855s |  0.00% |  0.21% )   ( 0.039694s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040106s |  0.00% |  0.21% )   ( 0.039950s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.040023s |  0.00% |  0.21% )   ( 0.039867s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.041650s |  0.00% |  0.22% )   ( 0.041469s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.043484s |  0.00% |  0.23% )   ( 0.043325s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
20.5.0:         ( 0.003718s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004549s |  0.00% |  0.00% )   ( 0.005053s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p20
23.5.0:         ( 0.435340s |  0.03% |  0.09% )   ( 0.006304s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004394s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003918s |  0.00% |  0.00% )   ( 0.004389s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003416s |  0.00% |  0.00% )   ( 0.003875s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003772s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.034064s |  0.00% |  0.00% )   ( 0.030012s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003564s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003719s |  0.00% |  0.00% )   ( 0.004171s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004527s |  0.00% |  0.00% )   ( 0.005034s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p20
48.5.0:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004047s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003520s |  0.00% |  0.00% )   ( 0.004003s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.516995s |  1.58% |  4.17% )   ( 16.754254s |  1.71% |  4.26% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003758s |  0.00% |  0.02% )   ( 0.004256s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.218181s |  0.11% |  6.95% )   ( 1.131654s |  0.11% |  6.75% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.044820s |  0.18% | 11.67% )   ( 1.995479s |  0.20% | 11.91% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.711775s |  0.15% |  9.77% )   ( 1.618236s |  0.16% |  9.65% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.011537s |  0.18% | 11.48% )   ( 1.952041s |  0.19% | 11.65% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.608639s |  0.14% |  9.18% )   ( 1.557630s |  0.15% |  9.29% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.062060s |  0.09% |  6.06% )   ( 0.991661s |  0.10% |  5.91% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.521875s |  0.04% |  2.97% )   ( 0.492187s |  0.05% |  2.93% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.077735s |  0.09% |  6.15% )   ( 1.064331s |  0.10% |  6.35% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.467513s |  0.04% |  2.66% )   ( 0.428498s |  0.04% |  2.55% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.509641s |  0.13% |  8.61% )   ( 1.395954s |  0.14% |  8.33% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.263531s |  0.29% | 18.63% )   ( 3.186651s |  0.32% | 19.01% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.514895s |  0.04% |  2.93% )   ( 0.478356s |  0.04% |  2.85% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.501035s |  0.04% |  2.86% )   ( 0.457320s |  0.04% |  2.72% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003534s |  0.00% |  0.00% )   ( 0.003997s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003192s |  0.00% |  0.00% )   ( 0.003617s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003715s |  0.00% |  0.00% )   ( 0.004169s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005079s |  0.00% |  0.02% )   ( 0.005150s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p20\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p20_PID})
998.3.0:        ( 17.805462s |  1.61% |  3.15% )   ( 16.475470s |  1.68% |  3.31% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001179s |  0.00% |  0.00% )   ( 0.001198s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p21 p21_PID (&)
6.4.0:          ( 17.804126s |  1.61% | 99.99% )   ( 16.474100s |  1.68% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000150s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p21
12.5.0:         ( 0.031895s |  0.00% |  0.17% )   ( 0.031760s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.032016s |  0.00% |  0.17% )   ( 0.031877s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.032079s |  0.00% |  0.18% )   ( 0.031949s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.032145s |  0.00% |  0.18% )   ( 0.031994s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.032198s |  0.00% |  0.18% )   ( 0.032064s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005150s |  0.00% |  0.00% )   ( 0.005759s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
20.5.0:         ( 0.004582s |  0.00% |  0.00% )   ( 0.005166s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005505s |  0.00% |  0.00% )   ( 0.006091s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p21
23.5.0:         ( 0.498434s |  0.04% |  0.09% )   ( 0.007618s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004866s |  0.00% |  0.00% )   ( 0.005458s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004953s |  0.00% |  0.00% )   ( 0.005545s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004168s |  0.00% |  0.00% )   ( 0.004674s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004956s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.039941s |  0.00% |  0.00% )   ( 0.034975s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.004273s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.004153s |  0.00% |  0.00% )   ( 0.004708s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.005509s |  0.00% |  0.00% )   ( 0.005177s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.005120s |  0.00% |  0.00% )   ( 0.005706s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p21
48.5.0:         ( 0.005984s |  0.00% |  0.00% )   ( 0.004991s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.004068s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.018937s |  1.53% |  3.41% )   ( 16.178601s |  1.65% |  3.50% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004227s |  0.00% |  0.02% )   ( 0.004783s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.257964s |  0.11% |  7.39% )   ( 1.101270s |  0.11% |  6.80% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.877731s |  0.16% | 11.03% )   ( 1.811894s |  0.18% | 11.19% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.700942s |  0.15% |  9.99% )   ( 1.578268s |  0.16% |  9.75% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.851545s |  0.16% | 10.87% )   ( 1.808966s |  0.18% | 11.18% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.520091s |  0.13% |  8.93% )   ( 1.467566s |  0.15% |  9.07% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.073822s |  0.09% |  6.30% )   ( 0.985700s |  0.10% |  6.09% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.625729s |  0.05% |  3.67% )   ( 0.560841s |  0.05% |  3.46% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.098990s |  0.09% |  6.45% )   ( 1.032460s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.523473s |  0.04% |  3.07% )   ( 0.488638s |  0.04% |  3.02% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.430308s |  0.12% |  8.40% )   ( 1.379290s |  0.14% |  8.52% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.936910s |  0.26% | 17.25% )   ( 2.887385s |  0.29% | 17.84% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.555295s |  0.05% |  3.26% )   ( 0.543642s |  0.05% |  3.36% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.561910s |  0.05% |  3.30% )   ( 0.527898s |  0.05% |  3.26% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004370s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004609s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004553s |  0.00% |  0.00% )   ( 0.005010s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009369s |  0.00% |  0.05% )   ( 0.009460s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p21\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p21_PID})
998.3.0:        ( 20.618846s |  1.86% |  3.65% )   ( 19.270330s |  1.97% |  3.87% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001144s |  0.00% |  0.00% )   ( 0.001168s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p22 p22_PID (&)
6.4.0:          ( 20.617606s |  1.86% | 99.99% )   ( 19.269053s |  1.97% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000176s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000185s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p22
12.5.0:         ( 0.036839s |  0.00% |  0.17% )   ( 0.036703s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.038216s |  0.00% |  0.18% )   ( 0.038084s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.044108s |  0.00% |  0.21% )   ( 0.043925s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.040668s |  0.00% |  0.19% )   ( 0.040549s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.044328s |  0.00% |  0.21% )   ( 0.044169s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004625s |  0.00% |  0.00% )   ( 0.005171s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
20.5.0:         ( 0.004440s |  0.00% |  0.00% )   ( 0.004935s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005035s |  0.00% |  0.00% )   ( 0.005598s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p22
23.5.0:         ( 0.395250s |  0.03% |  0.06% )   ( 0.006803s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004429s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004434s |  0.00% |  0.00% )   ( 0.004996s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004466s |  0.00% |  0.00% )   ( 0.005016s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.044137s |  0.00% |  0.00% )   ( 0.033554s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.004125s |  0.00% |  0.00% )   ( 0.004676s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.005620s |  0.00% |  0.00% )   ( 0.005015s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.005129s |  0.00% |  0.00% )   ( 0.005695s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p22
48.5.0:         ( 0.006907s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003958s |  0.00% |  0.00% )   ( 0.004476s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 19.893268s |  1.79% |  3.57% )   ( 18.939775s |  1.93% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007123s |  0.00% |  0.03% )   ( 0.004681s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.602534s |  0.14% |  8.05% )   ( 1.366221s |  0.13% |  7.21% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.454436s |  0.22% | 12.33% )   ( 2.231376s |  0.22% | 11.78% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.852077s |  0.16% |  9.31% )   ( 1.774008s |  0.18% |  9.36% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.159491s |  0.19% | 10.85% )   ( 2.126831s |  0.21% | 11.22% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.748884s |  0.15% |  8.79% )   ( 1.706562s |  0.17% |  9.01% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.292461s |  0.11% |  6.49% )   ( 1.212985s |  0.12% |  6.40% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.642566s |  0.05% |  3.23% )   ( 0.573907s |  0.05% |  3.03% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.298147s |  0.11% |  6.52% )   ( 1.283914s |  0.13% |  6.77% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.511231s |  0.04% |  2.56% )   ( 0.506717s |  0.05% |  2.67% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.605178s |  0.14% |  8.06% )   ( 1.569467s |  0.16% |  8.28% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.503675s |  0.31% | 17.61% )   ( 3.472862s |  0.35% | 18.33% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.635167s |  0.05% |  3.19% )   ( 0.569843s |  0.05% |  3.00% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.580298s |  0.05% |  2.91% )   ( 0.540401s |  0.05% |  2.85% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004104s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004442s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004781s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005873s |  0.00% |  0.02% )   ( 0.005938s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p22\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p22_PID})
998.3.0:        ( 20.712371s |  1.87% |  3.67% )   ( 19.255542s |  1.96% |  3.87% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001205s |  0.00% |  0.00% )   ( 0.001228s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p23 p23_PID (&)
6.4.0:          ( 20.711002s |  1.87% | 99.99% )   ( 19.254130s |  1.96% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000198s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000198s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p23
12.5.0:         ( 0.045172s |  0.00% |  0.21% )   ( 0.044943s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040417s |  0.00% |  0.19% )   ( 0.040272s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.040983s |  0.00% |  0.19% )   ( 0.040834s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.044697s |  0.00% |  0.21% )   ( 0.044513s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.045770s |  0.00% |  0.22% )   ( 0.045613s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ true
20.5.0:         ( 0.003398s |  0.00% |  0.00% )   ( 0.003833s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003951s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p23
23.5.0:         ( 0.476470s |  0.04% |  0.10% )   ( 0.005910s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003810s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003279s |  0.00% |  0.00% )   ( 0.003696s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003473s |  0.00% |  0.00% )   ( 0.003895s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.033942s |  0.00% |  0.00% )   ( 0.026422s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003304s |  0.00% |  0.00% )   ( 0.003722s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003180s |  0.00% |  0.00% )   ( 0.003611s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.005752s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004030s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p23
48.5.0:         ( 0.003130s |  0.00% |  0.00% )   ( 0.003552s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003225s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 19.919191s |  1.80% |  4.57% )   ( 18.936485s |  1.93% |  4.68% )    	(21x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003247s |  0.00% |  0.01% )   ( 0.003696s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.526749s |  0.13% |  7.66% )   ( 1.382151s |  0.14% |  7.29% )    	(21x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.812998s |  0.25% | 14.12% )   ( 2.528977s |  0.25% | 13.35% )    	(21x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.100224s |  0.19% | 10.54% )   ( 1.952301s |  0.19% | 10.30% )    	(21x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.564670s |  0.23% | 12.87% )   ( 2.485242s |  0.25% | 13.12% )    	(21x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 2.012469s |  0.18% | 10.10% )   ( 1.938526s |  0.19% | 10.23% )    	(21x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.240625s |  0.11% |  6.22% )   ( 1.212748s |  0.12% |  6.40% )    	(21x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.518887s |  0.04% |  2.60% )   ( 0.496264s |  0.05% |  2.62% )    	(21x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.309796s |  0.11% |  6.57% )   ( 1.220960s |  0.12% |  6.44% )    	(21x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.407660s |  0.03% |  2.04% )   ( 0.409060s |  0.04% |  2.16% )    	(21x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.331051s |  0.12% |  6.68% )   ( 1.317536s |  0.13% |  6.95% )    	(21x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.159488s |  0.28% | 15.86% )   ( 3.086853s |  0.31% | 16.30% )    	(21x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.466712s |  0.04% |  2.34% )   ( 0.461749s |  0.04% |  2.43% )    	(21x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.464615s |  0.04% |  2.33% )   ( 0.440422s |  0.04% |  2.32% )    	(21x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003131s |  0.00% |  0.00% )   ( 0.003535s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003007s |  0.00% |  0.00% )   ( 0.003423s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003184s |  0.00% |  0.00% )   ( 0.003562s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005305s |  0.00% |  0.02% )   ( 0.005380s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p23\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p23_PID})
998.3.0:        ( 17.993145s |  1.62% |  3.19% )   ( 16.094173s |  1.64% |  3.23% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001203s |  0.00% |  0.00% )   ( 0.001225s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p24 p24_PID (&)
6.4.0:          ( 17.991772s |  1.62% | 99.99% )   ( 16.092762s |  1.64% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000172s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p24
12.5.0:         ( 0.052145s |  0.00% |  0.28% )   ( 0.045230s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.046738s |  0.00% |  0.25% )   ( 0.046563s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.041208s |  0.00% |  0.22% )   ( 0.041041s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.042653s |  0.00% |  0.23% )   ( 0.042494s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.044987s |  0.00% |  0.25% )   ( 0.044783s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005178s |  0.00% |  0.00% )   ( 0.005788s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
20.5.0:         ( 0.004506s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005311s |  0.00% |  0.00% )   ( 0.005888s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p24
23.5.0:         ( 0.380448s |  0.03% |  0.07% )   ( 0.006918s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004799s |  0.00% |  0.00% )   ( 0.005368s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004535s |  0.00% |  0.00% )   ( 0.005105s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004622s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004571s |  0.00% |  0.00% )   ( 0.005060s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.047979s |  0.00% |  0.00% )   ( 0.035319s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.005297s |  0.00% |  0.00% )   ( 0.004849s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004669s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.010686s |  0.00% |  0.00% )   ( 0.005071s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.005036s |  0.00% |  0.00% )   ( 0.005609s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p24
48.5.0:         ( 0.004256s |  0.00% |  0.00% )   ( 0.004826s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003991s |  0.00% |  0.00% )   ( 0.004497s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.246232s |  1.56% |  3.55% )   ( 15.739018s |  1.60% |  3.62% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004353s |  0.00% |  0.02% )   ( 0.004945s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.415581s |  0.12% |  8.20% )   ( 1.075949s |  0.11% |  6.83% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.026634s |  0.18% | 11.75% )   ( 1.809230s |  0.18% | 11.49% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.608578s |  0.14% |  9.32% )   ( 1.523916s |  0.15% |  9.68% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.804936s |  0.16% | 10.46% )   ( 1.747163s |  0.17% | 11.10% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.561653s |  0.14% |  9.05% )   ( 1.439206s |  0.14% |  9.14% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.008401s |  0.09% |  5.84% )   ( 0.967017s |  0.09% |  6.14% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.548621s |  0.04% |  3.18% )   ( 0.534007s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.072770s |  0.09% |  6.22% )   ( 1.001109s |  0.10% |  6.36% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.560856s |  0.05% |  3.25% )   ( 0.476818s |  0.04% |  3.02% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.468313s |  0.13% |  8.51% )   ( 1.310840s |  0.13% |  8.32% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.990368s |  0.27% | 17.33% )   ( 2.803632s |  0.28% | 17.81% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.594558s |  0.05% |  3.44% )   ( 0.531443s |  0.05% |  3.37% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.580610s |  0.05% |  3.36% )   ( 0.513743s |  0.05% |  3.26% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.004180s |  0.00% |  0.00% )   ( 0.004729s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.004483s |  0.00% |  0.00% )   ( 0.005030s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008577s |  0.00% |  0.04% )   ( 0.008666s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p24\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p24_PID})
998.3.0:        ( 19.782397s |  1.78% |  3.50% )   ( 18.539382s |  1.89% |  3.72% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001226s |  0.00% |  0.00% )   ( 0.001255s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p25 p25_PID (&)
6.4.0:          ( 19.780992s |  1.78% | 99.99% )   ( 18.537926s |  1.89% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000195s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000178s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p25
12.5.0:         ( 0.043334s |  0.00% |  0.21% )   ( 0.042710s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040209s |  0.00% |  0.20% )   ( 0.039422s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.040237s |  0.00% |  0.20% )   ( 0.039861s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.040244s |  0.00% |  0.20% )   ( 0.039960s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.040219s |  0.00% |  0.20% )   ( 0.039823s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004398s |  0.00% |  0.00% )   ( 0.004919s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.004033s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004729s |  0.00% |  0.00% )   ( 0.005241s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p25
23.5.0:         ( 0.481080s |  0.04% |  0.09% )   ( 0.006775s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004563s |  0.00% |  0.00% )   ( 0.005110s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004477s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003627s |  0.00% |  0.00% )   ( 0.004124s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004149s |  0.00% |  0.00% )   ( 0.004651s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.044193s |  0.00% |  0.00% )   ( 0.030855s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003769s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003744s |  0.00% |  0.00% )   ( 0.004222s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.004049s |  0.00% |  0.00% )   ( 0.004521s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004776s |  0.00% |  0.00% )   ( 0.005301s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p25
48.5.0:         ( 0.006946s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 18.976298s |  1.71% |  3.83% )   ( 18.218046s |  1.86% |  3.93% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003702s |  0.00% |  0.01% )   ( 0.004203s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.347799s |  0.12% |  7.10% )   ( 1.284208s |  0.13% |  7.04% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.289960s |  0.20% | 12.06% )   ( 2.197772s |  0.22% | 12.06% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.744756s |  0.15% |  9.19% )   ( 1.712292s |  0.17% |  9.39% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.136868s |  0.19% | 11.26% )   ( 2.076534s |  0.21% | 11.39% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.736025s |  0.15% |  9.14% )   ( 1.684644s |  0.17% |  9.24% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.222609s |  0.11% |  6.44% )   ( 1.151449s |  0.11% |  6.32% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.607277s |  0.05% |  3.20% )   ( 0.546525s |  0.05% |  2.99% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.230315s |  0.11% |  6.48% )   ( 1.184824s |  0.12% |  6.50% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.511820s |  0.04% |  2.69% )   ( 0.474304s |  0.04% |  2.60% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.622354s |  0.14% |  8.54% )   ( 1.487625s |  0.15% |  8.16% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.422362s |  0.30% | 18.03% )   ( 3.387342s |  0.34% | 18.59% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.561317s |  0.05% |  2.95% )   ( 0.522603s |  0.05% |  2.86% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.539134s |  0.04% |  2.84% )   ( 0.503721s |  0.05% |  2.76% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004341s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003509s |  0.00% |  0.00% )   ( 0.003988s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005495s |  0.00% |  0.02% )   ( 0.005566s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p25\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000179s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p25_PID})
998.3.0:        ( 18.321858s |  1.65% |  3.25% )   ( 17.031023s |  1.74% |  3.42% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001200s |  0.00% |  0.00% )   ( 0.001225s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p26 p26_PID (&)
6.4.0:          ( 18.320498s |  1.65% | 99.99% )   ( 17.029618s |  1.74% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000173s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000171s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p26
12.5.0:         ( 0.044000s |  0.00% |  0.24% )   ( 0.043757s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.042137s |  0.00% |  0.22% )   ( 0.041970s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.042787s |  0.00% |  0.23% )   ( 0.042596s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.047159s |  0.00% |  0.25% )   ( 0.046979s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.047128s |  0.00% |  0.25% )   ( 0.046903s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004470s |  0.00% |  0.00% )   ( 0.005008s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
20.5.0:         ( 0.003971s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004824s |  0.00% |  0.00% )   ( 0.005328s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p26
23.5.0:         ( 0.466461s |  0.04% |  0.10% )   ( 0.006952s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004403s |  0.00% |  0.00% )   ( 0.004928s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.004329s |  0.00% |  0.00% )   ( 0.004854s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003801s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004200s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.037101s |  0.00% |  0.00% )   ( 0.031526s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003561s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003646s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004625s |  0.00% |  0.00% )   ( 0.005103s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p26
48.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004140s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003451s |  0.00% |  0.00% )   ( 0.003921s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 17.523285s |  1.58% |  3.98% )   ( 16.690322s |  1.70% |  4.08% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.006689s |  0.00% |  0.03% )   ( 0.004166s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.229426s |  0.11% |  7.01% )   ( 1.109440s |  0.11% |  6.64% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.061568s |  0.18% | 11.76% )   ( 1.950535s |  0.19% | 11.68% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.644504s |  0.14% |  9.38% )   ( 1.617215s |  0.16% |  9.68% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.968549s |  0.17% | 11.23% )   ( 1.924043s |  0.19% | 11.52% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.687654s |  0.15% |  9.63% )   ( 1.524652s |  0.15% |  9.13% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.017344s |  0.09% |  5.80% )   ( 1.000272s |  0.10% |  5.99% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.521943s |  0.04% |  2.97% )   ( 0.507584s |  0.05% |  3.04% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.106316s |  0.10% |  6.31% )   ( 1.070686s |  0.10% |  6.41% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.472258s |  0.04% |  2.69% )   ( 0.447543s |  0.04% |  2.68% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.449132s |  0.13% |  8.26% )   ( 1.383024s |  0.14% |  8.28% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.344179s |  0.30% | 19.08% )   ( 3.179301s |  0.32% | 19.04% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.530730s |  0.04% |  3.02% )   ( 0.498065s |  0.05% |  2.98% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.482993s |  0.04% |  2.75% )   ( 0.473796s |  0.04% |  2.83% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003929s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003390s |  0.00% |  0.00% )   ( 0.003864s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003759s |  0.00% |  0.00% )   ( 0.004238s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005273s |  0.00% |  0.02% )   ( 0.005344s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p26\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p26_PID})
998.3.0:        ( 17.726645s |  1.60% |  3.14% )   ( 16.558533s |  1.69% |  3.32% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001216s |  0.00% |  0.00% )   ( 0.001246s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p27 p27_PID (&)
6.4.0:          ( 17.725265s |  1.60% | 99.99% )   ( 16.557103s |  1.69% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.8ccxrM"
8.5.0:          ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p27
12.5.0:         ( 0.040390s |  0.00% |  0.22% )   ( 0.039859s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040148s |  0.00% |  0.22% )   ( 0.039866s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 427482 ${BASHPID}' INT
15.5.0:         ( 0.040267s |  0.00% |  0.22% )   ( 0.039915s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 427482 ${BASHPID}' TERM
16.5.0:         ( 0.040288s |  0.00% |  0.22% )   ( 0.039893s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 427482 ${BASHPID}' HUP
17.5.0:         ( 0.045576s |  0.00% |  0.25% )   ( 0.045233s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004434s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
20.5.0:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.8ccxrM"/.nLines
20.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004835s |  0.00% |  0.00% )   ( 0.005366s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p27
23.5.0:         ( 0.413721s |  0.03% |  0.09% )   ( 0.006189s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004802s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.quit ]]
28.5.0:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004426s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.done ]]
28.5.1:         ( 0.003777s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003693s |  0.00% |  0.00% )   ( 0.004170s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.031207s |  0.00% |  0.00% )   ( 0.029258s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
33.5.0:         ( 0.003517s |  0.00% |  0.00% )   ( 0.003988s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
33.5.1:         ( 0.003557s |  0.00% |  0.00% )   ( 0.004038s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.009824s |  0.00% |  0.00% )   ( 0.004309s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
47.5.0:         ( 0.004480s |  0.00% |  0.00% )   ( 0.004982s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.8ccxrM"/.wait/p27
48.5.0:         ( 0.003620s |  0.00% |  0.00% )   ( 0.004113s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
68.5.0:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
69.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
70.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
70.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
73.5.0:         ( 16.994603s |  1.53% |  3.99% )   ( 16.235784s |  1.66% |  4.08% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003556s |  0.00% |  0.02% )   ( 0.004054s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.213117s |  0.10% |  7.13% )   ( 1.071087s |  0.10% |  6.59% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.956289s |  0.17% | 11.51% )   ( 1.860321s |  0.19% | 11.45% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.681041s |  0.15% |  9.89% )   ( 1.539755s |  0.15% |  9.48% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.997658s |  0.18% | 11.75% )   ( 1.908083s |  0.19% | 11.75% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.568385s |  0.14% |  9.22% )   ( 1.515374s |  0.15% |  9.33% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.021718s |  0.09% |  6.01% )   ( 1.002220s |  0.10% |  6.17% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.553489s |  0.05% |  3.25% )   ( 0.498698s |  0.05% |  3.07% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.069707s |  0.09% |  6.29% )   ( 1.028750s |  0.10% |  6.33% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.437620s |  0.03% |  2.57% )   ( 0.433275s |  0.04% |  2.66% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.355935s |  0.12% |  7.97% )   ( 1.341937s |  0.13% |  8.26% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.147238s |  0.28% | 18.51% )   ( 3.063581s |  0.31% | 18.86% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.497252s |  0.04% |  2.92% )   ( 0.490979s |  0.05% |  3.02% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.491598s |  0.04% |  2.89% )   ( 0.477670s |  0.04% |  2.94% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003753s |  0.00% |  0.00% )   ( 0.004230s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
68.5.1:         ( 0.003480s |  0.00% |  0.00% )   ( 0.003930s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
71.5.0:         ( 0.003714s |  0.00% |  0.00% )   ( 0.004174s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009129s |  0.00% |  0.05% )   ( 0.009109s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.8ccxrM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.8ccxrM"/.run/p27\; $'\n'printf '\n' >&21
238.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p27_PID})
1000.3.0:       ( 0.000198s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1001.3.0:       ( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
1002.3.0:       ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1004.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
1008.3.0:       ( 0.001381s |  0.00% |  0.00% )   ( 0.001394s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
1009.3.0:       ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
1053.3.0:       ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1054.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
1061.3.0:       ( 25.116348s |  2.27% |  4.45% )   ( 0.001854s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
1063.3.0:       ( 0.000315s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1066.3.0:       ( 0.000296s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
1067.2.0:       ( 0.000338s |  0.00% |  0.00% )   ( 0.000390s |  0.00% |  0.00% )    	(1x)	│  │ wait
7.2.0:          ( 0.005775s |  0.00% |  0.00% )   ( 0.002536s |  0.00% |  0.00% )    	(1x)	└─ └─@TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.8ccxrM" 2>/dev/null

2.0.0:          ( 541.517004s | 48.99% )            ( 480.116288s | 49.10% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001432s |  0.00% |  0.00% )   ( 0.001138s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
6.1.0:          ( 541.515572s | 48.99% | 99.99% )   ( 480.115150s | 49.10% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
6.2.0:          ( 0.035376s |  0.00% |  0.00% )   ( 0.035286s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
7.2.0:          ( 0.000080s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
8.2.0:          ( 0.000089s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
9.2.0:          ( 0.000140s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
10.2.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
11.2.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
12.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
13.2.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
14.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
14.2.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
15.2.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
15.2.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
15.2.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
16.2.0:         ( 0.000105s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
147.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
147.2.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
197.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
198.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
200.2.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
205.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
206.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
208.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
208.2.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
212.2.0:        ( 0.001286s |  0.00% |  0.00% )   ( 0.001084s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
212.2.1:        ( 0.007026s |  0.00% |  0.00% )   ( 0.007026s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
212.3.0:        ( 0.007026s |  0.00% |100.00% )   ( 0.007026s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
213.2.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
214.2.0:        ( 0.002195s |  0.00% |  0.00% )   ( 0.002273s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
215.2.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
216.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
216.2.1:        ( 0.023640s |  0.00% |  0.00% )   ( 0.000550s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1066.2.0:       ( 541.437969s | 48.98% | 99.98% )   ( 480.063684s | 49.10% | 99.98% )    	(1x)	│  │ << (SUBSHELL) >>
217.3.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
1066.3.0:       ( 0.001801s |  0.00% |  0.00% )   ( 0.002077s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
1066.4.0:       ( 0.001801s |  0.00% |100.00% )   ( 0.002077s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
220.3.0:        ( 0.000171s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
221.3.0:        ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
222.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
223.3.0:        ( 0.000270s |  0.00% |  0.00% )   ( 0.008969s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
224.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
225.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
226.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
227.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
228.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
229.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
230.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
231.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
235.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
236.3.0:        ( 0.003966s |  0.00% |  0.00% )   ( 0.004023s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
236.3.1:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
236.4.0:        ( 0.000142s |  0.00% |100.00% )   ( 0.000157s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
236.3.2:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
238.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
241.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ $'runCmd=("${@//\'\r\'/}")
243.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
244.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
244.3.1:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
245.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
246.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
247.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
298.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
302.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
304.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
305.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
307.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
311.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
315.3.0:        ( 0.000888s |  0.00% |  0.00% )   ( 0.001028s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000077s |  0.00% |  8.67% )   ( 0.000089s |  0.00% |  8.65% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
6.4.0:          ( 0.000072s |  0.00% |  8.10% )   ( 0.000084s |  0.00% |  8.17% )    	(1x)	│  │  │  │ local +i -l nn
7.4.0:          ( 0.000065s |  0.00% |  7.31% )   ( 0.000077s |  0.00% |  7.49% )    	(1x)	│  │  │  │ local vOut
8.4.0:          ( 0.000071s |  0.00% |  7.99% )   ( 0.000082s |  0.00% |  7.97% )    	(1x)	│  │  │  │ local -n vOut="$1"
9.4.0:          ( 0.000067s |  0.00% |  7.54% )   ( 0.000079s |  0.00% |  7.68% )    	(1x)	│  │  │  │ shift 1
10.4.0:         ( 0.000072s |  0.00% |  8.10% )   ( 0.000083s |  0.00% |  8.07% )    	(1x)	│  │  │  │ local -g vOut
11.4.0:         ( 0.000075s |  0.00% |  8.44% )   ( 0.000085s |  0.00% |  8.26% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
11.4.1:         ( 0.000114s |  0.00% | 12.83% )   ( 0.000126s |  0.00% | 12.25% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
12.4.0:         ( 0.000067s |  0.00% |  7.54% )   ( 0.000079s |  0.00% |  7.68% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
14.4.0:         ( 0.000067s |  0.00% |  7.54% )   ( 0.000079s |  0.00% |  7.68% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
14.4.1:         ( 0.000065s |  0.00% |  7.31% )   ( 0.000077s |  0.00% |  7.49% )    	(1x)	│  │  │  │ continue
24.4.0:         ( 0.000076s |  0.00% |  8.55% )   ( 0.000088s |  0.00% |  8.56% )    	(1x)	│  │  │  └─local +n vOut
316.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
317.3.0:        ( 0.009044s |  0.00% |  0.00% )   ( 0.009140s |  0.00% |  0.00% )    	(1x)	│  │  │ $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
317.3.1:        ( 0.003202s |  0.00% |  0.00% )   ( 0.003303s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
317.4.0:        ( 0.000314s |  0.00% |  9.80% )   ( 0.000340s |  0.00% | 10.29% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
317.4.1:        ( 0.002888s |  0.00% | 90.19% )   ( 0.002963s |  0.00% | 89.70% )    	(1x)	│  │  │  └─nproc
318.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
320.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
322.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
322.3.1:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
324.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
328.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
329.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
330.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
331.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
332.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
333.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
335.3.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
337.3.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
338.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
342.3.0:        ( 0.000175s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
342.3.1:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
342.3.2:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
343.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
344.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
345.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
349.3.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
350.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
351.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
351.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
352.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
353.3.0:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
354.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
355.3.0:        ( 0.003872s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep --color=auto -qF 'coreutils'
356.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
363.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
364.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
365.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
383.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
392.3.0:        ( 0.004050s |  0.00% |  0.00% )   ( 0.004177s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
392.3.1:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
392.4.0:        ( 0.000120s |  0.00% |100.00% )   ( 0.000135s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
393.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
396.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
401.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
402.3.0:        ( 0.001289s |  0.00% |  0.00% )   ( 0.001391s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
403.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
404.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
405.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
432.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
433.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
437.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
438.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
441.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
452.3.0:        ( 0.000655s |  0.00% |  0.00% )   ( 0.000669s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
455.3.0:        ( 0.121233s |  0.01% |  0.02% )   ( 0.121037s |  0.01% |  0.02% )    	(1x)	│  │  │ @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 436277  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
477.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
479.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
484.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
486.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
487.3.0:        ( 0.000519s |  0.00% |  0.00% )   ( 0.000549s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
490.3.0:        ( 3.959145s |  0.35% |  0.73% )   ( 1.889077s |  0.19% |  0.39% )    	(1x)	│  │  │ << (SUBSHELL) >>
490.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
491.4.0:        ( 0.023280s |  0.00% |  0.58% )   ( 0.023163s |  0.00% |  1.22% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
492.4.0:        ( 0.020909s |  0.00% |  0.52% )   ( 0.020780s |  0.00% |  1.10% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
493.4.0:        ( 0.020938s |  0.00% |  0.52% )   ( 0.020773s |  0.00% |  1.09% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
494.4.0:        ( 0.020948s |  0.00% |  0.52% )   ( 0.020842s |  0.00% |  1.10% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
495.4.0:        ( 0.020937s |  0.00% |  0.52% )   ( 0.020840s |  0.00% |  1.10% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
496.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
497.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
498.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
500.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
501.4.0:        ( 0.096545s |  0.00% |  0.00% )   ( 0.107034s |  0.01% |  0.00% )    	(675x)	│  │  │  │ ${fallocateFlag}
502.4.0:        ( 2.317070s |  0.20% |  0.08% )   ( 0.126325s |  0.01% |  0.00% )    	(674x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
502.4.1:        ( 0.001472s |  0.00% |  0.00% )   ( 0.001632s |  0.00% |  0.01% )    	(7x)	│  │  │  │ continue
503.4.0:        ( 0.091895s |  0.00% |  0.00% )   ( 0.105404s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${REPLY} in
517.4.0:        ( 0.091945s |  0.00% |  0.00% )   ( 0.105525s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
518.4.0:        ( 0.000279s |  0.00% |  0.00% )   ( 0.000320s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
521.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
526.4.0:        ( 0.091198s |  0.00% |  0.00% )   ( 0.104323s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${lseekPosFlag}
527.4.0:        ( 0.093213s |  0.00% |  0.00% )   ( 0.106421s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
528.4.0:        ( 0.131761s |  0.01% |  0.00% )   ( 0.107981s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
534.4.0:        ( 0.090099s |  0.00% |  0.00% )   ( 0.103276s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
535.4.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
536.4.0:        ( 0.091065s |  0.00% |  0.00% )   ( 0.104426s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
537.4.0:        ( 0.090749s |  0.00% |  0.00% )   ( 0.103913s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
538.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
539.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
540.4.0:        ( 0.007299s |  0.00% |  0.18% )   ( 0.007768s |  0.00% |  0.41% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
540.4.1:        ( 0.003084s |  0.00% |  0.07% )   ( 0.003461s |  0.00% |  0.18% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
540.5.0:        ( 0.003084s |  0.00% |100.00% )   ( 0.003461s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
541.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
542.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
544.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
545.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
546.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
547.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
548.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
550.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
551.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
552.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
555.4.0:        ( 0.090363s |  0.00% |  0.00% )   ( 0.103632s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${fallocateFlag}
556.4.0:        ( 0.095250s |  0.00% |  0.00% )   ( 0.102614s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${nWait} in
567.4.0:        ( 0.086834s |  0.00% |  0.00% )   ( 0.099694s |  0.01% |  0.00% )    	(646x)	│  │  │  │ ((nWait--))
571.4.0:        ( 0.093833s |  0.00% |  0.00% )   ( 0.107215s |  0.01% |  0.00% )    	(667x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
517.4.1:        ( 0.092720s |  0.00% |  0.00% )   ( 0.104019s |  0.01% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
534.4.1:        ( 0.090943s |  0.00% |  0.00% )   ( 0.104212s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
558.4.0:        ( 0.002978s |  0.00% |  0.00% )   ( 0.003329s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
559.4.0:        ( 0.002952s |  0.00% |  0.00% )   ( 0.003387s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
560.4.0:        ( 0.075761s |  0.00% |  0.09% )   ( 0.045118s |  0.00% |  0.11% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
561.4.0:        ( 0.003871s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.01% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
562.4.0:        ( 0.003483s |  0.00% |  0.00% )   ( 0.003962s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
564.4.0:        ( 0.003108s |  0.00% |  0.00% )   ( 0.003529s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
511.4.0:        ( 0.000232s |  0.00% |  0.00% )   ( 0.000253s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
572.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
573.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
574.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
501.4.1:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
501.4.2:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
7.4.0:          ( 0.010003s |  0.00% |  0.25% )   ( 0.007112s |  0.00% |  0.37% )    	(1x)	│  │  │  └─@TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/pAuto
580.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
581.3.0:        ( 0.000107s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
583.3.0:        ( 0.000102s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
962.3.0:        ( 0.002120s |  0.00% |  0.00% )   ( 0.001251s |  0.00% |  0.00% )    	(1x)	│  │  │ $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
979.3.0:        ( 0.005360s |  0.00% |  0.00% )   ( 0.006142s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
979.4.0:        ( 0.000468s |  0.00% |  8.73% )   ( 0.000506s |  0.00% |  8.23% )    	(1x)	│  │  │  ├─$'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
980.4.0:        ( 0.000079s |  0.00% |  1.47% )   ( 0.000093s |  0.00% |  1.51% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
980.4.1:        ( 0.000082s |  0.00% |  1.52% )   ( 0.000095s |  0.00% |  1.54% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
988.4.0:        ( 0.000220s |  0.00% |  4.10% )   ( 0.000233s |  0.00% |  3.79% )    	(1x)	│  │  │  │ $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
989.4.0:        ( 0.000070s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${readBytesFlag}
1061.4.0:       ( 0.000067s |  0.00% |  1.25% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
1064.4.0:       ( 0.000074s |  0.00% |  1.38% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ echo "{"
1065.4.0:       ( 0.000070s |  0.00% |  1.30% )   ( 0.000083s |  0.00% |  1.35% )    	(1x)	│  │  │  │ ${nOrderFlag}
1066.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1066.4.1:       ( 0.000071s |  0.00% |  1.32% )   ( 0.000083s |  0.00% |  1.35% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
1067.4.0:       ( 0.000071s |  0.00% |  1.32% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
1068.4.0:       ( 0.000070s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${lseekFlag}
1068.4.1:       ( 0.000071s |  0.00% |  1.32% )   ( 0.000083s |  0.00% |  1.35% )    	(1x)	│  │  │  │ printf '%s ' '-t'
1069.4.0:       ( 0.000072s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
1070.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1070.4.1:       ( 0.000073s |  0.00% |  1.36% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
1071.4.0:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1071.4.1:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1071.4.2:       ( 0.000071s |  0.00% |  1.32% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ printf '%s ' '-t'
1073.4.0:       ( 0.000073s |  0.00% |  1.36% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ $'echo """${delimiterReadStr} A\n    }"""
1074.4.0:       ( 0.000067s |  0.00% |  1.25% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1074.4.1:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1074.4.2:       ( 0.000106s |  0.00% |  1.97% )   ( 0.000115s |  0.00% |  1.87% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
1131.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1131.4.1:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1131.4.2:       ( 0.000076s |  0.00% |  1.41% )   ( 0.000088s |  0.00% |  1.43% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
1132.4.0:       ( 0.000082s |  0.00% |  1.52% )   ( 0.000094s |  0.00% |  1.53% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
1145.4.0:       ( 0.000090s |  0.00% |  1.67% )   ( 0.000102s |  0.00% |  1.66% )    	(1x)	│  │  │  │ $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1146.4.0:       ( 0.000072s |  0.00% |  1.34% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${lseekPosFlag}
1149.4.0:       ( 0.000081s |  0.00% |  1.51% )   ( 0.000093s |  0.00% |  1.51% )    	(1x)	│  │  │  │ $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1160.4.0:       ( 0.000082s |  0.00% |  1.52% )   ( 0.000094s |  0.00% |  1.53% )    	(1x)	│  │  │  │ $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1161.4.0:       ( 0.000070s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
1161.4.1:       ( 0.000075s |  0.00% |  1.39% )   ( 0.000086s |  0.00% |  1.40% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
1162.4.0:       ( 0.000074s |  0.00% |  1.38% )   ( 0.000086s |  0.00% |  1.40% )    	(1x)	│  │  │  │ ${nOrderFlag}
1163.4.0:       ( 0.000072s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${nSpawnFlag}
1168.4.0:       ( 0.000082s |  0.00% |  1.52% )   ( 0.000094s |  0.00% |  1.53% )    	(1x)	│  │  │  │ $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1169.4.0:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nOrderFlag}
1173.4.0:       ( 0.000082s |  0.00% |  1.52% )   ( 0.000095s |  0.00% |  1.54% )    	(1x)	│  │  │  │ $'echo """fi\n        continue\n    }"""
1174.4.0:       ( 0.000070s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
1174.4.1:       ( 0.000079s |  0.00% |  1.47% )   ( 0.000090s |  0.00% |  1.46% )    	(1x)	│  │  │  │ $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1179.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${fallocateFlag}
1179.4.1:       ( 0.000077s |  0.00% |  1.43% )   ( 0.000088s |  0.00% |  1.43% )    	(1x)	│  │  │  │ printf '%s' ' || '
1180.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${fallocateFlag}
1180.4.1:       ( 0.000085s |  0.00% |  1.58% )   ( 0.000097s |  0.00% |  1.57% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
1181.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1181.4.1:       ( 0.000077s |  0.00% |  1.43% )   ( 0.000086s |  0.00% |  1.40% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1189.4.0:       ( 0.000067s |  0.00% |  1.25% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${subshellRunFlag}
1189.4.1:       ( 0.000076s |  0.00% |  1.41% )   ( 0.000087s |  0.00% |  1.41% )    	(1x)	│  │  │  │ echo '{'
1190.4.0:       ( 0.000067s |  0.00% |  1.25% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${exportOrderFlag}
1190.4.1:       ( 0.000072s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${nOrderFlag}
1191.4.0:       ( 0.000073s |  0.00% |  1.36% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${exportOrderFlag}
1192.4.0:       ( 0.000093s |  0.00% |  1.73% )   ( 0.000105s |  0.00% |  1.70% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
1193.4.0:       ( 0.000072s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${readBytesFlag}
1200.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${stdinRunFlag}
1203.4.0:       ( 0.000066s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${noFuncFlag}
1206.4.0:       ( 0.000067s |  0.00% |  1.25% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${substituteStringFlag}
1207.4.0:       ( 0.000092s |  0.00% |  1.71% )   ( 0.000101s |  0.00% |  1.64% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1212.4.0:       ( 0.000075s |  0.00% |  1.39% )   ( 0.000087s |  0.00% |  1.41% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
1224.4.0:       ( 0.000072s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${readBytesFlag}
1225.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${subshellRunFlag}
1225.4.1:       ( 0.000076s |  0.00% |  1.41% )   ( 0.000088s |  0.00% |  1.43% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
1226.4.0:       ( 0.000075s |  0.00% |  1.39% )   ( 0.000088s |  0.00% |  1.43% )    	(1x)	│  │  │  │ echo "${outStr}"
1227.4.0:       ( 0.000072s |  0.00% |  1.34% )   ( 0.000083s |  0.00% |  1.35% )    	(1x)	│  │  │  │ ${nOrderFlag}
1228.4.0:       ( 0.000071s |  0.00% |  1.32% )   ( 0.000083s |  0.00% |  1.35% )    	(1x)	│  │  │  │ ${nSpawnFlag}
1233.4.0:       ( 0.000086s |  0.00% |  1.60% )   ( 0.000099s |  0.00% |  1.61% )    	(1x)	│  │  │  └─$'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
963.3.0:        ( 0.000359s |  0.00% |  0.00% )   ( 0.000396s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
968.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
970.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
971.3.0:        ( 0.021238s |  0.00% |  0.00% )   ( 0.021187s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
975.3.0:        ( 0.021371s |  0.00% |  0.00% )   ( 0.021316s |  0.00% |  0.00% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
979.3.0:        ( 0.021114s |  0.00% |  0.00% )   ( 0.152477s |  0.01% |  0.03% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
983.3.0:        ( 0.020867s |  0.00% |  0.00% )   ( 0.020812s |  0.00% |  0.00% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
984.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
985.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
989.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
993.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
994.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
995.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
995.3.1:        ( 0.003226s |  0.00% |  0.00% )   ( 0.003692s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
997.3.0:        ( 0.003196s |  0.00% |  0.00% )   ( 0.003638s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
998.3.0:        ( 18.938084s |  1.71% |  3.49% )   ( 17.774043s |  1.81% |  3.70% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000758s |  0.00% |  0.00% )   ( 0.000776s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p0 p0_PID (&)
6.4.0:          ( 18.937223s |  1.71% | 99.99% )   ( 17.773151s |  1.81% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000181s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p0
12.5.0:         ( 0.020756s |  0.00% |  0.10% )   ( 0.020718s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020625s |  0.00% |  0.10% )   ( 0.020594s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.020819s |  0.00% |  0.10% )   ( 0.020780s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021092s |  0.00% |  0.11% )   ( 0.021057s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021162s |  0.00% |  0.11% )   ( 0.021104s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003011s |  0.00% |  0.00% )   ( 0.003362s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ true
20.5.0:         ( 0.002741s |  0.00% |  0.00% )   ( 0.003090s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003145s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p0
23.5.0:         ( 0.110578s |  0.01% |  0.03% )   ( 0.004035s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.002836s |  0.00% |  0.00% )   ( 0.003190s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.002908s |  0.00% |  0.00% )   ( 0.003292s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.002375s |  0.00% |  0.00% )   ( 0.002692s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.002728s |  0.00% |  0.00% )   ( 0.003081s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.031444s |  0.00% |  0.00% )   ( 0.019793s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007335s |  0.00% |  0.00% )   ( 0.003247s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003082s |  0.00% |  0.00% )   ( 0.003408s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p0
36.5.0:         ( 0.005518s |  0.00% |  0.00% )   ( 0.002894s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.002357s |  0.00% |  0.00% )   ( 0.002665s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
61.5.0:         ( 18.633693s |  1.68% |  5.78% )   ( 17.590530s |  1.79% |  5.82% )    	(17x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002401s |  0.00% |  0.01% )   ( 0.002730s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.310809s |  0.11% |  7.03% )   ( 1.147394s |  0.11% |  6.52% )    	(17x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.298239s |  0.20% | 12.33% )   ( 2.169923s |  0.22% | 12.33% )    	(17x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.671436s |  0.15% |  8.96% )   ( 1.633155s |  0.16% |  9.28% )    	(17x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.178308s |  0.19% | 11.69% )   ( 2.142272s |  0.21% | 12.17% )    	(17x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.697906s |  0.15% |  9.11% )   ( 1.654444s |  0.16% |  9.40% )    	(17x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.062582s |  0.09% |  5.70% )   ( 1.041363s |  0.10% |  5.92% )    	(17x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.457005s |  0.04% |  2.45% )   ( 0.401162s |  0.04% |  2.28% )    	(17x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.235806s |  0.11% |  6.63% )   ( 1.141220s |  0.11% |  6.48% )    	(17x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.418101s |  0.03% |  2.24% )   ( 0.348884s |  0.03% |  1.98% )    	(17x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.577296s |  0.14% |  8.46% )   ( 1.445483s |  0.14% |  8.21% )    	(17x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.955054s |  0.35% | 21.22% )   ( 3.717235s |  0.38% | 21.13% )    	(17x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.389403s |  0.03% |  2.08% )   ( 0.388092s |  0.03% |  2.20% )    	(17x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.379347s |  0.03% |  2.03% )   ( 0.357173s |  0.03% |  2.03% )    	(17x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
58.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.002579s |  0.00% |  0.00% )   ( 0.002900s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002310s |  0.00% |  0.00% )   ( 0.002612s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.002400s |  0.00% |  0.00% )   ( 0.002690s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.010075s |  0.00% |  0.05% )   ( 0.010051s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p0\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000103s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p0_PID})
995.3.0:        ( 0.003109s |  0.00% |  0.00% )   ( 0.003562s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
998.3.0:        ( 17.739058s |  1.60% |  3.27% )   ( 16.237976s |  1.66% |  3.38% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000764s |  0.00% |  0.00% )   ( 0.000779s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p1 p1_PID (&)
6.4.0:          ( 17.738198s |  1.60% | 99.99% )   ( 16.237087s |  1.66% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000344s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000372s |  0.00% |  0.00% )   ( 0.000418s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p1
12.5.0:         ( 0.020700s |  0.00% |  0.11% )   ( 0.020663s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020804s |  0.00% |  0.11% )   ( 0.020769s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021658s |  0.00% |  0.12% )   ( 0.021617s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021156s |  0.00% |  0.11% )   ( 0.021114s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021120s |  0.00% |  0.11% )   ( 0.021084s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005410s |  0.00% |  0.00% )   ( 0.006055s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ true
20.5.0:         ( 0.004897s |  0.00% |  0.00% )   ( 0.005537s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005670s |  0.00% |  0.00% )   ( 0.006315s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p1
23.5.0:         ( 0.238858s |  0.02% |  0.04% )   ( 0.006988s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004933s |  0.00% |  0.00% )   ( 0.005505s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004973s |  0.00% |  0.00% )   ( 0.005611s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004402s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.005009s |  0.00% |  0.00% )   ( 0.005647s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.048947s |  0.00% |  0.00% )   ( 0.037580s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007922s |  0.00% |  0.00% )   ( 0.005651s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005807s |  0.00% |  0.00% )   ( 0.006449s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p1
36.5.0:         ( 0.004725s |  0.00% |  0.00% )   ( 0.005384s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004396s |  0.00% |  0.00% )   ( 0.004999s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
61.5.0:         ( 17.253766s |  1.56% |  3.24% )   ( 15.997291s |  1.63% |  3.28% )    	(30x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004504s |  0.00% |  0.02% )   ( 0.005126s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.358855s |  0.12% |  7.87% )   ( 1.076444s |  0.11% |  6.72% )    	(30x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.973983s |  0.17% | 11.44% )   ( 1.772036s |  0.18% | 11.07% )    	(30x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.594629s |  0.14% |  9.24% )   ( 1.520525s |  0.15% |  9.50% )    	(30x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.955012s |  0.17% | 11.33% )   ( 1.770352s |  0.18% | 11.06% )    	(30x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.564398s |  0.14% |  9.06% )   ( 1.482875s |  0.15% |  9.26% )    	(30x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.000814s |  0.09% |  5.80% )   ( 0.990420s |  0.10% |  6.19% )    	(30x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.591629s |  0.05% |  3.42% )   ( 0.579089s |  0.05% |  3.61% )    	(30x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.070154s |  0.09% |  6.20% )   ( 1.020061s |  0.10% |  6.37% )    	(30x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.533665s |  0.04% |  3.09% )   ( 0.508714s |  0.05% |  3.18% )    	(30x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.439575s |  0.13% |  8.34% )   ( 1.361073s |  0.13% |  8.50% )    	(30x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.921706s |  0.26% | 16.93% )   ( 2.775833s |  0.28% | 17.35% )    	(30x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.619218s |  0.05% |  3.58% )   ( 0.570768s |  0.05% |  3.56% )    	(30x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.625624s |  0.05% |  3.62% )   ( 0.563975s |  0.05% |  3.52% )    	(30x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
58.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.004803s |  0.00% |  0.00% )   ( 0.005413s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004827s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004743s |  0.00% |  0.00% )   ( 0.005316s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
37.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
47.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
49.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit
50.5.0:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p* 1>&21
51.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.016636s |  0.00% |  0.09% )   ( 0.009324s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p1\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p1_PID})
998.3.0:        ( 19.731952s |  1.78% |  3.64% )   ( 19.146007s |  1.95% |  3.98% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000768s |  0.00% |  0.00% )   ( 0.000788s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p2 p2_PID (&)
6.4.0:          ( 19.731092s |  1.78% | 99.99% )   ( 19.145113s |  1.95% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000348s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000101s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p2
12.5.0:         ( 0.020708s |  0.00% |  0.10% )   ( 0.020672s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020940s |  0.00% |  0.10% )   ( 0.020909s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021166s |  0.00% |  0.10% )   ( 0.021128s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021123s |  0.00% |  0.10% )   ( 0.021082s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021088s |  0.00% |  0.10% )   ( 0.021050s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.001511s |  0.00% |  0.00% )   ( 0.001697s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ true
20.5.0:         ( 0.001364s |  0.00% |  0.00% )   ( 0.001548s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000259s |  0.00% |  0.00% )   ( 0.000293s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.001671s |  0.00% |  0.00% )   ( 0.001863s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p2
23.5.0:         ( 0.068381s |  0.00% |  0.03% )   ( 0.002007s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.001381s |  0.00% |  0.00% )   ( 0.001551s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.001231s |  0.00% |  0.00% )   ( 0.001394s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.001157s |  0.00% |  0.00% )   ( 0.001316s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.001306s |  0.00% |  0.00% )   ( 0.001479s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.008982s |  0.00% |  0.00% )   ( 0.009125s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.001340s |  0.00% |  0.00% )   ( 0.001530s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.001541s |  0.00% |  0.00% )   ( 0.001729s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p2
36.5.0:         ( 0.001231s |  0.00% |  0.00% )   ( 0.001402s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.001193s |  0.00% |  0.00% )   ( 0.001369s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
61.5.0:         ( 19.523584s |  1.76% | 10.99% )   ( 19.001273s |  1.94% | 11.02% )    	(9x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001274s |  0.00% |  0.00% )   ( 0.001455s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.255145s |  0.11% |  6.42% )   ( 1.194911s |  0.12% |  6.28% )    	(9x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.621930s |  0.23% | 13.42% )   ( 2.518872s |  0.25% | 13.25% )    	(9x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.890516s |  0.17% |  9.68% )   ( 1.818718s |  0.18% |  9.57% )    	(9x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.503221s |  0.22% | 12.82% )   ( 2.485896s |  0.25% | 13.08% )    	(9x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.792854s |  0.16% |  9.18% )   ( 1.779603s |  0.18% |  9.36% )    	(9x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.062068s |  0.09% |  5.43% )   ( 1.057248s |  0.10% |  5.56% )    	(9x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.293140s |  0.02% |  1.50% )   ( 0.291868s |  0.02% |  1.53% )    	(9x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.289023s |  0.11% |  6.60% )   ( 1.224821s |  0.12% |  6.44% )    	(9x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.273565s |  0.02% |  1.40% )   ( 0.238633s |  0.02% |  1.25% )    	(9x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.574408s |  0.14% |  8.06% )   ( 1.499871s |  0.15% |  7.89% )    	(9x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.460326s |  0.40% | 22.84% )   ( 4.398739s |  0.44% | 23.14% )    	(9x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.278958s |  0.02% |  1.42% )   ( 0.269557s |  0.02% |  1.41% )    	(9x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.227156s |  0.02% |  1.16% )   ( 0.221081s |  0.02% |  1.16% )    	(9x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
58.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.001171s |  0.00% |  0.00% )   ( 0.001342s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.000991s |  0.00% |  0.00% )   ( 0.001129s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.001149s |  0.00% |  0.00% )   ( 0.001291s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005098s |  0.00% |  0.02% )   ( 0.005203s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p2\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p2_PID})
998.3.0:        ( 18.247489s |  1.65% |  3.37% )   ( 16.674576s |  1.70% |  3.47% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000765s |  0.00% |  0.00% )   ( 0.000787s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p3 p3_PID (&)
6.4.0:          ( 18.246630s |  1.65% | 99.99% )   ( 16.673682s |  1.70% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000335s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000372s |  0.00% |  0.00% )   ( 0.000417s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p3
12.5.0:         ( 0.020959s |  0.00% |  0.11% )   ( 0.020924s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021138s |  0.00% |  0.11% )   ( 0.021100s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021171s |  0.00% |  0.11% )   ( 0.021128s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021135s |  0.00% |  0.11% )   ( 0.021095s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021041s |  0.00% |  0.11% )   ( 0.021004s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004536s |  0.00% |  0.00% )   ( 0.005071s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.006978s |  0.00% |  0.00% )   ( 0.004503s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004931s |  0.00% |  0.00% )   ( 0.005463s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p3
23.5.0:         ( 0.218596s |  0.01% |  0.04% )   ( 0.006551s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004459s |  0.00% |  0.00% )   ( 0.005005s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004586s |  0.00% |  0.00% )   ( 0.005164s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004303s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004289s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.043476s |  0.00% |  0.00% )   ( 0.032508s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007388s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005083s |  0.00% |  0.00% )   ( 0.005632s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p3
36.5.0:         ( 0.003905s |  0.00% |  0.00% )   ( 0.004440s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003950s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.805302s |  1.61% |  3.75% )   ( 16.453875s |  1.68% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004067s |  0.00% |  0.02% )   ( 0.004588s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.120789s |  0.10% |  6.29% )   ( 1.071572s |  0.10% |  6.51% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.958956s |  0.17% | 11.00% )   ( 1.885913s |  0.19% | 11.46% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.780940s |  0.16% | 10.00% )   ( 1.604600s |  0.16% |  9.75% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.258385s |  0.20% | 12.68% )   ( 1.892333s |  0.19% | 11.50% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.704359s |  0.15% |  9.57% )   ( 1.539947s |  0.15% |  9.35% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.058790s |  0.09% |  5.94% )   ( 0.999360s |  0.10% |  6.07% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.609454s |  0.05% |  3.42% )   ( 0.532910s |  0.05% |  3.23% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.159682s |  0.10% |  6.51% )   ( 1.047824s |  0.10% |  6.36% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.507497s |  0.04% |  2.85% )   ( 0.459957s |  0.04% |  2.79% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.415512s |  0.12% |  7.94% )   ( 1.382154s |  0.14% |  8.40% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.143006s |  0.28% | 17.65% )   ( 3.006064s |  0.30% | 18.26% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.538009s |  0.04% |  3.02% )   ( 0.524199s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.545856s |  0.04% |  3.06% )   ( 0.502454s |  0.05% |  3.05% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004239s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.006733s |  0.00% |  0.03% )   ( 0.006802s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p3\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p3_PID})
998.3.0:        ( 18.537705s |  1.67% |  3.42% )   ( 16.781937s |  1.71% |  3.49% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000772s |  0.00% |  0.00% )   ( 0.000791s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p4 p4_PID (&)
6.4.0:          ( 18.536832s |  1.67% | 99.99% )   ( 16.781033s |  1.71% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000338s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p4
12.5.0:         ( 0.021091s |  0.00% |  0.11% )   ( 0.021056s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021066s |  0.00% |  0.11% )   ( 0.021024s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021141s |  0.00% |  0.11% )   ( 0.021099s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021152s |  0.00% |  0.11% )   ( 0.021108s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021068s |  0.00% |  0.11% )   ( 0.021031s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004706s |  0.00% |  0.00% )   ( 0.005268s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004306s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005020s |  0.00% |  0.00% )   ( 0.005583s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p4
23.5.0:         ( 0.306396s |  0.02% |  0.06% )   ( 0.006655s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004525s |  0.00% |  0.00% )   ( 0.005082s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004567s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004039s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.042231s |  0.00% |  0.00% )   ( 0.033715s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007417s |  0.00% |  0.00% )   ( 0.004982s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005041s |  0.00% |  0.00% )   ( 0.005574s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p4
36.5.0:         ( 0.006968s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004357s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.009779s |  1.62% |  3.73% )   ( 16.560626s |  1.69% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003922s |  0.00% |  0.02% )   ( 0.004437s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.298021s |  0.11% |  7.20% )   ( 1.107632s |  0.11% |  6.68% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.097815s |  0.18% | 11.64% )   ( 1.912921s |  0.19% | 11.55% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.672987s |  0.15% |  9.28% )   ( 1.599852s |  0.16% |  9.66% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.099963s |  0.18% | 11.66% )   ( 1.911825s |  0.19% | 11.54% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.681440s |  0.15% |  9.33% )   ( 1.558453s |  0.15% |  9.41% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.184695s |  0.10% |  6.57% )   ( 1.020247s |  0.10% |  6.16% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.609061s |  0.05% |  3.38% )   ( 0.532500s |  0.05% |  3.21% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.165561s |  0.10% |  6.47% )   ( 1.054914s |  0.10% |  6.37% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.500783s |  0.04% |  2.78% )   ( 0.473159s |  0.04% |  2.85% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.499263s |  0.13% |  8.32% )   ( 1.399531s |  0.14% |  8.45% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.041056s |  0.27% | 16.88% )   ( 2.954562s |  0.30% | 17.84% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.593060s |  0.05% |  3.29% )   ( 0.525679s |  0.05% |  3.17% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.562152s |  0.05% |  3.12% )   ( 0.504914s |  0.05% |  3.04% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004617s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003902s |  0.00% |  0.00% )   ( 0.004414s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005149s |  0.00% |  0.02% )   ( 0.005217s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p4\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p4_PID})
998.3.0:        ( 19.096545s |  1.72% |  3.52% )   ( 17.985964s |  1.83% |  3.74% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000820s |  0.00% |  0.00% )   ( 0.000834s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p5 p5_PID (&)
6.4.0:          ( 19.095626s |  1.72% | 99.99% )   ( 17.985018s |  1.83% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000211s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000217s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p5
12.5.0:         ( 0.023105s |  0.00% |  0.12% )   ( 0.023062s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021131s |  0.00% |  0.11% )   ( 0.021093s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021088s |  0.00% |  0.11% )   ( 0.021049s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021069s |  0.00% |  0.11% )   ( 0.021029s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021042s |  0.00% |  0.11% )   ( 0.021004s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004124s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
20.5.0:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004637s |  0.00% |  0.00% )   ( 0.005152s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p5
23.5.0:         ( 0.204320s |  0.01% |  0.04% )   ( 0.005778s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004134s |  0.00% |  0.00% )   ( 0.004543s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004645s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003520s |  0.00% |  0.00% )   ( 0.003961s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003781s |  0.00% |  0.00% )   ( 0.004251s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.029118s |  0.00% |  0.00% )   ( 0.029521s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.005018s |  0.00% |  0.00% )   ( 0.004464s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004554s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p5
36.5.0:         ( 0.003544s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003612s |  0.00% |  0.00% )   ( 0.004115s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.692318s |  1.69% |  4.07% )   ( 17.774217s |  1.81% |  4.11% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003711s |  0.00% |  0.01% )   ( 0.004194s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.346115s |  0.12% |  7.20% )   ( 1.188124s |  0.12% |  6.68% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.190128s |  0.19% | 11.71% )   ( 2.077726s |  0.21% | 11.68% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.685111s |  0.15% |  9.01% )   ( 1.640967s |  0.16% |  9.23% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.189340s |  0.19% | 11.71% )   ( 1.995311s |  0.20% | 11.22% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.781609s |  0.16% |  9.53% )   ( 1.671659s |  0.17% |  9.40% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.100889s |  0.09% |  5.88% )   ( 1.091970s |  0.11% |  6.14% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.531073s |  0.04% |  2.84% )   ( 0.528287s |  0.05% |  2.97% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.155531s |  0.10% |  6.18% )   ( 1.135059s |  0.11% |  6.38% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.456949s |  0.04% |  2.44% )   ( 0.444466s |  0.04% |  2.50% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.589566s |  0.14% |  8.50% )   ( 1.488537s |  0.15% |  8.37% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.637141s |  0.32% | 19.45% )   ( 3.504765s |  0.35% | 19.71% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.518385s |  0.04% |  2.77% )   ( 0.511899s |  0.05% |  2.88% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.506770s |  0.04% |  2.71% )   ( 0.491253s |  0.05% |  2.76% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003672s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003591s |  0.00% |  0.00% )   ( 0.003958s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005223s |  0.00% |  0.02% )   ( 0.005325s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p5\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p5_PID})
998.3.0:        ( 18.262842s |  1.65% |  3.37% )   ( 17.228085s |  1.76% |  3.58% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000778s |  0.00% |  0.00% )   ( 0.000794s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p6 p6_PID (&)
6.4.0:          ( 18.261960s |  1.65% | 99.99% )   ( 17.227173s |  1.76% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000335s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000101s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p6
12.5.0:         ( 0.021201s |  0.00% |  0.11% )   ( 0.021159s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021098s |  0.00% |  0.11% )   ( 0.021059s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.022245s |  0.00% |  0.12% )   ( 0.022190s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021143s |  0.00% |  0.11% )   ( 0.021095s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021048s |  0.00% |  0.11% )   ( 0.021004s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004641s |  0.00% |  0.00% )   ( 0.005183s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
20.5.0:         ( 0.004054s |  0.00% |  0.00% )   ( 0.004613s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005319s |  0.00% |  0.00% )   ( 0.005865s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p6
23.5.0:         ( 0.207289s |  0.01% |  0.04% )   ( 0.006313s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004603s |  0.00% |  0.00% )   ( 0.005192s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004513s |  0.00% |  0.00% )   ( 0.005115s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004156s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004291s |  0.00% |  0.00% )   ( 0.004844s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038100s |  0.00% |  0.00% )   ( 0.035545s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.010583s |  0.00% |  0.00% )   ( 0.005188s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004959s |  0.00% |  0.00% )   ( 0.005499s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p6
36.5.0:         ( 0.004113s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003859s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.836163s |  1.61% |  3.61% )   ( 17.003155s |  1.73% |  3.65% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004194s |  0.00% |  0.02% )   ( 0.004739s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.189598s |  0.10% |  6.66% )   ( 1.127259s |  0.11% |  6.62% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.098521s |  0.18% | 11.76% )   ( 1.982248s |  0.20% | 11.65% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.674599s |  0.15% |  9.38% )   ( 1.654674s |  0.16% |  9.73% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.980980s |  0.17% | 11.10% )   ( 1.936951s |  0.19% | 11.39% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.599413s |  0.14% |  8.96% )   ( 1.574143s |  0.16% |  9.25% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.072090s |  0.09% |  6.01% )   ( 1.030541s |  0.10% |  6.06% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.645217s |  0.05% |  3.61% )   ( 0.559621s |  0.05% |  3.29% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.214800s |  0.10% |  6.81% )   ( 1.068317s |  0.10% |  6.28% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.561370s |  0.05% |  3.14% )   ( 0.493876s |  0.05% |  2.90% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.528369s |  0.13% |  8.56% )   ( 1.443826s |  0.14% |  8.49% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.117563s |  0.28% | 17.47% )   ( 3.060417s |  0.31% | 17.99% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.561713s |  0.05% |  3.14% )   ( 0.542507s |  0.05% |  3.19% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.587736s |  0.05% |  3.29% )   ( 0.524036s |  0.05% |  3.08% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004677s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004342s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005151s |  0.00% |  0.02% )   ( 0.005220s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p6\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000104s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p6_PID})
998.3.0:        ( 18.169896s |  1.64% |  3.35% )   ( 16.890018s |  1.72% |  3.51% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000831s |  0.00% |  0.00% )   ( 0.000848s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p7 p7_PID (&)
6.4.0:          ( 18.168945s |  1.64% | 99.99% )   ( 16.889042s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000237s |  0.00% |  0.00% )   ( 0.000268s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000252s |  0.00% |  0.00% )   ( 0.000285s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p7
12.5.0:         ( 0.023164s |  0.00% |  0.12% )   ( 0.023117s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021091s |  0.00% |  0.11% )   ( 0.021036s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021127s |  0.00% |  0.11% )   ( 0.021060s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021004s |  0.00% |  0.11% )   ( 0.020964s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.020995s |  0.00% |  0.11% )   ( 0.020956s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004471s |  0.00% |  0.00% )   ( 0.004989s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.004024s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004769s |  0.00% |  0.00% )   ( 0.005307s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p7
23.5.0:         ( 0.203335s |  0.01% |  0.04% )   ( 0.006414s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004153s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004375s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004796s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.043321s |  0.00% |  0.00% )   ( 0.031303s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004252s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005134s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p7
36.5.0:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004412s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.006743s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.744154s |  1.60% |  3.90% )   ( 16.668876s |  1.70% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003947s |  0.00% |  0.02% )   ( 0.004505s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.416713s |  0.12% |  7.98% )   ( 1.124564s |  0.11% |  6.74% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.022295s |  0.18% | 11.39% )   ( 1.928934s |  0.19% | 11.57% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.749588s |  0.15% |  9.86% )   ( 1.582328s |  0.16% |  9.49% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.024278s |  0.18% | 11.40% )   ( 1.899306s |  0.19% | 11.39% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.602095s |  0.14% |  9.02% )   ( 1.544626s |  0.15% |  9.26% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.031624s |  0.09% |  5.81% )   ( 1.000505s |  0.10% |  6.00% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.596120s |  0.05% |  3.35% )   ( 0.522579s |  0.05% |  3.13% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.120818s |  0.10% |  6.31% )   ( 1.061975s |  0.10% |  6.37% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.498233s |  0.04% |  2.80% )   ( 0.460370s |  0.04% |  2.76% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.419055s |  0.12% |  7.99% )   ( 1.395004s |  0.14% |  8.36% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.197288s |  0.28% | 18.01% )   ( 3.122527s |  0.31% | 18.73% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.530362s |  0.04% |  2.98% )   ( 0.520286s |  0.05% |  3.12% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.531738s |  0.04% |  2.99% )   ( 0.501367s |  0.05% |  3.00% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003910s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004238s |  0.00% |  0.00% )   ( 0.004756s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000243s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008523s |  0.00% |  0.04% )   ( 0.008620s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p7\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p7_PID})
998.3.0:        ( 18.491746s |  1.67% |  3.41% )   ( 16.931887s |  1.73% |  3.52% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000810s |  0.00% |  0.00% )   ( 0.000827s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p8 p8_PID (&)
6.4.0:          ( 18.490834s |  1.67% | 99.99% )   ( 16.930946s |  1.73% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000346s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000103s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p8
12.5.0:         ( 0.021085s |  0.00% |  0.11% )   ( 0.021047s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021057s |  0.00% |  0.11% )   ( 0.021015s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021081s |  0.00% |  0.11% )   ( 0.021037s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021112s |  0.00% |  0.11% )   ( 0.021069s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021055s |  0.00% |  0.11% )   ( 0.021010s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003975s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
20.5.0:         ( 0.006508s |  0.00% |  0.00% )   ( 0.004028s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004428s |  0.00% |  0.00% )   ( 0.004944s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p8
23.5.0:         ( 0.189655s |  0.01% |  0.04% )   ( 0.005993s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004499s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.003825s |  0.00% |  0.00% )   ( 0.004309s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003548s |  0.00% |  0.00% )   ( 0.004009s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003734s |  0.00% |  0.00% )   ( 0.004200s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.033803s |  0.00% |  0.00% )   ( 0.028172s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.016409s |  0.00% |  0.00% )   ( 0.004365s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004182s |  0.00% |  0.00% )   ( 0.004655s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p8
36.5.0:         ( 0.003455s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003241s |  0.00% |  0.00% )   ( 0.003693s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.086879s |  1.63% |  4.25% )   ( 16.725112s |  1.71% |  4.29% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003454s |  0.00% |  0.01% )   ( 0.003928s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.259040s |  0.11% |  6.96% )   ( 1.106096s |  0.11% |  6.61% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.199388s |  0.19% | 12.16% )   ( 1.972820s |  0.20% | 11.79% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.693488s |  0.15% |  9.36% )   ( 1.604112s |  0.16% |  9.59% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.048050s |  0.18% | 11.32% )   ( 1.965413s |  0.20% | 11.75% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.655383s |  0.14% |  9.15% )   ( 1.553974s |  0.15% |  9.29% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.175907s |  0.10% |  6.50% )   ( 0.993055s |  0.10% |  5.93% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.510225s |  0.04% |  2.82% )   ( 0.482589s |  0.04% |  2.88% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.166742s |  0.10% |  6.45% )   ( 1.061101s |  0.10% |  6.34% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.464942s |  0.04% |  2.57% )   ( 0.430507s |  0.04% |  2.57% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.471180s |  0.13% |  8.13% )   ( 1.375792s |  0.14% |  8.22% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.427580s |  0.31% | 18.95% )   ( 3.237815s |  0.33% | 19.35% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.496251s |  0.04% |  2.74% )   ( 0.476619s |  0.04% |  2.84% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.515249s |  0.04% |  2.84% )   ( 0.461291s |  0.04% |  2.75% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004081s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003274s |  0.00% |  0.00% )   ( 0.003724s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003450s |  0.00% |  0.00% )   ( 0.003878s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.006317s |  0.00% |  0.03% )   ( 0.006399s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p8\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000102s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p8_PID})
998.3.0:        ( 21.171411s |  1.91% |  3.91% )   ( 20.066494s |  2.05% |  4.17% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000766s |  0.00% |  0.00% )   ( 0.000778s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p9 p9_PID (&)
6.4.0:          ( 21.170545s |  1.91% | 99.99% )   ( 20.065603s |  2.05% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p9
12.5.0:         ( 0.021107s |  0.00% |  0.09% )   ( 0.021043s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021069s |  0.00% |  0.09% )   ( 0.021030s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021121s |  0.00% |  0.09% )   ( 0.021060s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021123s |  0.00% |  0.09% )   ( 0.021080s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021078s |  0.00% |  0.09% )   ( 0.021040s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
20.5.0:         ( 0.003557s |  0.00% |  0.00% )   ( 0.004016s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004271s |  0.00% |  0.00% )   ( 0.004759s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p9
23.5.0:         ( 0.257962s |  0.02% |  0.05% )   ( 0.006019s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003886s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.003639s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003286s |  0.00% |  0.00% )   ( 0.003724s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003468s |  0.00% |  0.00% )   ( 0.003892s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.025518s |  0.00% |  0.00% )   ( 0.025894s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.005178s |  0.00% |  0.00% )   ( 0.004026s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004070s |  0.00% |  0.00% )   ( 0.004524s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p9
36.5.0:         ( 0.003310s |  0.00% |  0.00% )   ( 0.003764s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003266s |  0.00% |  0.00% )   ( 0.003713s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 20.723275s |  1.87% |  4.44% )   ( 19.865193s |  2.03% |  4.50% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003181s |  0.00% |  0.01% )   ( 0.003614s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.561351s |  0.14% |  7.53% )   ( 1.414244s |  0.14% |  7.11% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.854742s |  0.25% | 13.77% )   ( 2.654760s |  0.27% | 13.36% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.226835s |  0.20% | 10.74% )   ( 2.077686s |  0.21% | 10.45% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.681749s |  0.24% | 12.94% )   ( 2.654344s |  0.27% | 13.36% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 2.115262s |  0.19% | 10.20% )   ( 2.034324s |  0.20% | 10.24% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.306490s |  0.11% |  6.30% )   ( 1.282723s |  0.13% |  6.45% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.557258s |  0.05% |  2.68% )   ( 0.505371s |  0.05% |  2.54% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.320813s |  0.11% |  6.37% )   ( 1.271053s |  0.13% |  6.39% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.461567s |  0.04% |  2.22% )   ( 0.416696s |  0.04% |  2.09% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.411089s |  0.12% |  6.80% )   ( 1.404132s |  0.14% |  7.06% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.242626s |  0.29% | 15.64% )   ( 3.205533s |  0.32% | 16.13% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.503463s |  0.04% |  2.42% )   ( 0.483859s |  0.04% |  2.43% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.476849s |  0.04% |  2.30% )   ( 0.456854s |  0.04% |  2.29% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003498s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003270s |  0.00% |  0.00% )   ( 0.003713s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005420s |  0.00% |  0.02% )   ( 0.005510s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p9\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p9_PID})
998.3.0:        ( 18.310155s |  1.65% |  3.38% )   ( 16.657649s |  1.70% |  3.46% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000734s |  0.00% |  0.00% )   ( 0.000754s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p10 p10_PID (&)
6.4.0:          ( 18.309324s |  1.65% | 99.99% )   ( 16.656785s |  1.70% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p10
12.5.0:         ( 0.023875s |  0.00% |  0.13% )   ( 0.023753s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021101s |  0.00% |  0.11% )   ( 0.021052s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021134s |  0.00% |  0.11% )   ( 0.021090s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.021172s |  0.00% |  0.11% )   ( 0.021128s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.021102s |  0.00% |  0.11% )   ( 0.021063s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004346s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.004030s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004757s |  0.00% |  0.00% )   ( 0.005307s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p10
23.5.0:         ( 0.223689s |  0.02% |  0.04% )   ( 0.006367s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004317s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004237s |  0.00% |  0.00% )   ( 0.004770s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003666s |  0.00% |  0.00% )   ( 0.004140s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004510s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.040004s |  0.00% |  0.00% )   ( 0.031389s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004696s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004589s |  0.00% |  0.00% )   ( 0.005095s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p10
36.5.0:         ( 0.005844s |  0.00% |  0.00% )   ( 0.004258s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003698s |  0.00% |  0.00% )   ( 0.004173s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.868610s |  1.61% |  3.90% )   ( 16.440107s |  1.68% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003755s |  0.00% |  0.02% )   ( 0.004279s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.233811s |  0.11% |  6.90% )   ( 1.092867s |  0.11% |  6.64% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.087239s |  0.18% | 11.68% )   ( 1.902698s |  0.19% | 11.57% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.679276s |  0.15% |  9.39% )   ( 1.584603s |  0.16% |  9.63% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.827996s |  0.16% | 10.23% )   ( 1.709122s |  0.17% | 10.39% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.637038s |  0.14% |  9.16% )   ( 1.539662s |  0.15% |  9.36% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.169737s |  0.10% |  6.54% )   ( 1.015072s |  0.10% |  6.17% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.542306s |  0.04% |  3.03% )   ( 0.518268s |  0.05% |  3.15% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.201429s |  0.10% |  6.72% )   ( 1.067251s |  0.10% |  6.49% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.539448s |  0.04% |  3.01% )   ( 0.454531s |  0.04% |  2.76% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.523221s |  0.13% |  8.52% )   ( 1.406323s |  0.14% |  8.55% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.280618s |  0.29% | 18.35% )   ( 3.152580s |  0.32% | 19.17% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.585216s |  0.05% |  3.27% )   ( 0.508088s |  0.05% |  3.09% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.557520s |  0.05% |  3.12% )   ( 0.484763s |  0.04% |  2.94% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003936s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.006488s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005552s |  0.00% |  0.03% )   ( 0.005625s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p10\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p10_PID})
998.3.0:        ( 19.958699s |  1.80% |  3.68% )   ( 19.208693s |  1.96% |  4.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000743s |  0.00% |  0.00% )   ( 0.000767s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p11 p11_PID (&)
6.4.0:          ( 19.957865s |  1.80% | 99.99% )   ( 19.207820s |  1.96% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000195s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000109s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p11
12.5.0:         ( 0.029861s |  0.00% |  0.14% )   ( 0.029669s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.035920s |  0.00% |  0.17% )   ( 0.035801s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040139s |  0.00% |  0.20% )   ( 0.040012s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040022s |  0.00% |  0.20% )   ( 0.039895s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.039949s |  0.00% |  0.20% )   ( 0.039827s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.002834s |  0.00% |  0.00% )   ( 0.003180s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ true
20.5.0:         ( 0.002566s |  0.00% |  0.00% )   ( 0.002915s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003035s |  0.00% |  0.00% )   ( 0.003393s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p11
23.5.0:         ( 0.083342s |  0.00% |  0.02% )   ( 0.003633s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.002545s |  0.00% |  0.00% )   ( 0.002877s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.002561s |  0.00% |  0.00% )   ( 0.002918s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.002470s |  0.00% |  0.00% )   ( 0.002798s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.002538s |  0.00% |  0.00% )   ( 0.002835s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.024137s |  0.00% |  0.00% )   ( 0.021196s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.005734s |  0.00% |  0.00% )   ( 0.002962s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003050s |  0.00% |  0.00% )   ( 0.003402s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p11
36.5.0:         ( 0.002597s |  0.00% |  0.00% )   ( 0.002966s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.002382s |  0.00% |  0.00% )   ( 0.002700s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 19.618303s |  1.77% |  6.14% )   ( 18.949764s |  1.93% |  6.16% )    	(16x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002456s |  0.00% |  0.01% )   ( 0.002787s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.350697s |  0.12% |  6.88% )   ( 1.278784s |  0.13% |  6.74% )    	(16x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.521430s |  0.22% | 12.85% )   ( 2.451792s |  0.25% | 12.93% )    	(16x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.959380s |  0.17% |  9.98% )   ( 1.886766s |  0.19% |  9.95% )    	(16x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.516732s |  0.22% | 12.82% )   ( 2.404055s |  0.24% | 12.68% )    	(16x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.897007s |  0.17% |  9.66% )   ( 1.838624s |  0.18% |  9.70% )    	(16x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.149913s |  0.10% |  5.86% )   ( 1.118273s |  0.11% |  5.90% )    	(16x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.442448s |  0.04% |  2.25% )   ( 0.415584s |  0.04% |  2.19% )    	(16x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.262147s |  0.11% |  6.43% )   ( 1.239552s |  0.12% |  6.54% )    	(16x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.371919s |  0.03% |  1.89% )   ( 0.351536s |  0.03% |  1.85% )    	(16x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.612214s |  0.14% |  8.21% )   ( 1.575104s |  0.16% |  8.31% )    	(16x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.687866s |  0.33% | 18.79% )   ( 3.644402s |  0.37% | 19.23% )    	(16x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.435179s |  0.03% |  2.21% )   ( 0.383198s |  0.03% |  2.02% )    	(16x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.408915s |  0.03% |  2.08% )   ( 0.359307s |  0.03% |  1.89% )    	(16x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.002379s |  0.00% |  0.00% )   ( 0.002710s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002315s |  0.00% |  0.00% )   ( 0.002627s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.002528s |  0.00% |  0.00% )   ( 0.002829s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005406s |  0.00% |  0.02% )   ( 0.005479s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p11\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p11_PID})
998.3.0:        ( 18.512423s |  1.67% |  3.41% )   ( 17.506491s |  1.79% |  3.64% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000897s |  0.00% |  0.00% )   ( 0.000923s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p12 p12_PID (&)
6.4.0:          ( 18.511340s |  1.67% | 99.99% )   ( 17.505359s |  1.79% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000171s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p12
12.5.0:         ( 0.040369s |  0.00% |  0.21% )   ( 0.040230s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040553s |  0.00% |  0.21% )   ( 0.040406s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040236s |  0.00% |  0.21% )   ( 0.040103s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040794s |  0.00% |  0.22% )   ( 0.040654s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.040199s |  0.00% |  0.21% )   ( 0.040062s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
20.5.0:         ( 0.003480s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004162s |  0.00% |  0.00% )   ( 0.004621s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p12
23.5.0:         ( 0.127314s |  0.01% |  0.02% )   ( 0.005370s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003778s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004176s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003365s |  0.00% |  0.00% )   ( 0.003822s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003543s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.030427s |  0.00% |  0.00% )   ( 0.027836s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.012078s |  0.00% |  0.00% )   ( 0.004119s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004562s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p12
36.5.0:         ( 0.003339s |  0.00% |  0.00% )   ( 0.003778s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003312s |  0.00% |  0.00% )   ( 0.003752s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.084316s |  1.63% |  4.44% )   ( 17.206956s |  1.76% |  4.46% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003358s |  0.00% |  0.01% )   ( 0.003826s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.364495s |  0.12% |  7.54% )   ( 1.225728s |  0.12% |  7.12% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.331570s |  0.21% | 12.89% )   ( 2.249057s |  0.23% | 13.07% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.670204s |  0.15% |  9.23% )   ( 1.579430s |  0.16% |  9.17% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.981862s |  0.17% | 10.95% )   ( 1.932609s |  0.19% | 11.23% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.558257s |  0.14% |  8.61% )   ( 1.543420s |  0.15% |  8.96% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.116107s |  0.10% |  6.17% )   ( 1.085773s |  0.11% |  6.31% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.499309s |  0.04% |  2.76% )   ( 0.492328s |  0.05% |  2.86% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.127023s |  0.10% |  6.23% )   ( 1.111650s |  0.11% |  6.46% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.468564s |  0.04% |  2.59% )   ( 0.426280s |  0.04% |  2.47% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.501477s |  0.13% |  8.30% )   ( 1.431008s |  0.14% |  8.31% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.476181s |  0.31% | 19.22% )   ( 3.209776s |  0.32% | 18.65% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.502581s |  0.04% |  2.77% )   ( 0.471005s |  0.04% |  2.73% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.483328s |  0.04% |  2.67% )   ( 0.445066s |  0.04% |  2.58% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003310s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004223s |  0.00% |  0.00% )   ( 0.003628s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003572s |  0.00% |  0.00% )   ( 0.004002s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005372s |  0.00% |  0.02% )   ( 0.005477s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p12\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000186s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p12_PID})
998.3.0:        ( 19.142368s |  1.73% |  3.53% )   ( 18.382719s |  1.88% |  3.82% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001068s |  0.00% |  0.00% )   ( 0.001090s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p13 p13_PID (&)
6.4.0:          ( 19.141135s |  1.73% | 99.99% )   ( 18.381444s |  1.88% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000174s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p13
12.5.0:         ( 0.040123s |  0.00% |  0.20% )   ( 0.039968s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040078s |  0.00% |  0.20% )   ( 0.039949s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.039985s |  0.00% |  0.20% )   ( 0.039853s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040181s |  0.00% |  0.20% )   ( 0.040057s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.031814s |  0.00% |  0.16% )   ( 0.031696s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004714s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
20.5.0:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004217s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004330s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p13
23.5.0:         ( 0.138312s |  0.01% |  0.03% )   ( 0.005560s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003922s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.003795s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003289s |  0.00% |  0.00% )   ( 0.003721s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035641s |  0.00% |  0.00% )   ( 0.027006s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.006658s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004213s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p13
36.5.0:         ( 0.003356s |  0.00% |  0.00% )   ( 0.003810s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003251s |  0.00% |  0.00% )   ( 0.003696s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.713625s |  1.69% |  4.25% )   ( 18.092336s |  1.85% |  4.27% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003401s |  0.00% |  0.01% )   ( 0.003860s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.231541s |  0.11% |  6.58% )   ( 1.217726s |  0.12% |  6.73% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.294748s |  0.20% | 12.26% )   ( 2.149982s |  0.21% | 11.88% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.784082s |  0.16% |  9.53% )   ( 1.723384s |  0.17% |  9.52% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.173448s |  0.19% | 11.61% )   ( 2.121127s |  0.21% | 11.72% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.697408s |  0.15% |  9.07% )   ( 1.681074s |  0.17% |  9.29% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.209374s |  0.10% |  6.46% )   ( 1.187956s |  0.12% |  6.56% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.559098s |  0.05% |  2.98% )   ( 0.512477s |  0.05% |  2.83% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.217256s |  0.11% |  6.50% )   ( 1.193425s |  0.12% |  6.59% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.475043s |  0.04% |  2.53% )   ( 0.444787s |  0.04% |  2.45% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.583675s |  0.14% |  8.46% )   ( 1.549216s |  0.15% |  8.56% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.461058s |  0.31% | 18.49% )   ( 3.356625s |  0.34% | 18.55% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.532813s |  0.04% |  2.84% )   ( 0.485651s |  0.04% |  2.68% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.490680s |  0.04% |  2.62% )   ( 0.465046s |  0.04% |  2.57% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003668s |  0.00% |  0.00% )   ( 0.004150s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003231s |  0.00% |  0.00% )   ( 0.003658s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004072s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005504s |  0.00% |  0.02% )   ( 0.005581s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p13\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p13_PID})
998.3.0:        ( 20.878722s |  1.88% |  3.85% )   ( 19.456680s |  1.99% |  4.05% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001055s |  0.00% |  0.00% )   ( 0.001077s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p14 p14_PID (&)
6.4.0:          ( 20.877513s |  1.88% | 99.99% )   ( 19.455429s |  1.98% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p14
12.5.0:         ( 0.038693s |  0.00% |  0.18% )   ( 0.038577s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.039093s |  0.00% |  0.18% )   ( 0.038967s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040270s |  0.00% |  0.19% )   ( 0.040144s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.026557s |  0.00% |  0.12% )   ( 0.026490s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.023859s |  0.00% |  0.11% )   ( 0.023789s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004293s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.003785s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004661s |  0.00% |  0.00% )   ( 0.005184s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p14
23.5.0:         ( 0.198022s |  0.01% |  0.03% )   ( 0.006367s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004528s |  0.00% |  0.00% )   ( 0.005094s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004618s |  0.00% |  0.00% )   ( 0.005174s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004597s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004853s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.037718s |  0.00% |  0.00% )   ( 0.032149s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.009596s |  0.00% |  0.00% )   ( 0.005005s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005985s |  0.00% |  0.00% )   ( 0.005502s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p14
36.5.0:         ( 0.004020s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003805s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 20.401719s |  1.84% |  3.90% )   ( 19.175951s |  1.96% |  3.94% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003794s |  0.00% |  0.01% )   ( 0.004300s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.534781s |  0.13% |  7.52% )   ( 1.410311s |  0.14% |  7.35% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.442964s |  0.22% | 11.97% )   ( 2.321342s |  0.23% | 12.10% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.867857s |  0.16% |  9.15% )   ( 1.820141s |  0.18% |  9.49% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.300676s |  0.20% | 11.27% )   ( 2.215607s |  0.22% | 11.55% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.843877s |  0.16% |  9.03% )   ( 1.763032s |  0.18% |  9.19% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.347289s |  0.12% |  6.60% )   ( 1.204974s |  0.12% |  6.28% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.600133s |  0.05% |  2.94% )   ( 0.549711s |  0.05% |  2.86% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.425212s |  0.12% |  6.98% )   ( 1.266619s |  0.12% |  6.60% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.523738s |  0.04% |  2.56% )   ( 0.475918s |  0.04% |  2.48% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.612682s |  0.14% |  7.90% )   ( 1.546674s |  0.15% |  8.06% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.769436s |  0.34% | 18.47% )   ( 3.572060s |  0.36% | 18.62% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.584396s |  0.05% |  2.86% )   ( 0.527449s |  0.05% |  2.75% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.544884s |  0.04% |  2.67% )   ( 0.497813s |  0.05% |  2.59% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003657s |  0.00% |  0.00% )   ( 0.004138s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004267s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004598s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005208s |  0.00% |  0.02% )   ( 0.005288s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p14\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p14_PID})
998.3.0:        ( 17.872479s |  1.61% |  3.30% )   ( 16.328424s |  1.67% |  3.40% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001097s |  0.00% |  0.00% )   ( 0.001116s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p15 p15_PID (&)
6.4.0:          ( 17.871230s |  1.61% | 99.99% )   ( 16.327135s |  1.67% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000178s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000184s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p15
12.5.0:         ( 0.036271s |  0.00% |  0.20% )   ( 0.036157s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040067s |  0.00% |  0.22% )   ( 0.039940s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040147s |  0.00% |  0.22% )   ( 0.040024s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040046s |  0.00% |  0.22% )   ( 0.039924s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.040057s |  0.00% |  0.22% )   ( 0.039937s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004902s |  0.00% |  0.00% )   ( 0.005487s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004378s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005147s |  0.00% |  0.00% )   ( 0.005702s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p15
23.5.0:         ( 0.198102s |  0.01% |  0.04% )   ( 0.006463s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004606s |  0.00% |  0.00% )   ( 0.005174s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004575s |  0.00% |  0.00% )   ( 0.005138s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004590s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004844s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.034915s |  0.00% |  0.00% )   ( 0.032353s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.008002s |  0.00% |  0.00% )   ( 0.004800s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005202s |  0.00% |  0.00% )   ( 0.005786s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p15
36.5.0:         ( 0.007084s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003994s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.359557s |  1.57% |  3.73% )   ( 16.012218s |  1.63% |  3.77% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003963s |  0.00% |  0.02% )   ( 0.004521s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.229928s |  0.11% |  7.08% )   ( 1.060243s |  0.10% |  6.62% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.904847s |  0.17% | 10.97% )   ( 1.807634s |  0.18% | 11.28% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.667049s |  0.15% |  9.60% )   ( 1.561593s |  0.15% |  9.75% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.028690s |  0.18% | 11.68% )   ( 1.829972s |  0.18% | 11.42% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.611014s |  0.14% |  9.28% )   ( 1.499455s |  0.15% |  9.36% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.055726s |  0.09% |  6.08% )   ( 0.972380s |  0.09% |  6.07% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.551391s |  0.04% |  3.17% )   ( 0.519018s |  0.05% |  3.24% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.118911s |  0.10% |  6.44% )   ( 0.998292s |  0.10% |  6.23% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.488289s |  0.04% |  2.81% )   ( 0.460109s |  0.04% |  2.87% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.435357s |  0.12% |  8.26% )   ( 1.340023s |  0.13% |  8.36% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.124065s |  0.28% | 17.99% )   ( 2.913208s |  0.29% | 18.19% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.589197s |  0.05% |  3.39% )   ( 0.532972s |  0.05% |  3.32% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.551130s |  0.04% |  3.17% )   ( 0.512798s |  0.05% |  3.20% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004174s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004303s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.007215s |  0.00% |  0.00% )   ( 0.004777s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009168s |  0.00% |  0.05% )   ( 0.009150s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p15\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p15_PID})
998.3.0:        ( 18.846679s |  1.70% |  3.48% )   ( 17.797543s |  1.82% |  3.70% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001089s |  0.00% |  0.00% )   ( 0.001109s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p16 p16_PID (&)
6.4.0:          ( 18.845438s |  1.70% | 99.99% )   ( 17.796263s |  1.82% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p16
12.5.0:         ( 0.039817s |  0.00% |  0.21% )   ( 0.039686s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.039909s |  0.00% |  0.21% )   ( 0.039785s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040103s |  0.00% |  0.21% )   ( 0.039977s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040056s |  0.00% |  0.21% )   ( 0.039938s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.040300s |  0.00% |  0.21% )   ( 0.040157s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003506s |  0.00% |  0.00% )   ( 0.003913s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ true
20.5.0:         ( 0.003200s |  0.00% |  0.00% )   ( 0.003606s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003730s |  0.00% |  0.00% )   ( 0.004154s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p16
23.5.0:         ( 0.296157s |  0.02% |  0.07% )   ( 0.005260s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003576s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.003494s |  0.00% |  0.00% )   ( 0.003951s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.005033s |  0.00% |  0.00% )   ( 0.003420s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003317s |  0.00% |  0.00% )   ( 0.003730s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.030406s |  0.00% |  0.00% )   ( 0.023756s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004408s |  0.00% |  0.00% )   ( 0.003873s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p16
36.5.0:         ( 0.003204s |  0.00% |  0.00% )   ( 0.003637s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003039s |  0.00% |  0.00% )   ( 0.003440s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.262688s |  1.65% |  4.84% )   ( 17.508565s |  1.79% |  4.91% )    	(20x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003002s |  0.00% |  0.01% )   ( 0.003396s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.271929s |  0.11% |  6.96% )   ( 1.167856s |  0.11% |  6.67% )    	(20x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.294669s |  0.20% | 12.56% )   ( 2.136764s |  0.21% | 12.20% )    	(20x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.760775s |  0.15% |  9.64% )   ( 1.697964s |  0.17% |  9.69% )    	(20x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.238865s |  0.20% | 12.25% )   ( 2.125680s |  0.21% | 12.14% )    	(20x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.656703s |  0.14% |  9.07% )   ( 1.635164s |  0.16% |  9.33% )    	(20x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.097177s |  0.09% |  6.00% )   ( 1.018967s |  0.10% |  5.81% )    	(20x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.446643s |  0.04% |  2.44% )   ( 0.445041s |  0.04% |  2.54% )    	(20x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.120263s |  0.10% |  6.13% )   ( 1.104508s |  0.11% |  6.30% )    	(20x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.436914s |  0.03% |  2.39% )   ( 0.382965s |  0.03% |  2.18% )    	(20x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.539785s |  0.13% |  8.43% )   ( 1.419563s |  0.14% |  8.10% )    	(20x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.545942s |  0.32% | 19.41% )   ( 3.532524s |  0.36% | 20.17% )    	(20x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.440858s |  0.03% |  2.41% )   ( 0.434286s |  0.04% |  2.48% )    	(20x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.409163s |  0.03% |  2.24% )   ( 0.403887s |  0.04% |  2.30% )    	(20x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.002970s |  0.00% |  0.00% )   ( 0.003376s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002956s |  0.00% |  0.00% )   ( 0.003350s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003220s |  0.00% |  0.00% )   ( 0.003654s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005147s |  0.00% |  0.02% )   ( 0.005219s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p16\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p16_PID})
998.3.0:        ( 22.778435s |  2.06% |  4.20% )   ( 21.380788s |  2.18% |  4.45% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001054s |  0.00% |  0.00% )   ( 0.001072s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p17 p17_PID (&)
6.4.0:          ( 22.777233s |  2.06% | 99.99% )   ( 21.379549s |  2.18% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000098s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000110s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p17
12.5.0:         ( 0.024321s |  0.00% |  0.10% )   ( 0.024242s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.023902s |  0.00% |  0.10% )   ( 0.023831s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.021191s |  0.00% |  0.09% )   ( 0.021132s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.036994s |  0.00% |  0.16% )   ( 0.036862s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.039984s |  0.00% |  0.17% )   ( 0.039854s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005437s |  0.00% |  0.00% )   ( 0.006060s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ true
20.5.0:         ( 0.004929s |  0.00% |  0.00% )   ( 0.005558s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.006154s |  0.00% |  0.00% )   ( 0.006817s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p17
23.5.0:         ( 0.272849s |  0.02% |  0.03% )   ( 0.007629s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.005572s |  0.00% |  0.00% )   ( 0.006244s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.005099s |  0.00% |  0.00% )   ( 0.005704s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004572s |  0.00% |  0.00% )   ( 0.005154s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004819s |  0.00% |  0.00% )   ( 0.005406s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.050112s |  0.00% |  0.00% )   ( 0.036611s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.011985s |  0.00% |  0.00% )   ( 0.005574s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005639s |  0.00% |  0.00% )   ( 0.006263s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p17
36.5.0:         ( 0.004461s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004547s |  0.00% |  0.00% )   ( 0.005185s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 22.224364s |  2.01% |  3.25% )   ( 21.104046s |  2.15% |  3.29% )    	(30x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004755s |  0.00% |  0.02% )   ( 0.005343s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.843289s |  0.16% |  8.29% )   ( 1.629671s |  0.16% |  7.72% )    	(30x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.491354s |  0.22% | 11.21% )   ( 2.398080s |  0.24% | 11.36% )    	(30x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.054646s |  0.18% |  9.24% )   ( 1.989161s |  0.20% |  9.42% )    	(30x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.494396s |  0.22% | 11.22% )   ( 2.375071s |  0.24% | 11.25% )    	(30x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.960551s |  0.17% |  8.82% )   ( 1.895226s |  0.19% |  8.98% )    	(30x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.519301s |  0.13% |  6.83% )   ( 1.397668s |  0.14% |  6.62% )    	(30x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.695215s |  0.06% |  3.12% )   ( 0.657216s |  0.06% |  3.11% )    	(30x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.488812s |  0.13% |  6.69% )   ( 1.426011s |  0.14% |  6.75% )    	(30x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.605843s |  0.05% |  2.72% )   ( 0.561157s |  0.05% |  2.65% )    	(30x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.874671s |  0.16% |  8.43% )   ( 1.714890s |  0.17% |  8.12% )    	(30x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.856557s |  0.34% | 17.35% )   ( 3.808733s |  0.38% | 18.04% )    	(30x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.680017s |  0.06% |  3.05% )   ( 0.634094s |  0.06% |  3.00% )    	(30x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.654957s |  0.05% |  2.94% )   ( 0.611725s |  0.06% |  2.89% )    	(30x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004658s |  0.00% |  0.00% )   ( 0.005260s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004377s |  0.00% |  0.00% )   ( 0.004974s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004879s |  0.00% |  0.00% )   ( 0.005444s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005226s |  0.00% |  0.02% )   ( 0.005300s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p17\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p17_PID})
998.3.0:        ( 17.891764s |  1.61% |  3.30% )   ( 16.138924s |  1.65% |  3.36% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001045s |  0.00% |  0.00% )   ( 0.001064s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p18 p18_PID (&)
6.4.0:          ( 17.890567s |  1.61% | 99.99% )   ( 16.137688s |  1.65% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000112s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p18
12.5.0:         ( 0.035321s |  0.00% |  0.19% )   ( 0.035191s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.038175s |  0.00% |  0.21% )   ( 0.038055s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.036366s |  0.00% |  0.20% )   ( 0.036243s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040213s |  0.00% |  0.22% )   ( 0.040071s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.035248s |  0.00% |  0.19% )   ( 0.035118s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004853s |  0.00% |  0.00% )   ( 0.005432s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004480s |  0.00% |  0.00% )   ( 0.005070s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005316s |  0.00% |  0.00% )   ( 0.005886s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p18
23.5.0:         ( 0.174313s |  0.01% |  0.03% )   ( 0.006314s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004584s |  0.00% |  0.00% )   ( 0.005144s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004412s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004013s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004336s |  0.00% |  0.00% )   ( 0.004875s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035458s |  0.00% |  0.00% )   ( 0.032922s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.016242s |  0.00% |  0.00% )   ( 0.005185s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004993s |  0.00% |  0.00% )   ( 0.005556s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p18
36.5.0:         ( 0.007123s |  0.00% |  0.00% )   ( 0.004671s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.002408s |  0.00% |  0.01% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.402144s |  1.57% |  3.74% )   ( 15.832406s |  1.61% |  3.77% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004059s |  0.00% |  0.02% )   ( 0.004609s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.263305s |  0.11% |  7.25% )   ( 1.065604s |  0.10% |  6.73% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.012789s |  0.18% | 11.56% )   ( 1.812159s |  0.18% | 11.44% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.685807s |  0.15% |  9.68% )   ( 1.512802s |  0.15% |  9.55% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.872869s |  0.16% | 10.76% )   ( 1.785477s |  0.18% | 11.27% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.501854s |  0.13% |  8.63% )   ( 1.452869s |  0.14% |  9.17% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.020360s |  0.09% |  5.86% )   ( 0.959923s |  0.09% |  6.06% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.581812s |  0.05% |  3.34% )   ( 0.516610s |  0.05% |  3.26% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.080437s |  0.09% |  6.20% )   ( 0.999702s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.519644s |  0.04% |  2.98% )   ( 0.456796s |  0.04% |  2.88% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.581402s |  0.14% |  9.08% )   ( 1.330181s |  0.13% |  8.40% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.166171s |  0.28% | 18.19% )   ( 2.903237s |  0.29% | 18.33% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.571294s |  0.05% |  3.28% )   ( 0.526166s |  0.05% |  3.32% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.540341s |  0.04% |  3.10% )   ( 0.506271s |  0.05% |  3.19% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004280s |  0.00% |  0.00% )   ( 0.004804s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004272s |  0.00% |  0.00% )   ( 0.004794s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.013011s |  0.00% |  0.07% )   ( 0.010015s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p18\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p18_PID})
998.3.0:        ( 18.271460s |  1.65% |  3.37% )   ( 17.105327s |  1.74% |  3.56% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001106s |  0.00% |  0.00% )   ( 0.001126s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p19 p19_PID (&)
6.4.0:          ( 18.270195s |  1.65% | 99.99% )   ( 17.104022s |  1.74% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000164s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p19
12.5.0:         ( 0.039978s |  0.00% |  0.21% )   ( 0.039846s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040152s |  0.00% |  0.21% )   ( 0.040014s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.039434s |  0.00% |  0.21% )   ( 0.039294s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.030921s |  0.00% |  0.16% )   ( 0.030820s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.034529s |  0.00% |  0.18% )   ( 0.034402s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003654s |  0.00% |  0.00% )   ( 0.004081s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ true
20.5.0:         ( 0.003282s |  0.00% |  0.00% )   ( 0.003720s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005094s |  0.00% |  0.00% )   ( 0.004737s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p19
23.5.0:         ( 0.137470s |  0.01% |  0.03% )   ( 0.004945s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003468s |  0.00% |  0.00% )   ( 0.003907s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.003561s |  0.00% |  0.00% )   ( 0.004015s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.002942s |  0.00% |  0.00% )   ( 0.003341s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003472s |  0.00% |  0.00% )   ( 0.003893s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.032002s |  0.00% |  0.00% )   ( 0.024201s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.008517s |  0.00% |  0.00% )   ( 0.003942s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p19
36.5.0:         ( 0.006251s |  0.00% |  0.00% )   ( 0.003686s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.005058s |  0.00% |  0.00% )   ( 0.003471s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.846582s |  1.61% |  4.88% )   ( 16.825912s |  1.72% |  4.91% )    	(20x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003103s |  0.00% |  0.01% )   ( 0.003530s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.242748s |  0.11% |  6.96% )   ( 1.101056s |  0.11% |  6.54% )    	(20x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.122777s |  0.19% | 11.89% )   ( 2.004845s |  0.20% | 11.91% )    	(20x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.734183s |  0.15% |  9.71% )   ( 1.605306s |  0.16% |  9.54% )    	(20x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.127447s |  0.19% | 11.92% )   ( 2.012765s |  0.20% | 11.96% )    	(20x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.693545s |  0.15% |  9.48% )   ( 1.586540s |  0.16% |  9.42% )    	(20x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.085112s |  0.09% |  6.08% )   ( 0.990519s |  0.10% |  5.88% )    	(20x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.492015s |  0.04% |  2.75% )   ( 0.443571s |  0.04% |  2.63% )    	(20x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.094204s |  0.09% |  6.13% )   ( 1.072311s |  0.10% |  6.37% )    	(20x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.434133s |  0.03% |  2.43% )   ( 0.389866s |  0.03% |  2.31% )    	(20x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.474929s |  0.13% |  8.26% )   ( 1.390259s |  0.14% |  8.26% )    	(20x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.452150s |  0.31% | 19.34% )   ( 3.386868s |  0.34% | 20.12% )    	(20x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.454892s |  0.04% |  2.54% )   ( 0.427523s |  0.04% |  2.54% )    	(20x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.435344s |  0.03% |  2.43% )   ( 0.410953s |  0.04% |  2.44% )    	(20x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003565s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002962s |  0.00% |  0.00% )   ( 0.003363s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003318s |  0.00% |  0.00% )   ( 0.003735s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009001s |  0.00% |  0.04% )   ( 0.009093s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p19\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p19_PID})
998.3.0:        ( 0.022545s |  0.00% |  0.00% )   ( 0.022464s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p20 p20_PID >>
998.3.0:        ( 18.659368s |  1.68% |  3.44% )   ( 17.158312s |  1.75% |  3.57% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.000979s |  0.00% |  0.00% )   ( 0.001001s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p21 p21_PID (&)
6.4.0:          ( 18.658209s |  1.68% | 99.99% )   ( 17.157107s |  1.75% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p21
12.5.0:         ( 0.040332s |  0.00% |  0.21% )   ( 0.040194s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040527s |  0.00% |  0.21% )   ( 0.040379s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040357s |  0.00% |  0.21% )   ( 0.040217s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040372s |  0.00% |  0.21% )   ( 0.040228s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.039440s |  0.00% |  0.21% )   ( 0.039295s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004647s |  0.00% |  0.00% )   ( 0.005194s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
20.5.0:         ( 0.004168s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004738s |  0.00% |  0.00% )   ( 0.005278s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p21
23.5.0:         ( 0.260306s |  0.02% |  0.05% )   ( 0.006263s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004317s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004298s |  0.00% |  0.00% )   ( 0.004831s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004065s |  0.00% |  0.00% )   ( 0.004548s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038357s |  0.00% |  0.00% )   ( 0.030704s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.010314s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004645s |  0.00% |  0.00% )   ( 0.005133s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p21
36.5.0:         ( 0.006783s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003661s |  0.00% |  0.00% )   ( 0.004146s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.082758s |  1.63% |  4.03% )   ( 16.845822s |  1.72% |  4.09% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003781s |  0.00% |  0.02% )   ( 0.004312s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.278508s |  0.11% |  7.07% )   ( 1.145474s |  0.11% |  6.79% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.065411s |  0.18% | 11.42% )   ( 2.017054s |  0.20% | 11.97% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.736359s |  0.15% |  9.60% )   ( 1.673747s |  0.17% |  9.93% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.341359s |  0.21% | 12.94% )   ( 2.038434s |  0.20% | 12.10% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.642216s |  0.14% |  9.08% )   ( 1.596454s |  0.16% |  9.47% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.080121s |  0.09% |  5.97% )   ( 1.050338s |  0.10% |  6.23% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.544720s |  0.04% |  3.01% )   ( 0.518199s |  0.05% |  3.07% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.146856s |  0.10% |  6.34% )   ( 1.079666s |  0.11% |  6.40% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.455337s |  0.04% |  2.51% )   ( 0.437091s |  0.04% |  2.59% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.461889s |  0.13% |  8.08% )   ( 1.329709s |  0.13% |  7.89% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.239938s |  0.29% | 17.91% )   ( 2.986029s |  0.30% | 17.72% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.562087s |  0.05% |  3.10% )   ( 0.493745s |  0.05% |  2.93% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.524176s |  0.04% |  2.89% )   ( 0.475570s |  0.04% |  2.82% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003858s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004079s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003790s |  0.00% |  0.00% )   ( 0.004253s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.007469s |  0.00% |  0.04% )   ( 0.007557s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p21\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000180s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p21_PID})
998.3.0:        ( 21.291360s |  1.92% |  3.93% )   ( 19.740864s |  2.01% |  4.11% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001094s |  0.00% |  0.00% )   ( 0.001116s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p22 p22_PID (&)
6.4.0:          ( 21.290104s |  1.92% | 99.99% )   ( 19.739570s |  2.01% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000163s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p22
12.5.0:         ( 0.041462s |  0.00% |  0.19% )   ( 0.040348s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040367s |  0.00% |  0.18% )   ( 0.040212s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040381s |  0.00% |  0.18% )   ( 0.040229s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.040429s |  0.00% |  0.18% )   ( 0.040279s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.040378s |  0.00% |  0.18% )   ( 0.040222s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004976s |  0.00% |  0.00% )   ( 0.005572s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
20.5.0:         ( 0.004405s |  0.00% |  0.00% )   ( 0.004959s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005339s |  0.00% |  0.00% )   ( 0.005917s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p22
23.5.0:         ( 0.219323s |  0.01% |  0.03% )   ( 0.006828s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004906s |  0.00% |  0.00% )   ( 0.005467s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004831s |  0.00% |  0.00% )   ( 0.005431s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004724s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004715s |  0.00% |  0.00% )   ( 0.005296s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.044884s |  0.00% |  0.00% )   ( 0.035370s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004875s |  0.00% |  0.00% )   ( 0.005370s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.007286s |  0.00% |  0.00% )   ( 0.005897s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p22
36.5.0:         ( 0.004188s |  0.00% |  0.00% )   ( 0.004728s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004085s |  0.00% |  0.00% )   ( 0.004630s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 20.749686s |  1.87% |  3.60% )   ( 19.416812s |  1.98% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004094s |  0.00% |  0.01% )   ( 0.004664s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.703908s |  0.15% |  8.21% )   ( 1.447602s |  0.14% |  7.45% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.297652s |  0.20% | 11.07% )   ( 2.205679s |  0.22% | 11.35% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.963530s |  0.17% |  9.46% )   ( 1.817452s |  0.18% |  9.36% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.321937s |  0.21% | 11.19% )   ( 2.211983s |  0.22% | 11.39% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.838245s |  0.16% |  8.85% )   ( 1.746474s |  0.17% |  8.99% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.354277s |  0.12% |  6.52% )   ( 1.258067s |  0.12% |  6.47% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.649871s |  0.05% |  3.13% )   ( 0.584443s |  0.05% |  3.00% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.363292s |  0.12% |  6.57% )   ( 1.301029s |  0.13% |  6.70% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.534926s |  0.04% |  2.57% )   ( 0.505087s |  0.05% |  2.60% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.887201s |  0.17% |  9.09% )   ( 1.618442s |  0.16% |  8.33% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.709287s |  0.33% | 17.87% )   ( 3.608498s |  0.36% | 18.58% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.566204s |  0.05% |  2.72% )   ( 0.565838s |  0.05% |  2.91% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.555262s |  0.05% |  2.67% )   ( 0.541554s |  0.05% |  2.78% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004281s |  0.00% |  0.00% )   ( 0.004824s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004002s |  0.00% |  0.00% )   ( 0.004555s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004491s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005214s |  0.00% |  0.02% )   ( 0.005290s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p22\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p22_PID})
998.3.0:        ( 18.085862s |  1.63% |  3.34% )   ( 17.105373s |  1.74% |  3.56% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001078s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p23 p23_PID (&)
6.4.0:          ( 18.084634s |  1.63% | 99.99% )   ( 17.104105s |  1.74% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p23
12.5.0:         ( 0.039675s |  0.00% |  0.21% )   ( 0.039536s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.038600s |  0.00% |  0.21% )   ( 0.038464s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.045801s |  0.00% |  0.25% )   ( 0.045632s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.046402s |  0.00% |  0.25% )   ( 0.046222s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.043720s |  0.00% |  0.24% )   ( 0.043568s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004061s |  0.00% |  0.00% )   ( 0.004553s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
20.5.0:         ( 0.003577s |  0.00% |  0.00% )   ( 0.004025s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004444s |  0.00% |  0.00% )   ( 0.004943s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p23
23.5.0:         ( 0.167614s |  0.01% |  0.04% )   ( 0.005661s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003912s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.003993s |  0.00% |  0.00% )   ( 0.004488s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003413s |  0.00% |  0.00% )   ( 0.003851s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003596s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035835s |  0.00% |  0.00% )   ( 0.028148s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.009073s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004079s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p23
36.5.0:         ( 0.003247s |  0.00% |  0.00% )   ( 0.003705s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003185s |  0.00% |  0.00% )   ( 0.003610s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.599478s |  1.59% |  4.42% )   ( 16.787990s |  1.71% |  4.46% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003394s |  0.00% |  0.01% )   ( 0.003860s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.255381s |  0.11% |  7.13% )   ( 1.120604s |  0.11% |  6.67% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.167185s |  0.19% | 12.31% )   ( 1.994688s |  0.20% | 11.88% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.666620s |  0.15% |  9.46% )   ( 1.592428s |  0.16% |  9.48% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.986441s |  0.17% | 11.28% )   ( 1.951667s |  0.19% | 11.62% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.590807s |  0.14% |  9.03% )   ( 1.548767s |  0.15% |  9.22% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.031169s |  0.09% |  5.85% )   ( 0.994012s |  0.10% |  5.92% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.533479s |  0.04% |  3.03% )   ( 0.482392s |  0.04% |  2.87% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.118154s |  0.10% |  6.35% )   ( 1.067833s |  0.10% |  6.36% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.449732s |  0.04% |  2.55% )   ( 0.412970s |  0.04% |  2.45% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.409657s |  0.12% |  8.00% )   ( 1.379074s |  0.14% |  8.21% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.352169s |  0.30% | 19.04% )   ( 3.314179s |  0.33% | 19.74% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.529774s |  0.04% |  3.01% )   ( 0.471997s |  0.04% |  2.81% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.505516s |  0.04% |  2.87% )   ( 0.453519s |  0.04% |  2.70% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003544s |  0.00% |  0.00% )   ( 0.004006s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003018s |  0.00% |  0.00% )   ( 0.003421s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003921s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009392s |  0.00% |  0.05% )   ( 0.009471s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p23\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p23_PID})
998.3.0:        ( 18.341170s |  1.65% |  3.38% )   ( 16.865048s |  1.72% |  3.51% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001077s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p24 p24_PID (&)
6.4.0:          ( 18.339938s |  1.65% | 99.99% )   ( 16.863774s |  1.72% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000177s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000171s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p24
12.5.0:         ( 0.042696s |  0.00% |  0.23% )   ( 0.042530s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.044972s |  0.00% |  0.24% )   ( 0.044829s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.040217s |  0.00% |  0.21% )   ( 0.040063s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.045531s |  0.00% |  0.24% )   ( 0.045372s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.045378s |  0.00% |  0.24% )   ( 0.045143s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004832s |  0.00% |  0.00% )   ( 0.005389s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.004366s |  0.00% |  0.00% )   ( 0.004901s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005151s |  0.00% |  0.00% )   ( 0.005714s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p24
23.5.0:         ( 0.112287s |  0.01% |  0.02% )   ( 0.005864s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004373s |  0.00% |  0.00% )   ( 0.004899s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004091s |  0.00% |  0.00% )   ( 0.004630s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.005813s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004018s |  0.00% |  0.00% )   ( 0.004532s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.030481s |  0.00% |  0.00% )   ( 0.030923s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004980s |  0.00% |  0.00% )   ( 0.005526s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p24
36.5.0:         ( 0.004127s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003931s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.907532s |  1.62% |  3.90% )   ( 16.532332s |  1.69% |  3.92% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003897s |  0.00% |  0.02% )   ( 0.004444s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.352673s |  0.12% |  7.55% )   ( 1.123410s |  0.11% |  6.79% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.144764s |  0.19% | 11.97% )   ( 1.925687s |  0.19% | 11.64% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.748714s |  0.15% |  9.76% )   ( 1.579906s |  0.16% |  9.55% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.084057s |  0.18% | 11.63% )   ( 1.853289s |  0.18% | 11.21% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.612609s |  0.14% |  9.00% )   ( 1.530240s |  0.15% |  9.25% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.122438s |  0.10% |  6.26% )   ( 1.014654s |  0.10% |  6.13% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.584011s |  0.05% |  3.26% )   ( 0.512251s |  0.05% |  3.09% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.113074s |  0.10% |  6.21% )   ( 1.052577s |  0.10% |  6.36% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.494652s |  0.04% |  2.76% )   ( 0.454857s |  0.04% |  2.75% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.461031s |  0.13% |  8.15% )   ( 1.379651s |  0.14% |  8.34% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.156208s |  0.28% | 17.62% )   ( 3.099043s |  0.31% | 18.74% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.524982s |  0.04% |  2.93% )   ( 0.514732s |  0.05% |  3.11% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.504422s |  0.04% |  2.81% )   ( 0.487591s |  0.04% |  2.94% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003999s |  0.00% |  0.00% )   ( 0.004528s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003806s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004582s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.007541s |  0.00% |  0.04% )   ( 0.007614s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p24\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p24_PID})
998.3.0:        ( 19.674063s |  1.77% |  3.63% )   ( 18.314455s |  1.87% |  3.81% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001093s |  0.00% |  0.00% )   ( 0.001116s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p25 p25_PID (&)
6.4.0:          ( 19.672817s |  1.77% | 99.99% )   ( 18.313166s |  1.87% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000172s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p25
12.5.0:         ( 0.044053s |  0.00% |  0.22% )   ( 0.043892s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.045118s |  0.00% |  0.22% )   ( 0.044870s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.047391s |  0.00% |  0.24% )   ( 0.047223s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.046540s |  0.00% |  0.23% )   ( 0.046311s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.047427s |  0.00% |  0.24% )   ( 0.047268s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004814s |  0.00% |  0.00% )   ( 0.005374s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004134s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005055s |  0.00% |  0.00% )   ( 0.005589s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p25
23.5.0:         ( 0.206274s |  0.01% |  0.03% )   ( 0.006489s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.006380s |  0.00% |  0.00% )   ( 0.005317s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005090s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004300s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035426s |  0.00% |  0.00% )   ( 0.032901s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.005454s |  0.00% |  0.00% )   ( 0.005194s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005134s |  0.00% |  0.00% )   ( 0.005681s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p25
36.5.0:         ( 0.004225s |  0.00% |  0.00% )   ( 0.004783s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 19.125218s |  1.73% |  3.73% )   ( 17.963450s |  1.83% |  3.77% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004093s |  0.00% |  0.02% )   ( 0.004640s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.443185s |  0.13% |  7.54% )   ( 1.264567s |  0.12% |  7.03% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.434006s |  0.22% | 12.72% )   ( 2.245079s |  0.22% | 12.49% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.830795s |  0.16% |  9.57% )   ( 1.687767s |  0.17% |  9.39% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.200350s |  0.19% | 11.50% )   ( 2.022071s |  0.20% | 11.25% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.687670s |  0.15% |  8.82% )   ( 1.629068s |  0.16% |  9.06% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.137714s |  0.10% |  5.94% )   ( 1.117607s |  0.11% |  6.22% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.576256s |  0.05% |  3.01% )   ( 0.552943s |  0.05% |  3.07% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.261370s |  0.11% |  6.59% )   ( 1.156627s |  0.11% |  6.43% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.483642s |  0.04% |  2.52% )   ( 0.474302s |  0.04% |  2.64% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.497181s |  0.13% |  7.82% )   ( 1.466130s |  0.14% |  8.16% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.428743s |  0.31% | 17.92% )   ( 3.279636s |  0.33% | 18.25% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.572954s |  0.05% |  2.99% )   ( 0.540687s |  0.05% |  3.00% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.567259s |  0.05% |  2.96% )   ( 0.522326s |  0.05% |  2.90% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004129s |  0.00% |  0.00% )   ( 0.004670s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004034s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004119s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009429s |  0.00% |  0.04% )   ( 0.009520s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p25\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p25_PID})
998.3.0:        ( 17.811403s |  1.61% |  3.28% )   ( 16.962719s |  1.73% |  3.53% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001099s |  0.00% |  0.00% )   ( 0.001120s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p26 p26_PID (&)
6.4.0:          ( 17.810130s |  1.61% | 99.99% )   ( 16.961406s |  1.73% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000208s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000207s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p26
12.5.0:         ( 0.040308s |  0.00% |  0.22% )   ( 0.040104s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.042726s |  0.00% |  0.23% )   ( 0.042576s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.042692s |  0.00% |  0.23% )   ( 0.042380s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.046832s |  0.00% |  0.26% )   ( 0.046661s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.045061s |  0.00% |  0.25% )   ( 0.044910s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004770s |  0.00% |  0.00% )   ( 0.005310s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ true
20.5.0:         ( 0.004179s |  0.00% |  0.00% )   ( 0.004706s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005144s |  0.00% |  0.00% )   ( 0.005713s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p26
23.5.0:         ( 0.122939s |  0.01% |  0.02% )   ( 0.006205s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004486s |  0.00% |  0.00% )   ( 0.005011s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004087s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.003793s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004129s |  0.00% |  0.00% )   ( 0.004646s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.034512s |  0.00% |  0.00% )   ( 0.031770s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.017799s |  0.00% |  0.00% )   ( 0.004727s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004645s |  0.00% |  0.00% )   ( 0.005182s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p26
36.5.0:         ( 0.003812s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003597s |  0.00% |  0.00% )   ( 0.004066s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.352111s |  1.56% |  3.89% )   ( 16.629990s |  1.70% |  3.92% )    	(25x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003698s |  0.00% |  0.02% )   ( 0.004210s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.207722s |  0.10% |  6.96% )   ( 1.091907s |  0.11% |  6.56% )    	(25x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.977969s |  0.17% | 11.39% )   ( 1.893876s |  0.19% | 11.38% )    	(25x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.606309s |  0.14% |  9.25% )   ( 1.578318s |  0.16% |  9.49% )    	(25x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.924635s |  0.17% | 11.09% )   ( 1.884131s |  0.19% | 11.32% )    	(25x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.597097s |  0.14% |  9.20% )   ( 1.534147s |  0.15% |  9.22% )    	(25x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.040492s |  0.09% |  5.99% )   ( 1.017086s |  0.10% |  6.11% )    	(25x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.530516s |  0.04% |  3.05% )   ( 0.525816s |  0.05% |  3.16% )    	(25x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.150677s |  0.10% |  6.63% )   ( 1.066841s |  0.10% |  6.41% )    	(25x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.533221s |  0.04% |  3.07% )   ( 0.457215s |  0.04% |  2.74% )    	(25x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.443799s |  0.13% |  8.32% )   ( 1.398334s |  0.14% |  8.40% )    	(25x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.255462s |  0.29% | 18.76% )   ( 3.151151s |  0.32% | 18.94% )    	(25x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.536015s |  0.04% |  3.08% )   ( 0.526157s |  0.05% |  3.16% )    	(25x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.544499s |  0.04% |  3.13% )   ( 0.500801s |  0.05% |  3.01% )    	(25x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004082s |  0.00% |  0.00% )   ( 0.004590s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004460s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009041s |  0.00% |  0.05% )   ( 0.009128s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p26\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000174s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p26_PID})
998.3.0:        ( 17.474275s |  1.58% |  3.22% )   ( 15.916093s |  1.62% |  3.31% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001143s |  0.00% |  0.00% )   ( 0.001169s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p27 p27_PID (&)
6.4.0:          ( 17.472955s |  1.58% | 99.99% )   ( 15.914726s |  1.62% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.vmg9yM"
8.5.0:          ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p27
12.5.0:         ( 0.044123s |  0.00% |  0.25% )   ( 0.040962s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.045247s |  0.00% |  0.25% )   ( 0.045059s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 436263 ${BASHPID}' INT
15.5.0:         ( 0.044908s |  0.00% |  0.25% )   ( 0.044752s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 436263 ${BASHPID}' TERM
16.5.0:         ( 0.045011s |  0.00% |  0.25% )   ( 0.044828s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 436263 ${BASHPID}' HUP
17.5.0:         ( 0.044863s |  0.00% |  0.25% )   ( 0.044333s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005308s |  0.00% |  0.00% )   ( 0.005946s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
20.5.0:         ( 0.004701s |  0.00% |  0.00% )   ( 0.005292s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000210s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.vmg9yM"/.nLines
20.5.2:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005854s |  0.00% |  0.00% )   ( 0.006491s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p27
23.5.0:         ( 0.142139s |  0.01% |  0.02% )   ( 0.006831s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.007108s |  0.00% |  0.00% )   ( 0.005550s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.quit ]]
28.5.0:         ( 0.004697s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.done ]]
28.5.1:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004800s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004567s |  0.00% |  0.00% )   ( 0.005128s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035779s |  0.00% |  0.00% )   ( 0.035240s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007850s |  0.00% |  0.00% )   ( 0.005528s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005425s |  0.00% |  0.00% )   ( 0.006038s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.vmg9yM"/.wait/p27
36.5.0:         ( 0.004420s |  0.00% |  0.00% )   ( 0.005003s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004368s |  0.00% |  0.00% )   ( 0.004985s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 16.985024s |  1.53% |  3.47% )   ( 15.566351s |  1.59% |  3.49% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004339s |  0.00% |  0.02% )   ( 0.004928s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.176775s |  0.10% |  6.92% )   ( 1.049016s |  0.10% |  6.73% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.868436s |  0.16% | 11.00% )   ( 1.744560s |  0.17% | 11.20% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.588269s |  0.14% |  9.35% )   ( 1.513796s |  0.15% |  9.72% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.884381s |  0.17% | 11.09% )   ( 1.743478s |  0.17% | 11.20% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.616909s |  0.14% |  9.51% )   ( 1.446204s |  0.14% |  9.29% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.004910s |  0.09% |  5.91% )   ( 0.947975s |  0.09% |  6.08% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.642283s |  0.05% |  3.78% )   ( 0.538899s |  0.05% |  3.46% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.105129s |  0.09% |  6.50% )   ( 0.968058s |  0.09% |  6.21% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.554707s |  0.05% |  3.26% )   ( 0.483513s |  0.04% |  3.10% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.486281s |  0.13% |  8.75% )   ( 1.324042s |  0.13% |  8.50% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.950560s |  0.26% | 17.37% )   ( 2.730329s |  0.27% | 17.53% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.553042s |  0.05% |  3.25% )   ( 0.540284s |  0.05% |  3.47% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.549003s |  0.04% |  3.23% )   ( 0.531269s |  0.05% |  3.41% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004548s |  0.00% |  0.00% )   ( 0.005115s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004824s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.007754s |  0.00% |  0.00% )   ( 0.005305s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009113s |  0.00% |  0.05% )   ( 0.009203s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.vmg9yM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.vmg9yM"/.run/p27\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p27_PID})
1000.3.0:       ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1001.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
1002.3.0:       ( 0.000137s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1004.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
1008.3.0:       ( 0.001367s |  0.00% |  0.00% )   ( 0.001382s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
1009.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
1053.3.0:       ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1054.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
1061.3.0:       ( 25.005888s |  2.26% |  4.61% )   ( 0.001728s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
1063.3.0:       ( 0.000301s |  0.00% |  0.00% )   ( 0.000343s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1066.3.0:       ( 0.000293s |  0.00% |  0.00% )   ( 0.000334s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
1067.2.0:       ( 0.000114s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │ wait
7.2.0:          ( 0.005755s |  0.00% |  0.00% )   ( 0.002545s |  0.00% |  0.00% )    	(1x)	└─ └─@TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.vmg9yM" 2>/dev/null

TOTAL RUN TIME: 1105.291753s
TOTAL CPU TIME: 977.665556s
