#!/usr/bin/env bash

function load() {
  declare config_file="${1}"
  echo "Load ${config_file}..."
  . "${config_file}"
}

function cleanup() {
  echo 'Cleaning up...'
  echo 'Exit...'
}

function infinite_loop() {
  while true; do
    true  # nop
  done
}

config_file=config

# Set up exit handlers.
trap 'load ${config_file}' HUP
trap cleanup EXIT

load "${config_file}"

echo 'Running...'
infinite_loop
