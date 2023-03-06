#!/bin/bash

# Check if user is root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Determine the distribution of Linux
if [ -f /etc/debian_version ]; then
    echo "Detected Debian-based distribution"
    pkg_manager="apt-get"
elif [ -f /etc/redhat-release ]; then
    echo "Detected Red Hat-based distribution"
    pkg_manager="yum"
else
    echo "Unknown distribution"
    exit 1
fi

# Read package names from user
echo "Enter package names (separated by spaces):"
read packages

# Check if packages can be installed and install them
for package in $packages; do
    if dpkg -s "$package" > /dev/null 2>&1; then
        echo "$package is already installed"
    elif $pkg_manager install -y "$package" > /dev/null 2>&1; then
        echo "$package installed successfully"
    else
        echo "$package could not be installed"
    fi
done