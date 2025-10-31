LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

1.0.0:          ( 0.329271s | 20.32% )            ( 0.013400s |  2.12% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.329271s | 20.32% |100.00% )   ( 0.013400s |  2.12% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000080s |  0.00% |  0.02% )   ( 0.000094s |  0.01% |  0.70% )    	(1x)	│  ├─  spawner "Alpha"
24.2.0:         ( 0.000073s |  0.00% |  0.02% )   ( 0.000087s |  0.01% |  0.64% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000113s |  0.00% |  0.03% )   ( 0.000115s |  0.01% |  0.85% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000301s |  0.01% |  0.09% )   ( 0.000335s |  0.05% |  2.50% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.210948s | 13.02% | 64.06% )   ( 0.011730s |  1.85% | 87.53% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.105999s |  6.54% | 50.24% )   ( 0.006384s |  1.01% | 54.42% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.103091s |  6.36% | 97.25% )   ( 0.003247s |  0.51% | 50.86% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.002908s |  0.17% |  2.74% )   ( 0.003137s |  0.49% | 49.13% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104949s |  6.47% | 49.75% )   ( 0.005346s |  0.84% | 45.57% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101919s |  6.29% | 97.11% )   ( 0.002084s |  0.33% | 38.98% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.003030s |  0.18% |  2.88% )   ( 0.003262s |  0.51% | 61.01% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000413s |  0.02% |  0.12% )   ( 0.000432s |  0.06% |  3.22% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000081s |  0.00% |  0.02% )   ( 0.000096s |  0.01% |  0.71% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.117262s |  7.23% | 35.61% )   ( 0.000511s |  0.08% |  3.81% )    	(1x)	└─ └─  wait "$spawner_job"
1.0.1:          ( 0.327511s | 20.21% )            ( 0.012793s |  2.02% )             	(1x)	<< (BACKGROUND FORK) >>
1.1.0:          ( 0.327511s | 20.21% |100.00% )   ( 0.012793s |  2.02% |100.00% )    	(1x)	├─  << (BACKGROUND FORK) >>
1.2.0:          ( 0.000078s |  0.00% |  0.02% )   ( 0.000092s |  0.01% |  0.71% )    	(1x)	│  ├─  spawner "Beta"
24.2.0:         ( 0.000072s |  0.00% |  0.02% )   ( 0.000086s |  0.01% |  0.67% )    	(1x)	│  │   local name=$1
25.2.0:         ( 0.000076s |  0.00% |  0.02% )   ( 0.000090s |  0.01% |  0.70% )    	(1x)	│  │   echo "INFO: Spawner '$name' starting."
27.2.0:         ( 0.000328s |  0.02% |  0.10% )   ( 0.000365s |  0.05% |  2.85% )    	(1x)	│  │   paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null (&)
27.2.1:         ( 0.209569s | 12.93% | 63.98% )   ( 0.010105s |  1.60% | 78.98% )    	(1x)	│  │   << (SUBSHELL) >>
27.3.0:         ( 0.104829s |  6.47% | 50.02% )   ( 0.005085s |  0.80% | 50.32% )    	(1x)	│  │  ├─  << (SUBSHELL) >>
27.4.0:         ( 0.101784s |  6.28% | 97.09% )   ( 0.001804s |  0.28% | 35.47% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.003045s |  0.18% |  2.90% )   ( 0.003281s |  0.52% | 64.52% )    	(1x)	│  │  │  └─  seq 1 3
27.3.1:         ( 0.104740s |  6.46% | 49.97% )   ( 0.005020s |  0.79% | 49.67% )    	(1x)	│  │  │   << (SUBSHELL) >>
27.4.0:         ( 0.101734s |  6.28% | 97.13% )   ( 0.001771s |  0.28% | 35.27% )    	(1x)	│  │  │  ├─  sleep 0.1
27.4.1:         ( 0.003006s |  0.18% |  2.86% )   ( 0.003249s |  0.51% | 64.72% )    	(1x)	│  │  └─ └─  seq 4 6
28.2.0:         ( 0.000423s |  0.02% |  0.12% )   ( 0.000442s |  0.07% |  3.45% )    	(1x)	│  │   local spawner_job=$! (&)
30.2.0:         ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
31.2.0:         ( 0.000080s |  0.00% |  0.02% )   ( 0.000094s |  0.01% |  0.73% )    	(1x)	│  │   echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
32.2.0:         ( 0.116885s |  7.21% | 35.68% )   ( 0.001519s |  0.24% | 11.87% )    	(1x)	└─ └─  wait "$spawner_job"

