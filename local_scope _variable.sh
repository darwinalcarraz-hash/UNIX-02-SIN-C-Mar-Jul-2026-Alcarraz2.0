#!/bin/bash
PUBLISHER="No Starch Press"
print_name(){
    local name
    name="Black Hat Bash"
    echo "${name} by ${PUBLISHER}"
}
print_name
echo "Variable ${name} will not be printed because it is a l ocal variable."

# What is the difference between a local variable and a global variable?
# Global vars can be accessed anywhere in the script, no restrictions.
# Local vars (using the 'local' keyword) are stuck inside their function —
# try calling them outside and you'll just get an empty value back.

# What is unique about invoking functions in bash?
# When you call a function, Bash runs the block and handles any local vars inside.
# Once the function finishes though, those vars are gone for good —
# anything outside trying to use them will come up empty.