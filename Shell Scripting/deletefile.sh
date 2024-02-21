#!/bin/bash

# Specify the path to the file you want to delete
file_to_delete="/path/to/your/file.txt"

# Check if the file exists
if [ -f "$file_to_delete" ]; then
    rm "$file_to_delete"
    echo "File $file_to_delete deleted."
else
    echo "File $file_to_delete not found."
fi