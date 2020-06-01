#!/usr/bin/env bash

# --- Change an Array ---

declare -a pets=('bird' 'cat' 'dog' 'hamster')
echo "${pets[@]}"

# --- Slice Format: :offset:length ---

# Extract 2 items starting from index 1.
echo "${pets[@]:1:3}"

# Extract items from index 1 to the end.
echo "${pets[@]:1}"

# --- Search and Replace by Regexp ---

echo "${pets[@]/bird/parrot}"
echo "${pets[@]/bi*/canary}"

# --- Add Items to an Array ---

# Using += operator
pets+=('mouse')
echo "${pets[@]}"

# Add to iself
pets=("${pets[@]}" 'turtle')
echo "${pets[@]}"

# --- Remove Items from an Array ---

unset pets[5]
echo "${pets[@]}"

# --- Remove Items by Regexp ---

# Remove items matching bi*
echo "${pets[@]/bi*/}"

# --- Append Array ---

declare -a farm=('pig' 'cow' 'chicken')
declare -a zoo=("${pets[@]}" "${farm[@]}")
echo "${zoo[@]}"
