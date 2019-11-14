#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Arguments:
# $1 = the question
# $2 = the default answer if the user just hit return
# Return:
# User's response as string
#------------------------------------------------------------------------------

function prompt_for_question() {
  declare question="${1}"
  declare default_answer="${2}"

  read -r -p "${question} (${default_answer}) " answer
  [[ "${answer}" == '' ]] && answer="${default_answer}"
  echo "${answer}"
}

path=$(prompt_for_question 'Enter path to save file?' '/home/me')
echo "User entered ${path}."

