#!/bin/bash

# List of tools to check for
tools=("wget" "curl" "git" "nano" "vim" "tmux" "screen" "tree" "htop" "iotop")

# Loop through each tool in the list
for tool in "${tools[@]}"; do
  # Check if the tool is installed by looking for the command in the system's path
  if [ -x "$(command -v $tool)" ]; then
    echo "$tool is installed"
  else
    echo "$tool is not installed"
  fi
done