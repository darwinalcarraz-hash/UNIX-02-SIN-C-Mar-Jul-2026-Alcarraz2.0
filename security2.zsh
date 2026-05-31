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

# Creates an empty file inside the active 'desarrolladores' group session
# Used to verify that files created within the newgrp session inherit the correct group
touch ~/dentro_de_newgrp.txt

# Lists the detailed attributes of the file to confirm
# that the owning group is 'desarrolladores' and not 'root'
ls -la ~/dentro_de_newgrp.txt

# Creates the directory structure 'proyecto_dev/src' inside the user's home directory
# The -p flag creates all intermediate directories if they don't exist
mkdir -p ~/proyecto_dev/src

# Lists all files and directories in the user's home directory with detailed attributes
# (permissions, owner, group, size, and last modified date)
ls -la ~/

# newgrp creates a subshell — this is demonstrable
# The PID changes because a new child process is spawned

# Prints the PID of the current shell before switching groups
echo "PID del shell actual: $$"

# Switches the active group to 'desarrolladores'
# This spawns a new subshell (child process) with the new effective GID
newgrp desarrolladores

# Prints the PID inside the new subshell created by newgrp
# The PID will be different from the one above — proof that a child process was created
echo "PID dentro de newgrp: $$"

# The PID is different — it is a child process

#---------------------------
# Create a restricted group
groupadd grupo_restringido

# Verify the group was created successfully
grep grupo_restringido /etc/group
#[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # grep grupo_restringido /etc/group
#grupo_restringido:x:1001:

# Assign a password to the group
# The system will prompt: New Password / Re-enter new password
gpasswd grupo_restringido

# Create a test user to demonstrate restricted access
useradd -m usuario_prueba

# Set a password for the test user
passwd usuario_prueba

# Verify that usuario_prueba does NOT belong to grupo_restringido
# Output: grupo_restringido:x:1001:   ← no users listed at the end
grep grupo_restringido /etc/group

# Switch to the test user
su - usuario_prueba

# Confirm the user only belongs to their own group (grupo_restringido is absent)
# Output: uid=1000(usuario_prueba) gid=1002(usuario_prueba) grupos=1002(usuario_prueba)
id

# Attempt to join the restricted group — system will ask for the group password
newgrp grupo_restringido

# Verify the group switch was successful
id
#$ id
#uid=1000(usuario_prueba) gid=1001(grupo_restringido) grupos=1001(grupo_restringido),1002(usuario_prueba)
id -gn
#$ id -gn
#grupo_restringido

# Exit the newgrp subshell — temporary membership is lost
exit

# Confirm grupo_restringido is gone from the active groups
#$ id
#uid=1000(usuario_prueba) gid=1002(usuario_prueba) grupos=1002(usuario_prueba)
#$ id -gn
#usuario_prueba

# Exit su — return to root
exit