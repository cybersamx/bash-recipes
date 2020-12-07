#!/usr/bin/env bash

function pass_array_param() {
  local person="${1}"
  local csv="${2}"
  local city="${3}"

  # Convert a csv string to an array.
  IFS=',' read -r -a pets <<< "${csv}"

  for pet in "${pets[@]}"; do
    echo "${person} owns a ${pet} in ${city}"
  done
}

declare -a pets=(cat dog bird)
pets_csv=$(IFS=','; echo "${pets[*]}")
pass_array_param 'Sam' "${pets_csv}" 'Boston'
