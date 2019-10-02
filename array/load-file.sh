#!/usr/bin/env bash

# --- Load Array from File ---

function read_from_file_to_array() {
  declare file_path="${1}"
  IFS=$'\n' read -d '' -r -a fields < "${file_path}"
  echo "${fields[@]}"
}

# --- Print an Array ---

function iterate() {
  declare items=("${@}")

  for item in "${items[@]}"; do
    echo "${item}"
  done
}

declare pets=($(read_from_file_to_array 'sample.txt'))

iterate "${pets[@]}"
