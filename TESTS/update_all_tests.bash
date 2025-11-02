#!/usr/bin/env bash

timep_basedir='/mnt/ramdisk'

. "${timep_basedir}"/timep/timep.bash

for nn in TESTS/GENERAL/timep.tests.bash  TESTS/claude-opus-4.1/bash_profiler_destroyer.sh TESTS/claude-sonnet-4/claude.test.bash TESTS/claude-sonnet-4.5/claude-sonnet-4.5.bash TESTS/gemini-2.5/gemini-2.5.test.bash TESTS/gemini-2.5/new/test.bash TESTS/gemini-2.5/old/gemini-2.5.test.1.bash TESTS/deepseek/deepseek_stress_test.bash TESTS/grok-4/grok.test.bash TESTS/glm-4.6/stress-test.bash TESTS/glm-4.5/brutal_profiler_test.bash TESTS/perplexity/test.perplexity.bash; do 
    timep -k "${timep_basedir}/timep/${nn}"
    \cp -r ./timep.profiles/* "${timep_basedir}/timep/${nn%\/*}/"
    sleep 1
done

\rm ./timep.profiles

# ls -1 | grep log. | grep -v .out | while read -r nn; do nexec="$(cat .hash/$nn)"; mm="$(timep_hash - <<<"${nexec%.*}")" ; grep -F "$nexec" ./tmp/log.$mm | grep -qE '<< \(.*\): .* >>' || echo "$mm ($(cat .hash/log.$mm)) <-- ($(cat .hash/$nn))"; done

# find "${timep_TMPDIR}/.log" -maxdepth 1 -type f -name 'log.*' | grep -v .out | while read -r nn; do nexec="$(cat ${timep_TMPDIR}/.log/.hash/${nn)##*\/}"; mm="$(timep_hash - <<<"${nexec%.*}")" ; grep -F "$nexec" "${timep_TMPDIR}/.log/log.${mm}" | grep -qE '<< \(.*\): .* >>' || printf '%s\t%s\t%s\t%s\n' "log.$mm" "$nn" "$(cat .hash/log.$mm)" "$(cat "${timep_TMPDIR}/.log/.hash/${nn##*\/}")"; done

#for nn in TESTS/GENERAL/timep.tests.bash  TESTS/claude-opus-4.1/bash_profiler_destroyer.sh TESTS/claude-sonnet-4/claude.test.bash TESTS/gemini-2.5/gemini-2.5.test.bash TESTS/gemini-2.5/new/test.bash TESTS/glm-4.5/brutal_profiler_test.bash TESTS/grok-4/grok.test.bash TESTS/perplexity/test.perplexity.bash; do 
    
#    printf '\n--------------------------------------------------------------\nTEST: %s\n\nCODE: \n\n%s\n\n\nPROFILE:\n\n%s\n\n\n' "$nn" "$(cat  "${timep_basedir}/timep/${nn}")"  "$(cat  "${timep_basedir}/timep/${nn%\/*}/out.profile")"

#done > log.tests.all


# ls -1 | grep 'log.' | grep -v '.out'  | while read -r nn; do printf '\n-------------------------------------------------\n%s\n\n%s --> %s\n\n%s\n\n%s\n\n' "$nn" "$nn" "$(cat .hash/"$nn")" "$(cat "$nn")"; done
