#!/bin/bash
# testing lsof with file descriptors
# ch15_test18.sh
#
exec 3> test18file1
exec 6> test18file2
exec 7< testfile

lsof -a -p $$ -d0,1,2,3,6,7