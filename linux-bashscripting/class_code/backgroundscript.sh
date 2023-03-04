 #!/bin/bash
#Test running in the background
#backgroundscript.sh
count=1
while [ $count -le 5 ]
do
    #echo "Loop #$count"
    sleep 1
    count=$[ $count + 1 ]
done
#
#echo "Script is completed."
exit