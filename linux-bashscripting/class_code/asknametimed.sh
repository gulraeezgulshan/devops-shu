#!/bin/bash
# Using the read command with a timer
# asknametimed.sh
#
if read -t 5 -p "Enter your name: " name
then
    echo "Hello $name, welcome to my script."
else
    echo
    echo "Sorry, no longer waiting for name."
fi
exit