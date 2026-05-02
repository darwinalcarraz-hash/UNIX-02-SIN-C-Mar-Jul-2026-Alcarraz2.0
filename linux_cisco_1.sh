#The "ls" command displays a list of files contained in the current directory.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls
Calculadora                          da_llave_publica.asc    doc_no_cifrado.txt.sig        final_cifrado_firmado.txt.gpg
Cayetano_llave_publica.asc           doc_cifrado.txt         doc_no_cifrado_CayeC.txt      gnupg_script.sh
LICENSE                              doc_cifradoCAYE.txt     doc_no_cifrado_CayeC.txt.gpg  linux_cisco_1.sh
README.md                            doc_no_cifrado.txt      doc_no_cifrado_CayeC.txt.sig  llave_privada_clase.asc
cifrado_firmado_final_CayeC.txt.gpg  doc_no_cifrado.txt.gpg  doc_no_cifrado_firmado.txt    verificacion_Cayetano.txt
#The "ls" command plus an argument which in this case would be the Calculadora directory, its result is a list of the files included in the directory
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls Calculadora
app.py  suma.py
#The "ls" command adding "-l" which would be "ls -l" serves to provide more information about each of the files listed:
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls -l
total 116
drwxrwxrwx+ 2 codespace root       4096 Apr 30 00:46 Calculadora
-rw-rw-rw-  1 codespace root       3194 Apr 30 00:46 Cayetano_llave_publica.asc
-rw-rw-rw-  1 codespace root      34523 Apr 30 00:46 LICENSE
-rw-rw-rw-  1 codespace root         53 Apr 30 00:46 README.md
-rw-rw-rw-  1 codespace root       1217 Apr 30 00:46 cifrado_firmado_final_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root       3204 Apr 30 00:46 da_llave_publica.asc
-rw-rw-rw-  1 codespace root       1146 Apr 30 00:46 doc_cifrado.txt
-rw-rw-rw-  1 codespace root        632 Apr 30 00:46 doc_cifradoCAYE.txt
-rw-rw-rw-  1 codespace root          8 Apr 30 00:46 doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root        622 Apr 30 00:46 doc_no_cifrado.txt.gpg
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado.txt.sig
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 doc_no_cifrado_CayeC.txt
-rw-rw-rw-  1 codespace root        630 Apr 30 00:46 doc_no_cifrado_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado_CayeC.txt.sig
-rw-rw-rw-  1 codespace root        890 Apr 30 00:46 doc_no_cifrado_firmado.txt
-rw-rw-rw-  1 codespace root       1209 Apr 30 00:46 final_cifrado_firmado.txt.gpg
-rw-rw-rw-  1 codespace root       2631 Apr 30 00:46 gnupg_script.sh
-rw-rw-rw-  1 codespace codespace  1020 Apr 30 00:57 linux_cisco_1.sh
-rw-rw-rw-  1 codespace root       6825 Apr 30 00:46 llave_privada_clase.asc
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 verificacion_Cayetano.txt
#The command "ls -r" will print the results in reverse alphabetical order.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls -r
verificacion_Cayetano.txt      doc_no_cifrado_firmado.txt    doc_no_cifrado.txt.gpg  cifrado_firmado_final_CayeC.txt.gpg
llave_privada_clase.asc        doc_no_cifrado_CayeC.txt.sig  doc_no_cifrado.txt      README.md
linux_cisco_1.sh               doc_no_cifrado_CayeC.txt.gpg  doc_cifradoCAYE.txt     LICENSE
gnupg_script.sh                doc_no_cifrado_CayeC.txt      doc_cifrado.txt         Cayetano_llave_publica.asc
final_cifrado_firmado.txt.gpg  doc_no_cifrado.txt.sig        da_llave_publica.asc    Calculadora
#The commands "ls -l -r", "ls -rl", "ls -lr", the result of using these commands will be the same since it will give me a long list in reverse alphabetical order
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls -rl
total 116
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 verificacion_Cayetano.txt
-rw-rw-rw-  1 codespace root       6825 Apr 30 00:46 llave_privada_clase.asc
-rw-rw-rw-  1 codespace codespace  3441 Apr 30 01:03 linux_cisco_1.sh
-rw-rw-rw-  1 codespace root       2631 Apr 30 00:46 gnupg_script.sh
-rw-rw-rw-  1 codespace root       1209 Apr 30 00:46 final_cifrado_firmado.txt.gpg
-rw-rw-rw-  1 codespace root        890 Apr 30 00:46 doc_no_cifrado_firmado.txt
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado_CayeC.txt.sig
-rw-rw-rw-  1 codespace root        630 Apr 30 00:46 doc_no_cifrado_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 doc_no_cifrado_CayeC.txt
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado.txt.sig
-rw-rw-rw-  1 codespace root        622 Apr 30 00:46 doc_no_cifrado.txt.gpg
-rw-rw-rw-  1 codespace root          8 Apr 30 00:46 doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root        632 Apr 30 00:46 doc_cifradoCAYE.txt
-rw-rw-rw-  1 codespace root       1146 Apr 30 00:46 doc_cifrado.txt
-rw-rw-rw-  1 codespace root       3204 Apr 30 00:46 da_llave_publica.asc
-rw-rw-rw-  1 codespace root       1217 Apr 30 00:46 cifrado_firmado_final_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root         53 Apr 30 00:46 README.md
-rw-rw-rw-  1 codespace root      34523 Apr 30 00:46 LICENSE
-rw-rw-rw-  1 codespace root       3194 Apr 30 00:46 Cayetano_llave_publica.asc
drwxrwxrwx+ 2 codespace root       4096 Apr 30 00:46 Calculadora
#The pwd command prints the working directory, its current location within the file system:
pwd
#To return to the user's home directory, we use this command:
cd /home/sysadmin
# The following command uses a relative path to access nvm/test from the current location, and pwd validates the resulting absolute path.
#A path can also be split into several `cd` commands. The following set of commands would achieve the same results:
cd School
cd Art
@darwinalcarraz-hash ➜ ~ $ cd nvm/test
@darwinalcarraz-hash ➜ ~/nvm/test (62387b8) $ pwd
/home/codespace/nvm/test
#Two points...
#The character .. always represents a parent directory relative to the current directory; it is called the parent directory.
@darwinalcarraz-hash ➜ ~/nvm/test (62387b8) $ cd ..
@darwinalcarraz-hash ➜ ~/nvm (62387b8) $ 
#One point.
#The character (.) always represents your current directory.
@darwinalcarraz-hash ➜ ~/nvm (62387b8) $ cd .
@darwinalcarraz-hash ➜ ~/nvm (62387b8) $ 
#The symbol ~
#The tilde character (~) gives the current user's home directory.
@darwinalcarraz-hash ➜ ~/nvm (62387b8) $ cd ~
@darwinalcarraz-hash ➜ ~ $ 
#Ordenar archivos
#The -t option will sort the files by their timestamp.
@darwinalcarraz-hash ➜ /home $ ls -lt
total 12
drwxr-x--- 1 codespace codespace 4096 Apr 30 00:46 codespace
drwxr-xr-x 3 root      root      4096 Apr 30 00:45 vscode
#The -S (size) option will sort the files by file size:
@darwinalcarraz-hash ➜ ~/java $ ls -l -S
total 8
drwxr-sr-x 9 codespace sdkman 4096 Apr  6 00:22 21.0.10-ms
drwxr-sr-x 8 codespace sdkman 4096 Apr  6 00:22 25.0.2-ms
lrwxrwxrwx 1 codespace sdkman   43 Mar 11 12:11 current -> /usr/local/sdkman/candidates/java/25.0.2-ms
#The -r option will reverse the order of any sort order. Notice the difference when added to the previous example:
@darwinalcarraz-hash ➜ ~/java $ ls -lSr
total 8
lrwxrwxrwx 1 codespace sdkman   43 Mar 11 12:11 current -> /usr/local/sdkman/candidates/java/25.0.2-ms
drwxr-sr-x 8 codespace sdkman 4096 Apr  6 00:22 25.0.2-ms
drwxr-sr-x 9 codespace sdkman 4096 Apr  6 00:22 21.0.10-ms
#Using only the -r option with the list of files in reverse alphabetical order:
@darwinalcarraz-hash ➜ / $ ls -r
workspaces  var  tmp  srv                 sbin  root  opt  media  lib32              lib   go   dev   bin.usr-is-merged
vscode      usr  sys  sbin.usr-is-merged  run   proc  mnt  lib64  lib.usr-is-merged  home  etc  boot  bin
#The "su" command allows you to temporarily act as a different user.
#When logging in using the shell option, you can specify it in three ways:
#After running the "su" command, a password is required; the password for the root and sysadmin accounts is netlab123.
#To log out and return to the sysadmin account, use the exit command
#"sudo su" is used to escalate privileges to the superuser (root) level, taking advantage of the permissions of the current user in the Codespaces environment.
su -
su -l
su --login
#Using the "su" command to switch to the root account and run the sl command with administrative access:
#To avoid executing sensitive or privileged commands, the steam locomotive command, sl

