LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.321172s | 19.90% )            ( 0.011482s |  1.82% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.321172s | 19.90% |100.00% )   ( 0.011482s |  1.82% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000109s |  0.00% |  0.03% )   ( 0.000128s |  0.02% |  1.11% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000105s |  0.00% |  0.03% )   ( 0.000124s |  0.01% |  1.07% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000106s |  0.00% |  0.03% )   ( 0.000125s |  0.01% |  1.08% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000405s |  0.02% |  0.12% )   ( 0.000452s |  0.07% |  3.93% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208556s | 12.92% | 64.93% )   ( 0.008910s |  1.41% | 77.59% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.103602s |  6.42% | 49.67% )   ( 0.003869s |  0.61% | 43.42% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101570s |  6.29% | 98.03% )   ( 0.001604s |  0.25% | 41.45% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002032s |  0.12% |  1.96% )   ( 0.002265s |  0.35% | 58.54% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104954s |  6.50% | 50.32% )   ( 0.005041s |  0.79% | 56.57% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102533s |  6.35% | 97.69% )   ( 0.002499s |  0.39% | 49.57% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002421s |  0.15% |  2.30% )   ( 0.002542s |  0.40% | 50.42% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000515s |  0.03% |  0.16% )   ( 0.000541s |  0.08% |  4.71% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000082s |  0.00% |  0.02% )   ( 0.000095s |  0.01% |  0.82% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.111293s |  6.89% | 34.65% )   ( 0.001106s |  0.17% |  9.63% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.326302s | 20.22% )            ( 0.012556s |  1.99% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.326302s | 20.22% |100.00% )   ( 0.012556s |  1.99% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000140s |  0.00% |  0.04% )   ( 0.000164s |  0.02% |  1.30% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000138s |  0.00% |  0.04% )   ( 0.000162s |  0.02% |  1.29% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000144s |  0.00% |  0.04% )   ( 0.000169s |  0.02% |  1.34% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000323s |  0.02% |  0.09% )   ( 0.000354s |  0.05% |  2.81% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209708s | 12.99% | 64.26% )   ( 0.010131s |  1.60% | 80.68% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.105488s |  6.53% | 50.30% )   ( 0.005727s |  0.90% | 56.52% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.102931s |  6.37% | 97.57% )   ( 0.003035s |  0.48% | 52.99% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002557s |  0.15% |  2.42% )   ( 0.002692s |  0.42% | 47.00% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104220s |  6.45% | 49.69% )   ( 0.004404s |  0.69% | 43.47% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101426s |  6.28% | 97.31% )   ( 0.001439s |  0.22% | 32.67% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002794s |  0.17% |  2.68% )   ( 0.002965s |  0.47% | 67.32% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000411s |  0.02% |  0.12% )   ( 0.000427s |  0.06% |  3.40% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000092s |  0.00% |  0.02% )   ( 0.000101s |  0.01% |  0.80% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.115345s |  7.14% | 35.34% )   ( 0.001047s |  0.16% |  8.33% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000067s |  0.00% )            ( 0.000080s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000092s |  0.00% )            ( 0.000105s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021949s |  1.36% )            ( 0.021895s |  3.47% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000078s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.024261s |  1.50% )            ( 0.024200s |  3.83% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000092s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000072s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021406s |  1.32% )            ( 0.021359s |  3.38% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000078s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000094s |  0.00% )            ( 0.000108s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007709s |  0.47% |  0.00% )   ( 0.009108s |  1.44% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007821s |  0.48% |  0.00% )   ( 0.009216s |  1.46% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.041832s |  2.59% |  0.02% )   ( 0.043595s |  6.91% |  0.06% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.023708s |  1.46% |  0.01% )   ( 0.027229s |  4.31% |  0.04% )    	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.013339s |  0.82% | 56.26% )   ( 0.015133s |  2.39% | 55.57% )    	(100x)	├─  read
37.1.1:         ( 0.010369s |  0.64% | 43.73% )   ( 0.012096s |  1.91% | 44.42% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.062357s |  3.86% |  0.03% )   ( 0.048056s |  7.61% |  0.07% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.389594s | 24.14% |  0.24% )   ( 0.369081s | 58.51% |  0.58% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.073441s |  4.55% | 18.85% )   ( 0.050812s |  8.05% | 13.76% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.316153s | 19.59% | 81.14% )   ( 0.318269s | 50.45% | 86.23% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.300912s | 18.65% | 95.17% )   ( 0.300912s | 47.70% | 94.54% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.015241s |  0.94% |  4.82% )   ( 0.017357s |  2.75% |  5.45% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.015241s |  0.94% |100.00% )   ( 0.017357s |  2.75% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000079s |  0.00% )            ( 0.000092s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.201670s | 12.49% )            ( 0.001726s |  0.27% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.201331s | 12.47% | 99.83% )   ( 0.001339s |  0.21% | 77.57% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000339s |  0.02% |  0.16% )   ( 0.000387s |  0.06% | 22.42% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.136074s |  8.43% )            ( 0.000490s |  0.07% )             	(1x)	wait

