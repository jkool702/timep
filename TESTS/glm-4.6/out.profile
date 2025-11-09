LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.118000s |  9.08% )            ( 0.007507s |  1.01% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.118000s |  9.08% |100.00% )   ( 0.007507s |  1.01% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000079s |  0.00% |  0.02% )   ( 0.000094s |  0.01% |  0.82% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000080s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.76% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000077s |  0.00% |  0.02% )   ( 0.000091s |  0.01% |  0.79% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000357s |  0.02% |  0.11% )   ( 0.000388s |  0.05% |  3.39% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208926s | 16.08% | 64.95% )   ( 0.009090s |  1.23% | 79.46% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.103958s |  8.00% | 49.75% )   ( 0.004056s |  0.55% | 44.62% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.102076s |  7.86% | 98.18% )   ( 0.002097s |  0.28% | 51.70% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001882s |  0.14% |  1.81% )   ( 0.001959s |  0.26% | 48.29% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104968s |  8.08% | 50.24% )   ( 0.005034s |  0.68% | 55.37% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102458s |  7.88% | 97.60% )   ( 0.002450s |  0.33% | 48.66% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002510s |  0.19% |  2.39% )   ( 0.002584s |  0.35% | 51.33% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000415s |  0.03% |  0.12% )   ( 0.000433s |  0.05% |  3.78% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000083s |  0.00% |  0.02% )   ( 0.000098s |  0.01% |  0.85% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.111621s |  8.59% | 34.70% )   ( 0.001156s |  0.15% | 10.10% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.115801s |  8.91% )            ( 0.007612s |  1.03% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.115801s |  8.91% |100.00% )   ( 0.007612s |  1.03% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000104s |  0.00% |  0.03% )   ( 0.000123s |  0.01% |  1.05% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000089s |  0.00% |  0.02% )   ( 0.000093s |  0.01% |  0.79% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000078s |  0.00% |  0.02% )   ( 0.000091s |  0.01% |  0.78% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000347s |  0.02% |  0.10% )   ( 0.000378s |  0.05% |  3.24% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209056s | 16.09% | 65.43% )   ( 0.009267s |  1.25% | 79.60% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.104743s |  8.06% | 50.10% )   ( 0.004814s |  0.65% | 51.94% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.102089s |  7.86% | 97.46% )   ( 0.002040s |  0.27% | 42.37% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002654s |  0.20% |  2.53% )   ( 0.002774s |  0.37% | 57.62% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104313s |  8.03% | 49.89% )   ( 0.004453s |  0.60% | 48.05% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101586s |  7.82% | 97.38% )   ( 0.001531s |  0.20% | 34.38% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002727s |  0.20% |  2.61% )   ( 0.002922s |  0.39% | 65.61% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000432s |  0.03% |  0.13% )   ( 0.000450s |  0.06% |  3.86% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000081s |  0.00% |  0.02% )   ( 0.000095s |  0.01% |  0.81% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.109277s |  8.41% | 34.20% )   ( 0.001143s |  0.15% |  9.81% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000066s |  0.00% )            ( 0.000080s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.022028s |  1.69% )            ( 0.021971s |  2.98% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000090s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.024283s |  1.86% )            ( 0.024230s |  3.28% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000087s |  0.00% )            ( 0.000101s |  0.01% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000070s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021354s |  1.64% )            ( 0.021310s |  2.89% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000093s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007806s |  0.60% |  0.00% )   ( 0.009220s |  1.25% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007694s |  0.59% |  0.00% )   ( 0.009116s |  1.23% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.043178s |  3.32% |  0.03% )   ( 0.045000s |  6.10% |  0.06% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.023523s |  1.81% |  0.01% )   ( 0.026964s |  3.65% |  0.03% )    	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.013318s |  1.02% | 56.61% )   ( 0.015158s |  2.05% | 56.21% )    	(100x)	├─  read
37.1.1:         ( 0.010205s |  0.78% | 43.38% )   ( 0.011806s |  1.60% | 43.78% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.059001s |  4.54% |  0.04% )   ( 0.044107s |  5.98% |  0.05% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.380345s | 29.28% |  0.29% )   ( 0.362680s | 49.20% |  0.49% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.070258s |  5.41% | 18.47% )   ( 0.050553s |  6.85% | 13.93% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.310087s | 23.87% | 81.52% )   ( 0.312127s | 42.34% | 86.06% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.295649s | 22.76% | 95.34% )   ( 0.295649s | 40.11% | 94.72% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.014438s |  1.11% |  4.65% )   ( 0.016478s |  2.23% |  5.27% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.014438s |  1.11% |100.00% )   ( 0.016478s |  2.23% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000096s |  0.00% )            ( 0.000109s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000079s |  0.00% )            ( 0.000092s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202352s | 15.58% )            ( 0.002322s |  0.31% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202149s | 15.56% | 99.89% )   ( 0.002090s |  0.28% | 90.00% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000203s |  0.01% |  0.10% )   ( 0.000232s |  0.03% |  9.99% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000132s |  0.01% )            ( 0.000149s |  0.02% )             	(1x)	disown

70.0.0:         ( 0.000138s |  0.01% )            ( 0.000161s |  0.02% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.129863s | 10.00% )            ( 0.000457s |  0.06% )             	(1x)	wait

