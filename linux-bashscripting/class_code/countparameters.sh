# !/bin/bash
# Counting command-line parameters
# countparameters.sh
#
if [ $# -eq 1 ]
then
  fragment="parameter was"
else
  fragment="parameters were"
fi
echo $# $fragment supplied.
exit