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

