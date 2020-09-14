#!/usr/bin/env bash

function cleanup() {
  # Clean up any resources, temp files, locks, etc and exit gracefully.
  echo 'Cleaning up...'
  echo 'Exit...'
}

# Set up the exit handler.
trap cleanup EXIT

echo 'Running...'
sleep 10000
