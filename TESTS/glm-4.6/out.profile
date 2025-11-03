LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.317722s | 20.24% )            ( 0.009770s |  1.60% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.317722s | 20.24% |100.00% )   ( 0.009770s |  1.60% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000104s |  0.00% |  0.03% )   ( 0.000123s |  0.02% |  1.25% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000099s |  0.00% |  0.03% )   ( 0.000117s |  0.01% |  1.19% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000110s |  0.00% |  0.03% )   ( 0.000124s |  0.02% |  1.26% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000368s |  0.02% |  0.11% )   ( 0.000410s |  0.06% |  4.19% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.207268s | 13.20% | 65.23% )   ( 0.007406s |  1.21% | 75.80% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.103465s |  6.59% | 49.91% )   ( 0.003535s |  0.57% | 47.73% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101443s |  6.46% | 98.04% )   ( 0.001392s |  0.22% | 39.37% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002022s |  0.12% |  1.95% )   ( 0.002143s |  0.35% | 60.62% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103803s |  6.61% | 50.08% )   ( 0.003871s |  0.63% | 52.26% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101504s |  6.46% | 97.78% )   ( 0.001465s |  0.23% | 37.84% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002299s |  0.14% |  2.21% )   ( 0.002406s |  0.39% | 62.15% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000436s |  0.02% |  0.13% )   ( 0.000454s |  0.07% |  4.64% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.01% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000082s |  0.00% |  0.02% )   ( 0.000096s |  0.01% |  0.98% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.109255s |  6.96% | 34.38% )   ( 0.001040s |  0.17% | 10.64% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.321261s | 20.46% )            ( 0.009355s |  1.53% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.321261s | 20.46% |100.00% )   ( 0.009355s |  1.53% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000074s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.94% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000072s |  0.00% |  0.02% )   ( 0.000086s |  0.01% |  0.91% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000077s |  0.00% |  0.02% )   ( 0.000092s |  0.01% |  0.98% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000305s |  0.01% |  0.09% )   ( 0.000338s |  0.05% |  3.61% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.207580s | 13.22% | 64.61% )   ( 0.007812s |  1.27% | 83.50% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.103503s |  6.59% | 49.86% )   ( 0.003556s |  0.58% | 45.51% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101203s |  6.44% | 97.77% )   ( 0.001183s |  0.19% | 33.26% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002300s |  0.14% |  2.22% )   ( 0.002373s |  0.38% | 66.73% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104077s |  6.63% | 50.13% )   ( 0.004256s |  0.69% | 54.48% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102740s |  6.54% | 98.71% )   ( 0.002785s |  0.45% | 65.43% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001337s |  0.08% |  1.28% )   ( 0.001471s |  0.24% | 34.56% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000400s |  0.02% |  0.12% )   ( 0.000421s |  0.06% |  4.50% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.01% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000082s |  0.00% |  0.02% )   ( 0.000097s |  0.01% |  1.03% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.112671s |  7.17% | 35.07% )   ( 0.000421s |  0.06% |  4.50% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000068s |  0.00% )            ( 0.000081s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000079s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.022044s |  1.40% )            ( 0.021991s |  3.60% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:        ( 0.000088s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	sourced_var="initial_value"-
21.0.0:         ( 0.026003s |  1.65% )            ( 0.025938s |  4.24% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

23.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.023027s |  1.46% )            ( 0.022970s |  3.76% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000092s |  0.00% )            ( 0.000105s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007812s |  0.49% |  0.00% )   ( 0.009296s |  1.52% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007886s |  0.50% |  0.00% )   ( 0.009318s |  1.52% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.040683s |  2.59% |  0.02% )   ( 0.042731s |  6.99% |  0.06% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.023439s |  1.49% |  0.01% )   ( 0.026727s |  4.37% |  0.04% )    	(100x)	<< (SUBSHELL) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.012954s |  0.82% | 55.26% )   ( 0.014632s |  2.39% | 54.74% )    	(100x)	├─  read
37.1.1:         ( 0.010485s |  0.66% | 44.73% )   ( 0.012095s |  1.98% | 45.25% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.057466s |  3.66% |  0.03% )   ( 0.044295s |  7.25% |  0.07% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.363323s | 23.14% |  0.23% )   ( 0.346715s | 56.78% |  0.56% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.066774s |  4.25% | 18.37% )   ( 0.047973s |  7.85% | 13.83% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.296549s | 18.89% | 81.62% )   ( 0.298742s | 48.92% | 86.16% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.281539s | 17.93% | 94.93% )   ( 0.281539s | 46.11% | 94.24% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.015010s |  0.95% |  5.06% )   ( 0.017203s |  2.81% |  5.75% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.015010s |  0.95% |100.00% )   ( 0.017203s |  2.81% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000076s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000080s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202552s | 12.90% )            ( 0.002568s |  0.42% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202358s | 12.89% | 99.90% )   ( 0.002349s |  0.38% | 91.47% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000194s |  0.01% |  0.09% )   ( 0.000219s |  0.03% |  8.52% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000068s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000077s |  0.00% )            ( 0.000092s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000095s |  0.00% )            ( 0.000109s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.131218s |  8.36% )            ( 0.000506s |  0.08% )             	(1x)	wait

73.0.0:         ( 0.000085s |  0.00% )            ( 0.000099s |  0.01% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000133s |  0.00% )            ( 0.000148s |  0.02% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000648s |  0.04% )            ( 0.000546s |  0.08% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.004591s |  0.29% )            ( 0.004591s |  0.75% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.004591s |  0.29% |100.00% )   ( 0.004591s |  0.75% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.001655s |  0.10% )            ( 0.001729s |  0.28% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004747s |  0.30% |  0.15% )   ( 0.004748s |  0.77% |  0.38% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.005771s |  0.36% )            ( 0.007990s |  1.30% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000072s |  0.00% |  1.24% )   ( 0.000086s |  0.01% |  1.07% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000081s |  0.00% |  1.40% )   ( 0.000095s |  0.01% |  1.18% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000078s |  0.00% |  1.35% )   ( 0.000089s |  0.01% |  1.11% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.005540s |  0.35% | 95.99% )   ( 0.007720s |  1.26% | 96.62% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000089s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001055s |  0.06% )            ( 0.001152s |  0.18% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000083s |  0.00% )            ( 0.000097s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000143s |  0.00% )            ( 0.000166s |  0.02% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000072s |  0.00% | 50.34% )   ( 0.000082s |  0.01% | 49.39% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000071s |  0.00% | 49.65% )   ( 0.000084s |  0.01% | 50.60% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000079s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.001956s |  0.12% )            ( 0.012442s |  2.03% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000066s |  0.00% |  3.37% )   ( 0.000080s |  0.01% |  0.64% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000071s |  0.00% |  3.62% )   ( 0.000086s |  0.01% |  0.69% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000066s |  0.00% |  3.37% )   ( 0.000079s |  0.01% |  0.63% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000076s |  0.00% |  3.88% )   ( 0.000090s |  0.01% |  0.72% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000062s |  0.00% |  3.16% )   ( 0.000075s |  0.01% |  0.60% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001615s |  0.10% | 82.56% )   ( 0.012032s |  1.97% | 96.70% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000064s |  0.00% |  3.96% )   ( 0.000078s |  0.01% |  0.64% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000073s |  0.00% |  4.52% )   ( 0.000083s |  0.01% |  0.68% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000080s |  0.00% |  4.95% )   ( 0.000094s |  0.01% |  0.78% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000092s |  0.00% |  5.69% )   ( 0.010201s |  1.67% | 84.78% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000063s |  0.00% |  3.90% )   ( 0.000076s |  0.01% |  0.63% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001243s |  0.07% | 76.96% )   ( 0.001500s |  0.24% | 12.46% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000062s |  0.00% |  4.98% )   ( 0.000076s |  0.01% |  5.06% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000066s |  0.00% |  5.30% )   ( 0.000079s |  0.01% |  5.26% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000063s |  0.00% |  5.06% )   ( 0.000077s |  0.01% |  5.13% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000076s |  0.00% |  6.11% )   ( 0.000090s |  0.01% |  6.00% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000064s |  0.00% |  5.14% )   ( 0.000078s |  0.01% |  5.20% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000912s |  0.05% | 73.37% )   ( 0.001100s |  0.18% | 73.33% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000068s |  0.00% |  7.45% )   ( 0.000080s |  0.01% |  7.27% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000068s |  0.00% |  7.45% )   ( 0.000082s |  0.01% |  7.45% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000067s |  0.00% |  7.34% )   ( 0.000082s |  0.01% |  7.45% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000081s |  0.00% |  8.88% )   ( 0.000096s |  0.01% |  8.72% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000070s |  0.00% |  7.67% )   ( 0.000086s |  0.01% |  7.81% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000558s |  0.03% | 61.18% )   ( 0.000674s |  0.11% | 61.27% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000064s |  0.00% | 11.46% )   ( 0.000080s |  0.01% | 11.86% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000068s |  0.00% | 12.18% )   ( 0.000083s |  0.01% | 12.31% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000064s |  0.00% | 11.46% )   ( 0.000078s |  0.01% | 11.57% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000076s |  0.00% | 13.62% )   ( 0.000092s |  0.01% | 13.64% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000064s |  0.00% | 11.46% )   ( 0.000078s |  0.01% | 11.57% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000222s |  0.01% | 39.78% )   ( 0.000263s |  0.04% | 39.02% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000071s |  0.00% | 31.98% )   ( 0.000082s |  0.01% | 31.17% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000069s |  0.00% | 31.08% )   ( 0.000084s |  0.01% | 31.93% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000082s |  0.00% | 36.93% )   ( 0.000097s |  0.01% | 36.88% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000076s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000066s |  0.00% )            ( 0.000079s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000100s |  0.00% )            ( 0.000130s |  0.02% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000070s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001092s |  0.06% )            ( 0.000979s |  0.16% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000404s |  0.02% )            ( 0.000404s |  0.06% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000404s |  0.02% |100.00% )   ( 0.000404s |  0.06% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000346s |  0.02% )            ( 0.000389s |  0.06% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000346s |  0.02% |100.00% )   ( 0.000389s |  0.06% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000078s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000077s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000117s |  0.00% )            ( 0.000131s |  0.02% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

TOTAL RUN TIME: 1.569586s
TOTAL CPU TIME: 0.610552s

