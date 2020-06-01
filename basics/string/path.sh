#!/usr/bin/env bash

declare path="apple/banana/cherry"

# Pass the delimiter and the qualifiers to omit the
# desired substrings
omit_last="${path%/*}"
omit_last_two="${path%%/*}"
omit_first="${path#*/}"
omit_first_two="${path##*/}"

echo "${omit_last}"         # Output: apple/banana
echo "${omit_last_two}"     # Output: apple
echo "${omit_first}"        # Output: banana/cherry
echo "${omit_first_two}"    # Output: cherry
