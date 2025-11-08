LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.000001s |  0.00% )            ( 0.007687s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.123420s |  9.61% |100.00% )   ( 0.007702s |  0.00% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000109s |  0.00% |  0.03% )   ( 0.000129s |  0.00% |  1.00% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000074s |  0.00% |  0.02% )   ( 0.000088s |  0.00% |  0.68% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000079s |  0.00% |  0.02% )   ( 0.000093s |  0.00% |  0.72% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000306s |  0.02% |  0.09% )   ( 0.000339s |  0.00% |  2.63% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209939s | 16.35% | 64.02% )   ( 0.010481s |  0.00% | 81.55% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104913s |  8.17% | 49.96% )   ( 0.005198s |  0.00% | 49.52% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.102063s |  7.94% | 97.26% )   ( 0.002127s |  0.00% | 40.80% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002865s |  0.22% |  2.73% )   ( 0.003086s |  0.00% | 59.19% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.105041s |  8.18% | 50.03% )   ( 0.005298s |  0.00% | 50.47% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102038s |  7.94% | 97.12% )   ( 0.002069s |  0.00% | 38.94% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.003018s |  0.23% |  2.87% )   ( 0.003244s |  0.00% | 61.05% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000421s |  0.03% |  0.12% )   ( 0.000435s |  0.00% |  3.38% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000087s |  0.00% |  0.02% )   ( 0.000102s |  0.00% |  0.79% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116869s |  9.10% | 35.64% )   ( 0.001184s |  0.00% |  9.21% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.000001s |  0.00% )            ( 0.007342s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.122911s |  9.57% |100.00% )   ( 0.007357s |  0.00% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000075s |  0.00% |  0.02% )   ( 0.000090s |  0.00% |  0.81% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000073s |  0.00% |  0.02% )   ( 0.000086s |  0.00% |  0.78% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000079s |  0.00% |  0.02% )   ( 0.000092s |  0.00% |  0.83% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000312s |  0.02% |  0.09% )   ( 0.000339s |  0.00% |  3.07% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208445s | 16.23% | 63.91% )   ( 0.008784s |  0.00% | 79.72% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104525s |  8.14% | 50.14% )   ( 0.004801s |  0.00% | 54.56% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101565s |  7.91% | 97.15% )   ( 0.001635s |  0.00% | 33.94% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002975s |  0.23% |  2.84% )   ( 0.003181s |  0.00% | 66.05% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103935s |  8.09% | 49.85% )   ( 0.003998s |  0.00% | 45.43% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101643s |  7.91% | 97.78% )   ( 0.001637s |  0.00% | 40.79% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002307s |  0.17% |  2.21% )   ( 0.002376s |  0.00% | 59.20% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000413s |  0.03% |  0.12% )   ( 0.000433s |  0.00% |  3.92% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000081s |  0.00% |  0.02% )   ( 0.000095s |  0.00% |  0.86% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116629s |  9.08% | 35.76% )   ( 0.001099s |  0.00% |  9.97% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000068s |  0.00% )            ( 0.000081s |  0.00% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000075s |  0.00% )            ( 0.000088s |  0.00% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021810s |  1.69% )            ( 0.021757s |  0.01% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000091s |  0.00% )            ( 0.000104s |  0.00% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000071s |  0.00% )            ( 0.000084s |  0.00% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.023998s |  1.86% )            ( 0.023933s |  0.01% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000098s |  0.00% )            ( 0.000106s |  0.00% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000075s |  0.00% )            ( 0.000088s |  0.00% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021343s |  1.66% )            ( 0.021292s |  0.01% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000078s |  0.00% )            ( 0.000092s |  0.00% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000094s |  0.00% )            ( 0.000107s |  0.00% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007739s |  0.00% )            ( 0.009169s |  0.00% )             	(100x)	for i in {1..100}

34.0.0:         ( 0.007911s |  0.00% )            ( 0.009300s |  0.00% )             	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.041130s |  3.20% |  0.03% )   ( 0.042918s |  0.02% |  0.00% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.434831s | 33.86% |  0.33% )   ( 147.882007s | 99.52% |  0.99% )    	(100x)	<< (SUBSHELL) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.013149s |  1.02% | 57.09% )   ( 0.014923s |  0.01% | 56.58% )    	(100x)	├─  read
37.1.1:         ( 0.009880s |  0.76% | 42.90% )   ( 0.011451s |  0.00% | 43.41% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.055867s |  4.35% |  0.04% )   ( 0.041345s |  0.02% |  0.00% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.381748s | 29.73% |  0.29% )   ( 0.365601s |  0.24% |  0.00% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.069118s |  5.38% | 18.03% )   ( 0.050786s |  0.03% | 13.83% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.314130s | 24.46% | 81.96% )   ( 0.316315s |  0.21% | 86.16% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.302090s | 23.52% | 95.71% )   ( 0.302090s |  0.20% | 95.05% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.013540s |  1.05% |  4.28% )   ( 0.015725s |  0.01% |  4.94% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.015040s |  1.17% |100.00% )   ( 0.017225s |  0.01% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000114s |  0.00% )            ( 0.000133s |  0.00% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000118s |  0.00% )            ( 0.000136s |  0.00% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.000001s |  0.00% )            ( 0.003343s |  0.00% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202961s | 15.80% | 99.81% )   ( 0.002944s |  0.00% | 87.67% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000373s |  0.02% |  0.18% )   ( 0.000414s |  0.00% | 12.32% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000072s |  0.00% )            ( 0.000085s |  0.00% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000081s |  0.00% )            ( 0.000095s |  0.00% )             	(1x)	disown

70.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.138720s | 10.80% )            ( 0.000296s |  0.00% )             	(1x)	wait

