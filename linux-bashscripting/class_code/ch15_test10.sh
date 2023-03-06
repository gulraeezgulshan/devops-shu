#!/bin/bash
# redirecting all output to a file
# ch15_test10.sh

# echo "This is a test of redirecting all output" >&1
# echo "from a script to another file." >&1
# echo "without having to redirect every individual line" >&1

exec 1>succes.out

echo "This is a test of redirecting all output"
echo "from a script to another file." >&2
echo "without having to redirect every individual line"
