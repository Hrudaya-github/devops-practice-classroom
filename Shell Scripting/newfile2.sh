#!/bin/bash

# Specify the file name
filename="example.txt"

# Create the file and add three new lines to it
cat << EOF > "$filename"
This is line 1.
This is line 2.
This is line 3.
EOF

# Find keyword in the file
keyword="line 2"
if grep -q "$keyword" "$filename"; then
    echo "Keyword '$keyword' found in the file."
else
    echo "Keyword '$keyword' not found in the file."
fi
