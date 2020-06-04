#!/usr/bin/env bash

a=$((1+2))
echo $a   # Prints 3
a=$(( 1 + 2))
echo $a   # Prints 3
a=$((a+3))
echo $a   # Prints 6
((a++))
echo $a   # Prints 7
a=$((a**2))
echo $a   # Prints 49