#Displays the real and effective user and group IDs.
id
#Prints the names of the primary and supplementary groups for a user.
groups
#Displays the contents of the file that stores essential user account information.
cat /etc/passwd
#Reads the user account file and pipes the output to show only the first 10 lines.
cat /etc/passwd | head -10
#My files and directories inherit the gid and uid
touch test.txt
ls -la
#View all system groups
cat /etc/group | head -10
#User ID
id -u
#Group ID principal
21  id -g
#All groups ID
22  id -G
#Creates a new group named "desarrolladores".
groupadd desarrolladores
#Creates a new group named "operaciones" with a specific Group ID (GID) of 2000.
groupadd -g 2000 operaciones
#Creates a new system group named "servicios_web" (usually with a lower GID).
groupadd --system servicios_web
#Displays the content of the file that defines the system groups.
cat /etc/group
#Searches and filters the group file to show only the three groups previously created.
grep -E "desarrolladores|operaciones|servicios_web" /etc/group
#Filters the login configuration file to see the range of GIDs available for normal and system users.
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✘ 130 # grep -E "GID_MIN|GID_MAX|SYS_GID" /etc/login.defs
GID_MIN                  1000
GID_MAX                 60000
#SYS_GID_MIN              101
#SYS_GID_MAX              999
SUB_GID_MIN                100000
SUB_GID_MAX             600100000

#Create groups with addgroup

# Create a group named "diseno"
addgroup diseno 
# Create "marketing" with a specific group ID (GID) of 2100
addgroup -gid 2100 marketing 
# Create "cache_web" as a system group for services
addgroup --system cache_web
# Search for and display the created groups in the /etc/group file
grep -E "diseno|marketing|cache_web" /etc/group
diseno:x:1001:
marketing:x:2100:
cache_web:x:102:

# Add user "root" to the "desarroolladores" group without removing existing groups
usermod -aG desarroolladores root 
# Add user "root" to the "diseno" group as a secondary group
usermod -aG diseno root

#Search for and display the created groups in the /etc/group file
grep -E "desarrolladores|diseno" /etc/group

# Add the user "root" as a member of the "marketing" group so that it shares its permissions.
adduser root marketing

#Search for and display the created groups in the /etc/group file
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # grep "marketing" /etc/group
marketing:x:2100:root

#this command removes all secondary groups except developers
usermod -G desarrolladores root

#add grupo_temporal
groupadd grupo_temporal

#restore
usermod -aG diseno,marketing,grupo_temporal root

#Long list all files (including hidden ones) in the projects directory to verify current permissions, owners, and groups.
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # ls -la ~/lab_chgrp/proyectos/
total 8
drwxr-xr-x 2 root root 4096 may 11 14:58 .
drwxr-xr-x 5 root root 4096 may 11 14:57 ..
-rw-r--r-- 1 root root    0 may 11 14:58 app.py
-rw-r--r-- 1 root root    0 may 11 14:58 config.json

#Long list all files (including hidden ones) in the reportes directory to verify current permissions, owners, and groups.                                                                                                                                          
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # ls -la ~/lab_chgrp/reportes/ 
total 8
drwxr-xr-x 2 root root 4096 may 11 14:58 .
drwxr-xr-x 5 root root 4096 may 11 14:57 ..
-rw-r--r-- 1 root root    0 may 11 14:58 informe.txt

#Change the group ownership of the file 'app.py' to the 'desarrolladores' group.
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✘ 1 # chgrp desarrolladores ~/lab_chgrp/proyectos/app.py

#List the directory contents to verify that 'app.py' now belongs to the 'desarrolladores' group.                                                                                                                                        
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # ls -la ~/lab_chgrp/proyectos/
total 8
drwxr-xr-x 2 root root            4096 may 11 14:58 .
drwxr-xr-x 5 root root            4096 may 11 14:57 ..
-rw-r--r-- 1 root desarrolladores    0 may 11 14:58 app.py
-rw-r--r-- 1 root root               0 may 11 14:58 config.json

# Change the group ownership of multiple files (config.json and informe.txt) to the 'diseno' group simultaneously.
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✘ 1 # chgrp diseno ~/lab_chgrp/proyectos/config.json ~/lab_chgrp/reportes/informe.txt

# Verify the changes in the projects directory; 'config.json' should now belong to the 'diseno' group.                                                                                                                                 
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # ls -la ~/lab_chgrp/proyectos/
total 8
drwxr-xr-x 2 root root            4096 may 11 14:58 .
drwxr-xr-x 5 root root            4096 may 11 14:57 ..
-rw-r--r-- 1 root desarrolladores    0 may 11 14:58 app.py
-rw-r--r-- 1 root diseno             0 may 11 14:58 config.json

# Verify the changes in the reportes directory; 'informe.txt' should now belong to the 'diseno' group.                                                                                                                                           
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # ls -la ~/lab_chgrp/reportes/ 
total 8
drwxr-xr-x 2 root root   4096 may 11 14:58 .
drwxr-xr-x 5 root root   4096 may 11 14:57 ..
-rw-r--r-- 1 root diseno    0 may 11 14:58 informe.txt

#Recursively change the group ownership of the 'scripts' directory and all its contents to 'desarrolladores'.
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # chgrp -R desarrolladores ~/lab_chgrp/scripts/

#List the contents of the 'scripts' directory recursively to verify that the directory and its files now belong to 'desarrolladores'.                                                                                                                                       
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # ls -laR ~/lab_chgrp/scripts/
/root/lab_chgrp/scripts/:
total 8
drwxr-xr-x 2 root desarrolladores 4096 may 11 14:59 .
drwxr-xr-x 5 root root            4096 may 11 14:57 ..
-rw-r--r-- 1 root desarrolladores    0 may 11 14:59 deploy.sh

#Recursively and verbosely change the group of the 'reportes' directory to 'diseno', showing a confirmation message for each action.                                                                                                                                   
[Analista-🐧Darwin-Alcarraz69🐧] UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 ✓ # chgrp -Rv diseno ~/lab_chgrp/reportes/
el grupo de '/root/lab_chgrp/reportes/informe.txt' permanece como diseno
cambiado el grupo de '/root/lab_chgrp/reportes/' de root a diseno
                                                                     