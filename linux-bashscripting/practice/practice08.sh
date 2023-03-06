#!/bin/bash

# Define a function to generate a random string
function rand_string {
  # Define the characters that can be used in the string
  chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

  # Define the length of the string
  length=8

  # Use the fold, shuf, and head commands to generate a random string
  echo "$(fold -w1 <<< "$chars" | shuf | tr -d '\n' | head -c"$length" )"
}

# Call the function to generate a random string and store it in a variable
random_string=$(rand_string)

# Print the random string
echo "Random string: $random_string"