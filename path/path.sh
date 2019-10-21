#!/usr/bin/env bash

declare path="apple/banana"

top="${path%*/}"
bottom="${path#*/}"
echo "${top}"
echo "${bottom}"
