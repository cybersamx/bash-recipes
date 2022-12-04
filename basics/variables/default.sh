#!/usr/bin/env bash

function echo_lang() {
  echo "${1:-en-us}"
  echo "${1=en-us}"   # This won't work since $1 is a positional parameter.
  echo "${1:=en-us}"  # This wont' work since $1 is a positional parameter.
}

# Using standard variable.
echo "${lang:-en-us}"
echo "${lang=en-us}"
echo "${lang:=en-us}"

lang='ja-jp'

echo "${lang:-en-us}"
echo "${lang=en-us}"
echo "${lang:=en-us}"

# Using positional parameter eg. function argument.
echo_lang 'de-de'
echo_lang
