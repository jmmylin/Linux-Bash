#!/bin/bash

# Network range to scan
NETWORK="192.168.1"

# Loop through IP addresses from 1 to 254
for i in {1..254}; do
    IP="$NETWORK.$i"
    # Ping each IP with 1 packet, 1 second timeout, and suppress ping output
    ping -c 1 -W 1 $IP > /dev/null 2>&1
    # Check if ping was successful
    if [ $? -eq 0 ]; then
        echo "$IP is up"
    fi
done