9.0.0:          ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	set -eEuo pipefail

15.0.0:         ( 0.000077s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	echo "--- Stage 1: Trap Subversion & Re-setting ---"

16.0.0:         ( 0.019609s |  1.21% )            ( 0.019546s |  3.09% )             	(1x)	trap - DEBUG

17.0.0:         ( 0.000073s |  0.00% )            ( 0.000086s |  0.01% )             	(1x)	echo "INFO: Attempted to disable DEBUG trap."

19.0.0:         ( 0.000071s |  0.00% )            ( 0.000084s |  0.01% )             	(1x)	echo "INFO: A command after the trap was disabled."

20.0.0:        ( 0.000092s |  0.00% )            ( 0.000107s |  0.01% )             	(1x)	sourced_var="initial_value"-

21.0.0:         ( 0.021911s |  1.35% )            ( 0.021846s |  3.46% )             	(1x)	trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG

23.0.0:         ( 0.000088s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	echo "INFO: A command with our own DEBUG trap active."

25.0.0:         ( 0.019041s |  1.17% )            ( 0.018989s |  3.01% )             	(1x)	trap - DEBUG
25.0.1:         ( 0.000070s |  0.00% )            ( 0.000098s |  0.01% )             	(1x)	echo "INFO: Trap disabled again. The profiler should be in control now."

31.0.0:         ( 0.000103s |  0.00% )            ( 0.000118s |  0.01% )             	(1x)	echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"

32.0.0:         ( 0.007564s |  0.46% |  0.00% )   ( 0.009002s |  1.42% |  0.01% )    	(100x)	for i in {1..100}

34.0.0:         ( 0.007631s |  0.47% |  0.00% )   ( 0.009012s |  1.42% |  0.01% )    	(100x)	: $(( (RANDOM % 10) ** 2 ))

35.0.0:         ( 0.042070s |  2.59% |  0.02% )   ( 0.044012s |  6.97% |  0.06% )    	(100x)	echo "Line $i: ${!i}" &> /dev/null

37.0.0:         ( 0.022270s |  1.37% |  0.01% )   ( 0.025603s |  4.05% |  0.04% )    	(100x)	<< (SUBSHELL) >> | tr a-z A-Z &> /dev/null
37.1.0:         ( 0.012526s |  0.77% | 56.24% )   ( 0.014230s |  2.25% | 55.57% )    	(100x)	├─  read
37.1.1:         ( 0.009744s |  0.60% | 43.75% )   ( 0.011373s |  1.80% | 44.42% )    	(100x)	└─  echo $REPLY

39.0.0:         ( 0.062150s |  3.83% |  0.03% )   ( 0.048260s |  7.65% |  0.07% )    	(100x)	nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
39.0.1:         ( 0.394925s | 24.37% |  0.24% )   ( 0.374741s | 59.41% |  0.59% )    	(100x)	<< (SUBSHELL) >>
39.1.0:         ( 0.075759s |  4.67% | 19.18% )   ( 0.053397s |  8.46% | 14.24% )    	(100x)	├─  echo $(basename "$(echo /some/long/path/to/a/file.txt)")
39.1.1:         ( 0.319166s | 19.70% | 80.81% )   ( 0.321344s | 50.95% | 85.75% )    	(100x)	│   << (SUBSHELL) >>
39.2.0:         ( 0.304248s | 18.78% | 95.32% )   ( 0.304248s | 48.24% | 94.67% )    	(100x)	│  ├─  basename "$(echo /some/long/path/to/a/file.txt)"
39.2.1:         ( 0.014918s |  0.92% |  4.67% )   ( 0.017096s |  2.71% |  5.32% )    	(100x)	│  │   << (SUBSHELL) >>
39.3.0:         ( 0.014918s |  0.92% |100.00% )   ( 0.017096s |  2.71% |100.00% )    	(100x)	└─ └─ └─  echo /some/long/path/to/a/file.txt

41.0.0:         ( 0.000091s |  0.00% )            ( 0.000106s |  0.01% )             	(1x)	echo "INFO: Labyrinth stage complete."

46.0.0:         ( 0.000081s |  0.00% )            ( 0.000094s |  0.01% )             	(1x)	echo "--- Stage 3: Targeted Concurrency ---"

66.0.0:         ( 0.202382s | 12.49% )            ( 0.002425s |  0.38% )             	(1x)	<< (BACKGROUND FORK) >>
66.1.0:         ( 0.202251s | 12.48% | 99.93% )   ( 0.002279s |  0.36% | 93.97% )    	(1x)	├─  sleep 0.2
66.1.1:         ( 0.000131s |  0.00% |  0.06% )   ( 0.000146s |  0.02% |  6.02% )    	(1x)	└─  echo "INFO: Disowned job finished."

67.0.0:         ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	disowned_pid=$!

68.0.0:         ( 0.000087s |  0.00% )            ( 0.000100s |  0.01% )             	(1x)	disown

70.0.0:         ( 0.000076s |  0.00% )            ( 0.000090s |  0.01% )             	(1x)	echo "INFO: Waiting for ALL remaining known jobs..."

71.0.0:         ( 0.136894s |  8.45% )            ( 0.000389s |  0.06% )             	(1x)	wait

73.0.0:         ( 0.000166s |  0.01% )            ( 0.000193s |  0.03% )             	(1x)	echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."

74.0.0:         ( 0.000136s |  0.00% )            ( 0.000151s |  0.02% )             	(1x)	wait "$disowned_pid"
74.0.1:         ( 0.000078s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

76.0.0:         ( 0.000080s |  0.00% )            ( 0.000093s |  0.01% )             	(1x)	echo "INFO: Concurrency stage complete."

82.0.0:         ( 0.000075s |  0.00% )            ( 0.000089s |  0.01% )             	(1x)	echo "--- Stage 4: Dynamic Code & Scope Hell ---"

85.0.0:         ( 0.001173s |  0.07% )            ( 0.001084s |  0.17% )             	(1x)	temp_script=$(mktemp)
85.0.1:         ( 0.006420s |  0.39% )            ( 0.006420s |  1.01% )             	(1x)	<< (SUBSHELL) >>
85.1.0:         ( 0.006420s |  0.39% |100.00% )   ( 0.006420s |  1.01% |100.00% )    	(1x)	└─  mktemp

86.0.0:         ( 0.000967s |  0.05% )            ( 0.001050s |  0.16% )             	(1x)	$'cat <<\'EOF\' > "$temp_script"\n# This script defines a function that modifies a variable.\n# A good profiler should know this code came from a file.\nsourced_var="initial_value"\nsourced_func() {\n    echo "INFO: Inside a function from a sourced file."\n    sourced_var="modified_by_sourced_func"\n    # And that function has a pipeline\n    seq 1 3 | rev | cat > /dev/null\n}\nEOF\n

99.0.0:         ( 0.004642s |  0.28% |  0.14% )   ( 0.004649s |  0.73% |  0.36% )    	(2x)	source "$temp_script"

100.0.0:        ( 0.000074s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'
100.0.1:        ( 0.005370s |  0.33% )            ( 0.008395s |  1.33% )             	(1x)	<< (FUNCTION): main.sourced_func >>
1.1.0:          ( 0.000070s |  0.00% |  1.30% )   ( 0.000083s |  0.01% |  0.98% )    	(1x)	├─  sourced_func
24.1.0:         ( 0.000077s |  0.00% |  1.43% )   ( 0.000090s |  0.01% |  1.07% )    	(1x)	│   echo "INFO: Inside a function from a sourced file."
25.1.0:         ( 0.000071s |  0.00% |  1.32% )   ( 0.000084s |  0.01% |  1.00% )    	(1x)	│   sourced_var="modified_by_sourced_func"
27.1.0:         ( 0.005152s |  0.31% | 95.94% )   ( 0.008138s |  1.29% | 96.93% )    	(1x)	└─  seq 1 3 | rev | cat > /dev/null
100.0.2:        ( 0.000088s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	echo "INFO: The sourced_var is now: $sourced_var"

102.0.0:        ( 0.001275s |  0.07% )            ( 0.001385s |  0.21% )             	(1x)	rm -f "$temp_script"

103.0.0:        ( 0.000088s |  0.00% )            ( 0.000102s |  0.01% )             	(1x)	echo "INFO: Dynamic execution stage complete."

108.0.0:        ( 0.000078s |  0.00% )            ( 0.000091s |  0.01% )             	(1x)	echo "--- Stage 5: State & Control Flow Obfuscation ---"

111.0.0:        ( 0.000078s |  0.00% )            ( 0.000088s |  0.01% )             	(1x)	declare -n ref_to_var=original_var

112.0.0:        ( 0.000071s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	original_var="I am the original"

119.0.0:        ( 0.000146s |  0.00% )            ( 0.000173s |  0.02% )             	(1x)	<< (FUNCTION): main.update_ref >>
1.1.0:          ( 0.000074s |  0.00% | 50.68% )   ( 0.000087s |  0.01% | 50.28% )    	(1x)	├─  update_ref
24.1.0:         ( 0.000072s |  0.00% | 49.31% )   ( 0.000086s |  0.01% | 49.71% )    	(1x)	└─  ref_to_var="I have been updated via a nameref."

120.0.0:        ( 0.000086s |  0.00% )            ( 0.000099s |  0.01% )             	(1x)	echo "INFO: Value after nameref update: $original_var"

132.0.0:        ( 0.002159s |  0.13% )            ( 0.002566s |  0.40% )             	(1x)	<< (FUNCTION): main.recursive_func 5 >>
1.1.0:          ( 0.000071s |  0.00% |  3.28% )   ( 0.000084s |  0.01% |  3.27% )    	(1x)	├─  recursive_func 5
24.1.0:         ( 0.000136s |  0.00% |  6.29% )   ( 0.000155s |  0.02% |  6.04% )    	(1x)	│   local depth=$1
25.1.0:         ( 0.000120s |  0.00% |  5.55% )   ( 0.000144s |  0.02% |  5.61% )    	(1x)	│   (( depth > 0 ))
27.1.0:         ( 0.000082s |  0.00% |  3.79% )   ( 0.000097s |  0.01% |  3.78% )    	(1x)	│   echo "INFO: Recursing at depth $depth" > /dev/null
28.1.0:         ( 0.000067s |  0.00% |  3.10% )   ( 0.000082s |  0.01% |  3.19% )    	(1x)	│   ((depth--))
29.1.0:         ( 0.001683s |  0.10% | 77.95% )   ( 0.002004s |  0.31% | 78.09% )    	(1x)	│   << (FUNCTION): main.recursive_func.recursive_func $depth >>
1.2.0:          ( 0.000069s |  0.00% |  4.09% )   ( 0.000082s |  0.01% |  4.09% )    	(1x)	│  ├─  recursive_func $depth
24.2.0:         ( 0.000071s |  0.00% |  4.21% )   ( 0.000084s |  0.01% |  4.19% )    	(1x)	│  │   local depth=$1
25.2.0:         ( 0.000068s |  0.00% |  4.04% )   ( 0.000081s |  0.01% |  4.04% )    	(1x)	│  │   (( depth > 0 ))
27.2.0:         ( 0.000081s |  0.00% |  4.81% )   ( 0.000094s |  0.01% |  4.69% )    	(1x)	│  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.2.0:         ( 0.000073s |  0.00% |  4.33% )   ( 0.000083s |  0.01% |  4.14% )    	(1x)	│  │   ((depth--))
29.2.0:         ( 0.001321s |  0.08% | 78.49% )   ( 0.001580s |  0.25% | 78.84% )    	(1x)	│  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func $depth >>
1.3.0:          ( 0.000064s |  0.00% |  4.84% )   ( 0.000078s |  0.01% |  4.93% )    	(1x)	│  │  ├─  recursive_func $depth
24.3.0:         ( 0.000068s |  0.00% |  5.14% )   ( 0.000082s |  0.01% |  5.18% )    	(1x)	│  │  │   local depth=$1
25.3.0:         ( 0.000063s |  0.00% |  4.76% )   ( 0.000076s |  0.01% |  4.81% )    	(1x)	│  │  │   (( depth > 0 ))
27.3.0:         ( 0.000077s |  0.00% |  5.82% )   ( 0.000092s |  0.01% |  5.82% )    	(1x)	│  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.3.0:         ( 0.000072s |  0.00% |  5.45% )   ( 0.000089s |  0.01% |  5.63% )    	(1x)	│  │  │   ((depth--))
29.3.0:         ( 0.000977s |  0.06% | 73.95% )   ( 0.001163s |  0.18% | 73.60% )    	(1x)	│  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.4.0:          ( 0.000075s |  0.00% |  7.67% )   ( 0.000091s |  0.01% |  7.82% )    	(1x)	│  │  │  ├─  recursive_func $depth
24.4.0:         ( 0.000078s |  0.00% |  7.98% )   ( 0.000094s |  0.01% |  8.08% )    	(1x)	│  │  │  │   local depth=$1
25.4.0:         ( 0.000083s |  0.00% |  8.49% )   ( 0.000096s |  0.01% |  8.25% )    	(1x)	│  │  │  │   (( depth > 0 ))
27.4.0:         ( 0.000088s |  0.00% |  9.00% )   ( 0.000099s |  0.01% |  8.51% )    	(1x)	│  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.4.0:         ( 0.000067s |  0.00% |  6.85% )   ( 0.000082s |  0.01% |  7.05% )    	(1x)	│  │  │  │   ((depth--))
29.4.0:         ( 0.000586s |  0.03% | 59.97% )   ( 0.000701s |  0.11% | 60.27% )    	(1x)	│  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.5.0:          ( 0.000070s |  0.00% | 11.94% )   ( 0.000084s |  0.01% | 11.98% )    	(1x)	│  │  │  │  ├─  recursive_func $depth
24.5.0:         ( 0.000081s |  0.00% | 13.82% )   ( 0.000095s |  0.01% | 13.55% )    	(1x)	│  │  │  │  │   local depth=$1
25.5.0:         ( 0.000067s |  0.00% | 11.43% )   ( 0.000081s |  0.01% | 11.55% )    	(1x)	│  │  │  │  │   (( depth > 0 ))
27.5.0:         ( 0.000080s |  0.00% | 13.65% )   ( 0.000094s |  0.01% | 13.40% )    	(1x)	│  │  │  │  │   echo "INFO: Recursing at depth $depth" > /dev/null
28.5.0:         ( 0.000067s |  0.00% | 11.43% )   ( 0.000081s |  0.01% | 11.55% )    	(1x)	│  │  │  │  │   ((depth--))
29.5.0:         ( 0.000221s |  0.01% | 37.71% )   ( 0.000266s |  0.04% | 37.94% )    	(1x)	│  │  │  │  │   << (FUNCTION): main.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func.recursive_func $depth >>
1.6.0:          ( 0.000069s |  0.00% | 31.22% )   ( 0.000084s |  0.01% | 31.57% )    	(1x)	│  │  │  │  │  ├─  recursive_func $depth
24.6.0:         ( 0.000070s |  0.00% | 31.67% )   ( 0.000085s |  0.01% | 31.95% )    	(1x)	│  │  │  │  │  │   local depth=$1
25.6.0:         ( 0.000082s |  0.00% | 37.10% )   ( 0.000097s |  0.01% | 36.46% )    	(1x)	└─ └─ └─ └─ └─ └─  (( depth > 0 ))

134.0.0:        ( 0.000087s |  0.00% )            ( 0.000100s |  0.01% )             	(1x)	echo "INFO: State obfuscation stage complete."

139.0.0:        ( 0.000078s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	echo "--- Stage 6: Redirection and File Descriptor Madness ---"

142.0.0:        ( 0.000073s |  0.00% )            ( 0.000087s |  0.01% )             	(1x)	exec 3<> /dev/null

146.0.0:        ( 0.000066s |  0.00% )            ( 0.000080s |  0.01% )             	(1x)	echo "to stdout"
146.0.1:        ( 0.000092s |  0.00% )            ( 0.000115s |  0.01% )             	(1x)	echo "to stderr" 1>&2

149.0.0:        ( 0.000068s |  0.00% )            ( 0.000081s |  0.01% )             	(1x)	exec 3>&-

152.0.0:        ( 0.001521s |  0.09% )            ( 0.001441s |  0.22% )             	(1x)	diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null 
152.0.1:        ( 0.000007s |  0.00% )            ( 0.000007s |  0.00% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000007s |  0.00% |100.00% )   ( 0.000007s |  0.00% |100.00% )    	(1x)	└─  seq 1 5 
152.0.2:        ( 0.000091s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	<< (SUBSHELL) >>
152.1.0:        ( 0.000091s |  0.00% |100.00% )   ( 0.000104s |  0.01% |100.00% )    	(1x)	└─  echo -e "1\n2\n3\n4\n5"

154.0.0:        ( 0.000091s |  0.00% )            ( 0.000104s |  0.01% )             	(1x)	echo "INFO: Redirection stage complete."

158.0.0:        ( 0.000072s |  0.00% )            ( 0.000085s |  0.01% )             	(1x)	echo "--- Stress Test v2 Complete ---"

159.0.0:        ( 0.000113s |  0.00% )            ( 0.000126s |  0.01% )             	(1x)	echo "If timep profiled all of this accurately, it is truly excellent."

TOTAL RUN TIME: 1.619889s
TOTAL CPU TIME: 0.630690s

