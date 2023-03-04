# !/bin/bash
# Testing string length
string1=Soccer
string2=''

if [ -n $string1 ]
then
  echo "The string '$string1' is NOT empty"
else
  echo "The string '$string1' IS empty"
fi