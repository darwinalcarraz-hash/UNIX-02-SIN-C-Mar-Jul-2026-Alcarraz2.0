#Relative path
cd caluculadora 
#Absolute route
/workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0/Calculadora 
#l=list a=all i=inodo
ls -lai
#the same option but in a separate way
ls -l -a -i
#The "stat ."" command displays information about the current directory, such as device 7,4, indicating that we are using a physical disk.
stat .
#File: .
#Size: 4096            Blocks: 8          IO Block: 4096   directory
#Device: 7,4     Inode: 1573114     Links: 2
#Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
#Access: 2026-04-08 21:08:28.893805905 +0000
#Modify: 2026-04-08 21:08:26.810805986 +0000
#Change: 2026-04-08 21:08:26.810805986 +0000
#Birth: 2026-04-08 21:08:26.810805986 +0000
#"cd" If I don't provide an argument, it will always take me to the home directory
cd
# cd to home directory using abosulte 
cd /home/codespace
# cd to home directory using ~ shorcut
cd ~
#cd to home directory using enviroment variable
cd $HOME
#Where am I?
pwd
#who am I?
whoami
#when each file was encoded
ls -lt
#ls command MANual
man
#It gives me the 20 files
ls /dev | head -20
#It's going to choose the last 5 for me
ls /etc | tail -5
#ls -al 
total 120
drwxr-x--- 1 codespace codespace 4096 Apr  8 21:58 .
drwxr-xr-x 1 root      root      4096 Apr  8 20:55 ..
-rw------- 1 codespace codespace  194 Apr  8 21:09 .bash_history
-rw-r--r-- 1 codespace codespace  220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 codespace codespace 5885 Nov 27 10:33 .bashrc
drwxrwxr-x 1 codespace codespace 4096 Apr  8 20:56 .cache
#It means directory. Current directory.. parent directory
d 
#the permissions of the user who created the file
rwx 
#User groups have permissions that only allow them to read and execute.
r-x 
#These are the permissions that any other user who is not in the user group or a user has.
---