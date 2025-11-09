LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.325453s | 12.09% )            ( 0.011710s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.325453s | 12.09% |100.00% )   ( 0.011710s |  0.00% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000078s |  0.00% |  0.02% )   ( 0.000093s |  0.00% |  0.79% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000071s |  0.00% |  0.02% )   ( 0.000085s |  0.00% |  0.72% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000091s |  0.00% |  0.02% )   ( 0.000106s |  0.00% |  0.90% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000303s |  0.01% |  0.09% )   ( 0.000333s |  0.00% |  2.84% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.210610s |  7.82% | 64.71% )   ( 0.010111s |  0.00% | 86.34% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.104995s |  3.90% | 49.85% )   ( 0.005030s |  0.00% | 49.74% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.102687s |  3.81% | 97.80% )   ( 0.002628s |  0.00% | 52.24% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002308s |  0.08% |  2.19% )   ( 0.002402s |  0.00% | 47.75% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104651s |  3.89% | 49.68% )   ( 0.005081s |  0.00% | 50.25% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101972s |  3.79% | 97.44% )   ( 0.002196s |  0.00% | 43.21% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002679s |  0.09% |  2.55% )   ( 0.002885s |  0.00% | 56.78% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000424s |  0.01% |  0.13% )   ( 0.000438s |  0.00% |  3.74% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000086s |  0.00% |  0.02% )   ( 0.000101s |  0.00% |  0.86% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.113569s |  4.22% | 34.89% )   ( 0.000442s |  0.00% |  3.77% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.527493s | 19.60% )            ( 0.017815s |  0.01% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.527493s | 19.60% |100.00% )   ( 0.017815s |  0.01% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000196s |  0.00% |  0.03% )   ( 0.000232s |  0.00% |  1.30% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000070s |  0.00% |  0.01% )   ( 0.000085s |  0.00% |  0.47% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000076s |  0.00% |  0.01% )   ( 0.000092s |  0.00% |  0.51% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000429s |  0.01% |  0.08% )   ( 0.000375s |  0.00% |  2.10% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.207583s |  7.71% | 39.35% )   ( 0.007660s |  0.00% | 42.99% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.103905s |  3.86% | 50.05% )   ( 0.004076s |  0.00% | 53.21% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101634s |  3.77% | 97.81% )   ( 0.001737s |  0.00% | 42.61% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002271s |  0.08% |  2.18% )   ( 0.002339s |  0.00% | 57.38% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103550s |  3.84% | 49.88% )   ( 0.003584s |  0.00% | 46.78% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102409s |  3.80% | 98.89% )   ( 0.002369s |  0.00% | 66.09% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001141s |  0.04% |  1.10% )   ( 0.001215s |  0.00% | 33.90% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000426s |  0.01% |  0.08% )   ( 0.000442s |  0.00% |  2.48% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000096s |  0.00% |  0.01% )   ( 0.000102s |  0.00% |  0.57% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.111033s |  4.12% | 21.04% )   ( 0.001166s |  0.00% |  6.54% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000069s |  0.00% )            ( 0.000083s |  0.00% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000075s |  0.00% )            ( 0.000089s |  0.00% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021932s |  0.81% )            ( 0.021876s |  0.01% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000074s |  0.00% )            ( 0.000089s |  0.00% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000072s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.024368s |  0.90% )            ( 0.024312s |  0.01% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000091s |  0.00% )            ( 0.000106s |  0.00% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000071s |  0.00% )            ( 0.000085s |  0.00% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021623s |  0.80% )            ( 0.021580s |  0.01% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000087s |  0.00% )            ( 0.000102s |  0.00% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000090s |  0.00% )            ( 0.000105s |  0.00% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007569s |  0.00% )            ( 0.009026s |  0.00% )             	(100x)	for i in {1..100}

