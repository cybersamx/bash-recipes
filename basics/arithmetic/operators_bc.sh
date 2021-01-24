#!/usr/bin/env bash

a=$((1+2.5))
echo $a   # Gives an error (error token is ".5")
a=$(echo "1+2.5" | bc)
echo "$a"   # Prints 3.5
a=$(echo "$a+0.5" | bc)
echo "$a"   # Prints 4.0
