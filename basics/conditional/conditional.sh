#!/usr/bin/env bash

declare person1_first='John'
declare person1_last='Lee'
declare person2_first='Maggie'
declare person2_last='Lee'
declare a=75
declare b=35
declare major_ver=11
declare minor_ver=8

if [ "${person1_first}" == 'John' ] && [ "${person1_last}" == 'Lee' ]; then
  echo 'First and last names match John and Lee respectively'
fi

if [ "${person1_last}" == "${person2_last}" ] || [ "${person1_first}" == "${person2_first}" ]; then
  echo 'First or last names match'
fi

if [ ${a} -ge 50 ] && [ ${a} -le 100 ]; then
  echo 'Integer is between 50 and 100'
fi

if [ ${b} -lt 50 ] || [ ${b} -gt 100 ]; then
  echo 'Integer is outside of 50-100'
fi

if [[ "${major_ver}" -eq 10 ]] && [[ "${minor_ver}" -ge 10 ]] || [[ "${major_ver}" -ge 11 ]]; then
  echo 'Above version 10.10. Supported.'
else
  echo 'Below version 10.10. Not supported.'
fi

if [[ "${major_ver}" -eq 10 && "${minor_ver}" -ge 10 || "${major_ver}" -ge 11 ]]; then
  echo 'Above version 10.10. Supported.'
else
  echo 'Below version 10.10. Not supported.'
fi
