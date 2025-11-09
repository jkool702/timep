LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.527180s | 20.13% )            ( 0.016477s |  0.01% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.527180s | 20.13% |100.00% )   ( 0.016477s |  0.01% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000074s |  0.00% |  0.01% )   ( 0.000087s |  0.00% |  0.52% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000067s |  0.00% |  0.01% )   ( 0.000081s |  0.00% |  0.49% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000079s |  0.00% |  0.01% )   ( 0.000092s |  0.00% |  0.55% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000327s |  0.01% |  0.06% )   ( 0.000359s |  0.00% |  2.17% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.207350s |  7.92% | 39.33% )   ( 0.007070s |  0.00% | 42.90% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.104062s |  3.97% | 50.18% )   ( 0.004204s |  0.00% | 59.46% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101645s |  3.88% | 97.67% )   ( 0.001712s |  0.00% | 40.72% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002417s |  0.09% |  2.32% )   ( 0.002492s |  0.00% | 59.27% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.102688s |  3.92% | 49.52% )   ( 0.002866s |  0.00% | 40.53% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101219s |  3.86% | 98.56% )   ( 0.001220s |  0.00% | 42.56% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001469s |  0.05% |  1.43% )   ( 0.001646s |  0.00% | 57.43% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000433s |  0.01% |  0.08% )   ( 0.000442s |  0.00% |  2.68% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000088s |  0.00% |  0.01% )   ( 0.000103s |  0.00% |  0.62% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.111411s |  4.25% | 21.13% )   ( 0.001172s |  0.00% |  7.11% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.736725s | 28.14% )            ( 0.025861s |  0.01% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.736725s | 28.14% |100.00% )   ( 0.025861s |  0.01% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000079s |  0.00% |  0.01% )   ( 0.000089s |  0.00% |  0.34% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.31% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.33% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000338s |  0.01% |  0.04% )   ( 0.000370s |  0.00% |  1.43% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.311606s | 11.90% | 42.29% )   ( 0.012097s |  0.00% | 46.77% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.103931s |  3.97% | 33.35% )   ( 0.004105s |  0.00% | 33.93% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101436s |  3.87% | 97.59% )   ( 0.001392s |  0.00% | 33.90% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002495s |  0.09% |  2.40% )   ( 0.002713s |  0.00% | 66.09% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103744s |  3.96% | 33.29% )   ( 0.003887s |  0.00% | 32.13% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101415s |  3.87% | 97.75% )   ( 0.001479s |  0.00% | 38.04% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002329s |  0.08% |  2.24% )   ( 0.002408s |  0.00% | 61.95% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000432s |  0.01% |  0.05% )   ( 0.000451s |  0.00% |  1.74% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000081s |  0.00% |  0.01% )   ( 0.000095s |  0.00% |  0.36% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.112441s |  4.29% | 15.26% )   ( 0.000492s |  0.00% |  1.90% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000066s |  0.00% )            ( 0.000080s |  0.00% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021969s |  0.83% )            ( 0.021911s |  0.01% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000074s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000070s |  0.00% )            ( 0.000084s |  0.00% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.024222s |  0.92% )            ( 0.024165s |  0.01% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000092s |  0.00% )            ( 0.000106s |  0.00% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000072s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021730s |  0.83% )            ( 0.021672s |  0.01% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000081s |  0.00% )            ( 0.000095s |  0.00% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000116s |  0.00% )            ( 0.000127s |  0.00% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007899s |  0.00% )            ( 0.009330s |  0.00% )             	(100x)	for i in {1..100}

34.0.0:         ( 0.007645s |  0.00% )            ( 0.009057s |  0.00% )             	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.041748s |  1.59% |  0.01% )   ( 0.043550s |  0.02% |  0.00% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.022114s |  0.00% )            ( 0.025435s |  0.00% )             	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.012452s |  0.47% | 56.30% )   ( 0.014184s |  0.00% | 55.76% )    	(100x)	├─  read
37.1.1:         ( 0.009662s |  0.36% | 43.69% )   ( 0.011251s |  0.00% | 44.23% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.059109s |  2.25% |  0.02% )   ( 0.044423s |  0.02% |  0.00% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.364402s | 13.91% |  0.13% )   ( 0.346319s |  0.23% |  0.00% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.067776s |  2.58% | 18.59% )   ( 0.047264s |  0.03% | 13.64% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.296626s | 11.33% | 81.40% )   ( 0.299055s |  0.20% | 86.35% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.280060s | 10.69% | 94.41% )   ( 0.280060s |  0.18% | 93.64% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.016566s |  0.63% |  5.58% )   ( 0.018995s |  0.01% |  6.35% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.016566s |  0.63% |100.00% )   ( 0.018995s |  0.01% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000105s |  0.00% )            ( 0.000104s |  0.00% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000077s |  0.00% )            ( 0.000091s |  0.00% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202545s |  7.73% )            ( 0.002636s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202195s |  7.72% | 99.82% )   ( 0.002236s |  0.00% | 84.82% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000350s |  0.01% |  0.17% )   ( 0.000400s |  0.00% | 15.17% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000063s |  0.00% )            ( 0.000076s |  0.00% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000075s |  0.00% )            ( 0.000089s |  0.00% )             	(1x)	disown

70.0.0:         ( 0.000072s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.128735s |  4.91% )            ( 0.000521s |  0.00% )             	(1x)	wait

