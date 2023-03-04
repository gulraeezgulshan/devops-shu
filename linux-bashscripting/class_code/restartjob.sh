#!/bin/bash
#Test running in the background
#restartjob.sh
count=1
while [ $count -le 50 ]
do
    #echo "Loop #$count"
    sleep 1
    count=$[ $count + 1 ]
done
#
#echo "Script is completed."
exit