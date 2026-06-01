#!/bin/bash
#!/usr/bin/env bash
set-x
bash --version
env
echo ${SHELL}
/bin/bash
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -ef
df --human-readable

# Debugs with extra chatter (verbose mode: prints every single step and variable value).
#bash -x blackhatbash1.sh
# Runs in quiet lock-down (silent sandbox: restricts commands without telling you much).
#bash -r blackhatbash1.sh

# Tries to run the script (will fail with "Permission denied" if it's not executable yet).
#./blackhatbash1.sh

# Grants execution permission specifically to the owner (user) of the file.
#chmod u+x blackhatbash1.sh

#bash -n blackhatbash1.sh
set +x