73.0.0:         ( 0.000176s |  0.01% )            ( 0.000205s |  0.00% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000254s |  0.01% )            ( 0.000283s |  0.00% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000166s |  0.01% )            ( 0.000194s |  0.00% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000170s |  0.01% )            ( 0.000192s |  0.00% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000162s |  0.01% )            ( 0.000189s |  0.00% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000872s |  0.06% )            ( 0.000637s |  0.00% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.005890s |  0.45% )            ( 0.005890s |  0.00% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.005905s |  0.45% |100.00% )   ( 0.005905s |  0.00% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.001783s |  0.13% )            ( 0.001851s |  0.00% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004763s |  0.37% |  0.18% )   ( 0.004769s |  0.00% |  0.00% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000074s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.020455s |  1.59% )            ( 0.022826s |  0.01% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000069s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  0.97% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000099s |  0.00% |  1.62% )   ( 0.000108s |  0.00% |  1.26% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000070s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  0.97% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.005856s |  0.45% | 96.09% )   ( 0.008281s |  0.00% | 96.79% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000095s |  0.00% )            ( 0.000109s |  0.00% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.002478s |  0.19% )            ( 0.002580s |  0.00% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000095s |  0.00% )            ( 0.000109s |  0.00% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000078s |  0.00% )            ( 0.000092s |  0.00% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.013103s |  1.02% )            ( 0.013068s |  0.00% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000074s |  0.00% | 49.33% )   ( 0.000088s |  0.00% | 49.71% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000076s |  0.00% | 50.66% )   ( 0.000089s |  0.00% | 50.28% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000081s |  0.00% )            ( 0.000094s |  0.00% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.094250s |  7.34% )            ( 0.093859s |  0.06% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000071s |  0.00% |  0.09% )   ( 0.000084s |  0.00% |  0.10% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000085s |  0.00% |  0.10% )   ( 0.000099s |  0.00% |  0.12% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000079s |  0.00% |  0.10% )   ( 0.000087s |  0.00% |  0.11% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000091s |  0.00% |  0.11% )   ( 0.000101s |  0.00% |  0.12% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000071s |  0.00% |  0.09% )   ( 0.000084s |  0.00% |  0.10% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.078082s |  6.08% | 99.49% )   ( 0.077768s |  0.05% | 99.41% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000069s |  0.00% |  0.11% )   ( 0.000082s |  0.00% |  0.13% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000073s |  0.00% |  0.11% )   ( 0.000087s |  0.00% |  0.13% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000069s |  0.00% |  0.11% )   ( 0.000082s |  0.00% |  0.13% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000079s |  0.00% |  0.12% )   ( 0.000093s |  0.00% |  0.14% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000066s |  0.00% |  0.10% )   ( 0.000080s |  0.00% |  0.12% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.062320s |  4.85% | 99.43% )   ( 0.062059s |  0.04% | 99.32% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000075s |  0.00% |  0.16% )   ( 0.000089s |  0.00% |  0.19% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000080s |  0.00% |  0.17% )   ( 0.000096s |  0.00% |  0.20% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000072s |  0.00% |  0.15% )   ( 0.000087s |  0.00% |  0.18% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000089s |  0.00% |  0.19% )   ( 0.000099s |  0.00% |  0.21% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000070s |  0.00% |  0.15% )   ( 0.000084s |  0.00% |  0.18% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.046135s |  3.59% | 99.17% )   ( 0.045949s |  0.03% | 99.01% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000065s |  0.00% |  0.21% )   ( 0.000079s |  0.00% |  0.26% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000070s |  0.00% |  0.23% )   ( 0.000084s |  0.00% |  0.27% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000067s |  0.00% |  0.22% )   ( 0.000080s |  0.00% |  0.26% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000076s |  0.00% |  0.25% )   ( 0.000089s |  0.00% |  0.29% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000066s |  0.00% |  0.21% )   ( 0.000080s |  0.00% |  0.26% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.029975s |  2.33% | 98.86% )   ( 0.029846s |  0.02% | 98.63% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000094s |  0.00% |  0.65% )   ( 0.000108s |  0.00% |  0.75% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000077s |  0.00% |  0.53% )   ( 0.000087s |  0.00% |  0.60% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000066s |  0.00% |  0.46% )   ( 0.000080s |  0.00% |  0.56% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000080s |  0.00% |  0.56% )   ( 0.000096s |  0.00% |  0.67% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000065s |  0.00% |  0.45% )   ( 0.000080s |  0.00% |  0.56% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.013892s |  1.08% | 97.32% )   ( 0.013815s |  0.00% | 96.83% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000068s |  0.00% | 29.82% )   ( 0.000082s |  0.00% | 28.57% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000071s |  0.00% | 31.14% )   ( 0.000086s |  0.00% | 29.96% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000089s |  0.00% | 39.03% )   ( 0.000119s |  0.00% | 41.46% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000074s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.00% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000079s |  0.00% )            ( 0.000088s |  0.00% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000065s |  0.00% )            ( 0.000077s |  0.00% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000074s |  0.00% )            ( 0.000103s |  0.00% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000073s |  0.00% )            ( 0.000086s |  0.00% )             	(1x)	exec 3>&-

152.0.0:        ( 0.000767s |  0.05% )            ( 0.000636s |  0.00% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000716s |  0.05% )            ( 0.000716s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000731s |  0.05% |100.00% )   ( 0.000731s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000326s |  0.02% )            ( 0.000375s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000341s |  0.02% |100.00% )   ( 0.000390s |  0.00% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000101s |  0.00% )            ( 0.000115s |  0.00% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000082s |  0.00% )            ( 0.000090s |  0.00% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000142s |  0.01% )            ( 0.000151s |  0.00% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 1.283873s
TOTAL RUN TIME:  1.283873s
TOTAL CPU TIME:  148.587095s

