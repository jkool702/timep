LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.326181s | 18.60% )            ( 0.012837s |  1.65% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.326181s | 18.60% |100.00% )   ( 0.012837s |  1.65% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000074s |  0.00% |  0.02% )   ( 0.000089s |  0.01% |  0.69% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000068s |  0.00% |  0.02% )   ( 0.000082s |  0.01% |  0.63% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000071s |  0.00% |  0.02% )   ( 0.000085s |  0.01% |  0.66% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000302s |  0.01% |  0.09% )   ( 0.000339s |  0.04% |  2.64% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.210071s | 11.98% | 64.40% )   ( 0.010413s |  1.34% | 81.11% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104400s |  5.95% | 49.69% )   ( 0.004562s |  0.58% | 43.81% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101638s |  5.79% | 97.35% )   ( 0.001639s |  0.21% | 35.92% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002762s |  0.15% |  2.64% )   ( 0.002923s |  0.37% | 64.07% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.105671s |  6.02% | 50.30% )   ( 0.005851s |  0.75% | 56.18% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102714s |  5.85% | 97.20% )   ( 0.002660s |  0.34% | 45.46% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002957s |  0.16% |  2.79% )   ( 0.003191s |  0.41% | 54.53% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000410s |  0.02% |  0.12% )   ( 0.000429s |  0.05% |  3.34% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000083s |  0.00% |  0.02% )   ( 0.000097s |  0.01% |  0.75% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.115102s |  6.56% | 35.28% )   ( 0.001303s |  0.16% | 10.15% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.318372s | 18.15% )            ( 0.010426s |  1.34% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.318372s | 18.15% |100.00% )   ( 0.010426s |  1.34% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000189s |  0.01% |  0.05% )   ( 0.000223s |  0.02% |  2.13% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000187s |  0.01% |  0.05% )   ( 0.000221s |  0.02% |  2.11% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000140s |  0.00% |  0.04% )   ( 0.000160s |  0.02% |  1.53% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000318s |  0.01% |  0.09% )   ( 0.000353s |  0.04% |  3.38% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208324s | 11.88% | 65.43% )   ( 0.008481s |  1.09% | 81.34% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.103804s |  5.92% | 49.82% )   ( 0.003855s |  0.49% | 45.45% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101387s |  5.78% | 97.67% )   ( 0.001322s |  0.17% | 34.29% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002417s |  0.13% |  2.32% )   ( 0.002533s |  0.32% | 65.70% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104520s |  5.96% | 50.17% )   ( 0.004626s |  0.59% | 54.54% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101647s |  5.79% | 97.25% )   ( 0.001574s |  0.20% | 34.02% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002873s |  0.16% |  2.74% )   ( 0.003052s |  0.39% | 65.97% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000418s |  0.02% |  0.13% )   ( 0.000433s |  0.05% |  4.15% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000084s |  0.00% |  0.02% )   ( 0.000098s |  0.01% |  0.93% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.108712s |  6.20% | 34.14% )   ( 0.000457s |  0.05% |  4.38% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000109s |  0.00% )            ( 0.000124s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000105s |  0.00% )            ( 0.000123s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.020562s |  1.17% )            ( 0.020520s |  2.64% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

20.0.0:        ( 0.000090s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	sourced_var="initial_value"-

21.0.0:         ( 0.022331s |  1.27% )            ( 0.022266s |  2.87% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

23.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.019481s |  1.11% )            ( 0.019433s |  2.50% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000097s |  0.00% )            ( 0.000111s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.008186s |  0.46% |  0.00% )   ( 0.009625s |  1.24% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007664s |  0.43% |  0.00% )   ( 0.009089s |  1.17% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.042893s |  2.44% |  0.02% )   ( 0.044939s |  5.79% |  0.05% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.024494s |  1.39% |  0.01% )   ( 0.028087s |  3.62% |  0.03% )    	(100x)	<< (SUBSHELL) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.013924s |  0.79% | 56.84% )   ( 0.015781s |  2.03% | 56.18% )    	(100x)	├─  read
37.1.1:         ( 0.010570s |  0.60% | 43.15% )   ( 0.012306s |  1.58% | 43.81% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.065098s |  3.71% |  0.03% )   ( 0.050284s |  6.48% |  0.06% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.380808s | 21.71% |  0.21% )   ( 0.360168s | 46.43% |  0.46% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.073917s |  4.21% | 19.41% )   ( 0.051141s |  6.59% | 14.19% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.306891s | 17.50% | 80.58% )   ( 0.309027s | 39.84% | 85.80% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.293054s | 16.71% | 95.49% )   ( 0.293054s | 37.78% | 94.83% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.013837s |  0.78% |  4.50% )   ( 0.015973s |  2.05% |  5.16% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.013837s |  0.78% |100.00% )   ( 0.015973s |  2.05% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000080s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000077s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202850s | 11.56% )            ( 0.002985s |  0.38% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202521s | 11.55% | 99.83% )   ( 0.002622s |  0.33% | 87.83% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000329s |  0.01% |  0.16% )   ( 0.000363s |  0.04% | 12.16% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000065s |  0.00% )            ( 0.000080s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000076s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.133868s |  7.63% )            ( 0.000530s |  0.06% )             	(1x)	wait

73.0.0:         ( 0.000242s |  0.01% )            ( 0.000265s |  0.03% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000132s |  0.00% )            ( 0.000147s |  0.01% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000076s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000676s |  0.03% )            ( 0.000566s |  0.07% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.151602s |  8.64% )            ( 0.151602s | 19.54% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.151602s |  8.64% |100.00% )   ( 0.151602s | 19.54% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.000999s |  0.05% )            ( 0.001087s |  0.14% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004574s |  0.26% |  0.13% )   ( 0.004587s |  0.59% |  0.29% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.004715s |  0.26% )            ( 0.007631s |  0.98% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000071s |  0.00% |  1.50% )   ( 0.000084s |  0.01% |  1.10% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000075s |  0.00% |  1.59% )   ( 0.000089s |  0.01% |  1.16% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000072s |  0.00% |  1.52% )   ( 0.000086s |  0.01% |  1.12% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.004497s |  0.25% | 95.37% )   ( 0.007372s |  0.95% | 96.60% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000079s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.000957s |  0.05% )            ( 0.001053s |  0.13% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000077s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000076s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000072s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000144s |  0.00% )            ( 0.000170s |  0.02% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000071s |  0.00% | 49.30% )   ( 0.000084s |  0.01% | 49.41% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000073s |  0.00% | 50.69% )   ( 0.000086s |  0.01% | 50.58% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000082s |  0.00% )            ( 0.000096s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.001973s |  0.11% )            ( 0.002359s |  0.30% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000068s |  0.00% |  3.44% )   ( 0.000081s |  0.01% |  3.43% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000074s |  0.00% |  3.75% )   ( 0.000084s |  0.01% |  3.56% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000066s |  0.00% |  3.34% )   ( 0.000079s |  0.01% |  3.34% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000079s |  0.00% |  4.00% )   ( 0.000094s |  0.01% |  3.98% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000067s |  0.00% |  3.39% )   ( 0.000080s |  0.01% |  3.39% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001619s |  0.09% | 82.05% )   ( 0.001941s |  0.25% | 82.28% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000067s |  0.00% |  4.13% )   ( 0.000080s |  0.01% |  4.12% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000070s |  0.00% |  4.32% )   ( 0.000084s |  0.01% |  4.32% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000066s |  0.00% |  4.07% )   ( 0.000080s |  0.01% |  4.12% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000078s |  0.00% |  4.81% )   ( 0.000092s |  0.01% |  4.73% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000065s |  0.00% |  4.01% )   ( 0.000078s |  0.01% |  4.01% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001273s |  0.07% | 78.62% )   ( 0.001527s |  0.19% | 78.67% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000068s |  0.00% |  5.34% )   ( 0.000083s |  0.01% |  5.43% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000068s |  0.00% |  5.34% )   ( 0.000082s |  0.01% |  5.37% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000064s |  0.00% |  5.02% )   ( 0.000078s |  0.01% |  5.10% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000079s |  0.00% |  6.20% )   ( 0.000093s |  0.01% |  6.09% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000064s |  0.00% |  5.02% )   ( 0.000078s |  0.01% |  5.10% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000930s |  0.05% | 73.05% )   ( 0.001113s |  0.14% | 72.88% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000071s |  0.00% |  7.63% )   ( 0.000082s |  0.01% |  7.36% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000066s |  0.00% |  7.09% )   ( 0.000080s |  0.01% |  7.18% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000066s |  0.00% |  7.09% )   ( 0.000079s |  0.01% |  7.09% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000075s |  0.00% |  8.06% )   ( 0.000089s |  0.01% |  7.99% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000063s |  0.00% |  6.77% )   ( 0.000077s |  0.00% |  6.91% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000589s |  0.03% | 63.33% )   ( 0.000706s |  0.09% | 63.43% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000066s |  0.00% | 11.20% )   ( 0.000081s |  0.01% | 11.47% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000068s |  0.00% | 11.54% )   ( 0.000084s |  0.01% | 11.89% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000065s |  0.00% | 11.03% )   ( 0.000079s |  0.01% | 11.18% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000085s |  0.00% | 14.43% )   ( 0.000101s |  0.01% | 14.30% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000072s |  0.00% | 12.22% )   ( 0.000090s |  0.01% | 12.74% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000233s |  0.01% | 39.55% )   ( 0.000271s |  0.03% | 38.38% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000076s |  0.00% | 32.61% )   ( 0.000084s |  0.01% | 30.99% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000072s |  0.00% | 30.90% )   ( 0.000087s |  0.01% | 32.10% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000085s |  0.00% | 36.48% )   ( 0.000100s |  0.01% | 36.90% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000086s |  0.00% )            ( 0.000100s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000065s |  0.00% )            ( 0.000077s |  0.00% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000090s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000069s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.000870s |  0.04% )            ( 0.000767s |  0.09% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null (&)
152.0.1:        ( 0.010834s |  0.61% )            ( 0.010834s |  1.39% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.010834s |  0.61% |100.00% )   ( 0.010834s |  1.39% |100.00% )    	(1x)	└─  seq 1 5 (^)
152.0.2:        ( 0.000340s |  0.01% )            ( 0.000380s |  0.04% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000340s |  0.01% |100.00% )   ( 0.000380s |  0.04% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000083s |  0.00% )            ( 0.000097s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000123s |  0.00% )            ( 0.000137s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

TOTAL RUN TIME: 1.753399s
TOTAL CPU TIME: 0.775626s

