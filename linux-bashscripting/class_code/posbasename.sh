# !/bin/bash
# Using basename with the $0 command-line parameter
# posbasename.sh
#name=$(basename $0)
name=`basename $0`

#name=$0
echo This script name is $name
exit