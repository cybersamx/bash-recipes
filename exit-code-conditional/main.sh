#!/usr/bin/env bash

if echo boston | grep boston ; then
  echo 'found'
else
  echo 'not found'
fi

if ! echo boston | grep boston ; then
  echo 'not found'
else
  echo 'found'
fi
