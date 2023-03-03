#!/bin/bash
# Listing all users on the system

PASSWORD_FILE=/etc/passwd
n=1           # User number

for name in $(awk 'BEGIN{FS=":"}{print $1}' < "$PASSWORD_FILE" )
do
  echo "USER #$n = $name"
  let "n += 1"
done  

exit $?