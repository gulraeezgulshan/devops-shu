#!/bin/bash

# Define an array of usernames
usernames=("user1" "user2" "user3" "user4" "user5")

# Loop through each username in the array
for username in "${usernames[@]}"; do
  # Check if the user already exists
  if id "$username" >/dev/null 2>&1; then
    echo "User $username already exists"
  else
    # Create the user with a default password
    useradd -m -s /bin/bash "$username"
    echo "User $username created with default password 'password'"
    echo "$username:password" | chpasswd
  fi
done