#!/usr/bin/env bash

function func_return() {
    # Good practice to declare local variables and map them to the params.
    declare prefix=${1}
    declare word=${2}

    echo "${prefix}-${word}"

    return 0
}

func_return hello world
echo "Return value: ${?}"

function pipe_to_stdout() {
    declare prefix=${1}
    declare word=${2}

    echo "${prefix}-${word}"
}

output=$(pipe_to_stdout hello world)
echo "${output}"

declare msg
function global_var() {
    declare prefix=${1}
    declare word=${2}

    msg="${prefix}-${word}"
}

global_var hello world
echo "${msg}"

function args_as_array() {
  # Arguments are represented as an array.
  declare args=("${@}")

  for arg in "${args[@]}"; do
      printf "%s " "${arg}"
  done

  echo
}

args_as_array cat dog horse bird
