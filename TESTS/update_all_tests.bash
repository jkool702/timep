#!/usr/bin/env bash

timep_basedir='/mnt/ramdisk'

for nn in "${timep_basedir}"/timep/TESTS/OTHER/timep.tests.bash  "${timep_basedir}"/timep/TESTS/claude-opus-4.1/bash_profiler_destroyer.sh "${timep_basedir}"/timep/TESTS/claude-sonnet-4/claude.test.bash "${timep_basedir}"/timep/TESTS/gemini-2.5/gemini-2.5.test.bash "${timep_basedir}"/timep/TESTS/gemini-2.5/new/test.bash "${timep_basedir}"/timep/TESTS/glm-4.5/brutal_profiler_test.bash "${timep_basedir}"/timep/TESTS/grok-4/grok.test.bash "${timep_basedir}"/timep/TESTS/perplexity/test.perplexity.bash; do 
    timep "$nn"
    \cp -r ./timep.profiles/* "${nn%\/*}/"
done

\rm ./timep.profiles

