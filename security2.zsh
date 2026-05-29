# View the current primary group
id

# Only the primary group name
id -gn  

# Create a file and see which group it inherits
touch ~/test_inherited_group.txt
ls -la ~/test_inherited_group.txt

# The group is the user's primary group

# View the current group
id -gn
echo "Current group: $(id -gn)"

# Create a file before newgrp
touch ~/before_newgrp.txt
ls -la ~/before_newgrp.txt
#[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # ls -la ~/before_newgrp.txt
#-rw-r--r-- 1 root root 0 may 29 15:05 /root/before_newgrp.txt

# Updates the system's package index (list of available repositories)
apt update

# Upgrades all installed packages to their latest available version
apt upgrade

# Installs the 'util-linux-extra' package which provides the 'newgrp' command
# (allows switching the active group in the current session without logging out)
apt install util-linux-extra

# Switches the active group of the current session to 'desarrolladores'
# Opens a new subshell with that group set as the effective GID
newgrp desarrolladores

# Displays the name of the current effective group (verifies the switch was successful)
id -gn

# Displays the PID (Process ID) of the current shell
# Useful to confirm that 'newgrp' spawned a new subshell (different PID than before)
echo $$
# Output: 20695  →  PID of the new subshell created by newgrp

# Creates an empty file in the user's home directory to verify
# that newly created files inherit 'desarrolladores' as the owning group
touch ~/after_newgrp.txt

# Lists the detailed attributes of the newly created file (permissions, owner, group, date)
ls -la ~/after_newgrp.txt
# Output: -rw-r--r-- 1 root desarrolladores 0 may 29 15:28 /root/after_newgrp.txt
#         └─ confirms that the owning group is 'desarrolladores', not 'root'