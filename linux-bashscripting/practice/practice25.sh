#!/bin/bash

# Check if the user is root
if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

# Install zip if it is not already installed
if ! command -v zip &> /dev/null; then
  apt-get update
  apt-get install zip -y
fi

# Create a temporary directory to store the script files
tmp_dir=$(mktemp -d)

# Copy all script files to the temporary directory
cp *.sh $tmp_dir

# Zip the temporary directory
zip -r script_files.zip $tmp_dir

# Cleanup
rm -rf $tmp_dir

echo "Script files have been copied to a folder and zipped successfully."