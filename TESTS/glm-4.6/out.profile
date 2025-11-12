LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.324863s | 19.93% )            ( 0.010269s |  1.53% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.324863s | 19.93% |100.00% )   ( 0.010269s |  1.53% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000079s |  0.00% |  0.02% )   ( 0.000094s |  0.01% |  0.91% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000074s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.85% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000080s |  0.00% |  0.02% )   ( 0.000095s |  0.01% |  0.92% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000313s |  0.01% |  0.09% )   ( 0.000351s |  0.05% |  3.41% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.207657s | 12.74% | 63.92% )   ( 0.007955s |  1.18% | 77.46% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.104237s |  6.39% | 50.19% )   ( 0.004476s |  0.66% | 56.26% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101405s |  6.22% | 97.28% )   ( 0.001423s |  0.21% | 31.79% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002832s |  0.17% |  2.71% )   ( 0.003053s |  0.45% | 68.20% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103420s |  6.34% | 49.80% )   ( 0.003479s |  0.51% | 43.73% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101380s |  6.22% | 98.02% )   ( 0.001321s |  0.19% | 37.97% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002040s |  0.12% |  1.97% )   ( 0.002158s |  0.32% | 62.02% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000428s |  0.02% |  0.13% )   ( 0.000445s |  0.06% |  4.33% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000095s |  0.00% |  0.02% )   ( 0.000106s |  0.01% |  1.03% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116136s |  7.12% | 35.74% )   ( 0.001134s |  0.16% | 11.04% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.319143s | 19.58% )            ( 0.011364s |  1.69% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.319143s | 19.58% |100.00% )   ( 0.011364s |  1.69% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000102s |  0.00% |  0.03% )   ( 0.000128s |  0.01% |  1.12% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000073s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.77% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000079s |  0.00% |  0.02% )   ( 0.000092s |  0.01% |  0.80% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000313s |  0.01% |  0.09% )   ( 0.000342s |  0.05% |  3.00% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208770s | 12.81% | 65.41% )   ( 0.009065s |  1.35% | 79.76% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.104227s |  6.39% | 49.92% )   ( 0.004396s |  0.65% | 48.49% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101454s |  6.22% | 97.33% )   ( 0.001429s |  0.21% | 32.50% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002773s |  0.17% |  2.66% )   ( 0.002967s |  0.44% | 67.49% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104543s |  6.41% | 50.07% )   ( 0.004669s |  0.69% | 51.50% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101762s |  6.24% | 97.33% )   ( 0.001684s |  0.25% | 36.06% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002781s |  0.17% |  2.66% )   ( 0.002985s |  0.44% | 63.93% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000398s |  0.02% |  0.12% )   ( 0.000412s |  0.06% |  3.62% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000082s |  0.00% |  0.02% )   ( 0.000095s |  0.01% |  0.83% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.109325s |  6.70% | 34.25% )   ( 0.001141s |  0.17% | 10.04% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000067s |  0.00% )            ( 0.000081s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000091s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021881s |  1.34% )            ( 0.021825s |  3.25% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000074s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.033657s |  2.06% )            ( 0.033537s |  5.00% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000089s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000151s |  0.00% )            ( 0.000175s |  0.02% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.022733s |  1.39% )            ( 0.022680s |  3.38% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000092s |  0.00% )            ( 0.000105s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007905s |  0.48% |  0.00% )   ( 0.009349s |  1.39% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007971s |  0.48% |  0.00% )   ( 0.009404s |  1.40% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.042551s |  2.61% |  0.02% )   ( 0.044453s |  6.63% |  0.06% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.023874s |  1.46% |  0.01% )   ( 0.027311s |  4.07% |  0.04% )    	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.013494s |  0.82% | 56.52% )   ( 0.015263s |  2.27% | 55.88% )    	(100x)	├─  read
37.1.1:         ( 0.010380s |  0.63% | 43.47% )   ( 0.012048s |  1.79% | 44.11% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.058347s |  3.58% |  0.03% )   ( 0.043953s |  6.55% |  0.06% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.393855s | 24.17% |  0.24% )   ( 0.377430s | 56.31% |  0.56% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.072092s |  4.42% | 18.30% )   ( 0.053499s |  7.98% | 14.17% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.321763s | 19.74% | 81.69% )   ( 0.323931s | 48.33% | 85.82% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.306418s | 18.80% | 95.23% )   ( 0.306418s | 45.71% | 94.59% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.015345s |  0.94% |  4.76% )   ( 0.017513s |  2.61% |  5.40% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.015345s |  0.94% |100.00% )   ( 0.017513s |  2.61% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000081s |  0.00% )            ( 0.000095s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000082s |  0.00% )            ( 0.000096s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.203143s | 12.46% )            ( 0.003134s |  0.46% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202796s | 12.44% | 99.82% )   ( 0.002737s |  0.40% | 87.33% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000347s |  0.02% |  0.17% )   ( 0.000397s |  0.05% | 12.66% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000070s |  0.00% )            ( 0.000083s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000077s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000076s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.139910s |  8.58% )            ( 0.000493s |  0.07% )             	(1x)	wait

