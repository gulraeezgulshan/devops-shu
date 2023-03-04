#!/bin/bash
# Hiding input data
# askpassword.sh
#
read -s -p "Enter your password: " pass
echo
echo "Your password is $pass"
exit