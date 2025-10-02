LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________
1.0.0:          ( 551.778874s | 50.07% )            ( 1062.374125s | 49.96% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000797s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
6.1.0:          ( 551.778077s | 50.07% | 99.99% )   ( 1062.373761s | 49.96% | 99.99% )    	(1x)	└─<< (SUBSHELL) >>

2.0.0:          ( 550.160707s | 49.92% )            ( 1063.983600s | 50.03% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.000698s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
6.1.0:          ( 550.160009s | 49.92% | 99.99% )   ( 1063.983217s | 50.03% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
6.2.0:          ( 0.034483s |  0.00% |  0.00% )   ( 0.034383s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
7.2.0:          ( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
8.2.0:          ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
9.2.0:          ( 0.000127s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
10.2.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
11.2.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
12.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
13.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
14.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
14.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
15.2.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
15.2.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
15.2.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
16.2.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
147.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
147.2.1:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
197.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
198.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
200.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
205.2.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
206.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
208.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
208.2.1:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
212.2.0:        ( 0.001180s |  0.00% |  0.00% )   ( 0.001057s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
212.2.1:        ( 0.004490s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
212.3.0:        ( 0.004490s |  0.00% |100.00% )   ( 0.004490s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
213.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
214.2.0:        ( 0.002102s |  0.00% |  0.00% )   ( 0.002191s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
215.2.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
216.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
216.2.1:        ( 0.023150s |  0.00% |  0.00% )   ( 0.000488s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1066.2.0:       ( 550.087742s | 49.91% | 99.98% )   ( 1063.933250s | 50.03% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
217.3.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
1066.3.0:       ( 0.001446s |  0.00% |  0.00% )   ( 0.001715s |  0.00% |  0.00% )    	(5x)	│  │  │ << (SUBSHELL) >>
1066.4.0:       ( 0.001446s |  0.00% |100.00% )   ( 0.001715s |  0.00% |100.00% )    	(5x)	│  │  │  └─:
1066.3.5:       ( 0.000313s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(1x)	│  │  │ @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 147598  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
220.3.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
221.3.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
222.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
223.3.0:        ( 0.000193s |  0.00% |  0.00% )   ( 0.008613s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
224.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
225.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
226.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
227.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
228.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
229.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
230.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
231.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
235.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
236.3.0:        ( 0.003977s |  0.00% |  0.00% )   ( 0.004025s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
236.3.1:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
236.4.0:        ( 0.000149s |  0.00% |100.00% )   ( 0.000166s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
236.3.2:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
238.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
241.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ $'runCmd=("${@//\'\r\'/}")
243.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
244.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
244.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
245.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
246.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
247.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
298.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
302.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
304.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
305.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
307.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
311.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
315.3.0:        ( 0.000873s |  0.00% |  0.00% )   ( 0.001012s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000069s |  0.00% |  7.90% )   ( 0.000082s |  0.00% |  8.10% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
6.4.0:          ( 0.000068s |  0.00% |  7.78% )   ( 0.000081s |  0.00% |  8.00% )    	(1x)	│  │  │  │ local +i -l nn
7.4.0:          ( 0.000074s |  0.00% |  8.47% )   ( 0.000080s |  0.00% |  7.90% )    	(1x)	│  │  │  │ local vOut
8.4.0:          ( 0.000067s |  0.00% |  7.67% )   ( 0.000079s |  0.00% |  7.80% )    	(1x)	│  │  │  │ local -n vOut="$1"
9.4.0:          ( 0.000068s |  0.00% |  7.78% )   ( 0.000080s |  0.00% |  7.90% )    	(1x)	│  │  │  │ shift 1
10.4.0:         ( 0.000078s |  0.00% |  8.93% )   ( 0.000090s |  0.00% |  8.89% )    	(1x)	│  │  │  │ local -g vOut
11.4.0:         ( 0.000065s |  0.00% |  7.44% )   ( 0.000077s |  0.00% |  7.60% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
11.4.1:         ( 0.000115s |  0.00% | 13.17% )   ( 0.000128s |  0.00% | 12.64% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
12.4.0:         ( 0.000067s |  0.00% |  7.67% )   ( 0.000078s |  0.00% |  7.70% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
14.4.0:         ( 0.000066s |  0.00% |  7.56% )   ( 0.000078s |  0.00% |  7.70% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
14.4.1:         ( 0.000069s |  0.00% |  7.90% )   ( 0.000080s |  0.00% |  7.90% )    	(1x)	│  │  │  │ continue
24.4.0:         ( 0.000067s |  0.00% |  7.67% )   ( 0.000079s |  0.00% |  7.80% )    	(1x)	│  │  │  └─local +n vOut
316.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
317.3.0:        ( 0.007990s |  0.00% |  0.00% )   ( 0.008064s |  0.00% |  0.00% )    	(1x)	│  │  │ $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
317.3.1:        ( 0.002097s |  0.00% |  0.00% )   ( 0.002189s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
317.4.0:        ( 0.000370s |  0.00% | 17.64% )   ( 0.000394s |  0.00% | 17.99% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
317.4.1:        ( 0.001727s |  0.00% | 82.35% )   ( 0.001795s |  0.00% | 82.00% )    	(1x)	│  │  │  └─nproc
318.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
320.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
322.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
322.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
324.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
328.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
329.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
330.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
331.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
332.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
333.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
335.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
337.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
338.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
342.3.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
342.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
342.3.2:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
343.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
344.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
345.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
349.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
351.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
351.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
352.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
353.3.0:        ( 0.000105s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
354.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
355.3.0:        ( 0.003294s |  0.00% |  0.00% )   ( 0.004262s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep --color=auto -qF 'coreutils'
356.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
363.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
364.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
365.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
383.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
392.3.0:        ( 0.003383s |  0.00% |  0.00% )   ( 0.003494s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
392.3.1:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
392.4.0:        ( 0.000088s |  0.00% |100.00% )   ( 0.000102s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
393.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
396.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
401.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
402.3.0:        ( 0.001119s |  0.00% |  0.00% )   ( 0.001208s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
403.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
404.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
405.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
432.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
433.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
437.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
438.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
441.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
452.3.0:        ( 0.000566s |  0.00% |  0.00% )   ( 0.000584s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
455.3.0:        ( 0.118176s |  0.01% |  0.02% )   ( 0.118026s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
455.4.0:        ( 0.000099s |  0.00% |  0.08% )   ( 0.000112s |  0.00% |  0.09% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
456.4.0:        ( 0.017970s |  0.00% | 15.20% )   ( 0.017922s |  0.00% | 15.18% )    	(1x)	│  │  │  │ trap - EXIT
457.4.0:        ( 0.020563s |  0.00% | 17.40% )   ( 0.020524s |  0.00% | 17.38% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
458.4.0:        ( 0.020358s |  0.00% | 17.22% )   ( 0.020323s |  0.00% | 17.21% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
459.4.0:        ( 0.020596s |  0.00% | 17.42% )   ( 0.020564s |  0.00% | 17.42% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
460.4.0:        ( 0.020250s |  0.00% | 17.13% )   ( 0.020217s |  0.00% | 17.12% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
461.4.0:        ( 0.000069s |  0.00% |  0.05% )   ( 0.000081s |  0.00% |  0.06% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
463.4.0:        ( 0.018037s |  0.00% | 15.26% )   ( 0.018012s |  0.00% | 15.26% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
472.4.0:        ( 0.000096s |  0.00% |  0.08% )   ( 0.000109s |  0.00% |  0.09% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
473.4.0:        ( 0.000068s |  0.00% |  0.05% )   ( 0.000079s |  0.00% |  0.06% )    	(1x)	│  │  │  │ evfd_signal
474.4.0:        ( 0.000070s |  0.00% |  0.05% )   ( 0.000083s |  0.00% |  0.07% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
477.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
479.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
484.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
486.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
487.3.0:        ( 0.000439s |  0.00% |  0.00% )   ( 0.000462s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
490.3.0:        ( 4.042070s |  0.36% |  0.73% )   ( 1.868060s |  0.08% |  0.17% )    	(1x)	│  │  │ << (SUBSHELL) >>
490.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
491.4.0:        ( 0.021262s |  0.00% |  0.52% )   ( 0.021219s |  0.00% |  1.13% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
492.4.0:        ( 0.020570s |  0.00% |  0.50% )   ( 0.020522s |  0.00% |  1.09% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
493.4.0:        ( 0.020456s |  0.00% |  0.50% )   ( 0.020407s |  0.00% |  1.09% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
494.4.0:        ( 0.020554s |  0.00% |  0.50% )   ( 0.020498s |  0.00% |  1.09% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
495.4.0:        ( 0.020105s |  0.00% |  0.49% )   ( 0.020063s |  0.00% |  1.07% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
496.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
497.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
498.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
500.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
501.4.0:        ( 0.092842s |  0.00% |  0.00% )   ( 0.106105s |  0.00% |  0.00% )    	(671x)	│  │  │  │ ${fallocateFlag}
502.4.0:        ( 2.478971s |  0.22% |  0.09% )   ( 0.124035s |  0.00% |  0.00% )    	(670x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
502.4.1:        ( 0.000798s |  0.00% |  0.00% )   ( 0.000894s |  0.00% |  0.00% )    	(5x)	│  │  │  │ continue
503.4.0:        ( 0.091033s |  0.00% |  0.00% )   ( 0.104118s |  0.00% |  0.00% )    	(665x)	│  │  │  │ case ${REPLY} in
517.4.0:        ( 0.090839s |  0.00% |  0.00% )   ( 0.104238s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nLinesAutoFlag}
518.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
521.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
526.4.0:        ( 0.094529s |  0.00% |  0.00% )   ( 0.103982s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${lseekPosFlag}
527.4.0:        ( 0.094315s |  0.00% |  0.00% )   ( 0.107090s |  0.00% |  0.00% )    	(665x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
528.4.0:        ( 0.093923s |  0.00% |  0.00% )   ( 0.107259s |  0.00% |  0.00% )    	(665x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
534.4.0:        ( 0.089538s |  0.00% |  0.00% )   ( 0.102793s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nLinesAutoFlag}
535.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
536.4.0:        ( 0.090248s |  0.00% |  0.00% )   ( 0.103532s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
537.4.0:        ( 0.089482s |  0.00% |  0.00% )   ( 0.102660s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${nLinesAutoFlag}
538.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
539.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
540.4.0:        ( 0.006228s |  0.00% |  0.15% )   ( 0.006675s |  0.00% |  0.35% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
540.4.1:        ( 0.002955s |  0.00% |  0.07% )   ( 0.003315s |  0.00% |  0.17% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
540.5.0:        ( 0.002955s |  0.00% |100.00% )   ( 0.003315s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
541.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
542.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
544.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
545.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
546.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
547.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
548.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
550.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
551.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
552.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
555.4.0:        ( 0.089520s |  0.00% |  0.00% )   ( 0.102882s |  0.00% |  0.00% )    	(665x)	│  │  │  │ ${fallocateFlag}
556.4.0:        ( 0.088239s |  0.00% |  0.00% )   ( 0.101443s |  0.00% |  0.00% )    	(665x)	│  │  │  │ case ${nWait} in
567.4.0:        ( 0.087199s |  0.00% |  0.00% )   ( 0.100012s |  0.00% |  0.00% )    	(644x)	│  │  │  │ ((nWait--))
571.4.0:        ( 0.094801s |  0.00% |  0.00% )   ( 0.107586s |  0.00% |  0.00% )    	(665x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
517.4.1:        ( 0.090846s |  0.00% |  0.00% )   ( 0.104190s |  0.00% |  0.00% )    	(664x)	│  │  │  │ ${nSpawnFlag}
534.4.1:        ( 0.090232s |  0.00% |  0.00% )   ( 0.103462s |  0.00% |  0.00% )    	(664x)	│  │  │  │ ${nSpawnFlag}
558.4.0:        ( 0.002842s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
559.4.0:        ( 0.002728s |  0.00% |  0.00% )   ( 0.003125s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
560.4.0:        ( 0.058783s |  0.00% |  0.06% )   ( 0.042701s |  0.00% |  0.10% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
561.4.0:        ( 0.003302s |  0.00% |  0.00% )   ( 0.003776s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
562.4.0:        ( 0.003072s |  0.00% |  0.00% )   ( 0.003510s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
564.4.0:        ( 0.003115s |  0.00% |  0.00% )   ( 0.003545s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
572.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
573.4.0:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
574.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
501.4.1:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
501.4.2:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
7.4.0:          ( 0.006572s |  0.00% |  0.16% )   ( 0.006649s |  0.00% |  0.35% )    	(1x)	│  │  │  └─@TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/pAuto
580.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
581.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
583.3.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
962.3.0:        ( 0.061859s |  0.00% |  0.01% )   ( 0.061973s |  0.00% |  0.00% )    	(1x)	│  │  │ $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
979.3.0:        ( 0.005440s |  0.00% |  0.00% )   ( 0.006290s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
979.4.0:        ( 0.000192s |  0.00% |  3.52% )   ( 0.000214s |  0.00% |  3.40% )    	(1x)	│  │  │  ├─$'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
980.4.0:        ( 0.000137s |  0.00% |  2.51% )   ( 0.000157s |  0.00% |  2.49% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
980.4.1:        ( 0.000153s |  0.00% |  2.81% )   ( 0.000173s |  0.00% |  2.75% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
988.4.0:        ( 0.000422s |  0.00% |  7.75% )   ( 0.000441s |  0.00% |  7.01% )    	(1x)	│  │  │  │ $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
989.4.0:        ( 0.000130s |  0.00% |  2.38% )   ( 0.000149s |  0.00% |  2.36% )    	(1x)	│  │  │  │ ${readBytesFlag}
1061.4.0:       ( 0.000126s |  0.00% |  2.31% )   ( 0.000147s |  0.00% |  2.33% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
1064.4.0:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000081s |  0.00% |  1.28% )    	(1x)	│  │  │  │ echo "{"
1065.4.0:       ( 0.000068s |  0.00% |  1.25% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${nOrderFlag}
1066.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1066.4.1:       ( 0.000074s |  0.00% |  1.36% )   ( 0.000086s |  0.00% |  1.36% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
1067.4.0:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000081s |  0.00% |  1.28% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
1068.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${lseekFlag}
1068.4.1:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000082s |  0.00% |  1.30% )    	(1x)	│  │  │  │ printf '%s ' '-t'
1069.4.0:       ( 0.000072s |  0.00% |  1.32% )   ( 0.000083s |  0.00% |  1.31% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
1070.4.0:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1070.4.1:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.30% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
1071.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1071.4.1:       ( 0.000068s |  0.00% |  1.25% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1071.4.2:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000081s |  0.00% |  1.28% )    	(1x)	│  │  │  │ printf '%s ' '-t'
1073.4.0:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000082s |  0.00% |  1.30% )    	(1x)	│  │  │  │ $'echo """${delimiterReadStr} A\n    }"""
1074.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1074.4.1:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1074.4.2:       ( 0.000099s |  0.00% |  1.81% )   ( 0.000111s |  0.00% |  1.76% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
1131.4.0:       ( 0.000072s |  0.00% |  1.32% )   ( 0.000081s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1131.4.1:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1131.4.2:       ( 0.000076s |  0.00% |  1.39% )   ( 0.000087s |  0.00% |  1.38% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
1132.4.0:       ( 0.000074s |  0.00% |  1.36% )   ( 0.000085s |  0.00% |  1.35% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
1145.4.0:       ( 0.000087s |  0.00% |  1.59% )   ( 0.000115s |  0.00% |  1.82% )    	(1x)	│  │  │  │ $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1146.4.0:       ( 0.000069s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${lseekPosFlag}
1149.4.0:       ( 0.000078s |  0.00% |  1.43% )   ( 0.000088s |  0.00% |  1.39% )    	(1x)	│  │  │  │ $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1160.4.0:       ( 0.000080s |  0.00% |  1.47% )   ( 0.000092s |  0.00% |  1.46% )    	(1x)	│  │  │  │ $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1161.4.0:       ( 0.000068s |  0.00% |  1.25% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
1161.4.1:       ( 0.000072s |  0.00% |  1.32% )   ( 0.000099s |  0.00% |  1.57% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
1162.4.0:       ( 0.000073s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nOrderFlag}
1163.4.0:       ( 0.000073s |  0.00% |  1.34% )   ( 0.000083s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nSpawnFlag}
1168.4.0:       ( 0.000079s |  0.00% |  1.45% )   ( 0.000107s |  0.00% |  1.70% )    	(1x)	│  │  │  │ $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1169.4.0:       ( 0.000068s |  0.00% |  1.25% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${nOrderFlag}
1173.4.0:       ( 0.000082s |  0.00% |  1.50% )   ( 0.000094s |  0.00% |  1.49% )    	(1x)	│  │  │  │ $'echo """fi\n        continue\n    }"""
1174.4.0:       ( 0.000079s |  0.00% |  1.45% )   ( 0.000089s |  0.00% |  1.41% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
1174.4.1:       ( 0.000079s |  0.00% |  1.45% )   ( 0.000092s |  0.00% |  1.46% )    	(1x)	│  │  │  │ $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1179.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${fallocateFlag}
1179.4.1:       ( 0.000076s |  0.00% |  1.39% )   ( 0.000087s |  0.00% |  1.38% )    	(1x)	│  │  │  │ printf '%s' ' || '
1180.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${fallocateFlag}
1180.4.1:       ( 0.000081s |  0.00% |  1.48% )   ( 0.000092s |  0.00% |  1.46% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
1181.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${pipeReadFlag}
1181.4.1:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000082s |  0.00% |  1.30% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
1189.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.20% )    	(1x)	│  │  │  │ ${subshellRunFlag}
1189.4.1:       ( 0.000072s |  0.00% |  1.32% )   ( 0.000100s |  0.00% |  1.58% )    	(1x)	│  │  │  │ echo '{'
1190.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${exportOrderFlag}
1190.4.1:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000081s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nOrderFlag}
1191.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${exportOrderFlag}
1192.4.0:       ( 0.000091s |  0.00% |  1.67% )   ( 0.000102s |  0.00% |  1.62% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
1193.4.0:       ( 0.000068s |  0.00% |  1.25% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${readBytesFlag}
1200.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.20% )    	(1x)	│  │  │  │ ${stdinRunFlag}
1203.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.20% )    	(1x)	│  │  │  │ ${noFuncFlag}
1206.4.0:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${substituteStringFlag}
1207.4.0:       ( 0.000084s |  0.00% |  1.54% )   ( 0.000096s |  0.00% |  1.52% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1212.4.0:       ( 0.000073s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.33% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
1224.4.0:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000083s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${readBytesFlag}
1225.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │ ${subshellRunFlag}
1225.4.1:       ( 0.000078s |  0.00% |  1.43% )   ( 0.000085s |  0.00% |  1.35% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
1226.4.0:       ( 0.000073s |  0.00% |  1.34% )   ( 0.000085s |  0.00% |  1.35% )    	(1x)	│  │  │  │ echo "${outStr}"
1227.4.0:       ( 0.000072s |  0.00% |  1.32% )   ( 0.000084s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nOrderFlag}
1228.4.0:       ( 0.000069s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${nSpawnFlag}
1233.4.0:       ( 0.000092s |  0.00% |  1.69% )   ( 0.000104s |  0.00% |  1.65% )    	(1x)	│  │  │  └─$'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
963.3.0:        ( 0.000201s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
968.3.0:        ( 0.000205s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
970.3.0:        ( 0.000202s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │ $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
971.3.0:        ( 0.021804s |  0.00% |  0.00% )   ( 0.021765s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
975.3.0:        ( 0.020479s |  0.00% |  0.00% )   ( 0.020447s |  0.00% |  0.00% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
979.3.0:        ( 0.020527s |  0.00% |  0.00% )   ( 0.148375s |  0.00% |  0.01% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
983.3.0:        ( 0.020114s |  0.00% |  0.00% )   ( 0.020068s |  0.00% |  0.00% )    	(1x)	│  │  │ $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
984.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
985.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
989.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
993.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
994.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
995.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
995.3.1:        ( 0.002886s |  0.00% |  0.00% )   ( 0.003311s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
997.3.0:        ( 0.002932s |  0.00% |  0.00% )   ( 0.003359s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
998.3.0:        ( 17.927768s |  1.62% |  3.25% )   ( 16.980909s |  0.79% |  1.59% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000609s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p0 p0_PID (&)
6.4.0:          ( 17.927076s |  1.62% | 99.99% )   ( 16.980190s |  0.79% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000136s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p0
12.5.0:         ( 0.021572s |  0.00% |  0.12% )   ( 0.021532s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020418s |  0.00% |  0.11% )   ( 0.020382s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020496s |  0.00% |  0.11% )   ( 0.020464s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020878s |  0.00% |  0.11% )   ( 0.020842s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020889s |  0.00% |  0.11% )   ( 0.020850s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005226s |  0.00% |  0.00% )   ( 0.005874s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ true
20.5.0:         ( 0.004801s |  0.00% |  0.00% )   ( 0.005433s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000235s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005694s |  0.00% |  0.00% )   ( 0.006313s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p0
23.5.0:         ( 0.203714s |  0.01% |  0.03% )   ( 0.007063s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004802s |  0.00% |  0.00% )   ( 0.005428s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004538s |  0.00% |  0.00% )   ( 0.005165s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004336s |  0.00% |  0.00% )   ( 0.004940s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004554s |  0.00% |  0.00% )   ( 0.005153s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038552s |  0.00% |  0.00% )   ( 0.036068s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007876s |  0.00% |  0.00% )   ( 0.005510s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005468s |  0.00% |  0.00% )   ( 0.006109s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p0
36.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004420s |  0.00% |  0.00% )   ( 0.005038s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
61.5.0:         ( 17.501001s |  1.58% |  3.25% )   ( 16.750551s |  0.78% |  3.28% )    	(30x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007366s |  0.00% |  0.04% )   ( 0.004946s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.212385s |  0.11% |  6.92% )   ( 1.151558s |  0.05% |  6.87% )    	(30x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.943966s |  0.17% | 11.10% )   ( 1.917400s |  0.09% | 11.44% )    	(30x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.694078s |  0.15% |  9.67% )   ( 1.639254s |  0.07% |  9.78% )    	(30x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.993151s |  0.18% | 11.38% )   ( 1.918993s |  0.09% | 11.45% )    	(30x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.603975s |  0.14% |  9.16% )   ( 1.575526s |  0.07% |  9.40% )    	(30x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.114080s |  0.10% |  6.36% )   ( 1.041502s |  0.04% |  6.21% )    	(30x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.614670s |  0.05% |  3.51% )   ( 0.565407s |  0.02% |  3.37% )    	(30x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.146841s |  0.10% |  6.55% )   ( 1.064159s |  0.05% |  6.35% )    	(30x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.528718s |  0.04% |  3.02% )   ( 0.510940s |  0.02% |  3.05% )    	(30x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.492687s |  0.13% |  8.52% )   ( 1.430987s |  0.06% |  8.54% )    	(30x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.879484s |  0.26% | 16.45% )   ( 2.797082s |  0.13% | 16.69% )    	(30x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.635606s |  0.05% |  3.63% )   ( 0.577808s |  0.02% |  3.44% )    	(30x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.633994s |  0.05% |  3.62% )   ( 0.554989s |  0.02% |  3.31% )    	(30x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
58.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.004591s |  0.00% |  0.00% )   ( 0.005189s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004319s |  0.00% |  0.00% )   ( 0.004901s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.007931s |  0.00% |  0.00% )   ( 0.005503s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.004945s |  0.00% |  0.02% )   ( 0.005020s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p0\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p0_PID})
995.3.0:        ( 0.002730s |  0.00% |  0.00% )   ( 0.003141s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
998.3.0:        ( 21.316534s |  1.93% |  3.87% )   ( 20.909202s |  0.98% |  1.96% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000569s |  0.00% |  0.00% )   ( 0.000587s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p1 p1_PID (&)
6.4.0:          ( 21.315882s |  1.93% | 99.99% )   ( 20.908519s |  0.98% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000346s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p1
12.5.0:         ( 0.020320s |  0.00% |  0.09% )   ( 0.020287s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020446s |  0.00% |  0.09% )   ( 0.020413s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020677s |  0.00% |  0.09% )   ( 0.020641s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020923s |  0.00% |  0.09% )   ( 0.020887s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020864s |  0.00% |  0.09% )   ( 0.020828s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.001837s |  0.00% |  0.00% )   ( 0.002075s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ true
20.5.0:         ( 0.001683s |  0.00% |  0.00% )   ( 0.001914s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.002072s |  0.00% |  0.00% )   ( 0.002319s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p1
23.5.0:         ( 0.047462s |  0.00% |  0.01% )   ( 0.002372s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.001778s |  0.00% |  0.00% )   ( 0.002031s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.001656s |  0.00% |  0.00% )   ( 0.001880s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.001558s |  0.00% |  0.00% )   ( 0.001783s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.001614s |  0.00% |  0.00% )   ( 0.001824s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.012974s |  0.00% |  0.00% )   ( 0.013175s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.001755s |  0.00% |  0.00% )   ( 0.001905s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.001953s |  0.00% |  0.00% )   ( 0.002192s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p1
36.5.0:         ( 0.001599s |  0.00% |  0.00% )   ( 0.001829s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.001625s |  0.00% |  0.00% )   ( 0.001853s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
61.5.0:         ( 21.122104s |  1.91% |  8.25% )   ( 20.756418s |  0.97% |  8.27% )    	(12x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001604s |  0.00% |  0.00% )   ( 0.001829s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.492279s |  0.13% |  7.06% )   ( 1.422176s |  0.06% |  6.85% )    	(12x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.849490s |  0.25% | 13.49% )   ( 2.803207s |  0.13% | 13.50% )    	(12x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.926617s |  0.17% |  9.12% )   ( 1.917159s |  0.09% |  9.23% )    	(12x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.627342s |  0.23% | 12.43% )   ( 2.599038s |  0.12% | 12.52% )    	(12x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.896822s |  0.17% |  8.98% )   ( 1.891004s |  0.08% |  9.11% )    	(12x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.203206s |  0.10% |  5.69% )   ( 1.198876s |  0.05% |  5.77% )    	(12x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.378534s |  0.03% |  1.79% )   ( 0.357033s |  0.01% |  1.72% )    	(12x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.423864s |  0.12% |  6.74% )   ( 1.382604s |  0.06% |  6.66% )    	(12x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.318586s |  0.02% |  1.50% )   ( 0.295004s |  0.01% |  1.42% )    	(12x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.679990s |  0.15% |  7.95% )   ( 1.630492s |  0.07% |  7.85% )    	(12x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.658488s |  0.42% | 22.05% )   ( 4.633381s |  0.21% | 22.32% )    	(12x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.345506s |  0.03% |  1.63% )   ( 0.333888s |  0.01% |  1.60% )    	(12x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.319776s |  0.02% |  1.51% )   ( 0.290727s |  0.01% |  1.40% )    	(12x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
58.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.001434s |  0.00% |  0.00% )   ( 0.001641s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.001404s |  0.00% |  0.00% )   ( 0.001613s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.001507s |  0.00% |  0.00% )   ( 0.001693s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005044s |  0.00% |  0.02% )   ( 0.005125s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p1\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p1_PID})
998.3.0:        ( 20.320454s |  1.84% |  3.69% )   ( 19.527989s |  0.91% |  1.83% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000639s |  0.00% |  0.00% )   ( 0.000653s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p2 p2_PID (&)
6.4.0:          ( 20.319730s |  1.84% | 99.99% )   ( 19.527239s |  0.91% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p2
12.5.0:         ( 0.020473s |  0.00% |  0.10% )   ( 0.020434s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020650s |  0.00% |  0.10% )   ( 0.020610s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020893s |  0.00% |  0.10% )   ( 0.020849s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020967s |  0.00% |  0.10% )   ( 0.020925s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020924s |  0.00% |  0.10% )   ( 0.020882s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003861s |  0.00% |  0.00% )   ( 0.004345s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
20.5.0:         ( 0.003443s |  0.00% |  0.00% )   ( 0.003917s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000272s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004778s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p2
23.5.0:         ( 0.145820s |  0.01% |  0.02% )   ( 0.005294s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003740s |  0.00% |  0.00% )   ( 0.004223s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003558s |  0.00% |  0.00% )   ( 0.004036s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003243s |  0.00% |  0.00% )   ( 0.003682s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003526s |  0.00% |  0.00% )   ( 0.003999s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.031388s |  0.00% |  0.00% )   ( 0.028779s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004972s |  0.00% |  0.00% )   ( 0.004213s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004218s |  0.00% |  0.00% )   ( 0.004712s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p2
36.5.0:         ( 0.006186s |  0.00% |  0.00% )   ( 0.003790s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003290s |  0.00% |  0.00% )   ( 0.003747s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
61.5.0:         ( 19.977737s |  1.81% |  4.27% )   ( 19.325836s |  0.90% |  4.30% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003473s |  0.00% |  0.01% )   ( 0.003952s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.376302s |  0.12% |  6.88% )   ( 1.369982s |  0.06% |  7.08% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.598251s |  0.23% | 13.00% )   ( 2.554657s |  0.12% | 13.21% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.126309s |  0.19% | 10.64% )   ( 1.991913s |  0.09% | 10.30% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.598041s |  0.23% | 13.00% )   ( 2.552363s |  0.12% | 13.20% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.985286s |  0.18% |  9.93% )   ( 1.963018s |  0.09% | 10.15% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.311861s |  0.11% |  6.56% )   ( 1.232439s |  0.05% |  6.37% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.555649s |  0.05% |  2.78% )   ( 0.498865s |  0.02% |  2.58% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.373145s |  0.12% |  6.87% )   ( 1.296188s |  0.06% |  6.70% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.519922s |  0.04% |  2.60% )   ( 0.430992s |  0.02% |  2.23% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.417983s |  0.12% |  7.09% )   ( 1.370560s |  0.06% |  7.09% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.143354s |  0.28% | 15.73% )   ( 3.126744s |  0.14% | 16.17% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.502052s |  0.04% |  2.51% )   ( 0.481385s |  0.02% |  2.49% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.466109s |  0.04% |  2.33% )   ( 0.452778s |  0.02% |  2.34% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
58.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
20.5.1:         ( 0.003310s |  0.00% |  0.00% )   ( 0.003761s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003534s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003488s |  0.00% |  0.00% )   ( 0.003925s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005154s |  0.00% |  0.02% )   ( 0.005228s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p2\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p2_PID})
998.3.0:        ( 17.930423s |  1.62% |  3.25% )   ( 17.334599s |  0.81% |  1.62% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000649s |  0.00% |  0.00% )   ( 0.000663s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p3 p3_PID (&)
6.4.0:          ( 17.929690s |  1.62% | 99.99% )   ( 17.333839s |  0.81% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000321s |  0.00% |  0.00% )   ( 0.000353s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000099s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p3
12.5.0:         ( 0.020546s |  0.00% |  0.11% )   ( 0.020511s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020841s |  0.00% |  0.11% )   ( 0.020807s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020929s |  0.00% |  0.11% )   ( 0.020889s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020960s |  0.00% |  0.11% )   ( 0.020924s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.021034s |  0.00% |  0.11% )   ( 0.020993s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003929s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
20.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003876s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004300s |  0.00% |  0.00% )   ( 0.004768s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p3
23.5.0:         ( 0.094924s |  0.00% |  0.02% )   ( 0.004857s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003515s |  0.00% |  0.00% )   ( 0.004004s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003301s |  0.00% |  0.00% )   ( 0.003764s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003082s |  0.00% |  0.00% )   ( 0.003520s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003233s |  0.00% |  0.00% )   ( 0.003680s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.025632s |  0.00% |  0.00% )   ( 0.026001s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.003307s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p3
36.5.0:         ( 0.003086s |  0.00% |  0.00% )   ( 0.003533s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003187s |  0.00% |  0.00% )   ( 0.003609s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.640047s |  1.60% |  4.47% )   ( 17.133549s |  0.80% |  4.49% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003335s |  0.00% |  0.01% )   ( 0.003804s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.112779s |  0.10% |  6.30% )   ( 1.084424s |  0.05% |  6.32% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.095752s |  0.19% | 11.88% )   ( 2.035495s |  0.09% | 11.88% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.707792s |  0.15% |  9.68% )   ( 1.652123s |  0.07% |  9.64% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.074823s |  0.18% | 11.76% )   ( 2.033131s |  0.09% | 11.86% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.637665s |  0.14% |  9.28% )   ( 1.589998s |  0.07% |  9.28% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.060309s |  0.09% |  6.01% )   ( 1.008679s |  0.04% |  5.88% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.496405s |  0.04% |  2.81% )   ( 0.482509s |  0.02% |  2.81% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.129867s |  0.10% |  6.40% )   ( 1.104707s |  0.05% |  6.44% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.440386s |  0.03% |  2.49% )   ( 0.407839s |  0.01% |  2.38% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.526057s |  0.13% |  8.65% )   ( 1.431478s |  0.06% |  8.35% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.409732s |  0.30% | 19.32% )   ( 3.387163s |  0.15% | 19.76% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.483296s |  0.04% |  2.73% )   ( 0.473402s |  0.02% |  2.76% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.461849s |  0.04% |  2.61% )   ( 0.438797s |  0.02% |  2.56% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003871s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.006123s |  0.00% |  0.00% )   ( 0.003548s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003654s |  0.00% |  0.00% )   ( 0.003991s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.012161s |  0.00% |  0.06% )   ( 0.009338s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p3\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p3_PID})
998.3.0:        ( 17.738431s |  1.60% |  3.22% )   ( 16.773360s |  0.78% |  1.57% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000643s |  0.00% |  0.00% )   ( 0.000666s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p4 p4_PID (&)
6.4.0:          ( 17.737703s |  1.60% | 99.99% )   ( 16.772597s |  0.78% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p4
12.5.0:         ( 0.020739s |  0.00% |  0.11% )   ( 0.020704s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020936s |  0.00% |  0.11% )   ( 0.020898s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020927s |  0.00% |  0.11% )   ( 0.020877s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020931s |  0.00% |  0.11% )   ( 0.020893s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020939s |  0.00% |  0.11% )   ( 0.020900s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004698s |  0.00% |  0.00% )   ( 0.005280s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
20.5.0:         ( 0.004022s |  0.00% |  0.00% )   ( 0.004583s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005060s |  0.00% |  0.00% )   ( 0.005646s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p4
23.5.0:         ( 0.205911s |  0.01% |  0.04% )   ( 0.006270s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004379s |  0.00% |  0.00% )   ( 0.004963s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004131s |  0.00% |  0.00% )   ( 0.004695s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003867s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004063s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.033938s |  0.00% |  0.00% )   ( 0.034377s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004732s |  0.00% |  0.00% )   ( 0.005271s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p4
36.5.0:         ( 0.003806s |  0.00% |  0.00% )   ( 0.004332s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003726s |  0.00% |  0.00% )   ( 0.004246s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.328742s |  1.57% |  3.61% )   ( 16.555075s |  0.77% |  3.65% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003924s |  0.00% |  0.02% )   ( 0.004466s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.152927s |  0.10% |  6.65% )   ( 1.092629s |  0.05% |  6.59% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.950499s |  0.17% | 11.25% )   ( 1.893285s |  0.08% | 11.43% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.653095s |  0.15% |  9.53% )   ( 1.602302s |  0.07% |  9.67% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.947025s |  0.17% | 11.23% )   ( 1.853649s |  0.08% | 11.19% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.594475s |  0.14% |  9.20% )   ( 1.533649s |  0.07% |  9.26% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.054515s |  0.09% |  6.08% )   ( 1.019770s |  0.04% |  6.15% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.552756s |  0.05% |  3.18% )   ( 0.538750s |  0.02% |  3.25% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.078113s |  0.09% |  6.22% )   ( 1.045580s |  0.04% |  6.31% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.531600s |  0.04% |  3.06% )   ( 0.482950s |  0.02% |  2.91% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.497527s |  0.13% |  8.64% )   ( 1.400809s |  0.06% |  8.46% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.159603s |  0.28% | 18.23% )   ( 3.007756s |  0.14% | 18.16% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.599342s |  0.05% |  3.45% )   ( 0.547320s |  0.02% |  3.30% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.553341s |  0.05% |  3.19% )   ( 0.532160s |  0.02% |  3.21% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003969s |  0.00% |  0.00% )   ( 0.004510s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003733s |  0.00% |  0.00% )   ( 0.004269s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004237s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005293s |  0.00% |  0.02% )   ( 0.005391s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p4\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p4_PID})
998.3.0:        ( 18.313692s |  1.66% |  3.32% )   ( 17.241851s |  0.81% |  1.62% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000647s |  0.00% |  0.00% )   ( 0.000660s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p5 p5_PID (&)
6.4.0:          ( 18.312956s |  1.66% | 99.99% )   ( 17.241089s |  0.81% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000334s |  0.00% |  0.00% )   ( 0.000377s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000372s |  0.00% |  0.00% )   ( 0.000409s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p5
12.5.0:         ( 0.021111s |  0.00% |  0.11% )   ( 0.021011s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021100s |  0.00% |  0.11% )   ( 0.020936s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.021017s |  0.00% |  0.11% )   ( 0.020923s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.021092s |  0.00% |  0.11% )   ( 0.020950s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.021037s |  0.00% |  0.11% )   ( 0.020914s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003111s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ true
20.5.0:         ( 0.002797s |  0.00% |  0.00% )   ( 0.003195s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003349s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p5
23.5.0:         ( 0.083517s |  0.00% |  0.02% )   ( 0.003546s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.002816s |  0.00% |  0.00% )   ( 0.003171s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.002651s |  0.00% |  0.00% )   ( 0.003016s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.002529s |  0.00% |  0.00% )   ( 0.002882s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.002628s |  0.00% |  0.00% )   ( 0.002968s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.020670s |  0.00% |  0.00% )   ( 0.020977s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.002717s |  0.00% |  0.00% )   ( 0.003062s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.002919s |  0.00% |  0.00% )   ( 0.003275s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p5
36.5.0:         ( 0.005191s |  0.00% |  0.00% )   ( 0.002809s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.002486s |  0.00% |  0.00% )   ( 0.002845s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.051250s |  1.63% |  5.79% )   ( 17.057521s |  0.80% |  5.81% )    	(17x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002456s |  0.00% |  0.01% )   ( 0.002786s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.152191s |  0.10% |  6.38% )   ( 1.099422s |  0.05% |  6.44% )    	(17x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.098026s |  0.19% | 11.62% )   ( 2.069969s |  0.09% | 12.13% )    	(17x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.642905s |  0.14% |  9.10% )   ( 1.610054s |  0.07% |  9.43% )    	(17x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.194586s |  0.19% | 12.15% )   ( 2.096608s |  0.09% | 12.29% )    	(17x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.712593s |  0.15% |  9.48% )   ( 1.565410s |  0.07% |  9.17% )    	(17x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.075174s |  0.09% |  5.95% )   ( 1.007974s |  0.04% |  5.90% )    	(17x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.502482s |  0.04% |  2.78% )   ( 0.414269s |  0.01% |  2.42% )    	(17x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.289105s |  0.11% |  7.14% )   ( 1.105449s |  0.05% |  6.48% )    	(17x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.408885s |  0.03% |  2.26% )   ( 0.348655s |  0.01% |  2.04% )    	(17x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.484319s |  0.13% |  8.22% )   ( 1.395415s |  0.06% |  8.18% )    	(17x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.693682s |  0.33% | 20.46% )   ( 3.588982s |  0.16% | 21.04% )    	(17x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.416033s |  0.03% |  2.30% )   ( 0.392909s |  0.01% |  2.30% )    	(17x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.378813s |  0.03% |  2.09% )   ( 0.359619s |  0.01% |  2.10% )    	(17x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.002589s |  0.00% |  0.00% )   ( 0.002954s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002402s |  0.00% |  0.00% )   ( 0.002746s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.002628s |  0.00% |  0.00% )   ( 0.002956s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009715s |  0.00% |  0.05% )   ( 0.009360s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p5\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p5_PID})
998.3.0:        ( 17.434075s |  1.58% |  3.16% )   ( 16.499476s |  0.77% |  1.55% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000665s |  0.00% |  0.00% )   ( 0.000681s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p6 p6_PID (&)
6.4.0:          ( 17.433324s |  1.58% | 99.99% )   ( 16.498696s |  0.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000281s |  0.00% |  0.00% )   ( 0.000294s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p6
12.5.0:         ( 0.021022s |  0.00% |  0.12% )   ( 0.020983s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020996s |  0.00% |  0.12% )   ( 0.020962s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.021595s |  0.00% |  0.12% )   ( 0.021552s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020969s |  0.00% |  0.12% )   ( 0.020935s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020922s |  0.00% |  0.12% )   ( 0.020880s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005241s |  0.00% |  0.00% )   ( 0.005866s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ true
20.5.0:         ( 0.004559s |  0.00% |  0.00% )   ( 0.005141s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005396s |  0.00% |  0.00% )   ( 0.005985s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p6
23.5.0:         ( 0.296321s |  0.02% |  0.05% )   ( 0.007544s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004542s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004432s |  0.00% |  0.00% )   ( 0.005003s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004055s |  0.00% |  0.00% )   ( 0.004617s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.005028s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.039098s |  0.00% |  0.00% )   ( 0.035778s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.005982s |  0.00% |  0.00% )   ( 0.005217s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005205s |  0.00% |  0.00% )   ( 0.005815s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p6
36.5.0:         ( 0.006073s |  0.00% |  0.00% )   ( 0.004784s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004715s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 16.919135s |  1.53% |  3.34% )   ( 16.271619s |  0.76% |  3.40% )    	(29x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004151s |  0.00% |  0.02% )   ( 0.004741s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.115647s |  0.10% |  6.59% )   ( 1.075542s |  0.05% |  6.60% )    	(29x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.845318s |  0.16% | 10.90% )   ( 1.816001s |  0.08% | 11.16% )    	(29x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.617676s |  0.14% |  9.56% )   ( 1.546662s |  0.07% |  9.50% )    	(29x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.828095s |  0.16% | 10.80% )   ( 1.772114s |  0.08% | 10.89% )    	(29x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.533554s |  0.13% |  9.06% )   ( 1.517001s |  0.07% |  9.32% )    	(29x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.042954s |  0.09% |  6.16% )   ( 0.993122s |  0.04% |  6.10% )    	(29x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.601194s |  0.05% |  3.55% )   ( 0.567017s |  0.02% |  3.48% )    	(29x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.146706s |  0.10% |  6.77% )   ( 1.049618s |  0.04% |  6.45% )    	(29x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.518789s |  0.04% |  3.06% )   ( 0.507304s |  0.02% |  3.11% )    	(29x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.490666s |  0.13% |  8.81% )   ( 1.399003s |  0.06% |  8.59% )    	(29x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.016922s |  0.27% | 17.83% )   ( 2.886541s |  0.13% | 17.73% )    	(29x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.587967s |  0.05% |  3.47% )   ( 0.576756s |  0.02% |  3.54% )    	(29x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.569496s |  0.05% |  3.36% )   ( 0.560197s |  0.02% |  3.44% )    	(29x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004628s |  0.00% |  0.00% )   ( 0.005220s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005299s |  0.00% |  0.03% )   ( 0.005402s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p6\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p6_PID})
998.3.0:        ( 18.072376s |  1.64% |  3.28% )   ( 17.334463s |  0.81% |  1.62% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000658s |  0.00% |  0.00% )   ( 0.000676s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p7 p7_PID (&)
6.4.0:          ( 18.071634s |  1.63% | 99.99% )   ( 17.333691s |  0.81% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000342s |  0.00% |  0.00% )   ( 0.000386s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000361s |  0.00% |  0.00% )   ( 0.000406s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p7
12.5.0:         ( 0.020986s |  0.00% |  0.11% )   ( 0.020951s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020933s |  0.00% |  0.11% )   ( 0.020895s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020945s |  0.00% |  0.11% )   ( 0.020897s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020947s |  0.00% |  0.11% )   ( 0.020910s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020920s |  0.00% |  0.11% )   ( 0.020882s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003713s |  0.00% |  0.00% )   ( 0.004175s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ true
20.5.0:         ( 0.003324s |  0.00% |  0.00% )   ( 0.003768s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004524s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p7
23.5.0:         ( 0.142744s |  0.01% |  0.03% )   ( 0.005120s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003484s |  0.00% |  0.00% )   ( 0.003911s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003485s |  0.00% |  0.00% )   ( 0.003933s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003018s |  0.00% |  0.00% )   ( 0.003430s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003383s |  0.00% |  0.00% )   ( 0.003828s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.029728s |  0.00% |  0.00% )   ( 0.027507s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007879s |  0.00% |  0.00% )   ( 0.004059s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p7
36.5.0:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003591s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003105s |  0.00% |  0.00% )   ( 0.003541s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.732296s |  1.60% |  4.67% )   ( 17.132219s |  0.80% |  4.70% )    	(21x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003215s |  0.00% |  0.01% )   ( 0.003656s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.170574s |  0.10% |  6.60% )   ( 1.138355s |  0.05% |  6.64% )    	(21x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.125456s |  0.19% | 11.98% )   ( 2.065797s |  0.09% | 12.05% )    	(21x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.658212s |  0.15% |  9.35% )   ( 1.603474s |  0.07% |  9.35% )    	(21x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.166028s |  0.19% | 12.21% )   ( 2.030068s |  0.09% | 11.84% )    	(21x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.663993s |  0.15% |  9.38% )   ( 1.602338s |  0.07% |  9.35% )    	(21x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.037294s |  0.09% |  5.84% )   ( 1.031715s |  0.04% |  6.02% )    	(21x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.468106s |  0.04% |  2.63% )   ( 0.458955s |  0.02% |  2.67% )    	(21x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.085793s |  0.09% |  6.12% )   ( 1.072371s |  0.05% |  6.25% )    	(21x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.420069s |  0.03% |  2.36% )   ( 0.406866s |  0.01% |  2.37% )    	(21x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.464595s |  0.13% |  8.25% )   ( 1.409106s |  0.06% |  8.22% )    	(21x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.482537s |  0.31% | 19.63% )   ( 3.413750s |  0.16% | 19.92% )    	(21x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.496768s |  0.04% |  2.80% )   ( 0.456453s |  0.02% |  2.66% )    	(21x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.489656s |  0.04% |  2.76% )   ( 0.439315s |  0.02% |  2.56% )    	(21x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003268s |  0.00% |  0.00% )   ( 0.003699s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002942s |  0.00% |  0.00% )   ( 0.003330s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003311s |  0.00% |  0.00% )   ( 0.003742s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008665s |  0.00% |  0.04% )   ( 0.008743s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p7\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p7_PID})
998.3.0:        ( 18.296101s |  1.66% |  3.32% )   ( 17.581562s |  0.82% |  1.65% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000667s |  0.00% |  0.00% )   ( 0.000686s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p8 p8_PID (&)
6.4.0:          ( 18.295348s |  1.66% | 99.99% )   ( 17.580778s |  0.82% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000314s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p8
12.5.0:         ( 0.020948s |  0.00% |  0.11% )   ( 0.020910s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020939s |  0.00% |  0.11% )   ( 0.020901s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020927s |  0.00% |  0.11% )   ( 0.020891s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020942s |  0.00% |  0.11% )   ( 0.020905s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020902s |  0.00% |  0.11% )   ( 0.020868s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005112s |  0.00% |  0.00% )   ( 0.005743s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ true
20.5.0:         ( 0.004497s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005507s |  0.00% |  0.00% )   ( 0.006108s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p8
23.5.0:         ( 0.158245s |  0.01% |  0.02% )   ( 0.006658s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004714s |  0.00% |  0.00% )   ( 0.005313s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.007535s |  0.00% |  0.00% )   ( 0.005160s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004852s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004544s |  0.00% |  0.00% )   ( 0.005121s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038889s |  0.00% |  0.00% )   ( 0.036300s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004629s |  0.00% |  0.00% )   ( 0.005242s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005425s |  0.00% |  0.00% )   ( 0.006045s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p8
36.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004798s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.915213s |  1.62% |  3.37% )   ( 17.349406s |  0.81% |  3.40% )    	(29x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004341s |  0.00% |  0.02% )   ( 0.004936s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.208325s |  0.10% |  6.74% )   ( 1.178507s |  0.05% |  6.79% )    	(29x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.156668s |  0.19% | 12.03% )   ( 2.023205s |  0.09% | 11.66% )    	(29x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.779256s |  0.16% |  9.93% )   ( 1.712851s |  0.08% |  9.87% )    	(29x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.051716s |  0.18% | 11.45% )   ( 2.024939s |  0.09% | 11.67% )    	(29x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.695741s |  0.15% |  9.46% )   ( 1.640453s |  0.07% |  9.45% )    	(29x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.164652s |  0.10% |  6.50% )   ( 1.090830s |  0.05% |  6.28% )    	(29x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.619432s |  0.05% |  3.45% )   ( 0.582457s |  0.02% |  3.35% )    	(29x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.144205s |  0.10% |  6.38% )   ( 1.111721s |  0.05% |  6.40% )    	(29x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.531056s |  0.04% |  2.96% )   ( 0.521043s |  0.02% |  3.00% )    	(29x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.455358s |  0.13% |  8.12% )   ( 1.419966s |  0.06% |  8.18% )    	(29x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.926575s |  0.26% | 16.33% )   ( 2.911988s |  0.13% | 16.78% )    	(29x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.584594s |  0.05% |  3.26% )   ( 0.569918s |  0.02% |  3.28% )    	(29x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.593294s |  0.05% |  3.31% )   ( 0.556592s |  0.02% |  3.20% )    	(29x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004481s |  0.00% |  0.00% )   ( 0.005077s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004668s |  0.00% |  0.00% )   ( 0.005233s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009202s |  0.00% |  0.05% )   ( 0.009265s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p8\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p8_PID})
998.3.0:        ( 17.555801s |  1.59% |  3.19% )   ( 16.712417s |  0.78% |  1.57% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000713s |  0.00% |  0.00% )   ( 0.000727s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p9 p9_PID (&)
6.4.0:          ( 17.555004s |  1.59% | 99.99% )   ( 16.711594s |  0.78% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000336s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000362s |  0.00% |  0.00% )   ( 0.000407s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p9
12.5.0:         ( 0.020965s |  0.00% |  0.11% )   ( 0.020926s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020954s |  0.00% |  0.11% )   ( 0.020918s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020975s |  0.00% |  0.11% )   ( 0.020935s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020976s |  0.00% |  0.11% )   ( 0.020913s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020885s |  0.00% |  0.11% )   ( 0.020844s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004577s |  0.00% |  0.00% )   ( 0.005108s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004059s |  0.00% |  0.00% )   ( 0.004600s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004909s |  0.00% |  0.00% )   ( 0.005450s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p9
23.5.0:         ( 0.158527s |  0.01% |  0.03% )   ( 0.005982s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004161s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004178s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004394s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004035s |  0.00% |  0.00% )   ( 0.004569s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.031936s |  0.00% |  0.00% )   ( 0.032403s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007293s |  0.00% |  0.00% )   ( 0.004763s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004801s |  0.00% |  0.00% )   ( 0.005343s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p9
36.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004113s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.186419s |  1.55% |  3.76% )   ( 16.492367s |  0.77% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003721s |  0.00% |  0.02% )   ( 0.004231s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.133600s |  0.10% |  6.59% )   ( 1.087814s |  0.05% |  6.59% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.970386s |  0.17% | 11.46% )   ( 1.873671s |  0.08% | 11.36% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.691847s |  0.15% |  9.84% )   ( 1.575880s |  0.07% |  9.55% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.907698s |  0.17% | 11.10% )   ( 1.885942s |  0.08% | 11.43% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.590146s |  0.14% |  9.25% )   ( 1.541198s |  0.07% |  9.34% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.021901s |  0.09% |  5.94% )   ( 0.996650s |  0.04% |  6.04% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.563915s |  0.05% |  3.28% )   ( 0.532798s |  0.02% |  3.23% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.086596s |  0.09% |  6.32% )   ( 1.053523s |  0.04% |  6.38% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.483535s |  0.04% |  2.81% )   ( 0.465080s |  0.02% |  2.81% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.447215s |  0.13% |  8.42% )   ( 1.386676s |  0.06% |  8.40% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.153204s |  0.28% | 18.34% )   ( 3.062356s |  0.14% | 18.56% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.592345s |  0.05% |  3.44% )   ( 0.523355s |  0.02% |  3.17% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.540310s |  0.04% |  3.14% )   ( 0.503193s |  0.02% |  3.05% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.005812s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
37.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
46.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
47.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
49.5.0:         ( 0.000221s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit
50.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p* 1>&21
51.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008581s |  0.00% |  0.04% )   ( 0.008563s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p9\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p9_PID})
998.3.0:        ( 17.418485s |  1.58% |  3.16% )   ( 16.260621s |  0.76% |  1.52% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000688s |  0.00% |  0.00% )   ( 0.000702s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p10 p10_PID (&)
6.4.0:          ( 17.417713s |  1.58% | 99.99% )   ( 16.259822s |  0.76% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p10
12.5.0:         ( 0.021175s |  0.00% |  0.12% )   ( 0.021107s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021058s |  0.00% |  0.12% )   ( 0.021017s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.021042s |  0.00% |  0.12% )   ( 0.021003s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.021042s |  0.00% |  0.12% )   ( 0.021007s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.020980s |  0.00% |  0.12% )   ( 0.020941s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004749s |  0.00% |  0.00% )   ( 0.005329s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
20.5.0:         ( 0.004262s |  0.00% |  0.00% )   ( 0.004846s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005142s |  0.00% |  0.00% )   ( 0.005737s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p10
23.5.0:         ( 0.245555s |  0.02% |  0.04% )   ( 0.006765s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004788s |  0.00% |  0.00% )   ( 0.005379s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004410s |  0.00% |  0.00% )   ( 0.004981s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004759s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004347s |  0.00% |  0.00% )   ( 0.004919s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.034976s |  0.00% |  0.00% )   ( 0.035441s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004355s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004909s |  0.00% |  0.00% )   ( 0.005469s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p10
36.5.0:         ( 0.004114s |  0.00% |  0.00% )   ( 0.004668s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003951s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 16.959553s |  1.53% |  3.47% )   ( 16.032129s |  0.75% |  3.52% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004113s |  0.00% |  0.02% )   ( 0.004690s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.073326s |  0.09% |  6.32% )   ( 1.070896s |  0.05% |  6.67% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.846054s |  0.16% | 10.88% )   ( 1.804403s |  0.08% | 11.25% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.694437s |  0.15% |  9.99% )   ( 1.547497s |  0.07% |  9.65% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.852645s |  0.16% | 10.92% )   ( 1.783309s |  0.08% | 11.12% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.533879s |  0.13% |  9.04% )   ( 1.486022s |  0.06% |  9.26% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.061718s |  0.09% |  6.26% )   ( 0.994980s |  0.04% |  6.20% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.624950s |  0.05% |  3.68% )   ( 0.557567s |  0.02% |  3.47% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.179238s |  0.10% |  6.95% )   ( 1.023150s |  0.04% |  6.38% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.522975s |  0.04% |  3.08% )   ( 0.492586s |  0.02% |  3.07% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.494555s |  0.13% |  8.81% )   ( 1.353254s |  0.06% |  8.44% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.950762s |  0.26% | 17.39% )   ( 2.831839s |  0.13% | 17.66% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.555628s |  0.05% |  3.27% )   ( 0.551520s |  0.02% |  3.44% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.565273s |  0.05% |  3.33% )   ( 0.530416s |  0.02% |  3.30% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004227s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005070s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009297s |  0.00% |  0.05% )   ( 0.009282s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p10\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p10_PID})
998.3.0:        ( 18.769098s |  1.70% |  3.41% )   ( 18.285296s |  0.85% |  1.71% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000678s |  0.00% |  0.00% )   ( 0.000691s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p11 p11_PID (&)
6.4.0:          ( 18.768332s |  1.70% | 99.99% )   ( 18.284505s |  0.85% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000179s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000181s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p11
12.5.0:         ( 0.040111s |  0.00% |  0.21% )   ( 0.039901s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.028418s |  0.00% |  0.15% )   ( 0.028329s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.023840s |  0.00% |  0.12% )   ( 0.023777s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.021040s |  0.00% |  0.11% )   ( 0.020987s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.023767s |  0.00% |  0.12% )   ( 0.023703s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.002278s |  0.00% |  0.00% )   ( 0.002564s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ true
20.5.0:         ( 0.001992s |  0.00% |  0.00% )   ( 0.002263s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.002384s |  0.00% |  0.00% )   ( 0.002652s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p11
23.5.0:         ( 0.124098s |  0.01% |  0.05% )   ( 0.003309s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.002111s |  0.00% |  0.00% )   ( 0.002382s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.001796s |  0.00% |  0.00% )   ( 0.002052s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.001687s |  0.00% |  0.00% )   ( 0.001926s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.001769s |  0.00% |  0.00% )   ( 0.002008s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.013256s |  0.00% |  0.00% )   ( 0.013379s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.001790s |  0.00% |  0.00% )   ( 0.002013s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.002097s |  0.00% |  0.00% )   ( 0.002348s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p11
36.5.0:         ( 0.001742s |  0.00% |  0.00% )   ( 0.001982s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.001736s |  0.00% |  0.00% )   ( 0.001974s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.456235s |  1.67% |  8.19% )   ( 18.089818s |  0.85% |  8.24% )    	(12x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001725s |  0.00% |  0.00% )   ( 0.001959s |  0.00% |  0.01% )    	(12x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.165075s |  0.10% |  6.31% )   ( 1.158482s |  0.05% |  6.40% )    	(12x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.363343s |  0.21% | 12.80% )   ( 2.284434s |  0.10% | 12.62% )    	(12x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.775290s |  0.16% |  9.61% )   ( 1.736824s |  0.08% |  9.60% )    	(12x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.325403s |  0.21% | 12.59% )   ( 2.307334s |  0.10% | 12.75% )    	(12x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.758629s |  0.15% |  9.52% )   ( 1.727019s |  0.08% |  9.54% )    	(12x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.115177s |  0.10% |  6.04% )   ( 1.049029s |  0.04% |  5.79% )    	(12x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.351529s |  0.03% |  1.90% )   ( 0.340855s |  0.01% |  1.88% )    	(12x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.165701s |  0.10% |  6.31% )   ( 1.128280s |  0.05% |  6.23% )    	(12x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.294580s |  0.02% |  1.59% )   ( 0.275032s |  0.01% |  1.52% )    	(12x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.475815s |  0.13% |  7.99% )   ( 1.453820s |  0.06% |  8.03% )    	(12x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.038232s |  0.36% | 21.88% )   ( 4.003598s |  0.18% | 22.13% )    	(12x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.330349s |  0.02% |  1.78% )   ( 0.328374s |  0.01% |  1.81% )    	(12x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.295387s |  0.02% |  1.60% )   ( 0.294778s |  0.01% |  1.62% )    	(12x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.001933s |  0.00% |  0.00% )   ( 0.002182s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.001771s |  0.00% |  0.00% )   ( 0.002022s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.001761s |  0.00% |  0.00% )   ( 0.001986s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009570s |  0.00% |  0.05% )   ( 0.009658s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p11\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p11_PID})
998.3.0:        ( 19.481167s |  1.76% |  3.54% )   ( 18.658710s |  0.87% |  1.75% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000739s |  0.00% |  0.00% )   ( 0.000755s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p12 p12_PID (&)
6.4.0:          ( 19.480341s |  1.76% | 99.99% )   ( 18.657855s |  0.87% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p12
12.5.0:         ( 0.021087s |  0.00% |  0.10% )   ( 0.020965s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.020896s |  0.00% |  0.10% )   ( 0.020855s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.020945s |  0.00% |  0.10% )   ( 0.020905s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.020974s |  0.00% |  0.10% )   ( 0.020935s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.034539s |  0.00% |  0.17% )   ( 0.034440s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004961s |  0.00% |  0.00% )   ( 0.005536s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
20.5.0:         ( 0.004462s |  0.00% |  0.00% )   ( 0.005027s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005043s |  0.00% |  0.00% )   ( 0.005611s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p12
23.5.0:         ( 0.148928s |  0.01% |  0.02% )   ( 0.006471s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004417s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004340s |  0.00% |  0.00% )   ( 0.004929s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004023s |  0.00% |  0.00% )   ( 0.004562s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.034516s |  0.00% |  0.00% )   ( 0.034998s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.005830s |  0.00% |  0.00% )   ( 0.005240s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005207s |  0.00% |  0.00% )   ( 0.005815s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p12
36.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004884s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004721s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 19.108805s |  1.73% |  3.50% )   ( 18.421597s |  0.86% |  3.52% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004131s |  0.00% |  0.02% )   ( 0.004709s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.375036s |  0.12% |  7.19% )   ( 1.294333s |  0.06% |  7.02% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.364153s |  0.21% | 12.37% )   ( 2.285699s |  0.10% | 12.40% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.820497s |  0.16% |  9.52% )   ( 1.734003s |  0.08% |  9.41% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.150186s |  0.19% | 11.25% )   ( 2.067631s |  0.09% | 11.22% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.683845s |  0.15% |  8.81% )   ( 1.661728s |  0.07% |  9.02% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.197991s |  0.10% |  6.26% )   ( 1.137667s |  0.05% |  6.17% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.620074s |  0.05% |  3.24% )   ( 0.585492s |  0.02% |  3.17% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.264170s |  0.11% |  6.61% )   ( 1.192951s |  0.05% |  6.47% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.504596s |  0.04% |  2.64% )   ( 0.504223s |  0.02% |  2.73% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.551938s |  0.14% |  8.12% )   ( 1.503980s |  0.07% |  8.16% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.370604s |  0.30% | 17.63% )   ( 3.313672s |  0.15% | 17.98% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.625526s |  0.05% |  3.27% )   ( 0.584839s |  0.02% |  3.17% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.576058s |  0.05% |  3.01% )   ( 0.550670s |  0.02% |  2.98% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004166s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004027s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004595s |  0.00% |  0.00% )   ( 0.005165s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.004939s |  0.00% |  0.02% )   ( 0.005016s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p12\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p12_PID})
998.3.0:        ( 18.679623s |  1.69% |  3.39% )   ( 18.070632s |  0.84% |  1.69% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000736s |  0.00% |  0.00% )   ( 0.000751s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p13 p13_PID (&)
6.4.0:          ( 18.678801s |  1.69% | 99.99% )   ( 18.069782s |  0.84% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000106s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000105s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p13
12.5.0:         ( 0.021101s |  0.00% |  0.11% )   ( 0.021038s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.023274s |  0.00% |  0.12% )   ( 0.023200s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.021094s |  0.00% |  0.11% )   ( 0.021039s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.024456s |  0.00% |  0.13% )   ( 0.024400s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.027469s |  0.00% |  0.14% )   ( 0.027389s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003739s |  0.00% |  0.00% )   ( 0.004185s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ true
20.5.0:         ( 0.003187s |  0.00% |  0.00% )   ( 0.003618s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003956s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p13
23.5.0:         ( 0.106756s |  0.00% |  0.02% )   ( 0.004661s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003347s |  0.00% |  0.00% )   ( 0.003779s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003075s |  0.00% |  0.00% )   ( 0.003493s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.002947s |  0.00% |  0.00% )   ( 0.003369s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003134s |  0.00% |  0.00% )   ( 0.003525s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.027235s |  0.00% |  0.00% )   ( 0.024495s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004459s |  0.00% |  0.00% )   ( 0.003781s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003706s |  0.00% |  0.00% )   ( 0.004141s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p13
36.5.0:         ( 0.003030s |  0.00% |  0.00% )   ( 0.003454s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.002987s |  0.00% |  0.00% )   ( 0.003413s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.371872s |  1.66% |  4.68% )   ( 17.865995s |  0.84% |  4.70% )    	(21x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003073s |  0.00% |  0.01% )   ( 0.003518s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.212988s |  0.11% |  6.60% )   ( 1.182135s |  0.05% |  6.61% )    	(21x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.188802s |  0.19% | 11.91% )   ( 2.176858s |  0.10% | 12.18% )    	(21x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.722687s |  0.15% |  9.37% )   ( 1.694458s |  0.07% |  9.48% )    	(21x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.211670s |  0.20% | 12.03% )   ( 2.126540s |  0.10% | 11.90% )    	(21x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.701170s |  0.15% |  9.25% )   ( 1.653374s |  0.07% |  9.25% )    	(21x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.094566s |  0.09% |  5.95% )   ( 1.040732s |  0.04% |  5.82% )    	(21x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.482254s |  0.04% |  2.62% )   ( 0.462468s |  0.02% |  2.58% )    	(21x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.163122s |  0.10% |  6.33% )   ( 1.140561s |  0.05% |  6.38% )    	(21x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.425204s |  0.03% |  2.31% )   ( 0.398845s |  0.01% |  2.23% )    	(21x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.481530s |  0.13% |  8.06% )   ( 1.447881s |  0.06% |  8.10% )    	(21x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.721680s |  0.33% | 20.25% )   ( 3.645652s |  0.17% | 20.40% )    	(21x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.486694s |  0.04% |  2.64% )   ( 0.458711s |  0.02% |  2.56% )    	(21x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.476432s |  0.04% |  2.59% )   ( 0.434262s |  0.02% |  2.43% )    	(21x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003138s |  0.00% |  0.00% )   ( 0.003568s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002928s |  0.00% |  0.00% )   ( 0.003326s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.006177s |  0.00% |  0.00% )   ( 0.003593s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.004911s |  0.00% |  0.02% )   ( 0.004984s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p13\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p13_PID})
998.3.0:        ( 18.009843s |  1.63% |  3.27% )   ( 17.295832s |  0.81% |  1.62% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000734s |  0.00% |  0.00% )   ( 0.000753s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p14 p14_PID (&)
6.4.0:          ( 18.009024s |  1.63% | 99.99% )   ( 17.294981s |  0.81% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000194s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000104s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p14
12.5.0:         ( 0.021164s |  0.00% |  0.11% )   ( 0.021077s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.021659s |  0.00% |  0.12% )   ( 0.021626s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.039334s |  0.00% |  0.21% )   ( 0.039207s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.030823s |  0.00% |  0.17% )   ( 0.030727s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.039838s |  0.00% |  0.22% )   ( 0.039715s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004065s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
20.5.0:         ( 0.003603s |  0.00% |  0.00% )   ( 0.004086s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004439s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p14
23.5.0:         ( 0.190980s |  0.01% |  0.04% )   ( 0.005653s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004029s |  0.00% |  0.00% )   ( 0.004548s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003516s |  0.00% |  0.00% )   ( 0.004003s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004215s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.028025s |  0.00% |  0.00% )   ( 0.028418s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.009650s |  0.00% |  0.00% )   ( 0.004265s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004227s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p14
36.5.0:         ( 0.006468s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003387s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.566042s |  1.59% |  4.24% )   ( 17.039223s |  0.80% |  4.28% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003368s |  0.00% |  0.01% )   ( 0.003836s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.162366s |  0.10% |  6.61% )   ( 1.138258s |  0.05% |  6.68% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.071212s |  0.18% | 11.79% )   ( 2.003528s |  0.09% | 11.75% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.673574s |  0.15% |  9.52% )   ( 1.618083s |  0.07% |  9.49% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.041157s |  0.18% | 11.61% )   ( 2.014366s |  0.09% | 11.82% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.642518s |  0.14% |  9.35% )   ( 1.599397s |  0.07% |  9.38% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.057303s |  0.09% |  6.01% )   ( 1.029251s |  0.04% |  6.04% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.522046s |  0.04% |  2.97% )   ( 0.498277s |  0.02% |  2.92% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.120297s |  0.10% |  6.37% )   ( 1.092467s |  0.05% |  6.41% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.434908s |  0.03% |  2.47% )   ( 0.431320s |  0.02% |  2.53% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.441934s |  0.13% |  8.20% )   ( 1.416518s |  0.06% |  8.31% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.409629s |  0.30% | 19.41% )   ( 3.269931s |  0.15% | 19.19% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.485886s |  0.04% |  2.76% )   ( 0.476593s |  0.02% |  2.79% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.499844s |  0.04% |  2.84% )   ( 0.447398s |  0.02% |  2.62% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003929s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003290s |  0.00% |  0.00% )   ( 0.003746s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003655s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008495s |  0.00% |  0.04% )   ( 0.008575s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p14\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p14_PID})
998.3.0:        ( 18.031571s |  1.63% |  3.27% )   ( 17.403786s |  0.81% |  1.63% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000894s |  0.00% |  0.00% )   ( 0.000918s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p15 p15_PID (&)
6.4.0:          ( 18.030509s |  1.63% | 99.99% )   ( 17.402683s |  0.81% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p15
12.5.0:         ( 0.040195s |  0.00% |  0.22% )   ( 0.040066s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040618s |  0.00% |  0.22% )   ( 0.040482s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.040309s |  0.00% |  0.22% )   ( 0.040175s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.040767s |  0.00% |  0.22% )   ( 0.040633s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.040294s |  0.00% |  0.22% )   ( 0.040159s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003368s |  0.00% |  0.00% )   ( 0.003790s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ true
20.5.0:         ( 0.003056s |  0.00% |  0.00% )   ( 0.003463s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003723s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p15
23.5.0:         ( 0.074626s |  0.00% |  0.02% )   ( 0.004126s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.002996s |  0.00% |  0.00% )   ( 0.003403s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.002779s |  0.00% |  0.00% )   ( 0.003165s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.002747s |  0.00% |  0.00% )   ( 0.003104s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.002845s |  0.00% |  0.00% )   ( 0.003234s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.020896s |  0.00% |  0.00% )   ( 0.021212s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.002976s |  0.00% |  0.00% )   ( 0.003364s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003766s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p15
36.5.0:         ( 0.002753s |  0.00% |  0.00% )   ( 0.003127s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.002708s |  0.00% |  0.00% )   ( 0.003103s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.680370s |  1.60% |  5.16% )   ( 17.117714s |  0.80% |  5.17% )    	(19x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002690s |  0.00% |  0.01% )   ( 0.003087s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.136713s |  0.10% |  6.42% )   ( 1.101100s |  0.05% |  6.43% )    	(19x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.091852s |  0.18% | 11.83% )   ( 2.074639s |  0.09% | 12.11% )    	(19x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.660128s |  0.15% |  9.38% )   ( 1.631913s |  0.07% |  9.53% )    	(19x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.081821s |  0.18% | 11.77% )   ( 2.019875s |  0.09% | 11.79% )    	(19x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.655888s |  0.15% |  9.36% )   ( 1.596015s |  0.07% |  9.32% )    	(19x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.111600s |  0.10% |  6.28% )   ( 1.019684s |  0.04% |  5.95% )    	(19x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.483772s |  0.04% |  2.73% )   ( 0.445911s |  0.02% |  2.60% )    	(19x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.163049s |  0.10% |  6.57% )   ( 1.109428s |  0.05% |  6.48% )    	(19x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.403276s |  0.03% |  2.28% )   ( 0.369718s |  0.01% |  2.15% )    	(19x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.455204s |  0.13% |  8.23% )   ( 1.406981s |  0.06% |  8.21% )    	(19x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.555822s |  0.32% | 20.11% )   ( 3.525446s |  0.16% | 20.59% )    	(19x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.443249s |  0.04% |  2.50% )   ( 0.419431s |  0.01% |  2.45% )    	(19x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.435306s |  0.03% |  2.46% )   ( 0.394486s |  0.01% |  2.30% )    	(19x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.002913s |  0.00% |  0.00% )   ( 0.003277s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002587s |  0.00% |  0.00% )   ( 0.002929s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.002881s |  0.00% |  0.00% )   ( 0.003253s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.009334s |  0.00% |  0.05% )   ( 0.009409s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p15\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p15_PID})
998.3.0:        ( 20.611544s |  1.87% |  3.74% )   ( 19.749694s |  0.92% |  1.85% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001034s |  0.00% |  0.00% )   ( 0.001054s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p16 p16_PID (&)
6.4.0:          ( 20.610371s |  1.87% | 99.99% )   ( 19.748481s |  0.92% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000176s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000188s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p16
12.5.0:         ( 0.036433s |  0.00% |  0.17% )   ( 0.036299s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.044299s |  0.00% |  0.21% )   ( 0.044173s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.030402s |  0.00% |  0.14% )   ( 0.030298s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.023918s |  0.00% |  0.11% )   ( 0.023848s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.041426s |  0.00% |  0.20% )   ( 0.041267s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003955s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
20.5.0:         ( 0.003609s |  0.00% |  0.00% )   ( 0.004091s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004712s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p16
23.5.0:         ( 0.208232s |  0.01% |  0.04% )   ( 0.005407s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003743s |  0.00% |  0.00% )   ( 0.004197s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004093s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003326s |  0.00% |  0.00% )   ( 0.003794s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003432s |  0.00% |  0.00% )   ( 0.003881s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.029253s |  0.00% |  0.00% )   ( 0.026467s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.003765s |  0.00% |  0.00% )   ( 0.004245s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004388s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p16
36.5.0:         ( 0.003457s |  0.00% |  0.00% )   ( 0.003934s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003336s |  0.00% |  0.00% )   ( 0.003800s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 20.138448s |  1.82% |  4.24% )   ( 19.476491s |  0.91% |  4.28% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003446s |  0.00% |  0.01% )   ( 0.003921s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.510432s |  0.13% |  7.50% )   ( 1.400162s |  0.06% |  7.18% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.382139s |  0.21% | 11.82% )   ( 2.342905s |  0.11% | 12.02% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.851639s |  0.16% |  9.19% )   ( 1.814054s |  0.08% |  9.31% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.336478s |  0.21% | 11.60% )   ( 2.297672s |  0.10% | 11.79% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.834577s |  0.16% |  9.10% )   ( 1.758810s |  0.08% |  9.03% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.236477s |  0.11% |  6.13% )   ( 1.223244s |  0.05% |  6.28% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.587588s |  0.05% |  2.91% )   ( 0.533346s |  0.02% |  2.73% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.359066s |  0.12% |  6.74% )   ( 1.281714s |  0.06% |  6.58% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.454945s |  0.04% |  2.25% )   ( 0.445127s |  0.02% |  2.28% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.642232s |  0.14% |  8.15% )   ( 1.554629s |  0.07% |  7.98% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.890947s |  0.35% | 19.32% )   ( 3.829117s |  0.18% | 19.66% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.547082s |  0.04% |  2.71% )   ( 0.515602s |  0.02% |  2.64% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.501400s |  0.04% |  2.48% )   ( 0.476188s |  0.02% |  2.44% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003357s |  0.00% |  0.00% )   ( 0.003820s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003213s |  0.00% |  0.00% )   ( 0.003670s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004346s |  0.00% |  0.00% )   ( 0.004222s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005065s |  0.00% |  0.02% )   ( 0.005134s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p16\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p16_PID})
998.3.0:        ( 17.570228s |  1.59% |  3.19% )   ( 16.497349s |  0.77% |  1.55% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001045s |  0.00% |  0.00% )   ( 0.001064s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p17 p17_PID (&)
6.4.0:          ( 17.569046s |  1.59% | 99.99% )   ( 16.496128s |  0.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000105s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p17
12.5.0:         ( 0.023865s |  0.00% |  0.13% )   ( 0.023785s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.023849s |  0.00% |  0.13% )   ( 0.023776s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.023812s |  0.00% |  0.13% )   ( 0.023738s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.026449s |  0.00% |  0.15% )   ( 0.026361s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.024057s |  0.00% |  0.13% )   ( 0.023988s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004639s |  0.00% |  0.00% )   ( 0.005209s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004423s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004934s |  0.00% |  0.00% )   ( 0.005468s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p17
23.5.0:         ( 0.212553s |  0.01% |  0.04% )   ( 0.006123s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004187s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004206s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003981s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038235s |  0.00% |  0.00% )   ( 0.032673s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.008378s |  0.00% |  0.00% )   ( 0.004753s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004980s |  0.00% |  0.00% )   ( 0.005557s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p17
36.5.0:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004440s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003748s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.127493s |  1.55% |  3.74% )   ( 16.263715s |  0.76% |  3.79% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003736s |  0.00% |  0.02% )   ( 0.004247s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.127111s |  0.10% |  6.58% )   ( 1.080281s |  0.05% |  6.64% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.898645s |  0.17% | 11.08% )   ( 1.843573s |  0.08% | 11.33% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.633999s |  0.14% |  9.54% )   ( 1.568787s |  0.07% |  9.64% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.931663s |  0.17% | 11.27% )   ( 1.832702s |  0.08% | 11.26% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.585148s |  0.14% |  9.25% )   ( 1.516725s |  0.07% |  9.32% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.180131s |  0.10% |  6.89% )   ( 0.994645s |  0.04% |  6.11% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.595521s |  0.05% |  3.47% )   ( 0.529034s |  0.02% |  3.25% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.141640s |  0.10% |  6.66% )   ( 1.046882s |  0.04% |  6.43% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.485133s |  0.04% |  2.83% )   ( 0.462478s |  0.02% |  2.84% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.432574s |  0.13% |  8.36% )   ( 1.371604s |  0.06% |  8.43% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.055533s |  0.27% | 17.83% )   ( 2.984699s |  0.14% | 18.35% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.525514s |  0.04% |  3.06% )   ( 0.525644s |  0.02% |  3.23% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.531145s |  0.04% |  3.10% )   ( 0.502414s |  0.02% |  3.08% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003958s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003579s |  0.00% |  0.00% )   ( 0.004056s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004163s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005171s |  0.00% |  0.02% )   ( 0.005243s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p17\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p17_PID})
998.3.0:        ( 21.294215s |  1.93% |  3.87% )   ( 20.225158s |  0.95% |  1.90% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001041s |  0.00% |  0.00% )   ( 0.001064s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p18 p18_PID (&)
6.4.0:          ( 21.293036s |  1.93% | 99.99% )   ( 20.223936s |  0.95% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p18
12.5.0:         ( 0.039747s |  0.00% |  0.18% )   ( 0.039623s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040164s |  0.00% |  0.18% )   ( 0.040026s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.029976s |  0.00% |  0.14% )   ( 0.029875s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.031278s |  0.00% |  0.14% )   ( 0.031167s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.031222s |  0.00% |  0.14% )   ( 0.031115s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005765s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ true
20.5.0:         ( 0.003334s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004139s |  0.00% |  0.00% )   ( 0.004607s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p18
23.5.0:         ( 0.236542s |  0.02% |  0.04% )   ( 0.005906s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003881s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004179s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003388s |  0.00% |  0.00% )   ( 0.003855s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004111s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.029314s |  0.00% |  0.00% )   ( 0.026696s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004879s |  0.00% |  0.00% )   ( 0.004073s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004209s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p18
36.5.0:         ( 0.003315s |  0.00% |  0.00% )   ( 0.003774s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003328s |  0.00% |  0.00% )   ( 0.003777s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 20.795023s |  1.88% |  4.43% )   ( 19.956224s |  0.93% |  4.48% )    	(22x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003341s |  0.00% |  0.01% )   ( 0.003818s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.485925s |  0.13% |  7.14% )   ( 1.411048s |  0.06% |  7.07% )    	(22x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.436713s |  0.22% | 11.71% )   ( 2.395743s |  0.11% | 12.00% )    	(22x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.925942s |  0.17% |  9.26% )   ( 1.894955s |  0.08% |  9.49% )    	(22x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.376984s |  0.21% | 11.43% )   ( 2.333172s |  0.10% | 11.69% )    	(22x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.862760s |  0.16% |  8.95% )   ( 1.800323s |  0.08% |  9.02% )    	(22x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.383273s |  0.12% |  6.65% )   ( 1.260186s |  0.05% |  6.31% )    	(22x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.514619s |  0.04% |  2.47% )   ( 0.504046s |  0.02% |  2.52% )    	(22x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.423556s |  0.12% |  6.84% )   ( 1.308355s |  0.06% |  6.55% )    	(22x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.492346s |  0.04% |  2.36% )   ( 0.441758s |  0.02% |  2.21% )    	(22x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.714634s |  0.15% |  8.24% )   ( 1.631968s |  0.07% |  8.17% )    	(22x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.163072s |  0.37% | 20.01% )   ( 3.997610s |  0.18% | 20.03% )    	(22x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.536107s |  0.04% |  2.57% )   ( 0.510719s |  0.02% |  2.55% )    	(22x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.475751s |  0.04% |  2.28% )   ( 0.462523s |  0.02% |  2.31% )    	(22x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003346s |  0.00% |  0.00% )   ( 0.003790s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003188s |  0.00% |  0.00% )   ( 0.003642s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003552s |  0.00% |  0.00% )   ( 0.003998s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.004742s |  0.00% |  0.02% )   ( 0.004808s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p18\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p18_PID})
998.3.0:        ( 17.264371s |  1.56% |  3.13% )   ( 16.422470s |  0.77% |  1.54% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001084s |  0.00% |  0.00% )   ( 0.001100s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p19 p19_PID (&)
6.4.0:          ( 17.263138s |  1.56% | 99.99% )   ( 16.421201s |  0.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000112s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000208s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p19
12.5.0:         ( 0.042440s |  0.00% |  0.24% )   ( 0.042287s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.035989s |  0.00% |  0.20% )   ( 0.035869s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.041817s |  0.00% |  0.24% )   ( 0.041676s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.041456s |  0.00% |  0.24% )   ( 0.041312s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.043691s |  0.00% |  0.25% )   ( 0.043531s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004883s |  0.00% |  0.00% )   ( 0.005485s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
20.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004899s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005481s |  0.00% |  0.00% )   ( 0.006104s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p19
23.5.0:         ( 0.182781s |  0.01% |  0.03% )   ( 0.006839s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004710s |  0.00% |  0.00% )   ( 0.005290s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004577s |  0.00% |  0.00% )   ( 0.005145s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004676s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005218s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.039942s |  0.00% |  0.00% )   ( 0.035169s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.008989s |  0.00% |  0.00% )   ( 0.005164s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005023s |  0.00% |  0.00% )   ( 0.005616s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p19
36.5.0:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004430s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 16.752224s |  1.52% |  3.59% )   ( 16.093879s |  0.75% |  3.62% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007109s |  0.00% |  0.04% )   ( 0.004688s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.190247s |  0.10% |  7.10% )   ( 1.072519s |  0.05% |  6.66% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.001786s |  0.18% | 11.94% )   ( 1.835147s |  0.08% | 11.40% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.579181s |  0.14% |  9.42% )   ( 1.560774s |  0.07% |  9.69% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.841645s |  0.16% | 10.99% )   ( 1.807886s |  0.08% | 11.23% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.547555s |  0.14% |  9.23% )   ( 1.479197s |  0.06% |  9.19% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 0.998581s |  0.09% |  5.96% )   ( 0.978355s |  0.04% |  6.07% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.550926s |  0.04% |  3.28% )   ( 0.536641s |  0.02% |  3.33% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.084905s |  0.09% |  6.47% )   ( 1.016778s |  0.04% |  6.31% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.500621s |  0.04% |  2.98% )   ( 0.474012s |  0.02% |  2.94% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.377104s |  0.12% |  8.22% )   ( 1.351632s |  0.06% |  8.39% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.986599s |  0.27% | 17.82% )   ( 2.921463s |  0.13% | 18.15% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.553823s |  0.05% |  3.30% )   ( 0.533509s |  0.02% |  3.31% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.532142s |  0.04% |  3.17% )   ( 0.521278s |  0.02% |  3.23% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004222s |  0.00% |  0.00% )   ( 0.004775s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.010353s |  0.00% |  0.00% )   ( 0.004868s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.008560s |  0.00% |  0.04% )   ( 0.008627s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p19\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p19_PID})
998.3.0:        ( 17.682647s |  1.60% |  3.21% )   ( 16.445744s |  0.77% |  1.54% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001085s |  0.00% |  0.00% )   ( 0.001106s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p20 p20_PID (&)
6.4.0:          ( 17.681402s |  1.60% | 99.99% )   ( 16.444464s |  0.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p20
12.5.0:         ( 0.027127s |  0.00% |  0.15% )   ( 0.027042s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.025361s |  0.00% |  0.14% )   ( 0.025277s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.040007s |  0.00% |  0.22% )   ( 0.039883s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.040004s |  0.00% |  0.22% )   ( 0.039871s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.040011s |  0.00% |  0.22% )   ( 0.039885s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004990s |  0.00% |  0.00% )   ( 0.005602s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
20.5.0:         ( 0.004574s |  0.00% |  0.00% )   ( 0.005168s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005470s |  0.00% |  0.00% )   ( 0.006075s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p20
23.5.0:         ( 0.181279s |  0.01% |  0.03% )   ( 0.006589s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004695s |  0.00% |  0.00% )   ( 0.005324s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004655s |  0.00% |  0.00% )   ( 0.005274s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004364s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004461s |  0.00% |  0.00% )   ( 0.005020s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035440s |  0.00% |  0.00% )   ( 0.033703s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007547s |  0.00% |  0.00% )   ( 0.005117s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005231s |  0.00% |  0.00% )   ( 0.005811s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p20
36.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004737s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.004205s |  0.00% |  0.00% )   ( 0.004789s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.218494s |  1.56% |  3.47% )   ( 16.153125s |  0.75% |  3.50% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004309s |  0.00% |  0.02% )   ( 0.004893s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.179651s |  0.10% |  6.85% )   ( 1.106971s |  0.05% |  6.85% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.918867s |  0.17% | 11.14% )   ( 1.858920s |  0.08% | 11.50% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.687294s |  0.15% |  9.79% )   ( 1.569386s |  0.07% |  9.71% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.973468s |  0.17% | 11.46% )   ( 1.828354s |  0.08% | 11.31% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.601579s |  0.14% |  9.30% )   ( 1.503356s |  0.07% |  9.30% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.134131s |  0.10% |  6.58% )   ( 0.995838s |  0.04% |  6.16% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.645303s |  0.05% |  3.74% )   ( 0.538888s |  0.02% |  3.33% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.078441s |  0.09% |  6.26% )   ( 1.018740s |  0.04% |  6.30% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.499975s |  0.04% |  2.90% )   ( 0.482207s |  0.02% |  2.98% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.373193s |  0.12% |  7.97% )   ( 1.341115s |  0.06% |  8.30% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.990296s |  0.27% | 17.36% )   ( 2.850453s |  0.13% | 17.64% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.570524s |  0.05% |  3.31% )   ( 0.534548s |  0.02% |  3.30% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.561463s |  0.05% |  3.26% )   ( 0.519456s |  0.02% |  3.21% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004272s |  0.00% |  0.00% )   ( 0.004823s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.004164s |  0.00% |  0.00% )   ( 0.004703s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004561s |  0.00% |  0.00% )   ( 0.005116s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005024s |  0.00% |  0.02% )   ( 0.005093s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p20\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p20_PID})
998.3.0:        ( 22.552315s |  2.04% |  4.09% )   ( 21.800469s |  1.02% |  2.04% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001040s |  0.00% |  0.00% )   ( 0.001060s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p21 p21_PID (&)
6.4.0:          ( 22.551132s |  2.04% | 99.99% )   ( 21.799246s |  1.02% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000189s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000202s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p21
12.5.0:         ( 0.041259s |  0.00% |  0.18% )   ( 0.041127s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.041218s |  0.00% |  0.18% )   ( 0.041071s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.039649s |  0.00% |  0.17% )   ( 0.039498s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.041454s |  0.00% |  0.18% )   ( 0.041310s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.042826s |  0.00% |  0.18% )   ( 0.042540s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004764s |  0.00% |  0.00% )   ( 0.005342s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005123s |  0.00% |  0.00% )   ( 0.005722s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p21
23.5.0:         ( 0.246153s |  0.02% |  0.04% )   ( 0.006816s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004618s |  0.00% |  0.00% )   ( 0.005203s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004361s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004054s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004241s |  0.00% |  0.00% )   ( 0.004777s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.040949s |  0.00% |  0.00% )   ( 0.032410s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007317s |  0.00% |  0.00% )   ( 0.004884s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005048s |  0.00% |  0.00% )   ( 0.005614s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p21
36.5.0:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004638s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003997s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 21.987225s |  1.99% |  3.74% )   ( 21.478943s |  1.01% |  3.78% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004135s |  0.00% |  0.01% )   ( 0.004691s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.660722s |  0.15% |  7.55% )   ( 1.647316s |  0.07% |  7.66% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.537747s |  0.23% | 11.54% )   ( 2.484813s |  0.11% | 11.56% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.038125s |  0.18% |  9.26% )   ( 1.999041s |  0.09% |  9.30% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.552124s |  0.23% | 11.60% )   ( 2.500556s |  0.11% | 11.64% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.993194s |  0.18% |  9.06% )   ( 1.940228s |  0.09% |  9.03% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.474864s |  0.13% |  6.70% )   ( 1.404350s |  0.06% |  6.53% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.604342s |  0.05% |  2.74% )   ( 0.590350s |  0.02% |  2.74% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.500403s |  0.13% |  6.82% )   ( 1.467746s |  0.06% |  6.83% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.521467s |  0.04% |  2.37% )   ( 0.505778s |  0.02% |  2.35% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.753866s |  0.15% |  7.97% )   ( 1.738854s |  0.08% |  8.09% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 4.137344s |  0.37% | 18.81% )   ( 4.073937s |  0.19% | 18.96% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.603413s |  0.05% |  2.74% )   ( 0.581883s |  0.02% |  2.70% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.605479s |  0.05% |  2.75% )   ( 0.539400s |  0.02% |  2.51% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004084s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004412s |  0.00% |  0.00% )   ( 0.004958s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.004821s |  0.00% |  0.02% )   ( 0.004906s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p21\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p21_PID})
998.3.0:        ( 20.418038s |  1.85% |  3.71% )   ( 19.722841s |  0.92% |  1.85% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001068s |  0.00% |  0.00% )   ( 0.001094s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p22 p22_PID (&)
6.4.0:          ( 20.416824s |  1.85% | 99.99% )   ( 19.721582s |  0.92% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000166s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000176s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p22
12.5.0:         ( 0.039957s |  0.00% |  0.19% )   ( 0.039831s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.039955s |  0.00% |  0.19% )   ( 0.039823s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.039964s |  0.00% |  0.19% )   ( 0.039839s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.039508s |  0.00% |  0.19% )   ( 0.039382s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.040547s |  0.00% |  0.19% )   ( 0.040436s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003732s |  0.00% |  0.00% )   ( 0.004170s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ true
20.5.0:         ( 0.003190s |  0.00% |  0.00% )   ( 0.003625s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004021s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p22
23.5.0:         ( 0.219528s |  0.01% |  0.04% )   ( 0.005424s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004039s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003321s |  0.00% |  0.00% )   ( 0.003789s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003141s |  0.00% |  0.00% )   ( 0.003579s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003359s |  0.00% |  0.00% )   ( 0.003803s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.029134s |  0.00% |  0.00% )   ( 0.026837s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004306s |  0.00% |  0.00% )   ( 0.003929s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003869s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p22
36.5.0:         ( 0.006198s |  0.00% |  0.00% )   ( 0.003633s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003019s |  0.00% |  0.00% )   ( 0.003461s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 19.909516s |  1.80% |  4.64% )   ( 19.429777s |  0.91% |  4.69% )    	(21x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003065s |  0.00% |  0.01% )   ( 0.003487s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.428800s |  0.12% |  7.17% )   ( 1.380321s |  0.06% |  7.10% )    	(21x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.656663s |  0.24% | 13.34% )   ( 2.631430s |  0.12% | 13.54% )    	(21x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 2.066762s |  0.18% | 10.38% )   ( 2.026832s |  0.09% | 10.43% )    	(21x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.663350s |  0.24% | 13.37% )   ( 2.601655s |  0.12% | 13.39% )    	(21x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 2.013380s |  0.18% | 10.11% )   ( 1.981374s |  0.09% | 10.19% )    	(21x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.286042s |  0.11% |  6.45% )   ( 1.248229s |  0.05% |  6.42% )    	(21x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.512831s |  0.04% |  2.57% )   ( 0.496730s |  0.02% |  2.55% )    	(21x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.223627s |  0.11% |  6.14% )   ( 1.195983s |  0.05% |  6.15% )    	(21x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.434287s |  0.03% |  2.18% )   ( 0.418689s |  0.01% |  2.15% )    	(21x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.399710s |  0.12% |  7.03% )   ( 1.376013s |  0.06% |  7.08% )    	(21x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.203184s |  0.29% | 16.08% )   ( 3.157260s |  0.14% | 16.24% )    	(21x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.542163s |  0.04% |  2.72% )   ( 0.467602s |  0.02% |  2.40% )    	(21x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.475652s |  0.04% |  2.38% )   ( 0.444172s |  0.02% |  2.28% )    	(21x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003152s |  0.00% |  0.00% )   ( 0.003578s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003956s |  0.00% |  0.00% )   ( 0.003330s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003255s |  0.00% |  0.00% )   ( 0.003668s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005176s |  0.00% |  0.02% )   ( 0.005243s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p22\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p22_PID})
998.3.0:        ( 17.341044s |  1.57% |  3.15% )   ( 16.452129s |  0.77% |  1.54% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001108s |  0.00% |  0.00% )   ( 0.001133s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p23 p23_PID (&)
6.4.0:          ( 17.339790s |  1.57% | 99.99% )   ( 16.450830s |  0.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000190s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p23
12.5.0:         ( 0.038768s |  0.00% |  0.22% )   ( 0.038626s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.043697s |  0.00% |  0.25% )   ( 0.043544s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.042051s |  0.00% |  0.24% )   ( 0.041863s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.041641s |  0.00% |  0.24% )   ( 0.041494s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.042982s |  0.00% |  0.24% )   ( 0.042787s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004519s |  0.00% |  0.00% )   ( 0.005081s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004546s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004776s |  0.00% |  0.00% )   ( 0.005324s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p23
23.5.0:         ( 0.105032s |  0.00% |  0.02% )   ( 0.005692s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004718s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004061s |  0.00% |  0.00% )   ( 0.004614s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004398s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004046s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.035783s |  0.00% |  0.00% )   ( 0.033255s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004355s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004797s |  0.00% |  0.00% )   ( 0.005370s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p23
36.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004414s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003706s |  0.00% |  0.00% )   ( 0.004233s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 16.920361s |  1.53% |  3.75% )   ( 16.126304s |  0.75% |  3.77% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003907s |  0.00% |  0.02% )   ( 0.004464s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.150970s |  0.10% |  6.80% )   ( 1.081476s |  0.05% |  6.70% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.884370s |  0.17% | 11.13% )   ( 1.849424s |  0.08% | 11.46% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.588094s |  0.14% |  9.38% )   ( 1.551943s |  0.07% |  9.62% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.879164s |  0.17% | 11.10% )   ( 1.829937s |  0.08% | 11.34% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.624040s |  0.14% |  9.59% )   ( 1.481575s |  0.06% |  9.18% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.093916s |  0.09% |  6.46% )   ( 0.979071s |  0.04% |  6.07% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.574150s |  0.05% |  3.39% )   ( 0.530316s |  0.02% |  3.28% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.079477s |  0.09% |  6.37% )   ( 1.008279s |  0.04% |  6.25% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.493671s |  0.04% |  2.91% )   ( 0.462350s |  0.02% |  2.86% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.455676s |  0.13% |  8.60% )   ( 1.338480s |  0.06% |  8.29% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.024475s |  0.27% | 17.87% )   ( 2.979514s |  0.14% | 18.47% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.540478s |  0.04% |  3.19% )   ( 0.524476s |  0.02% |  3.25% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.527973s |  0.04% |  3.12% )   ( 0.504999s |  0.02% |  3.13% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003907s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003591s |  0.00% |  0.00% )   ( 0.004081s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004520s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.010240s |  0.00% |  0.05% )   ( 0.010334s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p23\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p23_PID})
998.3.0:        ( 17.305148s |  1.57% |  3.14% )   ( 16.530855s |  0.77% |  1.55% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.000929s |  0.00% |  0.00% )   ( 0.000959s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p24 p24_PID (&)
6.4.0:          ( 17.304045s |  1.57% | 99.99% )   ( 16.529698s |  0.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p24
12.5.0:         ( 0.040208s |  0.00% |  0.23% )   ( 0.040064s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040463s |  0.00% |  0.23% )   ( 0.040317s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.040314s |  0.00% |  0.23% )   ( 0.040161s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.044685s |  0.00% |  0.25% )   ( 0.044521s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.043871s |  0.00% |  0.25% )   ( 0.043709s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.005121s |  0.00% |  0.00% )   ( 0.005732s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ true
20.5.0:         ( 0.004631s |  0.00% |  0.00% )   ( 0.005205s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005611s |  0.00% |  0.00% )   ( 0.006221s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p24
23.5.0:         ( 0.188747s |  0.01% |  0.03% )   ( 0.006950s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004911s |  0.00% |  0.00% )   ( 0.005557s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004498s |  0.00% |  0.00% )   ( 0.005112s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.004330s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004552s |  0.00% |  0.00% )   ( 0.005066s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.038082s |  0.00% |  0.00% )   ( 0.035542s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.005040s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.005291s |  0.00% |  0.00% )   ( 0.005903s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p24
36.5.0:         ( 0.004100s |  0.00% |  0.00% )   ( 0.004657s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003994s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 16.796854s |  1.52% |  3.46% )   ( 16.199216s |  0.76% |  3.50% )    	(28x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004253s |  0.00% |  0.02% )   ( 0.004845s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.104004s |  0.10% |  6.57% )   ( 1.085290s |  0.05% |  6.69% )    	(28x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.893953s |  0.17% | 11.27% )   ( 1.846592s |  0.08% | 11.39% )    	(28x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.611502s |  0.14% |  9.59% )   ( 1.564514s |  0.07% |  9.65% )    	(28x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.887920s |  0.17% | 11.23% )   ( 1.821327s |  0.08% | 11.24% )    	(28x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.592603s |  0.14% |  9.48% )   ( 1.498811s |  0.07% |  9.25% )    	(28x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.020489s |  0.09% |  6.07% )   ( 0.986005s |  0.04% |  6.08% )    	(28x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.595958s |  0.05% |  3.54% )   ( 0.562994s |  0.02% |  3.47% )    	(28x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.086442s |  0.09% |  6.46% )   ( 1.029751s |  0.04% |  6.35% )    	(28x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.533932s |  0.04% |  3.17% )   ( 0.498142s |  0.02% |  3.07% )    	(28x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.403453s |  0.12% |  8.35% )   ( 1.380520s |  0.06% |  8.52% )    	(28x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.915959s |  0.26% | 17.36% )   ( 2.827228s |  0.13% | 17.45% )    	(28x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.600699s |  0.05% |  3.57% )   ( 0.555334s |  0.02% |  3.42% )    	(28x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.545687s |  0.04% |  3.24% )   ( 0.537863s |  0.02% |  3.32% )    	(28x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005186s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004292s |  0.00% |  0.00% )   ( 0.004825s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005052s |  0.00% |  0.02% )   ( 0.005125s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p24\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p24_PID})
998.3.0:        ( 17.820799s |  1.61% |  3.23% )   ( 16.887184s |  0.79% |  1.58% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001087s |  0.00% |  0.00% )   ( 0.001111s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p25 p25_PID (&)
6.4.0:          ( 17.819564s |  1.61% | 99.99% )   ( 16.885905s |  0.79% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000172s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000172s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p25
12.5.0:         ( 0.037154s |  0.00% |  0.20% )   ( 0.036993s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.040662s |  0.00% |  0.22% )   ( 0.040520s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.040490s |  0.00% |  0.22% )   ( 0.040341s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.039766s |  0.00% |  0.22% )   ( 0.039635s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.040575s |  0.00% |  0.22% )   ( 0.040435s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004745s |  0.00% |  0.00% )   ( 0.005299s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004783s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.005045s |  0.00% |  0.00% )   ( 0.005622s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p25
23.5.0:         ( 0.130862s |  0.01% |  0.02% )   ( 0.005820s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004117s |  0.00% |  0.00% )   ( 0.004659s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003947s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003700s |  0.00% |  0.00% )   ( 0.004201s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.031441s |  0.00% |  0.00% )   ( 0.031852s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007130s |  0.00% |  0.00% )   ( 0.004660s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004708s |  0.00% |  0.00% )   ( 0.005261s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p25
36.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004511s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004149s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 17.391090s |  1.57% |  3.75% )   ( 16.578058s |  0.77% |  3.77% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003698s |  0.00% |  0.02% )   ( 0.004216s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.205967s |  0.10% |  6.93% )   ( 1.105523s |  0.05% |  6.66% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.983480s |  0.17% | 11.40% )   ( 1.909309s |  0.08% | 11.51% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.785973s |  0.16% | 10.26% )   ( 1.602631s |  0.07% |  9.66% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.937169s |  0.17% | 11.13% )   ( 1.895505s |  0.08% | 11.43% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.581631s |  0.14% |  9.09% )   ( 1.528901s |  0.07% |  9.22% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.026574s |  0.09% |  5.90% )   ( 0.989080s |  0.04% |  5.96% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.545356s |  0.04% |  3.13% )   ( 0.522889s |  0.02% |  3.15% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.065858s |  0.09% |  6.12% )   ( 1.047627s |  0.04% |  6.31% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.483912s |  0.04% |  2.78% )   ( 0.464051s |  0.02% |  2.79% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.462010s |  0.13% |  8.40% )   ( 1.410001s |  0.06% |  8.50% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.205633s |  0.29% | 18.43% )   ( 3.079922s |  0.14% | 18.57% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.563296s |  0.05% |  3.23% )   ( 0.519887s |  0.02% |  3.13% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.540533s |  0.04% |  3.10% )   ( 0.498516s |  0.02% |  3.00% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004486s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003559s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004021s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005439s |  0.00% |  0.03% )   ( 0.005503s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p25\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p25_PID})
998.3.0:        ( 17.301772s |  1.57% |  3.14% )   ( 16.535834s |  0.77% |  1.55% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001066s |  0.00% |  0.00% )   ( 0.001088s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p26 p26_PID (&)
6.4.0:          ( 17.300554s |  1.57% | 99.99% )   ( 16.534578s |  0.77% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000178s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p26
12.5.0:         ( 0.055721s |  0.00% |  0.32% )   ( 0.044420s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.048785s |  0.00% |  0.28% )   ( 0.045595s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.043601s |  0.00% |  0.25% )   ( 0.043456s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.039965s |  0.00% |  0.23% )   ( 0.039839s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.040509s |  0.00% |  0.23% )   ( 0.040389s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.004642s |  0.00% |  0.00% )   ( 0.005174s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ true
20.5.0:         ( 0.004112s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.004928s |  0.00% |  0.00% )   ( 0.005470s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p26
23.5.0:         ( 0.109067s |  0.00% |  0.02% )   ( 0.005757s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.004124s |  0.00% |  0.00% )   ( 0.004601s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.004102s |  0.00% |  0.00% )   ( 0.004646s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.032850s |  0.00% |  0.00% )   ( 0.033297s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.007329s |  0.00% |  0.00% )   ( 0.004868s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.004977s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p26
36.5.0:         ( 0.003781s |  0.00% |  0.00% )   ( 0.004277s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003856s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 16.862047s |  1.53% |  3.74% )   ( 16.209175s |  0.76% |  3.77% )    	(26x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004122s |  0.00% |  0.02% )   ( 0.004682s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.120631s |  0.10% |  6.64% )   ( 1.092997s |  0.05% |  6.74% )    	(26x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 1.953567s |  0.17% | 11.58% )   ( 1.866385s |  0.08% | 11.51% )    	(26x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.649513s |  0.14% |  9.78% )   ( 1.575851s |  0.07% |  9.72% )    	(26x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 1.956243s |  0.17% | 11.60% )   ( 1.852512s |  0.08% | 11.42% )    	(26x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.567345s |  0.14% |  9.29% )   ( 1.510339s |  0.07% |  9.31% )    	(26x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.004459s |  0.09% |  5.95% )   ( 0.973709s |  0.04% |  6.00% )    	(26x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.520800s |  0.04% |  3.08% )   ( 0.517202s |  0.02% |  3.19% )    	(26x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.073910s |  0.09% |  6.36% )   ( 1.019089s |  0.04% |  6.28% )    	(26x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.476653s |  0.04% |  2.82% )   ( 0.456577s |  0.02% |  2.81% )    	(26x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.434091s |  0.13% |  8.50% )   ( 1.356706s |  0.06% |  8.36% )    	(26x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 2.981902s |  0.27% | 17.68% )   ( 2.951955s |  0.13% | 18.21% )    	(26x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.570771s |  0.05% |  3.38% )   ( 0.521377s |  0.02% |  3.21% )    	(26x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.548040s |  0.04% |  3.25% )   ( 0.509794s |  0.02% |  3.14% )    	(26x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004375s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.003746s |  0.00% |  0.00% )   ( 0.004264s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.004269s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.005211s |  0.00% |  0.03% )   ( 0.005280s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p26\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p26_PID})
998.3.0:        ( 18.831775s |  1.70% |  3.42% )   ( 18.210392s |  0.85% |  1.71% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001074s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p27 p27_PID (&)
6.4.0:          ( 18.830553s |  1.70% | 99.99% )   ( 18.209126s |  0.85% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
6.5.0:          ( 0.000175s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.3eYsNc"
8.5.0:          ( 0.000182s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p27
12.5.0:         ( 0.068694s |  0.00% |  0.36% )   ( 0.053574s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │ $'trap \': >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
14.5.0:         ( 0.047234s |  0.00% |  0.25% )   ( 0.047072s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 147584 ${BASHPID}' INT
15.5.0:         ( 0.045116s |  0.00% |  0.23% )   ( 0.044927s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 147584 ${BASHPID}' TERM
16.5.0:         ( 0.044555s |  0.00% |  0.23% )   ( 0.044227s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 147584 ${BASHPID}' HUP
17.5.0:         ( 0.043658s |  0.00% |  0.23% )   ( 0.043497s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
19.5.0:         ( 0.003675s |  0.00% |  0.00% )   ( 0.004126s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ true
20.5.0:         ( 0.003087s |  0.00% |  0.00% )   ( 0.003506s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nLinesAutoFlag}
20.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun/forkrun.3eYsNc"/.nLines
20.5.2:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
20.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
22.5.0:         ( 0.003817s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p27
23.5.0:         ( 0.114227s |  0.01% |  0.02% )   ( 0.004688s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ read -r -u 21 _
24.5.0:         ( 0.003145s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.quit ]]
28.5.0:         ( 0.003234s |  0.00% |  0.00% )   ( 0.003676s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.done ]]
28.5.1:         ( 0.002980s |  0.00% |  0.00% )   ( 0.003399s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ doneIndicatorFlag=true
30.5.0:         ( 0.003151s |  0.00% |  0.00% )   ( 0.003544s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ evfd_wait 25
31.5.0:         ( 0.024996s |  0.00% |  0.00% )   ( 0.025320s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
34.5.0:         ( 0.005965s |  0.00% |  0.00% )   ( 0.003700s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ printf '\n' 1>&21
35.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun/forkrun.3eYsNc"/.wait/p27
36.5.0:         ( 0.008282s |  0.00% |  0.00% )   ( 0.003630s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
56.5.0:         ( 0.003030s |  0.00% |  0.00% )   ( 0.003452s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nLinesAutoFlag}
57.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
58.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
58.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
61.5.0:         ( 18.381154s |  1.66% |  4.88% )   ( 17.886581s |  0.84% |  4.91% )    	(20x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003059s |  0.00% |  0.01% )   ( 0.003474s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─ff "${A[@]}"
6.6.0:          ( 1.252620s |  0.11% |  6.81% )   ( 1.225497s |  0.05% |  6.85% )    	(20x)	│  │  │  │  │  │ sha1sum "${@}"
7.6.0:          ( 2.328807s |  0.21% | 12.66% )   ( 2.267859s |  0.10% | 12.67% )    	(20x)	│  │  │  │  │  │ sha256sum "${@}"
8.6.0:          ( 1.812823s |  0.16% |  9.86% )   ( 1.781111s |  0.08% |  9.95% )    	(20x)	│  │  │  │  │  │ sha512sum "${@}"
9.6.0:          ( 2.357997s |  0.21% | 12.82% )   ( 2.265417s |  0.10% | 12.66% )    	(20x)	│  │  │  │  │  │ sha224sum "${@}"
10.6.0:         ( 1.755741s |  0.15% |  9.55% )   ( 1.735088s |  0.08% |  9.70% )    	(20x)	│  │  │  │  │  │ sha384sum "${@}"
11.6.0:         ( 1.118471s |  0.10% |  6.08% )   ( 1.110163s |  0.05% |  6.20% )    	(20x)	│  │  │  │  │  │ md5sum "${@}"
12.6.0:         ( 0.522976s |  0.04% |  2.84% )   ( 0.472686s |  0.02% |  2.64% )    	(20x)	│  │  │  │  │  │ sum -s "${@}"
13.6.0:         ( 1.241325s |  0.11% |  6.75% )   ( 1.217475s |  0.05% |  6.80% )    	(20x)	│  │  │  │  │  │ sum -r "${@}"
14.6.0:         ( 0.447430s |  0.04% |  2.43% )   ( 0.402102s |  0.01% |  2.24% )    	(20x)	│  │  │  │  │  │ cksum "${@}"
15.6.0:         ( 1.587949s |  0.14% |  8.63% )   ( 1.533725s |  0.07% |  8.57% )    	(20x)	│  │  │  │  │  │ b2sum "${@}"
16.6.0:         ( 3.079905s |  0.27% | 16.75% )   ( 3.021925s |  0.14% | 16.89% )    	(20x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
17.6.0:         ( 0.444230s |  0.04% |  2.41% )   ( 0.433976s |  0.02% |  2.42% )    	(20x)	│  │  │  │  │  │ xxhsum "${@}"
18.6.0:         ( 0.427821s |  0.03% |  2.32% )   ( 0.416083s |  0.01% |  2.32% )    	(20x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
20.5.1:         ( 0.002973s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │ ${nSpawnFlag}
56.5.1:         ( 0.002840s |  0.00% |  0.00% )   ( 0.003214s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ ${nSpawnFlag}
59.5.0:         ( 0.003046s |  0.00% |  0.00% )   ( 0.003441s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
25.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '\n' 1>&21
26.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
2.5.0:          ( 0.006522s |  0.00% |  0.03% )   ( 0.006584s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.3eYsNc"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.3eYsNc"/.run/p27\; $'\n'printf '\n' >&21
226.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p27_PID})
1000.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1001.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
1002.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1004.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
1008.3.0:       ( 0.001373s |  0.00% |  0.00% )   ( 0.001386s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
1009.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
1053.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1054.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
1061.3.0:       ( 24.443988s |  2.21% |  4.44% )   ( 563.260613s | 26.48% | 52.94% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
1063.3.0:       ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
1066.3.0:       ( 0.000078s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
1067.2.0:       ( 0.000338s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.00% )    	(1x)	│  │ wait
7.2.0:          ( 0.004500s |  0.00% |  0.00% )   ( 0.004582s |  0.00% |  0.00% )    	(1x)	└─ └─@TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.3eYsNc" 2>/dev/null

TOTAL RUN TIME: 1101.939581s
TOTAL CPU TIME: 2126.357725s
