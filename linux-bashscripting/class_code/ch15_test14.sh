#!/bin/bash
# storing STDOUT, then coming back to it
# ch15_test14.sh
#

exec 3>&1 #go to monitor
exec 1>success.out #go to

echo "This should store in the output file"
echo "along with this line." 
echo "This will go to monitor." >&3

#exec 1>&3
echo "Now things should be back to normal"