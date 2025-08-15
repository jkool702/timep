
currently, merging logs for large complex profiling runs is slow. ive been thinking about this, and i think the better solution would be to move the subtree merging into _timep_PROCESS_LOG. i have an idea how to do this efficiently. it involves the following:

before paralel processing  loop through a list of checksum algs in decreasing preference and `type -p` each one until i find one that works and save it in an exported variable. (hashAlg) if none work i can probably even set it to `printf '%q' for seemless fallback.

for every sub-tree that is merged up, after adding in the next nesting lvl in the diagram, currently it is just printed. instead, do the following

save the log as it would have been printed in an array variable (A_out) that is keyed by the kk index of the parent log merge indicator. first check how many subtrees need to be merged up. if it is just 1 then printf the log via that variable, since there is nothing for it to potentially merge with. If there are >1, then loop through all the "merge up" indicators, and for each one load the sub-tree and split it into 3 parts saved in additional variables:

1. a contains the times / percentages / counts from that entire sub-tree (with newlines removed). note: this is 5 values per line: tWall pctWall tCpu pctCpu count
2. b contains the command-index-within-line values and the box diagram from that entire sub-tree 
3. c contains the lineno + nesting depth + commands from that entire sub-tree 

these will be used to populate 1 associative array (A0) and 4 standard arrays - A1 and A2 and A3 and A4. for all, the key will be `${hashAlg} <(echo "${c@Q}")`

for A0; if `${A0["${c@Q}"]}]` doesnt exist it is set as command index of the merge indicator in the parent log. if it already exist then it doesnt change
for A1, if `${A1[${A0["${c@Q}"]}]}` doesnt exist it is set as "$b". if it already exist then it doesnt change
for A2, if `${A2[${A0["${c@Q}"]}]}` doesnt exist it is set as "$a". otherwise, append to `A2[${A0["${c@Q}"]}]` with a  seperator (`$'\034'`). 
for A3, if `${A3[${A0["${c@Q}"]}]}` doesnt exist it is set as 1. if it already exist then increment its value by 1
for A4, if `${A1[${A0["${c@Q}"]}]}` doesnt exist it is set as "$c". if it already exist then it doesnt change

after this is done, loop (`ind0`) through `"${A0[@]}"`. for any `(( A3[$ind0] > 1 ))`, combine times and re-generate `A_out[$ind0]`
regenerating the subtree wil use a multi-line printf. note that A1, A2 and A3 should all only contain numbers and box drawing characters, and should be safe to re-use as printf input

```
for ind0 in "${A0[@]}"; do
(( A3[$ind]0 > 1 )) && {
{
IFS=' ' read -r -d $'\034' -a temp0
while true; do
    IFS=' ' read -r -d $'\034' -a temp1
	(( ${#temp1[@]} > 0 )) || break
    ind=0
	while (( ind < ${#temp0[@]}; do
	    (( kc = ind + 4 ))
	    (( temp0[$ind] += temp1[$ind] ))
		((ind++))
	    (( temp0[$ind] += temp1[$ind] * temp1[$kc] ))
		((ind++))
	    (( temp0[$ind] += temp1[$ind] ))
		((ind++))
	    (( temp0[$ind] += temp1[$ind] * temp1[$kc] ))
		((ind++))
	    (( temp0[$ind] += temp1[$ind] ))
		((ind++))
	done
done		
} <<<"${A2[$ind0]//$'\n'/}"
for (( ind=0; ind<${#temp0[@]}; ind+=5 )); do
    (( kp1 = ind + 1 ))
	(( kp2 = ind + 3 ))
	(( kc = ind + 4 ))
	(( temp0[$kp1] == temp0[$kp1] / temp0[$kc] ))
	(( temp0[$kp2] == temp0[$kp2] / temp0[$kc] ))
done
printf -v temp3 '%s %s %s %s %s\n' "${temp0[@]}"; 
A2[${ind0}]="$temp3"

mapfile -t AA1 <<<"${A1[$ind0]}"
mapfile -t AA2 <<<"${A2[$ind0]}"
mapfile -t AA4 <<<"${A4[$ind]0}"
   
printf -v tmpOut '%s\t%%s\t%%%%s\n' "${AA2[@]}"
printf -v tmpOut "${tmpOut}" "${AA1@]}"
printf -v tmpOut"${tmpOut}" "${AA4[@]}"
	
A_out[$ind0]="$tmpOut"
}
```
