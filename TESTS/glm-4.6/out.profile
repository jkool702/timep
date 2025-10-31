LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.322678s | 19.88% )            ( 0.011578s |  1.78% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.322678s | 19.88% |100.00% )   ( 0.011578s |  1.78% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000077s |  0.00% |  0.02% )   ( 0.000090s |  0.01% |  0.77% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000070s |  0.00% |  0.02% )   ( 0.000084s |  0.01% |  0.72% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000073s |  0.00% |  0.02% )   ( 0.000087s |  0.01% |  0.75% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000315s |  0.01% |  0.09% )   ( 0.000352s |  0.05% |  3.04% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208631s | 12.85% | 64.65% )   ( 0.009121s |  1.40% | 78.77% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.105042s |  6.47% | 50.34% )   ( 0.005326s |  0.81% | 58.39% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.102421s |  6.31% | 97.50% )   ( 0.002495s |  0.38% | 46.84% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002621s |  0.16% |  2.49% )   ( 0.002831s |  0.43% | 53.15% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103589s |  6.38% | 49.65% )   ( 0.003795s |  0.58% | 41.60% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102126s |  6.29% | 98.58% )   ( 0.002243s |  0.34% | 59.10% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001463s |  0.09% |  1.41% )   ( 0.001552s |  0.23% | 40.89% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000409s |  0.02% |  0.12% )   ( 0.000430s |  0.06% |  3.71% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000083s |  0.00% |  0.02% )   ( 0.000098s |  0.01% |  0.84% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.113020s |  6.96% | 35.02% )   ( 0.001316s |  0.20% | 11.36% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.323315s | 19.92% )            ( 0.011635s |  1.78% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.323315s | 19.92% |100.00% )   ( 0.011635s |  1.78% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000073s |  0.00% |  0.02% )   ( 0.000086s |  0.01% |  0.73% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000069s |  0.00% |  0.02% )   ( 0.000082s |  0.01% |  0.70% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000076s |  0.00% |  0.02% )   ( 0.000089s |  0.01% |  0.76% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000320s |  0.01% |  0.09% )   ( 0.000351s |  0.05% |  3.01% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209112s | 12.88% | 64.67% )   ( 0.009452s |  1.45% | 81.23% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104661s |  6.44% | 50.05% )   ( 0.004776s |  0.73% | 50.52% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.102370s |  6.30% | 97.81% )   ( 0.002407s |  0.37% | 50.39% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002291s |  0.14% |  2.18% )   ( 0.002369s |  0.36% | 49.60% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104451s |  6.43% | 49.94% )   ( 0.004676s |  0.71% | 49.47% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101479s |  6.25% | 97.15% )   ( 0.001454s |  0.22% | 31.09% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002972s |  0.18% |  2.84% )   ( 0.003222s |  0.49% | 68.90% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000420s |  0.02% |  0.12% )   ( 0.000437s |  0.06% |  3.75% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000089s |  0.00% |  0.02% )   ( 0.000099s |  0.01% |  0.85% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.113156s |  6.97% | 34.99% )   ( 0.001039s |  0.15% |  8.92% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000069s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.019784s |  1.21% )            ( 0.019710s |  3.03% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000073s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

20.0.0:        ( 0.000087s |  0.00% )            ( 0.000101s |  0.01% )             	(1x)	sourced_var="initial_value"-

21.0.0:         ( 0.021897s |  1.34% )            ( 0.021830s |  3.35% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

23.0.0:         ( 0.000069s |  0.00% )            ( 0.000083s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.019169s |  1.18% )            ( 0.019127s |  2.94% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000070s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000095s |  0.00% )            ( 0.000108s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007755s |  0.47% |  0.00% )   ( 0.009179s |  1.41% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007778s |  0.47% |  0.00% )   ( 0.009195s |  1.41% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.042094s |  2.59% |  0.02% )   ( 0.044133s |  6.78% |  0.06% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.023643s |  1.45% |  0.01% )   ( 0.027151s |  4.17% |  0.04% )    	(100x)	<< (SUBSHELL) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.013318s |  0.82% | 56.32% )   ( 0.015119s |  2.32% | 55.68% )    	(100x)	├─  read
37.1.1:         ( 0.010325s |  0.63% | 43.67% )   ( 0.012032s |  1.85% | 44.31% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.061079s |  3.76% |  0.03% )   ( 0.046883s |  7.21% |  0.07% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.418047s | 25.76% |  0.25% )   ( 0.398997s | 61.37% |  0.61% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.078236s |  4.82% | 18.71% )   ( 0.056603s |  8.70% | 14.18% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.339811s | 20.93% | 81.28% )   ( 0.342394s | 52.66% | 85.81% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.321639s | 19.81% | 94.65% )   ( 0.321639s | 49.47% | 93.93% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.018172s |  1.11% |  5.34% )   ( 0.020755s |  3.19% |  6.06% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.018172s |  1.11% |100.00% )   ( 0.020755s |  3.19% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000122s |  0.00% )            ( 0.000135s |  0.02% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000113s |  0.00% )            ( 0.000132s |  0.02% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202996s | 12.50% )            ( 0.002968s |  0.45% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202792s | 12.49% | 99.89% )   ( 0.002732s |  0.42% | 92.04% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000204s |  0.01% |  0.10% )   ( 0.000236s |  0.03% |  7.95% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000097s |  0.00% )            ( 0.000114s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000102s |  0.00% )            ( 0.000119s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000116s |  0.00% )            ( 0.000131s |  0.02% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.129169s |  7.95% )            ( 0.000508s |  0.07% )             	(1x)	wait

73.0.0:         ( 0.000146s |  0.00% )            ( 0.000170s |  0.02% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000226s |  0.01% )            ( 0.000245s |  0.03% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000155s |  0.00% )            ( 0.000179s |  0.02% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000139s |  0.00% )            ( 0.000163s |  0.02% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000140s |  0.00% )            ( 0.000164s |  0.02% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000650s |  0.04% )            ( 0.000403s |  0.06% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.003805s |  0.23% )            ( 0.003805s |  0.58% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.003805s |  0.23% |100.00% )   ( 0.003805s |  0.58% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.001153s |  0.07% )            ( 0.001241s |  0.19% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004704s |  0.28% |  0.14% )   ( 0.004715s |  0.72% |  0.36% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000070s |  0.00% )            ( 0.000083s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.005149s |  0.31% )            ( 0.008121s |  1.24% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000067s |  0.00% |  1.30% )   ( 0.000081s |  0.01% |  0.99% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000073s |  0.00% |  1.41% )   ( 0.000085s |  0.01% |  1.04% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000070s |  0.00% |  1.35% )   ( 0.000084s |  0.01% |  1.03% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.004939s |  0.30% | 95.92% )   ( 0.007871s |  1.21% | 96.92% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000079s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001010s |  0.06% )            ( 0.001102s |  0.16% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000078s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000069s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000068s |  0.00% )            ( 0.000081s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000138s |  0.00% )            ( 0.000166s |  0.02% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000068s |  0.00% | 49.27% )   ( 0.000082s |  0.01% | 49.39% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000070s |  0.00% | 50.72% )   ( 0.000084s |  0.01% | 50.60% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000083s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.001992s |  0.12% )            ( 0.002376s |  0.36% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000064s |  0.00% |  3.21% )   ( 0.000078s |  0.01% |  3.28% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000067s |  0.00% |  3.36% )   ( 0.000082s |  0.01% |  3.45% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000064s |  0.00% |  3.21% )   ( 0.000078s |  0.01% |  3.28% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000079s |  0.00% |  3.96% )   ( 0.000092s |  0.01% |  3.87% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000064s |  0.00% |  3.21% )   ( 0.000077s |  0.01% |  3.24% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001654s |  0.10% | 83.03% )   ( 0.001969s |  0.30% | 82.87% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000060s |  0.00% |  3.62% )   ( 0.000074s |  0.01% |  3.75% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000064s |  0.00% |  3.86% )   ( 0.000078s |  0.01% |  3.96% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000065s |  0.00% |  3.92% )   ( 0.000078s |  0.01% |  3.96% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000075s |  0.00% |  4.53% )   ( 0.000089s |  0.01% |  4.52% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000082s |  0.00% |  4.95% )   ( 0.000095s |  0.01% |  4.82% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001308s |  0.08% | 79.08% )   ( 0.001555s |  0.23% | 78.97% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000078s |  0.00% |  5.96% )   ( 0.000092s |  0.01% |  5.91% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000068s |  0.00% |  5.19% )   ( 0.000082s |  0.01% |  5.27% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000065s |  0.00% |  4.96% )   ( 0.000078s |  0.01% |  5.01% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000076s |  0.00% |  5.81% )   ( 0.000090s |  0.01% |  5.78% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000066s |  0.00% |  5.04% )   ( 0.000080s |  0.01% |  5.14% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000955s |  0.05% | 73.01% )   ( 0.001133s |  0.17% | 72.86% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000068s |  0.00% |  7.12% )   ( 0.000083s |  0.01% |  7.32% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000072s |  0.00% |  7.53% )   ( 0.000087s |  0.01% |  7.67% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000067s |  0.00% |  7.01% )   ( 0.000081s |  0.01% |  7.14% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000080s |  0.00% |  8.37% )   ( 0.000093s |  0.01% |  8.20% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000074s |  0.00% |  7.74% )   ( 0.000083s |  0.01% |  7.32% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000594s |  0.03% | 62.19% )   ( 0.000706s |  0.10% | 62.31% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000067s |  0.00% | 11.27% )   ( 0.000082s |  0.01% | 11.61% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000070s |  0.00% | 11.78% )   ( 0.000085s |  0.01% | 12.03% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000067s |  0.00% | 11.27% )   ( 0.000082s |  0.01% | 11.61% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000081s |  0.00% | 13.63% )   ( 0.000095s |  0.01% | 13.45% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000066s |  0.00% | 11.11% )   ( 0.000079s |  0.01% | 11.18% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000243s |  0.01% | 40.90% )   ( 0.000283s |  0.04% | 40.08% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000070s |  0.00% | 28.80% )   ( 0.000084s |  0.01% | 29.68% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000092s |  0.00% | 37.86% )   ( 0.000103s |  0.01% | 36.39% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000081s |  0.00% | 33.33% )   ( 0.000096s |  0.01% | 33.92% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000070s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000065s |  0.00% )            ( 0.000078s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000095s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000067s |  0.00% )            ( 0.000080s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001517s |  0.09% )            ( 0.001484s |  0.22% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000006s |  0.00% )            ( 0.000006s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000006s |  0.00% |100.00% )   ( 0.000006s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000089s |  0.00% )            ( 0.000100s |  0.01% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000089s |  0.00% |100.00% )   ( 0.000100s |  0.01% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000110s |  0.00% )            ( 0.000124s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

TOTAL RUN TIME: 1.622803s
TOTAL CPU TIME: 0.650113s

