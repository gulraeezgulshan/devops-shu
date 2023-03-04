# !/bin/bash
# Testing grabbing the last parameter
# badlastparamtest.sh
#
echo The number of parameters is $#
echo The last parameter is ${!#}
exit