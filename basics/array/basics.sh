#!/usr/bin/env bash

# --- Print an Array ---

function iterate() {
  declare items=("${@}")

  for item in "${items[@]}"; do
    echo "${item}"
  done
}

# --- Declare an Array ---

# Declare an array
declare -a pets=('bird' 'cat' 'dog')

# Pass the variable with [@] to denote it as an array, otherwise
# passing the variable without [@] only passes the first element.
echo "${pets[@]}"

# --- Get Array Length ---

echo "${#pets[@]}"

# --- Get an Array Item ---

echo "${pets[1]}"

# --- Delete Array ---

unset pets
echo "${pets[@]}"
