#!/bin/bash
# testing input/output file descriptor
# ch15_test16.sh
exec 3<> testfile
read line <&3
echo "Read: $line"
echo "This is a test line">&3