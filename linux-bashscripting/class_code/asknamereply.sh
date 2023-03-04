#!/bin/bash
# Using the read command with REPLY variable
# asknamereply.sh
#
read -p "Enter your name: "
echo
echo "Hello $REPLY, welcome to my script."
exit