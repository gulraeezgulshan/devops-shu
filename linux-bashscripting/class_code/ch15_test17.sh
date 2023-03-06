#!/bin/bash
# testing closing file descriptors
# ch15_test17.sh
#
exec 3> test17file
echo "This is a test line of data">&3
exec 3>&-
echo "This won't work">&3