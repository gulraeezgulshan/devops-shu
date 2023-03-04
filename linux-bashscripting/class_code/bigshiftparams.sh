#!/bin/bash
# Shifting multiple positions through the parameters
# bigshiftparams.sh
#
echo
echo "The original parameters: $*"
echo "Now shifting 2..."
shift 2
echo "Here's the new first parameter: $1"
echo
exit