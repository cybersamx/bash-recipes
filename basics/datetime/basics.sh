#!/usr/bin/env bash

# UNIX epoch time now
date +%s

# UNIX epoch time for a specific date
date -jf "%m/%d/%Y" "11/15/2018" +%s