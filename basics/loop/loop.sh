#!/usr/bin/env bash

array=(9 8 7)
size=${#array[@]}

# While loop.
j=0
while [ $j -lt $size ]; do
  printf "${array[$j]} "   # Prints 9 8 7
  let j=j+1
done
echo

# Until loop.
j=0
until [ $j -eq $size ]; do
  printf "${array[$j]} "   # Prints 9 8 7
  let j=j+1
done
echo

# For loop.
for (( i=0; i<$size; i++ )); do
  printf "${array[$i]} "   # Prints 9 8 7
done
echo

# For loop with range.
# The values in the range must be literal. {0..$size-1} won't work.
for i in {0..2}; do
  printf "${array[$i]} "   # Prints 9 8 7
done
echo

# For-in loop.
for n in ${array[@]}; do
  printf "${n} "           # Prints 9 8 7
done
echo

# TIP: Assign an array to for-in.
# Don't use comma, just separate the values with a space.
for char in h e l l o; do
  printf "${char} "        # Prints h e l l o
done
echo

# TIP: Iterate over files in a directory.
j=1
for file in /var/log/*.log; do
  echo "$((j++)): ${file}"
done
