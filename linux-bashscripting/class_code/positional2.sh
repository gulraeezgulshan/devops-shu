#!/bin/bash
# Using two command-line parameters
# positional2.sh
#
product=$[ $1 * $2 ]
echo The first parameter is $1.
echo The second parameter is $2.
echo The product value is $product.
exit