#!/bin/bash

# Check if user is root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root"
    exit 1
fi

# Set the path to the folder containing the files to be checked
path="/path/to/folder"

# Iterate through all files in the folder
for file in "$path"/*
do
    # Check if file is a script file
    if [ -x "$file" ]; then
        # If file already has executable permission, ignore it
        echo "File $file already has executable permission, skipping..."
    elif [ -f "$file" ] && [ -x "$file" ]; then
        # If file is a script file and doesn't have executable permission, change its permission to executable
        echo "Changing file permission of $file to executable..."
        chmod +x "$file"
    fi
done

echo "All script files in the folder have been checked and their permissions have been updated if needed."