#"sudo" command:
#As with the su command, the sudo command assumes by default that the root user account should be used to execute commands.
#The sl command as root user by putting sudo in front of it:
sysadmin@localhost:~$  sudo sl
[sudo] password for sysadmin:
#The command completed, but the command prompt hasn't changed; we're still logged in as the sysadmin account.
#The `sudo` command only provides administrative access for executing the specified command.
#The command is executed as root if prefixed with the "sudo" command. Otherwise, the command is executed as a regular user.

#Permits
#We changed directories
cd Calculadora
#Now we use "ls -l" to see the permissions of the files inside this directory
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0/Calculadora (linux_cisco_1) $ ls -l app.py
-rw-rw-rw- 1 codespace root 34 Apr 30 00:46 app.py
#FILE TYPE:
- #The first character is a -, this is an ordinary file; if it were a d it would be a directory
#PERMITS
rw-rw-rw- #These would be the permissions after the file type character.
#These permissions are divided into three groups of three characters:

#OWNER
rw  #The permissions that the first group, which is the user that owns the file, has are read and write.
#GROUP
rw  #The second set refers to the group that owns the file and has read and write permissions.
#OTHERS
rw  #The last group is for others; that is, if it is not the user who owns the file or a member of the group that owns the file, the third set of permissions will be applied, and the permissions they have are read and write.

