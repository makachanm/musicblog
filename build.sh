#!/bin/bash

# Find all .txt files in the current directory and convert them to .html files
# using the cutter script.

for f in *.txt; do
  echo "Processing $f..."
  TXT_FILE=$f ./cutter -i generate.cm -w "${f%.txt}.html"
done

./cutter -i index.cm -w index.html

echo "Build complete."
