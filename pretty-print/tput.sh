#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)
red=$(tput setaf 1)

# No -e needed when using tput
echo "${red}${bold}Hello World${reset}"
echo 'Hello World'  # Check that we reset the color
