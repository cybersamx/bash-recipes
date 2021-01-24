#!/usr/bin/env bash

# --- Declare vs Normal Assign ---

function declare_vs_assign() {
  # Declaration and assignment.
  declare -i a=5
  declare -i b="${a}"+3
  echo "${b}"

  # Assigns value to the variable.
  # Variable is implicitly declared as default string type.
  c=5
  d="${c}"+3
  echo "${d}"
}

# --- Local Variable ---

function declare_local() {
  # local and variables are the same
  local a='local a'
  declare b='local b'
  echo "${a}"
  echo "${b}"
}

# --- Export Variable ---

function declare_export() {
  declare -x MY_EXPORT='export'
  env | grep MY_EXPORT

  # Remove the export variable
  unset MY_EXPORT
  env | grep MY_EXPORT
}

# --- Integer ---

function declare_integer() {
  # Declare am integer
  declare -i a=$(( 3*5 ))
  echo "${a}"

  # Use (( expr )) to enable arithmetic evaluation in bash.
  (( b=3*5 ))
  echo "${b}"
}

# --- Indexed Array ---

function declare_indexed_array() {
  declare -a array=('a' 'b' 'c')
  echo "${array[@]}"
}

# --- Readonly Variable ---

function declare_readonly() {
  declare -r const="immutable"

  # Expect an error
  const="mutable"
}

declare_vs_assign
echo ''
declare_local
echo ''
declare_export
echo ''
declare_integer
echo ''
declare_indexed_array
echo ''
declare_readonly
