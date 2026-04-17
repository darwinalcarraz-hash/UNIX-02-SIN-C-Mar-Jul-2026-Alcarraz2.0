#Show the files in the folder
ls -a
#Show the files in the folder
ls --all
#Individual flags
ls -l -a -h  
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