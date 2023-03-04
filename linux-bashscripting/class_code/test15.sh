# !/bin/bash
# Using string test evaluations
testuser=gulraiz

#if test $testuser = gulraiz

# if pwd (OK) 
# if pwd > /dev/null (OK) 
# if pwd > /dev/null (OK) 
#if [ $? -eq `pwd` ]
#if [ $? -eq $(pwd) ]

if [ $testuser = gulraiz ]
then
  echo "The testuser variable contains: gulraiz"
else
  echo "The testuser variable contains: $testuser"
fi