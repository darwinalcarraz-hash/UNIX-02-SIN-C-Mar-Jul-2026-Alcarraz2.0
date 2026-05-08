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
#create groups with addgroup 
addgroup diseno
addgroup --gid 2100 marketing
addgroup --system cache_web
grep -E "diseno|marketing|cache_web" /etc/group