73.0.0:         ( 0.000285s |  0.02% )            ( 0.000329s |  0.04% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000447s |  0.03% )            ( 0.000495s |  0.06% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000276s |  0.02% )            ( 0.000320s |  0.04% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000077s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000473s |  0.03% )            ( 0.000322s |  0.04% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.003069s |  0.23% )            ( 0.003069s |  0.41% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.003069s |  0.23% |100.00% )   ( 0.003069s |  0.41% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.000910s |  0.07% )            ( 0.000984s |  0.13% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004677s |  0.36% |  0.18% )   ( 0.004693s |  0.63% |  0.31% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.020038s |  1.54% )            ( 0.022466s |  3.04% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000070s |  0.00% |  1.28% )   ( 0.000084s |  0.01% |  1.05% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000078s |  0.00% |  1.43% )   ( 0.000091s |  0.01% |  1.14% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000072s |  0.00% |  1.32% )   ( 0.000086s |  0.01% |  1.07% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.005230s |  0.40% | 95.96% )   ( 0.007707s |  1.04% | 96.72% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.000882s |  0.06% )            ( 0.000997s |  0.13% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000077s |  0.00% )            ( 0.000107s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000072s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.012907s |  0.99% )            ( 0.012876s |  1.74% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000070s |  0.00% | 49.29% )   ( 0.000084s |  0.01% | 49.70% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000072s |  0.00% | 50.70% )   ( 0.000085s |  0.01% | 50.29% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.095361s |  7.34% )            ( 0.103559s | 14.04% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000073s |  0.00% |  0.09% )   ( 0.000083s |  0.01% |  0.09% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000069s |  0.00% |  0.08% )   ( 0.000083s |  0.01% |  0.09% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000065s |  0.00% |  0.08% )   ( 0.000079s |  0.01% |  0.08% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000080s |  0.00% |  0.10% )   ( 0.000093s |  0.01% |  0.10% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000066s |  0.00% |  0.08% )   ( 0.000080s |  0.01% |  0.09% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.079317s |  6.10% | 99.55% )   ( 0.087577s | 11.88% | 99.52% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000079s |  0.00% |  0.12% )   ( 0.008592s |  1.16% | 11.95% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000070s |  0.00% |  0.11% )   ( 0.000084s |  0.01% |  0.11% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000066s |  0.00% |  0.10% )   ( 0.000079s |  0.01% |  0.10% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000085s |  0.00% |  0.13% )   ( 0.000095s |  0.01% |  0.13% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000065s |  0.00% |  0.10% )   ( 0.000079s |  0.01% |  0.10% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.063106s |  4.85% | 99.42% )   ( 0.062917s |  8.53% | 87.57% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000069s |  0.00% |  0.14% )   ( 0.000083s |  0.01% |  0.17% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000071s |  0.00% |  0.15% )   ( 0.000086s |  0.01% |  0.18% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000068s |  0.00% |  0.14% )   ( 0.000082s |  0.01% |  0.17% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000079s |  0.00% |  0.16% )   ( 0.000093s |  0.01% |  0.19% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000069s |  0.00% |  0.14% )   ( 0.000082s |  0.01% |  0.17% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.046731s |  3.59% | 99.24% )   ( 0.046599s |  6.32% | 99.09% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000071s |  0.00% |  0.23% )   ( 0.000085s |  0.01% |  0.27% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000073s |  0.00% |  0.23% )   ( 0.000088s |  0.01% |  0.28% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000069s |  0.00% |  0.22% )   ( 0.000083s |  0.01% |  0.27% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000086s |  0.00% |  0.28% )   ( 0.000097s |  0.01% |  0.31% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000068s |  0.00% |  0.22% )   ( 0.000081s |  0.01% |  0.26% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.030135s |  2.32% | 98.79% )   ( 0.030050s |  4.07% | 98.57% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000068s |  0.00% |  0.48% )   ( 0.000083s |  0.01% |  0.58% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000070s |  0.00% |  0.49% )   ( 0.000085s |  0.01% |  0.59% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000063s |  0.00% |  0.44% )   ( 0.000078s |  0.01% |  0.55% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000082s |  0.00% |  0.58% )   ( 0.000096s |  0.01% |  0.67% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000064s |  0.00% |  0.45% )   ( 0.000079s |  0.01% |  0.55% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.013780s |  1.06% | 97.54% )   ( 0.013753s |  1.86% | 97.02% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000065s |  0.00% | 26.74% )   ( 0.000079s |  0.01% | 27.91% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000085s |  0.00% | 34.97% )   ( 0.000100s |  0.01% | 35.33% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000093s |  0.00% | 38.27% )   ( 0.000104s |  0.01% | 36.74% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000076s |  0.00% )            ( 0.000105s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000077s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000067s |  0.00% )            ( 0.000079s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000074s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001379s |  0.10% )            ( 0.001312s |  0.17% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000094s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000094s |  0.00% |100.00% )   ( 0.000094s |  0.01% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000088s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000088s |  0.00% |100.00% )   ( 0.000102s |  0.01% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000108s |  0.00% )            ( 0.000123s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 1.298617s
TOTAL RUN TIME:  1.298617s
TOTAL CPU TIME:  0.737089s

