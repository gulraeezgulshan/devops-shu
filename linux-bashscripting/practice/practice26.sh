#!/bin/bash
# fileinfo.sh

FILES="/usr/sbin/accept
/usr/sbin/pwck
/usr/sbin/chroot
/usr/bin/fakefile
/sbin/badblocks
/sbin/ypbind"     # List of files you are curious about.

echo

for file in $FILES
do

  if [ ! -e "$file" ]       # Check if file exists.
  then
    echo "$file does not exist."; echo
    continue                # On to next.
  fi

  ls -l $file | awk '{ print $8 "         file size: " $5 }'  # Print 2 fields.
  
  whatis `basename $file`   # File info.
  echo
done  

exit 0