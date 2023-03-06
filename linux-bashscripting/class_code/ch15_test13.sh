# !/bin/bash
# using an alternative file descriptor
# ch15_test13.sh
#
exec 3>success.out

echo "This should display on the monitor"
echo "and this should be stored in the file">&3
echo "Then this should be back on the monitor"