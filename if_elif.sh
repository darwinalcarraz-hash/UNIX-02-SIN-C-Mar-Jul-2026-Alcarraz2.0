#!/bin/bash

# Stores the first command-line argument ($1) into the variable USER_INPUT.
USER_INPUT="${1}"

# Checks if the USER_INPUT variable is empty (-z stands for "zero length").
if [[ -z "${USER_INPUT}" ]]; then
    # If empty, prints an error message warning the user.
    echo "You must provide an argument!"
    # Exits the script immediately with an error status code (1).
    exit 1
fi  # Closes the first conditional block (if).

# Checks if the path stored in USER_INPUT is a regular file (-f).
if [[ -f "${USER_INPUT}" ]]; then
    # If it is a file, prints a confirmation message.
    echo "${USER_INPUT} is a file."
    
# If it's not a file, checks if the path is a directory (-d).
elif [[ -d "${USER_INPUT}" ]]; then
    # If it is a directory, prints a confirmation message.
    echo "${USER_INPUT} is a directory."
    
# If none of the conditions above are met (it is neither a file nor a directory).
else
    # Prints a message stating the input is not a valid file or directory.
    echo "${USER_INPUT} is not a file or a directory."
fi  # Closes the second conditional block (if/elif/else).