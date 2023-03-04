# !/bin/bash
# Shifting through the parameters
# shiftparams.sh
#
echo
echo "Using the shift method:"
count=1
while [ -n "$1" ]
do
  echo "Parameter #$count = $1"
  count=$[ $count + 1 ]
  shift
done
echo
exit