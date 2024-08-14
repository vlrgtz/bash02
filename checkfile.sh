#!/bin/bash

#Objective is to write a script to check if a file is: readable, writable, executable.

# Check if a filename was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Assign the filename to a variable
FILE="$1"

# Check if the file exists
if [ ! -e "$FILE" ]; then
  echo "File '$FILE' does not exist."
  exit 1
fi

# Check file permissions
[ -r "$FILE" ] && echo "File '$FILE' is readable." || echo "File '$FILE' is not readab>
[ -w "$FILE" ] && echo "File '$FILE' is writable." || echo "File '$FILE' is not writab>
[ -x "$FILE" ] && echo "File '$FILE' is executable." || echo "File '$FILE' is not exec>