34.0.0:         ( 0.007420s |  0.00% )            ( 0.008900s |  0.00% )             	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.041337s |  1.53% |  0.01% )   ( 0.043180s |  0.03% |  0.00% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.020130s |  0.00% )            ( 0.023157s |  0.00% )             	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.011297s |  0.41% | 56.12% )   ( 0.012836s |  0.00% | 55.43% )    	(100x)	├─  read
37.1.1:         ( 0.008833s |  0.32% | 43.87% )   ( 0.010321s |  0.00% | 44.56% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.058154s |  2.16% |  0.02% )   ( 0.040905s |  0.02% |  0.00% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.351276s | 13.05% |  0.13% )   ( 0.333074s |  0.24% |  0.00% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.065996s |  2.45% | 18.78% )   ( 0.045771s |  0.03% | 13.74% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.285280s | 10.60% | 81.21% )   ( 0.287303s |  0.20% | 86.25% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.272913s | 10.14% | 95.66% )   ( 0.273013s |  0.19% | 95.02% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.012367s |  0.45% |  4.33% )   ( 0.014290s |  0.01% |  4.97% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.012367s |  0.45% |100.00% )   ( 0.014290s |  0.01% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000098s |  0.00% )            ( 0.000114s |  0.00% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000084s |  0.00% )            ( 0.000095s |  0.00% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.201666s |  7.49% )            ( 0.001737s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.201321s |  7.48% | 99.82% )   ( 0.001337s |  0.00% | 76.97% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000345s |  0.01% |  0.17% )   ( 0.000400s |  0.00% | 23.02% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000068s |  0.00% )            ( 0.000083s |  0.00% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	disown

70.0.0:         ( 0.000075s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.133637s |  4.96% )            ( 0.000351s |  0.00% )             	(1x)	wait

73.0.0:         ( 0.000159s |  0.00% )            ( 0.000186s |  0.00% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000260s |  0.00% )            ( 0.000281s |  0.00% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000152s |  0.00% )            ( 0.000178s |  0.00% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000160s |  0.00% )            ( 0.000187s |  0.00% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000147s |  0.00% )            ( 0.000173s |  0.00% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000484s |  0.01% )            ( 0.000334s |  0.00% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.003218s |  0.11% )            ( 0.003219s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
85.1.0:         ( 0.003218s |  0.11% |100.00% )   ( 0.003219s |  0.00% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.000991s |  0.03% )            ( 0.001068s |  0.00% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004647s |  0.17% |  0.08% )   ( 0.004664s |  0.00% |  0.00% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000073s |  0.00% )            ( 0.000089s |  0.00% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.004221s |  0.15% )            ( 0.007347s |  0.00% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000078s |  0.00% |  1.84% )   ( 0.000093s |  0.00% |  1.26% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000075s |  0.00% |  1.77% )   ( 0.000089s |  0.00% |  1.21% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000070s |  0.00% |  1.65% )   ( 0.000084s |  0.00% |  1.14% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.003998s |  0.14% | 94.71% )   ( 0.007081s |  0.00% | 96.37% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000080s |  0.00% )            ( 0.000094s |  0.00% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.000977s |  0.03% )            ( 0.001068s |  0.00% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000075s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000076s |  0.00% )            ( 0.000103s |  0.00% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000070s |  0.00% )            ( 0.000085s |  0.00% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000141s |  0.00% )            ( 0.000171s |  0.00% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000068s |  0.00% | 48.22% )   ( 0.000083s |  0.00% | 48.53% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000073s |  0.00% | 51.77% )   ( 0.000088s |  0.00% | 51.46% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000078s |  0.00% )            ( 0.000092s |  0.00% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.001963s |  0.07% )            ( 0.002384s |  0.00% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000067s |  0.00% |  3.41% )   ( 0.000081s |  0.00% |  3.39% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000070s |  0.00% |  3.56% )   ( 0.000084s |  0.00% |  3.52% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000066s |  0.00% |  3.36% )   ( 0.000080s |  0.00% |  3.35% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000080s |  0.00% |  4.07% )   ( 0.000096s |  0.00% |  4.02% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000088s |  0.00% |  4.48% )   ( 0.000100s |  0.00% |  4.19% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001592s |  0.05% | 81.10% )   ( 0.001943s |  0.00% | 81.50% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000071s |  0.00% |  4.45% )   ( 0.000086s |  0.00% |  4.42% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000069s |  0.00% |  4.33% )   ( 0.000091s |  0.00% |  4.68% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000067s |  0.00% |  4.20% )   ( 0.000081s |  0.00% |  4.16% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000075s |  0.00% |  4.71% )   ( 0.000089s |  0.00% |  4.58% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000062s |  0.00% |  3.89% )   ( 0.000076s |  0.00% |  3.91% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001248s |  0.04% | 78.39% )   ( 0.001520s |  0.00% | 78.22% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000064s |  0.00% |  5.12% )   ( 0.000079s |  0.00% |  5.19% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000067s |  0.00% |  5.36% )   ( 0.000083s |  0.00% |  5.46% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000068s |  0.00% |  5.44% )   ( 0.000079s |  0.00% |  5.19% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000076s |  0.00% |  6.08% )   ( 0.000091s |  0.00% |  5.98% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000063s |  0.00% |  5.04% )   ( 0.000078s |  0.00% |  5.13% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000910s |  0.03% | 72.91% )   ( 0.001110s |  0.00% | 73.02% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000063s |  0.00% |  6.92% )   ( 0.000078s |  0.00% |  7.02% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000068s |  0.00% |  7.47% )   ( 0.000083s |  0.00% |  7.47% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000064s |  0.00% |  7.03% )   ( 0.000079s |  0.00% |  7.11% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000078s |  0.00% |  8.57% )   ( 0.000094s |  0.00% |  8.46% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000068s |  0.00% |  7.47% )   ( 0.000083s |  0.00% |  7.47% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000569s |  0.02% | 62.52% )   ( 0.000693s |  0.00% | 62.43% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000069s |  0.00% | 12.12% )   ( 0.000081s |  0.00% | 11.68% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000069s |  0.00% | 12.12% )   ( 0.000085s |  0.00% | 12.26% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000072s |  0.00% | 12.65% )   ( 0.000088s |  0.00% | 12.69% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000075s |  0.00% | 13.18% )   ( 0.000091s |  0.00% | 13.13% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000063s |  0.00% | 11.07% )   ( 0.000078s |  0.00% | 11.25% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000221s |  0.00% | 38.84% )   ( 0.000270s |  0.00% | 38.96% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000067s |  0.00% | 30.31% )   ( 0.000083s |  0.00% | 30.74% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000069s |  0.00% | 31.22% )   ( 0.000086s |  0.00% | 31.85% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000085s |  0.00% | 38.46% )   ( 0.000101s |  0.00% | 37.40% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000077s |  0.00% )            ( 0.000091s |  0.00% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000073s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000079s |  0.00% )            ( 0.000092s |  0.00% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000064s |  0.00% )            ( 0.000080s |  0.00% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.00% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000069s |  0.00% )            ( 0.000083s |  0.00% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001506s |  0.05% )            ( 0.001447s |  0.00% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000004s |  0.00% )            ( 0.000004s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
152.1.0:        ( 0.000004s |  0.00% |100.00% )   ( 0.000004s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000085s |  0.00% )            ( 0.000100s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000085s |  0.00% |100.00% )   ( 0.000100s |  0.00% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000082s |  0.00% )            ( 0.000096s |  0.00% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000073s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000124s |  0.00% )            ( 0.000138s |  0.00% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 2.029746s
TOTAL RUN TIME:  2.690167s
TOTAL CPU TIME:  137.445033s

