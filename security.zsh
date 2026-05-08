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
              