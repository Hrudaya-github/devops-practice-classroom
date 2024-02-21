#!/bin/bash

# Specify the directory to search for files
directory="/path/to/your/directory"

# Find and delete files older than 30 days
find "$directory" -type f -mtime +30 -exec rm {} \;

echo "Old files deleted."