#!/usr/bin/env bash

function cleanup() {
  # Clean up any resources, temp files, locks, etc and exit gracefully.
  echo 'Cleaning up...'
  echo 'Exit...'
}

function infinite_loop() {
  while true; do
    true  # nop
  done
}

# Set up the exit handler.
trap cleanup EXIT

echo 'Running...'
infinite_loop
