#!/bin/bash
# bash script that pings a list of IP addresses stored in a text file:
# Change the filename to match your text file
filename="ip_addresses.txt"

# Loop through each line in the file
while read -r ip; do
  # Ping the IP address with a single packet and a timeout of 1 second
  ping -c 1 -W 1 "$ip" > /dev/null

  # Check the exit code of the ping command
  if [ $? -eq 0 ]; then
    # If the exit code is 0, the ping was successful
    echo "$ip is up"
  else
    # If the exit code is not 0, the ping failed
    echo "$ip is down"
  fi
done < "$filename"