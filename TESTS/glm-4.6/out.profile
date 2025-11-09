LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.117168s |  8.84% )            ( 0.007865s |  1.05% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.117168s |  8.84% |100.00% )   ( 0.007865s |  1.05% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000111s |  0.00% |  0.03% )   ( 0.000131s |  0.01% |  1.12% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000077s |  0.00% |  0.02% )   ( 0.000091s |  0.01% |  0.78% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000079s |  0.00% |  0.02% )   ( 0.000093s |  0.01% |  0.79% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000312s |  0.02% |  0.09% )   ( 0.000343s |  0.04% |  2.94% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209015s | 15.78% | 65.16% )   ( 0.009091s |  1.21% | 78.02% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.104967s |  7.92% | 50.21% )   ( 0.004950s |  0.66% | 54.44% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.102676s |  7.75% | 97.81% )   ( 0.002558s |  0.34% | 51.67% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002291s |  0.17% |  2.18% )   ( 0.002392s |  0.32% | 48.32% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104048s |  7.85% | 49.78% )   ( 0.004141s |  0.55% | 45.55% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101784s |  7.68% | 97.82% )   ( 0.001806s |  0.24% | 43.61% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002264s |  0.17% |  2.17% )   ( 0.002335s |  0.31% | 56.38% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000411s |  0.03% |  0.12% )   ( 0.000430s |  0.05% |  3.69% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000093s |  0.00% |  0.02% )   ( 0.000114s |  0.01% |  0.97% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.110634s |  8.35% | 34.49% )   ( 0.001358s |  0.18% | 11.65% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.120911s |  9.12% )            ( 0.007486s |  1.00% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.120911s |  9.12% |100.00% )   ( 0.007486s |  1.00% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000077s |  0.00% |  0.02% )   ( 0.000092s |  0.01% |  0.97% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000074s |  0.00% |  0.02% )   ( 0.000088s |  0.01% |  0.93% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000082s |  0.00% |  0.02% )   ( 0.000096s |  0.01% |  1.02% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000313s |  0.02% |  0.09% )   ( 0.000346s |  0.04% |  3.68% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.206884s | 15.62% | 64.15% )   ( 0.007086s |  0.94% | 75.39% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.103069s |  7.78% | 49.81% )   ( 0.003257s |  0.43% | 45.96% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101414s |  7.65% | 98.39% )   ( 0.001362s |  0.18% | 41.81% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001655s |  0.12% |  1.60% )   ( 0.001895s |  0.25% | 58.18% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103815s |  7.83% | 50.18% )   ( 0.003829s |  0.51% | 54.03% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102578s |  7.74% | 98.80% )   ( 0.002497s |  0.33% | 65.21% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001237s |  0.09% |  1.19% )   ( 0.001332s |  0.17% | 34.78% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000449s |  0.03% |  0.13% )   ( 0.000463s |  0.06% |  4.92% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.01% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000089s |  0.00% |  0.02% )   ( 0.000104s |  0.01% |  1.10% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.114521s |  8.64% | 35.51% )   ( 0.001123s |  0.15% | 11.94% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000068s |  0.00% )            ( 0.000083s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021978s |  1.65% )            ( 0.021917s |  2.93% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000088s |  0.00% )            ( 0.000101s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000072s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.024511s |  1.85% )            ( 0.024443s |  3.27% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000166s |  0.01% )            ( 0.000182s |  0.02% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000077s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021419s |  1.61% )            ( 0.021363s |  2.86% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000099s |  0.00% )            ( 0.000112s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000096s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007530s |  0.56% |  0.00% )   ( 0.008890s |  1.19% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007614s |  0.57% |  0.00% )   ( 0.008978s |  1.20% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.041460s |  3.13% |  0.03% )   ( 0.043170s |  5.78% |  0.05% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.022506s |  1.69% |  0.01% )   ( 0.025897s |  3.47% |  0.03% )    	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.012517s |  0.94% | 55.61% )   ( 0.014246s |  1.90% | 55.01% )    	(100x)	├─  read
37.1.1:         ( 0.009989s |  0.75% | 44.38% )   ( 0.011651s |  1.56% | 44.98% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.062905s |  4.74% |  0.04% )   ( 0.048267s |  6.46% |  0.06% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.382286s | 28.86% |  0.28% )   ( 0.362521s | 48.58% |  0.48% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.073024s |  5.51% | 19.10% )   ( 0.051102s |  6.84% | 14.09% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.309262s | 23.35% | 80.89% )   ( 0.311419s | 41.73% | 85.90% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.294835s | 22.26% | 95.33% )   ( 0.294835s | 39.50% | 94.67% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.014427s |  1.08% |  4.66% )   ( 0.016584s |  2.22% |  5.32% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.014427s |  1.08% |100.00% )   ( 0.016584s |  2.22% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000120s |  0.00% )            ( 0.000139s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000115s |  0.00% )            ( 0.000133s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202628s | 15.29% )            ( 0.002566s |  0.34% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202500s | 15.28% | 99.93% )   ( 0.002419s |  0.32% | 94.27% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000128s |  0.00% |  0.06% )   ( 0.000147s |  0.01% |  5.72% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000075s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000085s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.137746s | 10.40% )            ( 0.000287s |  0.03% )             	(1x)	wait

