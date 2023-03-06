#!/bin/bash
# Changes a file to all uppercase.

E_BADARGS=85

if [ -z "$1" ]  # Standard check for command-line arg.
then
  echo "Usage: `basename $0` filename"
  exit $E_BADARGS
fi  

tr a-z A-Z <"$1"

# tr '[:lower:]' '[:upper:]' <"$1"
# cat "$1" | tr a-z A-Z

exit 0