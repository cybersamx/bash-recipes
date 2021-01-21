#!/usr/bin/env bash

let a=1+2
echo $a   # Prints 3
let "a = 1 + 2"
echo $a   # Prints 3
# Same as `let a=a+3`
let a=$a+3
echo $a   # Prints 6
let a++
echo $a   # Prints 7
# Same as `let a=a**2`
let a=$a**2
echo $a   # Prints 49