73.0.0:         ( 0.000226s |  0.01% )            ( 0.000254s |  0.03% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000366s |  0.02% )            ( 0.000404s |  0.06% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000210s |  0.01% )            ( 0.000243s |  0.03% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000204s |  0.01% )            ( 0.000237s |  0.03% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000071s |  0.00% )            ( 0.000100s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000827s |  0.05% )            ( 0.000741s |  0.11% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.005924s |  0.36% )            ( 0.005924s |  0.88% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.005924s |  0.36% |100.00% )   ( 0.005924s |  0.88% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.000983s |  0.06% )            ( 0.001062s |  0.15% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004686s |  0.28% |  0.14% )   ( 0.004699s |  0.70% |  0.35% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.004681s |  0.28% )            ( 0.006591s |  0.98% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000070s |  0.00% |  1.49% )   ( 0.000083s |  0.01% |  1.25% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000078s |  0.00% |  1.66% )   ( 0.000091s |  0.01% |  1.38% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000073s |  0.00% |  1.55% )   ( 0.000086s |  0.01% |  1.30% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.004460s |  0.27% | 95.27% )   ( 0.006331s |  0.94% | 96.05% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000162s |  0.00% )            ( 0.000186s |  0.02% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001403s |  0.08% )            ( 0.001554s |  0.23% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000168s |  0.01% )            ( 0.000196s |  0.02% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000082s |  0.00% )            ( 0.000097s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000085s |  0.00% )            ( 0.000099s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000241s |  0.01% )            ( 0.000282s |  0.04% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000082s |  0.00% | 34.02% )   ( 0.000096s |  0.01% | 34.04% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000159s |  0.00% | 65.97% )   ( 0.000186s |  0.02% | 65.95% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000144s |  0.00% )            ( 0.000179s |  0.02% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.003035s |  0.18% )            ( 0.003553s |  0.53% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000070s |  0.00% |  2.30% )   ( 0.000083s |  0.01% |  2.33% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000069s |  0.00% |  2.27% )   ( 0.000083s |  0.01% |  2.33% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000065s |  0.00% |  2.14% )   ( 0.000077s |  0.01% |  2.16% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000081s |  0.00% |  2.66% )   ( 0.000094s |  0.01% |  2.64% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000066s |  0.00% |  2.17% )   ( 0.000080s |  0.01% |  2.25% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.002684s |  0.16% | 88.43% )   ( 0.003136s |  0.46% | 88.26% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000078s |  0.00% |  2.90% )   ( 0.000092s |  0.01% |  2.93% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000070s |  0.00% |  2.60% )   ( 0.000084s |  0.01% |  2.67% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000126s |  0.00% |  4.69% )   ( 0.000141s |  0.02% |  4.49% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000168s |  0.01% |  6.25% )   ( 0.000194s |  0.02% |  6.18% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000143s |  0.00% |  5.32% )   ( 0.000169s |  0.02% |  5.38% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.002099s |  0.12% | 78.20% )   ( 0.002456s |  0.36% | 78.31% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000129s |  0.00% |  6.14% )   ( 0.000154s |  0.02% |  6.27% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000140s |  0.00% |  6.66% )   ( 0.000165s |  0.02% |  6.71% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000159s |  0.00% |  7.57% )   ( 0.000179s |  0.02% |  7.28% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000158s |  0.00% |  7.52% )   ( 0.000181s |  0.02% |  7.36% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000135s |  0.00% |  6.43% )   ( 0.000160s |  0.02% |  6.51% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.001378s |  0.08% | 65.65% )   ( 0.001617s |  0.24% | 65.83% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000138s |  0.00% | 10.01% )   ( 0.000166s |  0.02% | 10.26% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000146s |  0.00% | 10.59% )   ( 0.000172s |  0.02% | 10.63% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000140s |  0.00% | 10.15% )   ( 0.000164s |  0.02% | 10.14% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000187s |  0.01% | 13.57% )   ( 0.000205s |  0.03% | 12.67% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000169s |  0.01% | 12.26% )   ( 0.000196s |  0.02% | 12.12% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000598s |  0.03% | 43.39% )   ( 0.000714s |  0.10% | 44.15% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000071s |  0.00% | 11.87% )   ( 0.000085s |  0.01% | 11.90% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000069s |  0.00% | 11.53% )   ( 0.000085s |  0.01% | 11.90% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000075s |  0.00% | 12.54% )   ( 0.000089s |  0.01% | 12.46% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000076s |  0.00% | 12.70% )   ( 0.000091s |  0.01% | 12.74% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000062s |  0.00% | 10.36% )   ( 0.000077s |  0.01% | 10.78% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000245s |  0.01% | 40.96% )   ( 0.000287s |  0.04% | 40.19% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000079s |  0.00% | 32.24% )   ( 0.000094s |  0.01% | 32.75% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000078s |  0.00% | 31.83% )   ( 0.000093s |  0.01% | 32.40% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000088s |  0.00% | 35.91% )   ( 0.000100s |  0.01% | 34.84% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000074s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000072s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001511s |  0.09% )            ( 0.001422s |  0.21% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000026s |  0.00% )            ( 0.000026s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000026s |  0.00% |100.00% )   ( 0.000026s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000102s |  0.00% )            ( 0.000118s |  0.01% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000102s |  0.00% |100.00% )   ( 0.000118s |  0.01% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000080s |  0.00% )            ( 0.000095s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000072s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000112s |  0.00% )            ( 0.000126s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 0.779774s
TOTAL RUN TIME:  1.629465s
TOTAL CPU TIME:  0.670241s

