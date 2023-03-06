# !/bin/bash
# Shifting through the parameters
# shiftparams.sh
#
echo
echo "Using the shift method:"
count=1
while [ -n "$1" ]
do
  echo "$1"
  echo "$2" 
  #echo "Parameter #$count = $1"
  echo
  count=$[ $count + 1 ]
  shift 2
done
echo
exit