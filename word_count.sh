#!/bin/bash

# Check if a directory path was provided as an argument
if [ -z "$1" ]; then
  echo "Please provide a directory path as an argument."
  exit 1
fi

# Count the total number of words in all .txt files in the specified directory
total_words=0
for file in "$1"/*.txt
do
  words=$(cat "$file" | wc -w)
  total_words=$((total_words + words))
done

# Output the result
echo "Total number of words in *.txt files in $1: $total_words"

