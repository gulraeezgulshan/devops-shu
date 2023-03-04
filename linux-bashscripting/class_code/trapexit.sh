#!/bin/bash
#Testing exit trapping
#trapexit.sh
trap "echo Goodbye..." EXIT
#trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT
#
count=1
while [ $count -le 5 ]
do
    echo "Loop #$count"
    sleep 1
    count=$[ $count + 1 ]
done
#
exit