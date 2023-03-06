#!/bin/bash
# copydir.sh

#  Copy (verbose) all files in current directory ($PWD)
#+ to directory specified on command-line.

E_NOARGS=85

if [ -z "$1" ]   # Exit if no argument given.
then
  echo "Usage: `basename $0` directory-to-copy-to"
  exit $E_NOARGS
fi  

# Check if the directory exists, if not create it.
if [ ! -d "$1" ]
then
  echo "Creating directory: $1"
  mkdir "$1"
fi

ls . | xargs -i -t cp ./{} $1
#ls . | xargs -i -t cp * $1

exit 0