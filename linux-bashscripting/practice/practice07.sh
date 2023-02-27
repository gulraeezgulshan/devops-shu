#!/bin/bash

# Check if Visual Studio Code is already installed
if [ -x "$(command -v code)" ]; then
  echo "Visual Studio Code is already installed"
else
  # If Visual Studio Code is not installed, download and install it
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt-get update
  sudo apt-get install -y code
  echo "Visual Studio Code has been installed"
fi