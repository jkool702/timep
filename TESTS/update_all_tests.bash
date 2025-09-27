#!/usr/bin/env bash

timep /mnt/ramdisk/timep/TESTS/timep.tests.bash 
cp -r timep.profiles/* /mnt/ramdisk/timep/TESTS/OUTPUT/

for nn in /mnt/ramdisk/timep/TESTS/claude-opus-4.1/bash_profiler_destroyer.sh /mnt/ramdisk/timep/TESTS/claude-sonnet-4/claude.test.bash /mnt/ramdisk/timep/TESTS/gemini-2.5/gemini-2.5.test.bash /mnt/ramdisk/timep/TESTS/gemini-2.5/new/test.bash /mnt/ramdisk/timep/TESTS/glm-4.5/brutal_profiler_test.bash /mnt/ramdisk/timep/TESTS/grok-4/grok.test.bash /mnt/ramdisk/timep/TESTS/perplexity/test.perplexity.bash; do 
timep "$nn"
\cp -r timep.profiles/* "${nn%\/*}/"
done


