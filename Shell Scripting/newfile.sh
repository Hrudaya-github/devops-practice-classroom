#!/bin/bash

# Specify the file name
filename="example.txt"

# Create the file and add a line to it
echo "This is a sample line." > "$filename"

# Find keyword in the file
keyword="sample"
if grep -q "$keyword" "$filename"; then
    echo "Keyword '$keyword' found in the file."
else
    echo "Keyword '$keyword' not found in the file."
fi
