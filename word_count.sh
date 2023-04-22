#!/bin/bash

total_words=0
for file in *.txt
do
  words=$(cat "$file" | wc -w)
  total_words=$((total_words + words))
done

echo "Total number of words in *.txt files: $total_words"

