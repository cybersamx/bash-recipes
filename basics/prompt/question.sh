#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Arguments:
# $1 = the question
# $2 = the default answer if the user just hit return
# Return:
# User's response as string
#------------------------------------------------------------------------------

function prompt_question() {
  local question="${1}"
  local default_answer="${2}"

  read -r -p "${question} (${default_answer}) " answer
  [ -z "${answer}" ] && answer="${default_answer}"
  echo "${answer}"
}

function multiple_choice() {
  local question="${1}"
  local csv="${2}"
  local default_answer="${3}" # Needs to be an integer

  local buf="${question}"
  buf+=$'\n'
  IFS=',' read -r -a choices <<< "${csv}"

  for (( i=0; i<"${#choices[@]}"; i++ )); do
    buf+="${i} - ${choices[i]}"
    buf+=$'\n'
  done

  read -rp "${buf}Your choice (${default_answer} - ${choices[${default_answer}]}) " answer
  if [ -z "${answer}" ]; then
    answer="${choices[${default_answer}]}"
  else
    answer="${choices[${answer}]}"
  fi
  echo "${answer}"
}

path=$(prompt_question 'Enter path to save file?' '/home/me')
echo "User entered ${path}."

direction=$(multiple_choice 'Where do you want to go?' 'North,South,East,West' 0)
echo "User want to go ${direction}."
