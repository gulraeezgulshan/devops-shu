#!/bin/bash
Lists symbolic links in a directory.

directory=${1-`pwd`}

echo "symbolic links in directory \"$directory\""

for file in "$( find $directory -type l )"   # -type l = symbolic links
do
  echo "$file"
done | sort                                 

exit 0