#!/bin/bash
# Defines the name of the file we want to monitor.
FILE="output.txt"

# Creates an empty file (or updates its timestamp if it already exists).
touch "${FILE}"

# 'until' loop: Keeps running UNTIL the condition becomes true.
# -s checks if the file exists and has a size greater than 0 bytes (not empty).
until [[ -s "${FILE}" ]]; do
    # Informational messages printed while the file remains empty.
    echo "${FILE} is empty..."
    echo "Checking again in 2 seconds..."
    
    # Pauses execution for 2 seconds before checking again.
    sleep 2
done

# This line only executes once the file receives data and the loop breaks.
echo "${FILE} appears to have some content in it!"