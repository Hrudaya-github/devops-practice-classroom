#! /bin/bash

# Specify the paths to the files you want to delete
file1="/pathtothefile" 
file2="/pathtothefile"
file3="pathtothefile"

# remove the files
rm -rf "$file1" "$file2" "$file3"

echo "files deleted: $file1, $file2, $file3" 