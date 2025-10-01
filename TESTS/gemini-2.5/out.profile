LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________
1.0.0:          ( 0.000068s |  0.00% )            ( 0.000081s |  0.01% )             	(1x)	set -o monitor

2.0.0:          ( 0.000475s |  0.04% )            ( 0.000306s |  0.06% )             	(1x)	TMPDIR=$(mktemp -d)
2.0.1:          ( 0.436106s | 40.53% )            ( 0.436106s | 97.23% )             	(1x)	@TRAP (SIGCHLD): echo "[TRAP] A child process has exited." :: @TRAP (SIGCHLD): echo "[TRAP] A child process has exited." :: @TRAP (SIGCHLD): echo "[TRAP] A child process has exited." :: @TRAP (SIGCHLD): echo "[TRAP] A child process has exited." :: @TRAP (SIGCHLD): echo "[TRAP] A child process has exited." :: @TRAP (SIGCHLD): echo "[TRAP] A child process has exited." :: @TRAP (SIGCHLD): echo "[TRAP] A child process has exited."

6.0.0:          ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	INPUT_PIPE="$TMPDIR/input.pipe"

7.0.0:          ( 0.000068s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	OUTPUT_PIPE="$TMPDIR/output.pipe"

8.0.0:          ( 0.001153s |  0.10% )            ( 0.001226s |  0.27% )             	(1x)	mkfifo "$INPUT_PIPE"

9.0.0:          ( 0.001078s |  0.10% )            ( 0.001154s |  0.25% )             	(1x)	mkfifo "$OUTPUT_PIPE"

19.0.0:         ( 0.328523s | 30.53% )            ( 0.001127s |  0.25% )             	(1x)	<< (BACKGROUND FORK) >>
19.1.0:         ( 0.328125s | 30.50% | 33.29% )   ( 0.000659s |  0.14% | 19.49% )    	(3x)	├─read -r line
20.1.0:         ( 0.000221s |  0.02% |  0.03% )   ( 0.000258s |  0.05% | 11.44% )    	(2x)	│ echo "[COPROC] Received: $line" 1>&2
21.1.0:         ( 0.000177s |  0.01% |  0.02% )   ( 0.000210s |  0.04% |  9.31% )    	(2x)	└─echo "$line"

54.0.0:         ( 0.000001s |  0.00% )            ( 0.000001s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>

62.0.0:         ( 0.000001s |  0.00% )            ( 0.000001s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>

70.0.0:         ( 0.000001s |  0.00% )            ( 0.000001s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>

76.0.0:         ( 0.000001s |  0.00% )            ( 0.000001s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
77.1.0:         ( 0.000001s |  0.00% |100.00% )   ( 0.000001s |  0.00% |100.00% )    	(1x)	└─<< (SUBSHELL) >>

84.0.0:         ( 0.308261s | 28.65% )            ( 0.008351s |  1.86% )             	(1x)	<< (BACKGROUND FORK) >>
86.1.0:         ( 0.308261s | 28.65% |100.00% )   ( 0.008351s |  1.86% |100.00% )    	(1x)	├─<< (FUNCTION): main.recursive_function 1 >>
1.2.0:          ( 0.000067s |  0.00% |  0.02% )   ( 0.000081s |  0.01% |  0.96% )    	(1x)	│  ├─recursive_function 1
2.2.0:          ( 0.000077s |  0.00% |  0.02% )   ( 0.000087s |  0.01% |  1.04% )    	(1x)	│  │ local depth=$1
3.2.0:          ( 0.000071s |  0.00% |  0.02% )   ( 0.000085s |  0.01% |  1.01% )    	(1x)	│  │ [ $depth -gt 3 ]
6.2.0:          ( 0.000079s |  0.00% |  0.02% )   ( 0.000092s |  0.02% |  1.10% )    	(1x)	│  │ echo "[RECURSIVE] Depth: $depth" 1>&2
7.2.0:          ( 0.101562s |  9.44% | 32.94% )   ( 0.001501s |  0.33% | 17.97% )    	(1x)	│  │ sleep 0.1
8.2.0:          ( 0.206405s | 19.18% | 66.95% )   ( 0.006505s |  1.45% | 77.89% )    	(1x)	│  │ << (FUNCTION): main.recursive_function.recursive_function $((depth + 1)) >>
1.3.0:          ( 0.000066s |  0.00% |  0.03% )   ( 0.000081s |  0.01% |  1.24% )    	(1x)	│  │  ├─recursive_function $((depth + 1))
2.3.0:          ( 0.000070s |  0.00% |  0.03% )   ( 0.000084s |  0.01% |  1.29% )    	(1x)	│  │  │ local depth=$1
3.3.0:          ( 0.000070s |  0.00% |  0.03% )   ( 0.000084s |  0.01% |  1.29% )    	(1x)	│  │  │ [ $depth -gt 3 ]
6.3.0:          ( 0.000082s |  0.00% |  0.03% )   ( 0.000096s |  0.02% |  1.47% )    	(1x)	│  │  │ echo "[RECURSIVE] Depth: $depth" 1>&2
7.3.0:          ( 0.102776s |  9.55% | 49.79% )   ( 0.002781s |  0.62% | 42.75% )    	(1x)	│  │  │ sleep 0.1
8.3.0:          ( 0.103341s |  9.60% | 50.06% )   ( 0.003379s |  0.75% | 51.94% )    	(1x)	│  │  │ << (FUNCTION): main.recursive_function.recursive_function.recursive_function $((depth + 1)) >>
1.4.0:          ( 0.000071s |  0.00% |  0.06% )   ( 0.000086s |  0.01% |  2.54% )    	(1x)	│  │  │  ├─recursive_function $((depth + 1))
2.4.0:          ( 0.000071s |  0.00% |  0.06% )   ( 0.000085s |  0.01% |  2.51% )    	(1x)	│  │  │  │ local depth=$1
3.4.0:          ( 0.000071s |  0.00% |  0.06% )   ( 0.000086s |  0.01% |  2.54% )    	(1x)	│  │  │  │ [ $depth -gt 3 ]
6.4.0:          ( 0.000095s |  0.00% |  0.09% )   ( 0.000110s |  0.02% |  3.25% )    	(1x)	│  │  │  │ echo "[RECURSIVE] Depth: $depth" 1>&2
7.4.0:          ( 0.102743s |  9.55% | 99.42% )   ( 0.002662s |  0.59% | 78.78% )    	(1x)	│  │  │  │ sleep 0.1
8.4.0:          ( 0.000290s |  0.02% |  0.28% )   ( 0.000350s |  0.07% | 10.35% )    	(1x)	│  │  │  │ << (FUNCTION): main.recursive_function.recursive_function.recursive_function.recursive_function $((depth + 1)) >>
1.5.0:          ( 0.000072s |  0.00% | 24.82% )   ( 0.000086s |  0.01% | 24.57% )    	(1x)	│  │  │  │  ├─recursive_function $((depth + 1))
2.5.0:          ( 0.000073s |  0.00% | 25.17% )   ( 0.000088s |  0.01% | 25.14% )    	(1x)	│  │  │  │  │ local depth=$1
3.5.0:          ( 0.000072s |  0.00% | 24.82% )   ( 0.000087s |  0.01% | 24.85% )    	(1x)	│  │  │  │  │ [ $depth -gt 3 ]
4.5.0:          ( 0.000073s |  0.00% | 25.17% )   ( 0.000089s |  0.01% | 25.42% )    	(1x)	└─ └─ └─ └─ └─return

TOTAL RUN TIME: 1.075804s
TOTAL CPU TIME: 0.448519s