73.0.0:         ( 0.000328s |  0.01% )            ( 0.000370s |  0.00% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000504s |  0.01% )            ( 0.000556s |  0.00% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000079s |  0.00% )            ( 0.000093s |  0.00% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000078s |  0.00% )            ( 0.000092s |  0.00% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000489s |  0.01% )            ( 0.000327s |  0.00% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.003212s |  0.12% )            ( 0.003212s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
85.1.0:         ( 0.003212s |  0.12% |100.00% )   ( 0.003212s |  0.00% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.000958s |  0.03% )            ( 0.001039s |  0.00% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004810s |  0.18% |  0.09% )   ( 0.004828s |  0.00% |  0.00% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000077s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.005307s |  0.20% )            ( 0.007672s |  0.00% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000078s |  0.00% |  1.46% )   ( 0.000089s |  0.00% |  1.16% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000080s |  0.00% |  1.50% )   ( 0.000094s |  0.00% |  1.22% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000074s |  0.00% |  1.39% )   ( 0.000088s |  0.00% |  1.14% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.005075s |  0.19% | 95.62% )   ( 0.007401s |  0.00% | 96.46% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000083s |  0.00% )            ( 0.000096s |  0.00% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001020s |  0.03% )            ( 0.001121s |  0.00% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000092s |  0.00% )            ( 0.000105s |  0.00% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000079s |  0.00% )            ( 0.000093s |  0.00% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000076s |  0.00% )            ( 0.000091s |  0.00% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000165s |  0.00% )            ( 0.000192s |  0.00% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000084s |  0.00% | 50.90% )   ( 0.000098s |  0.00% | 51.04% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000081s |  0.00% | 49.09% )   ( 0.000094s |  0.00% | 48.95% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000083s |  0.00% )            ( 0.000114s |  0.00% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.002122s |  0.08% )            ( 0.002507s |  0.00% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000076s |  0.00% |  3.58% )   ( 0.000085s |  0.00% |  3.39% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000068s |  0.00% |  3.20% )   ( 0.000082s |  0.00% |  3.27% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000062s |  0.00% |  2.92% )   ( 0.000076s |  0.00% |  3.03% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000078s |  0.00% |  3.67% )   ( 0.000092s |  0.00% |  3.66% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000068s |  0.00% |  3.20% )   ( 0.000082s |  0.00% |  3.27% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001770s |  0.06% | 83.41% )   ( 0.002090s |  0.00% | 83.36% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000067s |  0.00% |  3.78% )   ( 0.000081s |  0.00% |  3.87% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000068s |  0.00% |  3.84% )   ( 0.000083s |  0.00% |  3.97% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000065s |  0.00% |  3.67% )   ( 0.000078s |  0.00% |  3.73% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000077s |  0.00% |  4.35% )   ( 0.000091s |  0.00% |  4.35% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000089s |  0.00% |  5.02% )   ( 0.000101s |  0.00% |  4.83% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001404s |  0.05% | 79.32% )   ( 0.001656s |  0.00% | 79.23% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000077s |  0.00% |  5.48% )   ( 0.000090s |  0.00% |  5.43% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000077s |  0.00% |  5.48% )   ( 0.000092s |  0.00% |  5.55% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000071s |  0.00% |  5.05% )   ( 0.000085s |  0.00% |  5.13% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000084s |  0.00% |  5.98% )   ( 0.000099s |  0.00% |  5.97% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000071s |  0.00% |  5.05% )   ( 0.000085s |  0.00% |  5.13% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.001024s |  0.03% | 72.93% )   ( 0.001205s |  0.00% | 72.76% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000073s |  0.00% |  7.12% )   ( 0.000088s |  0.00% |  7.30% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000075s |  0.00% |  7.32% )   ( 0.000089s |  0.00% |  7.38% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000070s |  0.00% |  6.83% )   ( 0.000085s |  0.00% |  7.05% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000085s |  0.00% |  8.30% )   ( 0.000100s |  0.00% |  8.29% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000087s |  0.00% |  8.49% )   ( 0.000102s |  0.00% |  8.46% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000634s |  0.02% | 61.91% )   ( 0.000741s |  0.00% | 61.49% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000072s |  0.00% | 11.35% )   ( 0.000086s |  0.00% | 11.60% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000091s |  0.00% | 14.35% )   ( 0.000105s |  0.00% | 14.17% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000078s |  0.00% | 12.30% )   ( 0.000085s |  0.00% | 11.47% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000080s |  0.00% | 12.61% )   ( 0.000094s |  0.00% | 12.68% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000066s |  0.00% | 10.41% )   ( 0.000080s |  0.00% | 10.79% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000247s |  0.00% | 38.95% )   ( 0.000291s |  0.00% | 39.27% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000089s |  0.00% | 36.03% )   ( 0.000103s |  0.00% | 35.39% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000074s |  0.00% | 29.95% )   ( 0.000089s |  0.00% | 30.58% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000084s |  0.00% | 34.00% )   ( 0.000099s |  0.00% | 34.02% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000100s |  0.00% )            ( 0.000117s |  0.00% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000076s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000078s |  0.00% )            ( 0.000092s |  0.00% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000069s |  0.00% )            ( 0.000082s |  0.00% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000080s |  0.00% )            ( 0.000109s |  0.00% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000073s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001525s |  0.05% )            ( 0.001429s |  0.00% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000015s |  0.00% )            ( 0.000015s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
152.1.0:        ( 0.000015s |  0.00% |100.00% )   ( 0.000015s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000330s |  0.01% )            ( 0.000378s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000330s |  0.01% |100.00% )   ( 0.000378s |  0.00% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000084s |  0.00% )            ( 0.000098s |  0.00% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000070s |  0.00% )            ( 0.000083s |  0.00% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000113s |  0.00% )            ( 0.000126s |  0.00% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 2.078855s
TOTAL RUN TIME:  2.617846s
TOTAL CPU TIME:  149.356106s

