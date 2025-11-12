LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.320484s | 20.13% )            ( 0.011076s |  1.80% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.320484s | 20.13% |100.00% )   ( 0.011076s |  1.80% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000284s |  0.01% |  0.08% )   ( 0.000333s |  0.05% |  3.00% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000283s |  0.01% |  0.08% )   ( 0.000332s |  0.05% |  2.99% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000075s |  0.00% |  0.02% )   ( 0.000089s |  0.01% |  0.80% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000329s |  0.02% |  0.10% )   ( 0.000352s |  0.05% |  3.17% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.208712s | 13.11% | 65.12% )   ( 0.008993s |  1.46% | 81.19% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.103595s |  6.50% | 49.63% )   ( 0.003721s |  0.60% | 41.37% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101488s |  6.37% | 97.96% )   ( 0.001468s |  0.23% | 39.45% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002107s |  0.13% |  2.03% )   ( 0.002253s |  0.36% | 60.54% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.105117s |  6.60% | 50.36% )   ( 0.005272s |  0.85% | 58.62% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.102428s |  6.43% | 97.44% )   ( 0.002389s |  0.38% | 45.31% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002689s |  0.16% |  2.55% )   ( 0.002883s |  0.46% | 54.68% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000404s |  0.02% |  0.12% )   ( 0.000424s |  0.06% |  3.82% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000080s |  0.00% |  0.02% )   ( 0.000095s |  0.01% |  0.85% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.110316s |  6.93% | 34.42% )   ( 0.000457s |  0.07% |  4.12% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.321406s | 20.19% )            ( 0.010473s |  1.70% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.321406s | 20.19% |100.00% )   ( 0.010473s |  1.70% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000159s |  0.00% |  0.04% )   ( 0.000187s |  0.03% |  1.78% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000158s |  0.00% |  0.04% )   ( 0.000186s |  0.03% |  1.77% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000182s |  0.01% |  0.05% )   ( 0.000205s |  0.03% |  1.95% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000305s |  0.01% |  0.09% )   ( 0.000338s |  0.05% |  3.22% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.207567s | 13.03% | 64.58% )   ( 0.007903s |  1.28% | 75.46% )    	(1x)	│  │   << (BACKGROUND FORK) >>
27.3.0:         ( 0.103646s |  6.51% | 49.93% )   ( 0.003804s |  0.61% | 48.13% )    	(1x)	│  │  ├─  << (BACKGROUND FORK) >>
27.4.0:         ( 0.101976s |  6.40% | 98.38% )   ( 0.002045s |  0.33% | 53.75% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001670s |  0.10% |  1.61% )   ( 0.001759s |  0.28% | 46.24% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.103921s |  6.52% | 50.06% )   ( 0.004099s |  0.66% | 51.86% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101990s |  6.40% | 98.14% )   ( 0.002089s |  0.34% | 50.96% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.001931s |  0.12% |  1.85% )   ( 0.002010s |  0.32% | 49.03% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000400s |  0.02% |  0.12% )   ( 0.000416s |  0.06% |  3.97% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000082s |  0.00% |  0.02% )   ( 0.000096s |  0.01% |  0.91% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.112552s |  7.07% | 35.01% )   ( 0.001141s |  0.18% | 10.89% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000068s |  0.00% )            ( 0.000081s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000081s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.021581s |  1.35% )            ( 0.021519s |  3.50% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000071s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

21.0.0:         ( 0.024119s |  1.51% )            ( 0.024061s |  3.91% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

22.0.0:        ( 0.000090s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	sourced_var="initial_value"-

23.0.0:         ( 0.000070s |  0.00% )            ( 0.000083s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.021543s |  1.35% )            ( 0.021495s |  3.49% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000077s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000098s |  0.00% )            ( 0.000107s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007599s |  0.47% |  0.00% )   ( 0.009034s |  1.47% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007789s |  0.48% |  0.00% )   ( 0.009221s |  1.50% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.042196s |  2.65% |  0.02% )   ( 0.044287s |  7.20% |  0.07% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.026404s |  1.65% |  0.01% )   ( 0.030219s |  4.91% |  0.04% )    	(100x)	<< (BACKGROUND FORK) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.015265s |  0.95% | 57.81% )   ( 0.017311s |  2.81% | 57.28% )    	(100x)	├─  read
37.1.1:         ( 0.011139s |  0.69% | 42.18% )   ( 0.012908s |  2.10% | 42.71% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.060296s |  3.78% |  0.03% )   ( 0.046047s |  7.49% |  0.07% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.373889s | 23.48% |  0.23% )   ( 0.354580s | 57.71% |  0.57% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.069839s |  4.38% | 18.67% )   ( 0.048323s |  7.86% | 13.62% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.304050s | 19.10% | 81.32% )   ( 0.306257s | 49.84% | 86.37% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.289201s | 18.16% | 95.11% )   ( 0.289201s | 47.07% | 94.43% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.014849s |  0.93% |  4.88% )   ( 0.017056s |  2.77% |  5.56% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.014849s |  0.93% |100.00% )   ( 0.017056s |  2.77% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000080s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000082s |  0.00% )            ( 0.000095s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.201978s | 12.68% )            ( 0.002086s |  0.33% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.201635s | 12.66% | 99.83% )   ( 0.001694s |  0.27% | 81.20% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000343s |  0.02% |  0.16% )   ( 0.000392s |  0.06% | 18.79% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000070s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000085s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.136235s |  8.55% )            ( 0.000242s |  0.03% )             	(1x)	wait

73.0.0:         ( 0.000083s |  0.00% )            ( 0.000097s |  0.01% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000173s |  0.01% )            ( 0.000181s |  0.02% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000098s |  0.00% )            ( 0.000116s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000096s |  0.00% )            ( 0.000113s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000094s |  0.00% )            ( 0.000111s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.000505s |  0.03% )            ( 0.000318s |  0.05% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.003315s |  0.20% )            ( 0.003315s |  0.53% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.003315s |  0.20% |100.00% )   ( 0.003315s |  0.53% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.001455s |  0.09% )            ( 0.001530s |  0.24% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004657s |  0.29% |  0.14% )   ( 0.004671s |  0.76% |  0.38% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000080s |  0.00% )            ( 0.000097s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.004137s |  0.25% )            ( 0.006766s |  1.10% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000073s |  0.00% |  1.76% )   ( 0.000087s |  0.01% |  1.28% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000080s |  0.00% |  1.93% )   ( 0.000093s |  0.01% |  1.37% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000072s |  0.00% |  1.74% )   ( 0.000085s |  0.01% |  1.25% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.003912s |  0.24% | 94.56% )   ( 0.006501s |  1.05% | 96.08% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000207s |  0.01% )            ( 0.000232s |  0.03% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001387s |  0.08% )            ( 0.001530s |  0.24% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000162s |  0.01% )            ( 0.000180s |  0.02% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000145s |  0.00% )            ( 0.000169s |  0.02% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000140s |  0.00% )            ( 0.000163s |  0.02% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000134s |  0.00% )            ( 0.000157s |  0.02% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000318s |  0.01% )            ( 0.000363s |  0.05% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000133s |  0.00% | 41.82% )   ( 0.000156s |  0.02% | 42.97% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000185s |  0.01% | 58.17% )   ( 0.000207s |  0.03% | 57.02% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000079s |  0.00% )            ( 0.000092s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.002749s |  0.17% )            ( 0.003258s |  0.53% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000064s |  0.00% |  2.32% )   ( 0.000078s |  0.01% |  2.39% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000068s |  0.00% |  2.47% )   ( 0.000082s |  0.01% |  2.51% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000065s |  0.00% |  2.36% )   ( 0.000079s |  0.01% |  2.42% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000079s |  0.00% |  2.87% )   ( 0.000092s |  0.01% |  2.82% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000067s |  0.00% |  2.43% )   ( 0.000080s |  0.01% |  2.45% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.002406s |  0.15% | 87.52% )   ( 0.002847s |  0.46% | 87.38% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000064s |  0.00% |  2.66% )   ( 0.000078s |  0.01% |  2.73% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000066s |  0.00% |  2.74% )   ( 0.000081s |  0.01% |  2.84% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000066s |  0.00% |  2.74% )   ( 0.000081s |  0.01% |  2.84% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000079s |  0.00% |  3.28% )   ( 0.000094s |  0.01% |  3.30% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000134s |  0.00% |  5.56% )   ( 0.000156s |  0.02% |  5.47% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001997s |  0.12% | 83.00% )   ( 0.002357s |  0.38% | 82.78% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000166s |  0.01% |  8.31% )   ( 0.000191s |  0.03% |  8.10% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000140s |  0.00% |  7.01% )   ( 0.000160s |  0.02% |  6.78% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000127s |  0.00% |  6.35% )   ( 0.000152s |  0.02% |  6.44% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000149s |  0.00% |  7.46% )   ( 0.000174s |  0.02% |  7.38% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000127s |  0.00% |  6.35% )   ( 0.000153s |  0.02% |  6.49% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.001288s |  0.08% | 64.49% )   ( 0.001527s |  0.24% | 64.78% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000145s |  0.00% | 11.25% )   ( 0.000166s |  0.02% | 10.87% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000132s |  0.00% | 10.24% )   ( 0.000156s |  0.02% | 10.21% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000127s |  0.00% |  9.86% )   ( 0.000150s |  0.02% |  9.82% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000145s |  0.00% | 11.25% )   ( 0.000170s |  0.02% | 11.13% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000127s |  0.00% |  9.86% )   ( 0.000154s |  0.02% | 10.08% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000612s |  0.03% | 47.51% )   ( 0.000731s |  0.11% | 47.87% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000105s |  0.00% | 17.15% )   ( 0.000127s |  0.02% | 17.37% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000071s |  0.00% | 11.60% )   ( 0.000085s |  0.01% | 11.62% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000065s |  0.00% | 10.62% )   ( 0.000079s |  0.01% | 10.80% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000076s |  0.00% | 12.41% )   ( 0.000091s |  0.01% | 12.44% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000065s |  0.00% | 10.62% )   ( 0.000079s |  0.01% | 10.80% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000230s |  0.01% | 37.58% )   ( 0.000270s |  0.04% | 36.93% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000068s |  0.00% | 29.56% )   ( 0.000083s |  0.01% | 30.74% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000071s |  0.00% | 30.86% )   ( 0.000085s |  0.01% | 31.48% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000091s |  0.00% | 39.56% )   ( 0.000102s |  0.01% | 37.77% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000074s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000088s |  0.00% )            ( 0.000119s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000066s |  0.00% )            ( 0.000078s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001451s |  0.09% )            ( 0.001380s |  0.22% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000047s |  0.00% )            ( 0.000047s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000047s |  0.00% |100.00% )   ( 0.000047s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000331s |  0.02% )            ( 0.000382s |  0.06% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000331s |  0.02% |100.00% )   ( 0.000382s |  0.06% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000267s |  0.01% )            ( 0.000291s |  0.04% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000179s |  0.01% )            ( 0.000200s |  0.03% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000214s |  0.01% )            ( 0.000238s |  0.03% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

WALL CLOCK TIME: 0.745622s
TOTAL RUN TIME:  1.591783s
TOTAL CPU TIME:  0.614359s

