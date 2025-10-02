u1='https://raw.githubusercontent.com/jkool702/timep/main/'
u2='https://raw.githubusercontent.com/jkool702/timep/next/timep_testing_1/'

mkdir ./compare
cd ./compare

for nn in TESTS/GENERAL/timep.tests.bash  TESTS/claude-opus-4.1/bash_profiler_destroyer.sh TESTS/claude-sonnet-4/claude.test.bash TESTS/gemini-2.5/gemini-2.5.test.bash TESTS/gemini-2.5/new/test.bash TESTS/gemini-2.5/old/gemini-2.5.test.1.bash TESTS/glm-4.5/brutal_profiler_test.bash TESTS/grok-4/grok.test.bash TESTS/perplexity/test.perplexity.bash; do 

    : >a
    : >b
curl "${u1}${nn%\/*}/out.profile" | sed -E 's/^([^\(]*\(){3}/ --> \(/' >a
curl "${u2}${nn%\/*}/out.profile" | sed -E 's/^([^\(]*\(){3}/ --> \(/' >b
[[ -s a ]] && [[ -s b ]] &&  {
    printf '\n------------------------------------------------------\n\nTEST: %s\n\n' "$nn" 
    diff -d -y -w --left-column --width=200 a b
  } | sed -E s/'^ \-\-> '// | tee ./compare/"${nn//\//_}"

done
