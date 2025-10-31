LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.327627s | 19.08% )            ( 0.012696s |  1.74% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.327627s | 19.08% |100.00% )   ( 0.012696s |  1.74% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000075s |  0.00% |  0.02% )   ( 0.000089s |  0.01% |  0.70% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000070s |  0.00% |  0.02% )   ( 0.000083s |  0.01% |  0.65% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000075s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.69% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000300s |  0.01% |  0.09% )   ( 0.000334s |  0.04% |  2.63% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.210096s | 12.23% | 64.12% )   ( 0.010416s |  1.42% | 82.04% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104837s |  6.10% | 49.89% )   ( 0.004985s |  0.68% | 47.85% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.102431s |  5.96% | 97.70% )   ( 0.002493s |  0.34% | 50.01% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002406s |  0.14% |  2.29% )   ( 0.002492s |  0.34% | 49.98% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.105259s |  6.13% | 50.10% )   ( 0.005431s |  0.74% | 52.14% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102464s |  5.96% | 97.34% )   ( 0.002501s |  0.34% | 46.05% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002795s |  0.16% |  2.65% )   ( 0.002930s |  0.40% | 53.94% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000407s |  0.02% |  0.12% )   ( 0.000427s |  0.05% |  3.36% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000080s |  0.00% |  0.02% )   ( 0.000094s |  0.01% |  0.74% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116524s |  6.78% | 35.56% )   ( 0.001165s |  0.15% |  9.17% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.328540s | 19.13% )            ( 0.012073s |  1.65% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.328540s | 19.13% |100.00% )   ( 0.012073s |  1.65% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000072s |  0.00% |  0.02% )   ( 0.000086s |  0.01% |  0.71% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000070s |  0.00% |  0.02% )   ( 0.000083s |  0.01% |  0.68% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000078s |  0.00% |  0.02% )   ( 0.000092s |  0.01% |  0.76% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000317s |  0.01% |  0.09% )   ( 0.000354s |  0.04% |  2.93% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209861s | 12.22% | 63.87% )   ( 0.009772s |  1.33% | 80.94% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104477s |  6.08% | 49.78% )   ( 0.004670s |  0.64% | 47.78% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101851s |  5.93% | 97.48% )   ( 0.001901s |  0.26% | 40.70% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002626s |  0.15% |  2.51% )   ( 0.002769s |  0.37% | 59.29% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.105384s |  6.13% | 50.21% )   ( 0.005102s |  0.69% | 52.21% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102561s |  5.97% | 97.32% )   ( 0.002043s |  0.28% | 40.04% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002823s |  0.16% |  2.67% )   ( 0.003059s |  0.41% | 59.95% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000430s |  0.02% |  0.13% )   ( 0.000443s |  0.06% |  3.66% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000079s |  0.00% |  0.02% )   ( 0.000093s |  0.01% |  0.77% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.117633s |  6.85% | 35.80% )   ( 0.001150s |  0.15% |  9.52% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000068s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.019747s |  1.15% )            ( 0.019698s |  2.70% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000075s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

20.0.0:        ( 0.000087s |  0.00% )            ( 0.000101s |  0.01% )             	(1x)	sourced_var="initial_value"-

21.0.0:         ( 0.022371s |  1.30% )            ( 0.022315s |  3.05% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

23.0.0:         ( 0.000076s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.019055s |  1.10% )            ( 0.019014s |  2.60% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000070s |  0.00% )            ( 0.000083s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000169s |  0.00% )            ( 0.000186s |  0.02% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007486s |  0.43% |  0.00% )   ( 0.008909s |  1.22% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007425s |  0.43% |  0.00% )   ( 0.008836s |  1.21% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.041448s |  2.41% |  0.02% )   ( 0.043460s |  5.95% |  0.05% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.021722s |  1.26% |  0.01% )   ( 0.025024s |  3.43% |  0.03% )    	(100x)	<< (SUBSHELL) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.012329s |  0.71% | 56.75% )   ( 0.014061s |  1.92% | 56.19% )    	(100x)	├─  read
37.1.1:         ( 0.009393s |  0.54% | 43.24% )   ( 0.010963s |  1.50% | 43.80% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.058067s |  3.38% |  0.03% )   ( 0.044546s |  6.10% |  0.06% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.338282s | 19.70% |  0.19% )   ( 0.321049s | 44.01% |  0.44% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.063107s |  3.67% | 18.65% )   ( 0.043663s |  5.98% | 13.60% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.275175s | 16.02% | 81.34% )   ( 0.277386s | 38.02% | 86.39% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.260331s | 15.16% | 94.60% )   ( 0.260331s | 35.68% | 93.85% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.014844s |  0.86% |  5.39% )   ( 0.017055s |  2.33% |  6.14% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.014844s |  0.86% |100.00% )   ( 0.017055s |  2.33% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.201875s | 11.75% )            ( 0.001844s |  0.25% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.201644s | 11.74% | 99.88% )   ( 0.001600s |  0.21% | 86.76% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000231s |  0.01% |  0.11% )   ( 0.000244s |  0.03% | 13.23% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000067s |  0.00% )            ( 0.000081s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000078s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.137903s |  8.03% )            ( 0.000277s |  0.03% )             	(1x)	wait

73.0.0:         ( 0.000114s |  0.00% )            ( 0.000132s |  0.01% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000176s |  0.01% )            ( 0.000196s |  0.02% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000468s |  0.02% )            ( 0.000333s |  0.04% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.153177s |  8.92% )            ( 0.153177s | 20.99% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.153177s |  8.92% |100.00% )   ( 0.153177s | 20.99% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.001431s |  0.08% )            ( 0.001509s |  0.20% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004563s |  0.26% |  0.13% )   ( 0.004569s |  0.62% |  0.31% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000072s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.005282s |  0.30% )            ( 0.008717s |  1.19% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000071s |  0.00% |  1.34% )   ( 0.000085s |  0.01% |  0.97% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000080s |  0.00% |  1.51% )   ( 0.000094s |  0.01% |  1.07% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000070s |  0.00% |  1.32% )   ( 0.000083s |  0.01% |  0.95% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.005061s |  0.29% | 95.81% )   ( 0.008455s |  1.15% | 96.99% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000080s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.000913s |  0.05% )            ( 0.001004s |  0.13% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000097s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000069s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000139s |  0.00% )            ( 0.000167s |  0.02% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000068s |  0.00% | 48.92% )   ( 0.000082s |  0.01% | 49.10% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000071s |  0.00% | 51.07% )   ( 0.000085s |  0.01% | 50.89% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000094s |  0.00% )            ( 0.000124s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.001957s |  0.11% )            ( 0.002343s |  0.32% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000067s |  0.00% |  3.42% )   ( 0.000080s |  0.01% |  3.41% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000078s |  0.00% |  3.98% )   ( 0.000087s |  0.01% |  3.71% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000066s |  0.00% |  3.37% )   ( 0.000078s |  0.01% |  3.32% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000078s |  0.00% |  3.98% )   ( 0.000092s |  0.01% |  3.92% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000061s |  0.00% |  3.11% )   ( 0.000074s |  0.01% |  3.15% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001607s |  0.09% | 82.11% )   ( 0.001932s |  0.26% | 82.45% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000064s |  0.00% |  3.98% )   ( 0.000078s |  0.01% |  4.03% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000068s |  0.00% |  4.23% )   ( 0.000083s |  0.01% |  4.29% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000064s |  0.00% |  3.98% )   ( 0.000078s |  0.01% |  4.03% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000081s |  0.00% |  5.04% )   ( 0.000092s |  0.01% |  4.76% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000062s |  0.00% |  3.85% )   ( 0.000077s |  0.01% |  3.98% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001268s |  0.07% | 78.90% )   ( 0.001524s |  0.20% | 78.88% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000064s |  0.00% |  5.04% )   ( 0.000078s |  0.01% |  5.11% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000067s |  0.00% |  5.28% )   ( 0.000081s |  0.01% |  5.31% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000063s |  0.00% |  4.96% )   ( 0.000077s |  0.01% |  5.05% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000075s |  0.00% |  5.91% )   ( 0.000090s |  0.01% |  5.90% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000067s |  0.00% |  5.28% )   ( 0.000080s |  0.01% |  5.24% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000932s |  0.05% | 73.50% )   ( 0.001118s |  0.15% | 73.35% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000070s |  0.00% |  7.51% )   ( 0.000081s |  0.01% |  7.24% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000067s |  0.00% |  7.18% )   ( 0.000081s |  0.01% |  7.24% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000067s |  0.00% |  7.18% )   ( 0.000081s |  0.01% |  7.24% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000082s |  0.00% |  8.79% )   ( 0.000096s |  0.01% |  8.58% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000063s |  0.00% |  6.75% )   ( 0.000077s |  0.01% |  6.88% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000583s |  0.03% | 62.55% )   ( 0.000702s |  0.09% | 62.79% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000068s |  0.00% | 11.66% )   ( 0.000083s |  0.01% | 11.82% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000075s |  0.00% | 12.86% )   ( 0.000091s |  0.01% | 12.96% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000081s |  0.00% | 13.89% )   ( 0.000097s |  0.01% | 13.81% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000078s |  0.00% | 13.37% )   ( 0.000093s |  0.01% | 13.24% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000066s |  0.00% | 11.32% )   ( 0.000080s |  0.01% | 11.39% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000215s |  0.01% | 36.87% )   ( 0.000258s |  0.03% | 36.75% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000070s |  0.00% | 32.55% )   ( 0.000082s |  0.01% | 31.78% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000067s |  0.00% | 31.16% )   ( 0.000083s |  0.01% | 32.17% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000078s |  0.00% | 36.27% )   ( 0.000093s |  0.01% | 36.04% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000087s |  0.00% )            ( 0.000100s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000069s |  0.00% )            ( 0.000079s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000090s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000069s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001540s |  0.08% )            ( 0.001471s |  0.20% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null (&)
152.0.1:        ( 0.012711s |  0.74% )            ( 0.012711s |  1.74% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.012711s |  0.74% |100.00% )   ( 0.012711s |  1.74% |100.00% )    	(1x)	└─  seq 1 5 (^)
152.0.2:        ( 0.000324s |  0.01% )            ( 0.000372s |  0.05% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000324s |  0.01% |100.00% )   ( 0.000372s |  0.05% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000098s |  0.00% )            ( 0.000109s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000117s |  0.00% )            ( 0.000132s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

TOTAL RUN TIME: 1.716947s
TOTAL CPU TIME: 0.729480s

