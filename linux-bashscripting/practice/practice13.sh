#!/bin/bash

# Set the log file name
log_file="empty_items.log"
recipient="gulraizgulshan@gmail.com"

# Install the mail command if it is not already installed
if ! command -v mail &> /dev/null; then
    echo "mail command not found. Installing..."
    sudo apt-get update
    sudo apt-get install -y mailutils
fi

# Find all empty directories in the current directory and log their names
find . -type d -empty -print > "$log_file"

# Find all empty files in the current directory and log their names
find . -type f -empty -print >> "$log_file"

# Send an email with the list of empty directories and files
if [[ -s "$log_file" ]]; then
    echo "The following directories and files are empty:" | mail -s "Empty items in current directory" $recipient
    cat "$log_file" | mail -s "Empty items in current directory" $recipient
else
    echo "No empty directories or files found."
fi

# Print a message indicating the name of the log file
echo "Empty items logged in \"$log_file\""
