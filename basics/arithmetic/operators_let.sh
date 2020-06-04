#!/usr/bin/env bash

let a=1+2
echo $a   # Prints 3
let "a = 1 + 2"
echo $a   # Prints 3
let a=$a+3
echo $a   # Prints 6
let a++
echo $a   # Prints 7
let a=$a**2
echo $a   # Prints 49