73.0.0:         ( 0.000327s |  0.02% )            ( 0.000363s |  0.05% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000516s |  0.03% )            ( 0.000560s |  0.08% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000079s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000080s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000781s |  0.04% )            ( 0.000695s |  0.11% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.005864s |  0.36% )            ( 0.005864s |  0.92% )             	(1x)	<< (BACKGROUND FORK) >>
85.1.0:         ( 0.005864s |  0.36% |100.00% )   ( 0.005864s |  0.92% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.002163s |  0.13% )            ( 0.002231s |  0.35% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004682s |  0.29% |  0.14% )   ( 0.004693s |  0.74% |  0.37% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.005236s |  0.32% )            ( 0.007420s |  1.17% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000071s |  0.00% |  1.35% )   ( 0.000085s |  0.01% |  1.14% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000093s |  0.00% |  1.77% )   ( 0.000107s |  0.01% |  1.44% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000074s |  0.00% |  1.41% )   ( 0.000087s |  0.01% |  1.17% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.004998s |  0.30% | 95.45% )   ( 0.007141s |  1.13% | 96.23% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000077s |  0.00% )            ( 0.000107s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001052s |  0.06% )            ( 0.001148s |  0.18% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000081s |  0.00% )            ( 0.000095s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000078s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000148s |  0.00% )            ( 0.000176s |  0.02% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000072s |  0.00% | 48.64% )   ( 0.000086s |  0.01% | 48.86% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000076s |  0.00% | 51.35% )   ( 0.000090s |  0.01% | 51.13% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000080s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.002033s |  0.12% )            ( 0.002426s |  0.38% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000070s |  0.00% |  3.44% )   ( 0.000083s |  0.01% |  3.42% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000072s |  0.00% |  3.54% )   ( 0.000086s |  0.01% |  3.54% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000064s |  0.00% |  3.14% )   ( 0.000079s |  0.01% |  3.25% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000082s |  0.00% |  4.03% )   ( 0.000096s |  0.01% |  3.95% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000068s |  0.00% |  3.34% )   ( 0.000081s |  0.01% |  3.33% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001677s |  0.10% | 82.48% )   ( 0.002001s |  0.31% | 82.48% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000070s |  0.00% |  4.17% )   ( 0.000084s |  0.01% |  4.19% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000067s |  0.00% |  3.99% )   ( 0.000081s |  0.01% |  4.04% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000067s |  0.00% |  3.99% )   ( 0.000080s |  0.01% |  3.99% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000076s |  0.00% |  4.53% )   ( 0.000090s |  0.01% |  4.49% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000068s |  0.00% |  4.05% )   ( 0.000082s |  0.01% |  4.09% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001329s |  0.08% | 79.24% )   ( 0.001584s |  0.25% | 79.16% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000070s |  0.00% |  5.26% )   ( 0.000084s |  0.01% |  5.30% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000075s |  0.00% |  5.64% )   ( 0.000090s |  0.01% |  5.68% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000071s |  0.00% |  5.34% )   ( 0.000086s |  0.01% |  5.42% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000077s |  0.00% |  5.79% )   ( 0.000091s |  0.01% |  5.74% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000064s |  0.00% |  4.81% )   ( 0.000077s |  0.01% |  4.86% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000972s |  0.06% | 73.13% )   ( 0.001156s |  0.18% | 72.97% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000071s |  0.00% |  7.30% )   ( 0.000085s |  0.01% |  7.35% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000072s |  0.00% |  7.40% )   ( 0.000087s |  0.01% |  7.52% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000087s |  0.00% |  8.95% )   ( 0.000101s |  0.01% |  8.73% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000084s |  0.00% |  8.64% )   ( 0.000098s |  0.01% |  8.47% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000066s |  0.00% |  6.79% )   ( 0.000080s |  0.01% |  6.92% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000592s |  0.03% | 60.90% )   ( 0.000705s |  0.11% | 60.98% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000071s |  0.00% | 11.99% )   ( 0.000086s |  0.01% | 12.19% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000074s |  0.00% | 12.50% )   ( 0.000089s |  0.01% | 12.62% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000073s |  0.00% | 12.33% )   ( 0.000084s |  0.01% | 11.91% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000081s |  0.00% | 13.68% )   ( 0.000095s |  0.01% | 13.47% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000069s |  0.00% | 11.65% )   ( 0.000083s |  0.01% | 11.77% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000224s |  0.01% | 37.83% )   ( 0.000268s |  0.04% | 38.01% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000071s |  0.00% | 31.69% )   ( 0.000086s |  0.01% | 32.08% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000072s |  0.00% | 32.14% )   ( 0.000086s |  0.01% | 32.08% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000081s |  0.00% | 36.16% )   ( 0.000096s |  0.01% | 35.82% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000067s |  0.00% )            ( 0.000078s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000077s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000072s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001431s |  0.08% )            ( 0.001371s |  0.21% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000011s |  0.00% )            ( 0.000011s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
152.1.0:        ( 0.000011s |  0.00% |100.00% )   ( 0.000011s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000328s |  0.02% )            ( 0.000369s |  0.05% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000328s |  0.02% |100.00% )   ( 0.000369s |  0.05% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000318s |  0.01% )            ( 0.000356s |  0.05% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000299s |  0.01% )            ( 0.000345s |  0.05% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000114s |  0.00% )            ( 0.000128s |  0.02% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 1.613391s
TOTAL RUN TIME:  1.613391s
TOTAL CPU TIME:  0.630772s

