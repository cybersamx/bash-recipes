#!/usr/bin/env bash

function cleanup() {
  declare lockfile="${1}"
  echo "Removing ${lockfile}..."
  rm -f "${lockfile}"
}

function infinite_loop() {
  while true; do
    true  # nop
  done
}

lockfile="$(mktemp)" || exit

# Set up the exit handler.
trap 'cleanup ${lockfile}' EXIT

echo 'Running...'
infinite_loop
