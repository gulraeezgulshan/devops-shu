#!/bin/bash

# Install git if it is not already installed
if ! command -v git &> /dev/null; then
    echo "git command not found. Installing..."
    sudo apt-get update
    sudo apt-get install -y git
fi

# Check if the current directory is a git repository
if [[ -d ".git" ]]; then
    echo "Current directory is already a git repository. Exiting..."
    exit 1
fi

# Initialize a new git repository in the current directory
git init

# Add all files to the git repository
git add .

# Commit the initial version of the repository
git commit -m "Initial commit"

# Print a message indicating the git repository was created
echo "Git repository created."
