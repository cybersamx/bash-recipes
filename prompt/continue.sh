#!/usr/bin/env bash

function return_to_continue() {
  read -p -r 'Press return to continue'
}

function any_to_continue() {
  read -p -r -s -n 1 "Press any key to continue"
}

return_to_continue

any_to_continue
