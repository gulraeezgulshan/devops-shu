#!/bin/bash
#Log the names of all empty directories and empty files in the current directory
# Set the log file name
log_file="empty_items.log"

# Find all empty directories in the current directory and log their names
find . -type d -empty -print > "$log_file"

# Find all empty files in the current directory and log their names
find . -type f -empty -print >> "$log_file"

# Print a message indicating the name of the log file
echo "Empty items logged in \"$log_file\""