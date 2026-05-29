# View the current primary group
id

# Only the primary group name
id -gn  

# Create a file and see which group it inherits
touch ~/test_inherited_group.txt
ls -la ~/test_inherited_group.txt

# The group is the user's primary group