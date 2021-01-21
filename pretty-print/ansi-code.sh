#!/usr/bin/env bash

# Print text in bold red.

# Using octal escape \033
echo -e "\033[31m\033[1mHello World\033[0m"
echo 'Hello World'  # Check that we reset the color

# Using hex escape \x1b
echo -e "\x1b[31m\x1b[1mHello World\x1b[0m"
echo 'Hello World'  # Check that we reset the color

# Using \e
echo -e "\e[31m\e[1mHello World\e[0m"
echo 'Hello World'  # Check that we reset the color
