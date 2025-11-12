LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.661059s | 23.63% )            ( 0.029412s |  4.07% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.537450s | 19.21% | 81.30% )   ( 0.021666s |  3.00% | 73.66% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000121s |  0.00% |  0.02% )   ( 0.000137s |  0.01% |  0.63% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000069s |  0.00% |  0.01% )   ( 0.000083s |  0.01% |  0.38% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000074s |  0.00% |  0.01% )   ( 0.000089s |  0.01% |  0.41% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000313s |  0.01% |  0.05% )   ( 0.000339s |  0.04% |  1.56% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209712s |  7.49% | 39.01% )   ( 0.009677s |  1.34% | 44.66% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.104839s |  3.74% | 49.99% )   ( 0.005137s |  0.71% | 53.08% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101990s |  3.64% | 97.28% )   ( 0.002048s |  0.28% | 39.86% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002849s |  0.10% |  2.71% )   ( 0.003089s |  0.42% | 60.13% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104433s |  3.73% | 49.79% )   ( 0.004540s |  0.62% | 46.91% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101831s |  3.64% | 97.50% )   ( 0.001775s |  0.24% | 39.09% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002602s |  0.09% |  2.49% )   ( 0.002765s |  0.38% | 60.90% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000419s |  0.01% |  0.07% )   ( 0.000443s |  0.06% |  2.04% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000082s |  0.00% |  0.01% )   ( 0.000096s |  0.01% |  0.44% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116947s |  4.18% | 21.75% )   ( 0.001124s |  0.15% |  5.18% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.648349s | 23.17% )            ( 0.029362s |  4.06% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.531735s | 19.00% | 82.01% )   ( 0.021969s |  3.04% | 74.82% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000076s |  0.00% |  0.01% )   ( 0.000090s |  0.01% |  0.40% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000069s |  0.00% |  0.01% )   ( 0.000084s |  0.01% |  0.38% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000075s |  0.00% |  0.01% )   ( 0.000089s |  0.01% |  0.40% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000326s |  0.01% |  0.06% )   ( 0.000358s |  0.04% |  1.62% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.210187s |  7.51% | 39.52% )   ( 0.009847s |  1.36% | 44.82% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.105004s |  3.75% | 49.95% )   ( 0.005051s |  0.69% | 51.29% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.102591s |  3.66% | 97.70% )   ( 0.002535s |  0.35% | 50.18% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002413s |  0.08% |  2.29% )   ( 0.002516s |  0.34% | 49.81% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104723s |  3.74% | 49.82% )   ( 0.004796s |  0.66% | 48.70% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102076s |  3.64% | 97.47% )   ( 0.002078s |  0.28% | 43.32% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002647s |  0.09% |  2.52% )   ( 0.002718s |  0.37% | 56.67% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000437s |  0.01% |  0.08% )   ( 0.000454s |  0.06% |  2.06% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000090s |  0.00% |  0.01% )   ( 0.000100s |  0.01% |  0.45% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.110287s |  3.94% | 20.74% )   ( 0.001099s |  0.15% |  5.00% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000068s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021854s |  0.78% )            ( 0.021792s |  3.01% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.024204s |  0.86% )            ( 0.024143s |  3.34% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000089s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000072s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021266s |  0.76% )            ( 0.021217s |  2.93% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000078s |  0.00% )            ( 0.000092s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000096s |  0.00% )            ( 0.000109s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007864s |  0.28% |  0.00% )   ( 0.009319s |  1.29% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007957s |  0.28% |  0.00% )   ( 0.009378s |  1.29% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.042621s |  1.52% |  0.01% )   ( 0.044688s |  6.18% |  0.06% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.024703s |  0.88% |  0.00% )   ( 0.028283s |  3.91% |  0.03% )    	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.014136s |  0.50% | 57.22% )   ( 0.016047s |  2.22% | 56.73% )    	(100x)	├─  read
37.1.1:         ( 0.010567s |  0.37% | 42.77% )   ( 0.012236s |  1.69% | 43.26% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.065957s |  2.35% |  0.02% )   ( 0.053161s |  7.36% |  0.07% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.425147s | 15.19% |  0.15% )   ( 0.404488s | 56.02% |  0.56% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.082543s |  2.95% | 19.41% )   ( 0.059436s |  8.23% | 14.69% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.342604s | 12.24% | 80.58% )   ( 0.345052s | 47.79% | 85.30% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.325928s | 11.65% | 95.13% )   ( 0.325928s | 45.14% | 94.45% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.016676s |  0.59% |  4.86% )   ( 0.019124s |  2.64% |  5.54% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.016676s |  0.59% |100.00% )   ( 0.019124s |  2.64% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000079s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000078s |  0.00% )            ( 0.000092s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202548s |  7.24% )            ( 0.002499s |  0.34% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202417s |  7.23% | 99.93% )   ( 0.002354s |  0.32% | 94.19% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000131s |  0.00% |  0.06% )   ( 0.000145s |  0.02% |  5.80% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000066s |  0.00% )            ( 0.000080s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000071s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.139175s |  4.97% )            ( 0.000260s |  0.03% )             	(1x)	wait

