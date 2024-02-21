#!/bin/bash

# Specify the path to the source file
source_file="/path/to/your/source/file.txt"

# Specify the destination directory
destination_directory="/path/to/your/destination/directory"

# Check if the source file exists
if [ -f "$source_file" ]; then
    # Check if the destination directory exists
    if [ -d "$destination_directory" ]; then
        # Copy the source file to the destination directory
        cp "$source_file" "$destination_directory"
        echo "File copied to $destination_directory."
    else
        echo "Destination directory $destination_directory not found."
    fi
else
    echo "Source file $source_file not found."
fi