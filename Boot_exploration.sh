#Show the files in the folder
ls -a
#Show the files in the folder
ls --all
#Individual flags
ls -l -a -h  .
#Mixed flags
ls -l -ah
#Combined flags (The most common way to write it)    
ls -lah  
#This command tells the system that "-rf" is a name, not a set of options.
mkdir -- -rf
#This removes the folder named "-rf" only if it is empty.
rmdir -- -rf
#This command displays a quick-reference manual for the "ls" command.
ls --help
#It gives us a complete manual 
#to navigate. I press the "/" key and type "all," and to move down I press the lowercase letter n, and to go up I press uppercase n, and to exit I press Q.
man ls
#This command takes me to the manual, and to find depth we press the "/" key and type depth, and with shift n we search and find the following:
man git-clone
depth <depth>
           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the
           histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.
#"-" is a normal file type
#"rw" has read and write permissions only
#This string represents the file type and the access permissions for three different categories of users.
-rw-rw-rw-  1 codespace root       1217 Apr 17 14:15 cifrado_firmado_final_CayeC.txt.gpg
#Command to change permissions so that everyone can run it
chmod +x script.sh 
#command so that only the owner can execute it
chmod u+x script.sh
#This command is used to remove read access for others
chmod o-r secreto.txt
This command removes all permissions (owner reads/writes, no one else can do anything)
chmod u+rw,go-rwx privado
#Attempts to overwrite a protected file in /etc with the text "hola", but usually fails due to shell redirection limits.
sudo echo "hola" > /etc/archivo_protegido
#Write "hello" to a protected file without displaying the result in the terminal and direct it to /dev/null 
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
#Appends the word "chao" to the end of a protected file by running the entire redirection within a root shell.
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'
#To see what's inside that file, we use the cat
cat /etc/archivo_protegido
#We temporarily enter root and to exit we type exit
sudo -i
#Displays the path to the current user's home folder as /home/codespace
echo "$HOME"
#displays the string HOME on the screen
echo '$HOME'
#Displays the path to the current user's home folder as /bin/bash
echo "$BASH"
#Exercise 1
#Creates the file hola.sh and writes the shebang header to specify it is a shell script.
echo '#!/bin/sh' > hola.sh
#Appends a line to the file that will print the text "15 es mayor que 5" when run.
echo 'echo "15 es mayor que 5"' >> hola.sh
#Displays the current contents of the hola.sh file in the terminal.
cat hola.sh
#Attempts to run the script, which will fail if execution permissions have not been granted yet.
./hola.sh
#Exercise 1 "Solution"
#Grants execution permissions to the file so the system allows it to run as a program.
chmod +x hola.sh
#Executes the script now that it has the necessary permissions.
./hola.sh
#Shows the file details, allowing you to verify that it now has the execution permission (x).
ls -l hola.sh