73.0.0:         ( 0.000116s |  0.00% )            ( 0.000135s |  0.01% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000137s |  0.01% )            ( 0.000153s |  0.02% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.001149s |  0.08% )            ( 0.001065s |  0.14% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.006277s |  0.47% )            ( 0.006277s |  0.84% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.006277s |  0.47% |100.00% )   ( 0.006277s |  0.84% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.000975s |  0.07% )            ( 0.001054s |  0.14% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.006506s |  0.49% |  0.24% )   ( 0.006496s |  0.87% |  0.43% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000075s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.025621s |  1.93% )            ( 0.027406s |  3.67% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000071s |  0.00% |  1.36% )   ( 0.000085s |  0.01% |  1.18% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000079s |  0.00% |  1.52% )   ( 0.000094s |  0.01% |  1.30% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000072s |  0.00% |  1.38% )   ( 0.000086s |  0.01% |  1.19% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.004967s |  0.37% | 95.72% )   ( 0.006923s |  0.92% | 96.31% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000079s |  0.00% )            ( 0.000092s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001095s |  0.08% )            ( 0.001206s |  0.16% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000081s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000079s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.012903s |  0.97% )            ( 0.019717s |  2.64% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000072s |  0.00% | 49.31% )   ( 0.000086s |  0.01% | 49.71% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000074s |  0.00% | 50.68% )   ( 0.000087s |  0.01% | 50.28% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000077s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.094481s |  7.13% )            ( 0.094190s | 12.62% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000068s |  0.00% |  0.08% )   ( 0.000082s |  0.01% |  0.10% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000076s |  0.00% |  0.09% )   ( 0.000086s |  0.01% |  0.10% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000067s |  0.00% |  0.08% )   ( 0.000080s |  0.01% |  0.10% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000082s |  0.00% |  0.10% )   ( 0.000097s |  0.01% |  0.12% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000068s |  0.00% |  0.08% )   ( 0.000081s |  0.01% |  0.10% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.078459s |  5.92% | 99.54% )   ( 0.078225s | 10.48% | 99.45% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000068s |  0.00% |  0.10% )   ( 0.000081s |  0.01% |  0.12% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000071s |  0.00% |  0.11% )   ( 0.000085s |  0.01% |  0.13% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000067s |  0.00% |  0.10% )   ( 0.000080s |  0.01% |  0.12% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000079s |  0.00% |  0.12% )   ( 0.000092s |  0.01% |  0.14% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000071s |  0.00% |  0.11% )   ( 0.000082s |  0.01% |  0.13% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.062528s |  4.72% | 99.43% )   ( 0.062336s |  8.35% | 99.33% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000068s |  0.00% |  0.14% )   ( 0.000083s |  0.01% |  0.17% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000069s |  0.00% |  0.14% )   ( 0.000083s |  0.01% |  0.17% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000065s |  0.00% |  0.13% )   ( 0.000080s |  0.01% |  0.17% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000078s |  0.00% |  0.16% )   ( 0.000092s |  0.01% |  0.19% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000067s |  0.00% |  0.14% )   ( 0.000081s |  0.01% |  0.17% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.046381s |  3.50% | 99.25% )   ( 0.046243s |  6.19% | 99.10% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000070s |  0.00% |  0.22% )   ( 0.000086s |  0.01% |  0.28% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000073s |  0.00% |  0.23% )   ( 0.000087s |  0.01% |  0.28% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000073s |  0.00% |  0.23% )   ( 0.000085s |  0.01% |  0.27% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000082s |  0.00% |  0.26% )   ( 0.000095s |  0.01% |  0.31% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000067s |  0.00% |  0.21% )   ( 0.000081s |  0.01% |  0.26% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.030191s |  2.27% | 98.80% )   ( 0.030106s |  4.03% | 98.57% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000070s |  0.00% |  0.49% )   ( 0.000083s |  0.01% |  0.58% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000069s |  0.00% |  0.48% )   ( 0.000083s |  0.01% |  0.58% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000068s |  0.00% |  0.47% )   ( 0.000083s |  0.01% |  0.58% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000083s |  0.00% |  0.58% )   ( 0.000097s |  0.01% |  0.67% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000066s |  0.00% |  0.46% )   ( 0.000081s |  0.01% |  0.56% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.013910s |  1.05% | 97.50% )   ( 0.013878s |  1.85% | 97.01% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000078s |  0.00% | 32.23% )   ( 0.000092s |  0.01% | 32.50% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000074s |  0.00% | 30.57% )   ( 0.000089s |  0.01% | 31.44% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000090s |  0.00% | 37.19% )   ( 0.000102s |  0.01% | 36.04% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000074s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000069s |  0.00% )            ( 0.000079s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000075s |  0.00% )            ( 0.000103s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000069s |  0.00% )            ( 0.000082s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.000893s |  0.06% )            ( 0.000780s |  0.10% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000587s |  0.04% )            ( 0.000587s |  0.07% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000587s |  0.04% |100.00% )   ( 0.000587s |  0.07% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000320s |  0.02% )            ( 0.000370s |  0.04% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000320s |  0.02% |100.00% )   ( 0.000370s |  0.04% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000090s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000122s |  0.00% )            ( 0.000133s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 1.324414s
TOTAL RUN TIME:  1.324414s
TOTAL CPU TIME:  0.746230s

