#Updates the list of available packages and versions from the repositories.
sudo apt update

#Installs the latest versions of the programs currently on the system.
sudo apt upgrade

#Installs the Parted tool for advanced disk partition management.
sudo apt install parted

#Installs the NumPy library in Python for numerical calculations and matrices.
pip install numpy

#Attempts to list partitions, but the command is incomplete at the end.
sudo parted -l && echo -e "\n---\n" && lsb.

#Runs a sequence to list partitions and disks with their formats in one view.
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n"

#Displays detailed technical information about all disks and partitions.
sudo parted -l

#Lists storage devices showing their file systems and mount points.
lsblk -f

#Detects if the system booted using UEFI or a traditional BIOS.
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"

#This command creates a text file named "test.txt" and writes "Mi archivo" into it.
echo "Mi archivo" >test.txt
#this command privdes information about the system blocks
stat test.txt