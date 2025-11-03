#!/bin/bash

echo 0
(
exec /bin/bash /mnt/ramdisk/timep/TESTS/GENERAL/timep.tests.bash
)
echo 1
(
exec /bin/bash /mnt/ramdisk/timep/TESTS/GENERAL/timep.tests.bash
)
echo 2
(
exec /bin/bash /mnt/ramdisk/timep/TESTS/GENERAL/timep.tests.bash
)
echo 3
