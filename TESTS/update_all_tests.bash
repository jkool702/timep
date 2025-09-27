#!/usr/bin/env bash

timep_basedir='/mnt/ramdisk'

for nn in TESTS/OTHER/timep.tests.bash  TESTS/claude-opus-4.1/bash_profiler_destroyer.sh TESTS/claude-sonnet-4/claude.test.bash TESTS/gemini-2.5/gemini-2.5.test.bash TESTS/gemini-2.5/new/test.bash TESTS/glm-4.5/brutal_profiler_test.bash TESTS/grok-4/grok.test.bash TESTS/perplexity/test.perplexity.bash; do 
    timep "${timep_basedir}"/timep/${nn}"
    \cp -r ./timep.profiles/* "${timep_basedir}"/timep/${nn%\/*}/"
done

\rm ./timep.profiles