73.0.0:         ( 0.000113s |  0.00% )            ( 0.000132s |  0.01% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000167s |  0.00% )            ( 0.000187s |  0.02% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000104s |  0.00% )            ( 0.000122s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000106s |  0.00% )            ( 0.000125s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000100s |  0.00% )            ( 0.000118s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000489s |  0.01% )            ( 0.000302s |  0.04% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.003453s |  0.12% )            ( 0.003453s |  0.47% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.003453s |  0.12% |100.00% )   ( 0.003453s |  0.47% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.001851s |  0.06% )            ( 0.001895s |  0.26% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004666s |  0.16% |  0.08% )   ( 0.004669s |  0.64% |  0.32% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.005325s |  0.19% )            ( 0.009164s |  1.26% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000070s |  0.00% |  1.31% )   ( 0.000084s |  0.01% |  0.91% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000078s |  0.00% |  1.46% )   ( 0.000108s |  0.01% |  1.17% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000072s |  0.00% |  1.35% )   ( 0.000086s |  0.01% |  0.93% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.005105s |  0.18% | 95.86% )   ( 0.008886s |  1.23% | 96.96% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000094s |  0.00% )            ( 0.000110s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001220s |  0.04% )            ( 0.001343s |  0.18% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000087s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000147s |  0.00% )            ( 0.000175s |  0.02% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000074s |  0.00% | 50.34% )   ( 0.000088s |  0.01% | 50.28% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000073s |  0.00% | 49.65% )   ( 0.000087s |  0.01% | 49.71% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000089s |  0.00% )            ( 0.000100s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.002101s |  0.07% )            ( 0.002489s |  0.34% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000068s |  0.00% |  3.23% )   ( 0.000081s |  0.01% |  3.25% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000069s |  0.00% |  3.28% )   ( 0.000083s |  0.01% |  3.33% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000068s |  0.00% |  3.23% )   ( 0.000081s |  0.01% |  3.25% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000081s |  0.00% |  3.85% )   ( 0.000095s |  0.01% |  3.81% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000068s |  0.00% |  3.23% )   ( 0.000082s |  0.01% |  3.29% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001747s |  0.06% | 83.15% )   ( 0.002067s |  0.28% | 83.04% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000070s |  0.00% |  4.00% )   ( 0.000084s |  0.01% |  4.06% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000070s |  0.00% |  4.00% )   ( 0.000085s |  0.01% |  4.11% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000106s |  0.00% |  6.06% )   ( 0.000110s |  0.01% |  5.32% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000082s |  0.00% |  4.69% )   ( 0.000096s |  0.01% |  4.64% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000084s |  0.00% |  4.80% )   ( 0.000098s |  0.01% |  4.74% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001335s |  0.04% | 76.41% )   ( 0.001594s |  0.22% | 77.11% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000068s |  0.00% |  5.09% )   ( 0.000083s |  0.01% |  5.20% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000079s |  0.00% |  5.91% )   ( 0.000095s |  0.01% |  5.95% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000072s |  0.00% |  5.39% )   ( 0.000087s |  0.01% |  5.45% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000081s |  0.00% |  6.06% )   ( 0.000096s |  0.01% |  6.02% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000067s |  0.00% |  5.01% )   ( 0.000081s |  0.01% |  5.08% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000968s |  0.03% | 72.50% )   ( 0.001152s |  0.15% | 72.27% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000065s |  0.00% |  6.71% )   ( 0.000080s |  0.01% |  6.94% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000070s |  0.00% |  7.23% )   ( 0.000084s |  0.01% |  7.29% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000069s |  0.00% |  7.12% )   ( 0.000080s |  0.01% |  6.94% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000078s |  0.00% |  8.05% )   ( 0.000092s |  0.01% |  7.98% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000065s |  0.00% |  6.71% )   ( 0.000078s |  0.01% |  6.77% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000621s |  0.02% | 64.15% )   ( 0.000738s |  0.10% | 64.06% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000071s |  0.00% | 11.43% )   ( 0.000085s |  0.01% | 11.51% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000089s |  0.00% | 14.33% )   ( 0.000104s |  0.01% | 14.09% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000074s |  0.00% | 11.91% )   ( 0.000089s |  0.01% | 12.05% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000082s |  0.00% | 13.20% )   ( 0.000096s |  0.01% | 13.00% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000069s |  0.00% | 11.11% )   ( 0.000084s |  0.01% | 11.38% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000236s |  0.00% | 38.00% )   ( 0.000280s |  0.03% | 37.94% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000072s |  0.00% | 30.50% )   ( 0.000088s |  0.01% | 31.42% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000081s |  0.00% | 34.32% )   ( 0.000094s |  0.01% | 33.57% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000083s |  0.00% | 35.16% )   ( 0.000098s |  0.01% | 35.00% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000065s |  0.00% )            ( 0.000078s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000079s |  0.00% )            ( 0.000105s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000069s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001294s |  0.04% )            ( 0.001004s |  0.13% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.007922s |  0.28% )            ( 0.007922s |  1.09% )             	(1x)	<< (BACKGROUND FORK) >>
152.1.0:        ( 0.007922s |  0.28% |100.00% )   ( 0.007922s |  1.09% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000222s |  0.00% )            ( 0.000257s |  0.03% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000222s |  0.00% |100.00% )   ( 0.000257s |  0.03% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000082s |  0.00% )            ( 0.000095s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000080s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000122s |  0.00% )            ( 0.000137s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 0.779687s
TOTAL RUN TIME:  2.797158s
TOTAL CPU TIME:  0.721970s

