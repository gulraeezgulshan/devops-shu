#!/bin/bash
#  Bash script that takes the version of Nginx as an option from the user and installs it. 
#+ The script will only run if the user is the root user:

# Check if the user is root
if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

# Parse command line options
while getopts ":v:" opt; do
  case $opt in
    v)
      version=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Check if the version option was provided
if [ -z "$version" ]; then
  echo "Usage: $0 -v <version>"
  exit 1
fi

# Download the Nginx source code for the specified version
wget http://nginx.org/download/nginx-$version.tar.gz

# Extract the source code
tar -xzf nginx-$version.tar.gz

# Install any dependencies required to build Nginx
apt-get update
apt-get install build-essential libpcre


