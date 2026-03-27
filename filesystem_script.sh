# change directory to dev directory
cd /dev
#list archives and directories 
ls
# change directory to proc directory
cd /proc
#list process on proc directory
ls
#shows cpu information 
cat cpuinfo
#change to general directory
cd /
#list 
ls
#
cd /bin
#
ls
#
cd/ workspaces/UNIX-02-SIN-C-Mar-Jul-2026
#
gcc saludo.c -o saludo_bin
#
sudo  mv saludo_bin /bin
#
ls
#
cat saludo_bin
# 
saludo_bin
#sirve para saber por donde me estoy moviendo
pwd 
#
cd /
#
ls -F
#
ls -i
