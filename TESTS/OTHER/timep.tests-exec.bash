#!/bin/bash

echo 0
(
/bin/bash /mnt/ramdisk/timep/TESTS/GENERAL/timep.tests.bash
)
echo 1
(
exec /bin/bash /mnt/ramdisk/timep/TESTS/GENERAL/timep.tests.bash
)
echo 2