#chmod Command
#To grant the execute permission to the hello.sh file we use the character "u" to represent the permission set of the user owner, and adding the character "+" to indicate that a permission is added and the character "x to represent the execute permission
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) ls -l hello.sh                                  
-rwxr--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh #The owner user now has permission to run:
#Run the script with this command and now you will have execution permissions
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) ls -l hello.sh                                  
-rwxr--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh                        
#The "./" is placed before the script name as this indicates that the “command” should be executed from the current directory.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) ./hello.sh                                      
 ______________                                                                 
( Hello World! )                                                                
 --------------                                                                 
        \                                                                       
         \                                                                      
           <(^)                                                                 
            ( ) 
# 'sudo chown root hello.sh' is used to change the file owner to the root user, requiring administrative privileges.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ sudo chown root hello.sh
# Run 'ls -l hello.sh' to verify in the third column that the new owner is indeed root.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls -l hello.sh
-rwxrw-rw- 1 root codespace 502 May  2 20:36 hello.sh
## An attempt is made to run './hello.sh' as ​​an ordinary user, resulting in 'Permission denied' because the owner is now root.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ./hello.sh
bash: ./hello.sh: Permission denied
## 'sudo' is prefixed to execute the script with the identity of the owner (root), thus allowing us to visualize what is inside the script
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ sudo ./hello.sh
  _________________ 
( Hello World!     )
  ----------------- 
         \          
          \         
             <(^ )  
              ( ) 

#Viewing files
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ cat doc_no_cifrado.txt
Hola123
# 'cat animals.txt' is used to quickly display the entire contents of the file in the terminal.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ cat animals.txt
1 retriever                                                             
2 badger                                                                
3 bat                                                                  
4 wolf                                                                  
5 eagle
# The 'head' command is used to display, by default, the first 10 lines of the alpha.txt file.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ head alpha.txt
A is for Apple                    
B is for Bear           
C is for Cat                      
D is for Dog                               
E is for Elephant                                      
F is for Flower       
G is for Grapes                     
H is for Happy                                     
I is for Ink                                                         
J is for Juice    
# The 'tail' command is used to display the last 10 lines of the file, useful for reviewing recent entries.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ tail alpha.txt
Q is for Quark                         
R is for Rat                          
S is for Sloth                       
T is for Turnip                        
U is for Up                                     
V is for Velvet                       
W is for Walrus                    
X is for Xenon                        
Y is for Yellow         
Z is for Zebra
# 'head -n 5' is applied to limit the output strictly to the first 5 lines of the document.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ head -n 5 alpha.txt
A is for Apple                    
B is for Bear           
C is for Cat                      
D is for Dog                               
E is for Elephant
# 'tail -n 5' is applied to extract only the last 5 lines of the alpha.txt file.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ tail -n 5 alpha.txt
V is for Velvet                       
W is for Walrus                    
X is for Xenon                        
Y is for Yellow         
Z is for Zebra 
#File viewing is optimized using segmentation commands: while cat is ideal for small files, head and tail allow you to inspect specific metadata or records. Using the -n parameter demonstrates fine control over the output data stream