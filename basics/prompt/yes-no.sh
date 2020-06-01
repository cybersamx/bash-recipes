#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Arguments:
# $1 = the question
# Return:
# 0 = yes
# 1 = no
# Note: Using the exit code ($?) convention where 0 is success
#------------------------------------------------------------------------------

function yes_no() {
  declare question="${1}"

  while true; do
    read -n 1 -r -p "${question} " answer
    case ${answer} in
      [Yy]* ) echo ''; return 0;;
      [Nn]* ) echo ''; return 1;;
      *) echo 'Please enter (y)es or (n)o.';;
    esac
  done
}

# NOTE: Do not use A || B && C notation to replace if-then-else. It's not
# equivalent. See https://github.com/koalaman/shellcheck/wiki/SC2015

echo "Accepts Y, y, N, or n. Any other key will reprompts the user."
yes_no 'Do you want to go?'&& {
  echo "Answered yes."
}