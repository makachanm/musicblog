#!/bin/bash

# Find all .txt files in the current directory and convert them to .html files
# using the cutter script.

for f in *.txt; do
  echo "Processing $f..."
  TXT_FILE=$f ./cutter -i generate.cm -w "${f%.txt}.html"
done

echo "Build complete."
