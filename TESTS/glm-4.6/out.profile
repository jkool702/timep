LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.326962s | 21.17% )            ( 0.011948s |  2.16% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.326962s | 21.17% |100.00% )   ( 0.011948s |  2.16% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000074s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.73% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000072s |  0.00% |  0.02% )   ( 0.000086s |  0.01% |  0.71% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000093s |  0.00% |  0.02% )   ( 0.000107s |  0.01% |  0.89% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000320s |  0.02% |  0.09% )   ( 0.000363s |  0.06% |  3.03% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209245s | 13.54% | 63.99% )   ( 0.009672s |  1.75% | 80.95% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.105092s |  6.80% | 50.22% )   ( 0.005454s |  0.98% | 56.38% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.102267s |  6.62% | 97.31% )   ( 0.002378s |  0.43% | 43.60% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002825s |  0.18% |  2.68% )   ( 0.003076s |  0.55% | 56.39% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104153s |  6.74% | 49.77% )   ( 0.004218s |  0.76% | 43.61% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101596s |  6.57% | 97.54% )   ( 0.001670s |  0.30% | 39.59% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002557s |  0.16% |  2.45% )   ( 0.002548s |  0.46% | 60.40% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000417s |  0.02% |  0.12% )   ( 0.000431s |  0.07% |  3.60% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000083s |  0.00% |  0.02% )   ( 0.000098s |  0.01% |  0.82% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116658s |  7.55% | 35.67% )   ( 0.001103s |  0.20% |  9.23% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.326682s | 21.15% )            ( 0.011268s |  2.04% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.326682s | 21.15% |100.00% )   ( 0.011268s |  2.04% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000083s |  0.00% |  0.02% )   ( 0.000092s |  0.01% |  0.81% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000078s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.78% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000076s |  0.00% |  0.02% )   ( 0.000090s |  0.01% |  0.79% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000313s |  0.02% |  0.09% )   ( 0.000350s |  0.06% |  3.10% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208893s | 13.52% | 63.94% )   ( 0.009012s |  1.63% | 79.97% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104619s |  6.77% | 50.08% )   ( 0.004803s |  0.87% | 53.29% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101745s |  6.58% | 97.25% )   ( 0.001702s |  0.30% | 35.43% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002874s |  0.18% |  2.74% )   ( 0.003101s |  0.56% | 64.56% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104274s |  6.75% | 49.91% )   ( 0.004209s |  0.76% | 46.70% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101449s |  6.56% | 97.29% )   ( 0.001461s |  0.26% | 34.71% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002825s |  0.18% |  2.70% )   ( 0.002748s |  0.49% | 65.28% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000415s |  0.02% |  0.12% )   ( 0.000435s |  0.07% |  3.86% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000081s |  0.00% |  0.02% )   ( 0.000095s |  0.01% |  0.84% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116743s |  7.55% | 35.73% )   ( 0.001106s |  0.20% |  9.81% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000068s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000078s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.022350s |  1.44% )            ( 0.022095s |  4.00% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000081s |  0.00% )            ( 0.000095s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000074s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

20.0.0:        ( 0.000095s |  0.00% )            ( 0.000109s |  0.01% )             	(1x)	sourced_var="initial_value"-

21.0.0:         ( 0.024914s |  1.61% )            ( 0.024595s |  4.46% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

23.0.0:         ( 0.000085s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021854s |  1.41% )            ( 0.021688s |  3.93% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000079s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000096s |  0.00% )            ( 0.000110s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.008872s |  0.57% |  0.00% )   ( 0.010353s |  1.87% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.008149s |  0.52% |  0.00% )   ( 0.009631s |  1.74% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.043043s |  2.78% |  0.02% )   ( 0.044769s |  8.12% |  0.08% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.023284s |  1.50% |  0.01% )   ( 0.026407s |  4.79% |  0.04% )    	(100x)	<< (SUBSHELL) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.012927s |  0.83% | 55.51% )   ( 0.014483s |  2.62% | 54.84% )    	(100x)	├─  read
37.1.1:         ( 0.010357s |  0.67% | 44.48% )   ( 0.011924s |  2.16% | 45.15% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.056318s |  3.64% |  0.03% )   ( 0.039467s |  7.15% |  0.07% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.311524s | 20.17% |  0.20% )   ( 0.293137s | 53.17% |  0.53% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.061142s |  3.95% | 19.62% )   ( 0.041036s |  7.44% | 13.99% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.250382s | 16.21% | 80.37% )   ( 0.252101s | 45.72% | 86.00% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.237638s | 15.38% | 94.91% )   ( 0.237638s | 43.10% | 94.26% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.012744s |  0.82% |  5.08% )   ( 0.014463s |  2.62% |  5.73% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.012744s |  0.82% |100.00% )   ( 0.014463s |  2.62% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000090s |  0.00% )            ( 0.000095s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000090s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202732s | 13.12% )            ( 0.002783s |  0.50% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202387s | 13.10% | 99.82% )   ( 0.002397s |  0.43% | 86.13% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000345s |  0.02% |  0.17% )   ( 0.000386s |  0.07% | 13.86% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.139068s |  9.00% )            ( 0.000285s |  0.05% )             	(1x)	wait

73.0.0:         ( 0.000166s |  0.01% )            ( 0.000191s |  0.03% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000234s |  0.01% )            ( 0.000261s |  0.04% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000158s |  0.01% )            ( 0.000177s |  0.03% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000145s |  0.00% )            ( 0.000170s |  0.03% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000144s |  0.00% )            ( 0.000168s |  0.03% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.001326s |  0.08% )            ( 0.001150s |  0.20% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.007856s |  0.50% )            ( 0.007856s |  1.42% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.007856s |  0.50% |100.00% )   ( 0.007856s |  1.42% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.001858s |  0.12% )            ( 0.001932s |  0.35% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004547s |  0.29% |  0.14% )   ( 0.004566s |  0.82% |  0.41% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000069s |  0.00% )            ( 0.000083s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.004594s |  0.29% )            ( 0.007846s |  1.42% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000072s |  0.00% |  1.56% )   ( 0.000086s |  0.01% |  1.09% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000077s |  0.00% |  1.67% )   ( 0.000092s |  0.01% |  1.17% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000102s |  0.00% |  2.22% )   ( 0.000115s |  0.02% |  1.46% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.004343s |  0.28% | 94.53% )   ( 0.007553s |  1.37% | 96.26% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000094s |  0.00% )            ( 0.000108s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001151s |  0.07% )            ( 0.001249s |  0.22% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000125s |  0.00% )            ( 0.000147s |  0.02% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000115s |  0.00% )            ( 0.000136s |  0.02% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000144s |  0.00% )            ( 0.000171s |  0.03% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000071s |  0.00% | 49.30% )   ( 0.000084s |  0.01% | 49.12% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000073s |  0.00% | 50.69% )   ( 0.000087s |  0.01% | 50.87% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000081s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.002043s |  0.13% )            ( 0.002435s |  0.44% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000066s |  0.00% |  3.23% )   ( 0.000080s |  0.01% |  3.28% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000071s |  0.00% |  3.47% )   ( 0.000085s |  0.01% |  3.49% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000068s |  0.00% |  3.32% )   ( 0.000082s |  0.01% |  3.36% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000079s |  0.00% |  3.86% )   ( 0.000093s |  0.01% |  3.81% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000066s |  0.00% |  3.23% )   ( 0.000079s |  0.01% |  3.24% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001693s |  0.10% | 82.86% )   ( 0.002016s |  0.36% | 82.79% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000070s |  0.00% |  4.13% )   ( 0.000085s |  0.01% |  4.21% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000072s |  0.00% |  4.25% )   ( 0.000086s |  0.01% |  4.26% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000086s |  0.00% |  5.07% )   ( 0.000096s |  0.01% |  4.76% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000080s |  0.00% |  4.72% )   ( 0.000094s |  0.01% |  4.66% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000081s |  0.00% |  4.78% )   ( 0.000094s |  0.01% |  4.66% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001304s |  0.08% | 77.02% )   ( 0.001561s |  0.28% | 77.43% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000067s |  0.00% |  5.13% )   ( 0.000082s |  0.01% |  5.25% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000071s |  0.00% |  5.44% )   ( 0.000086s |  0.01% |  5.50% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000068s |  0.00% |  5.21% )   ( 0.000082s |  0.01% |  5.25% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000083s |  0.00% |  6.36% )   ( 0.000097s |  0.01% |  6.21% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000068s |  0.00% |  5.21% )   ( 0.000082s |  0.01% |  5.25% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000947s |  0.06% | 72.62% )   ( 0.001132s |  0.20% | 72.51% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000076s |  0.00% |  8.02% )   ( 0.000088s |  0.01% |  7.77% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000074s |  0.00% |  7.81% )   ( 0.000088s |  0.01% |  7.77% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000068s |  0.00% |  7.18% )   ( 0.000082s |  0.01% |  7.24% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000076s |  0.00% |  8.02% )   ( 0.000091s |  0.01% |  8.03% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000064s |  0.00% |  6.75% )   ( 0.000078s |  0.01% |  6.89% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000589s |  0.03% | 62.19% )   ( 0.000705s |  0.12% | 62.27% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000065s |  0.00% | 11.03% )   ( 0.000080s |  0.01% | 11.34% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000073s |  0.00% | 12.39% )   ( 0.000087s |  0.01% | 12.34% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000064s |  0.00% | 10.86% )   ( 0.000079s |  0.01% | 11.20% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000077s |  0.00% | 13.07% )   ( 0.000091s |  0.01% | 12.90% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000073s |  0.00% | 12.39% )   ( 0.000084s |  0.01% | 11.91% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000237s |  0.01% | 40.23% )   ( 0.000284s |  0.05% | 40.28% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000073s |  0.00% | 30.80% )   ( 0.000088s |  0.01% | 30.98% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000079s |  0.00% | 33.33% )   ( 0.000095s |  0.01% | 33.45% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000085s |  0.00% | 35.86% )   ( 0.000101s |  0.01% | 35.56% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000076s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000066s |  0.00% )            ( 0.000079s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000075s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000079s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001511s |  0.09% )            ( 0.001445s |  0.26% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000002s |  0.00% )            ( 0.000002s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000002s |  0.00% |100.00% )   ( 0.000002s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000334s |  0.02% )            ( 0.000384s |  0.06% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000334s |  0.02% |100.00% )   ( 0.000384s |  0.06% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000109s |  0.00% )            ( 0.000122s |  0.02% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000122s |  0.00% )            ( 0.000131s |  0.02% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

TOTAL RUN TIME: 1.544405s
TOTAL CPU TIME: 0.551283s

