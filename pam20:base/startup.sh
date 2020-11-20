#! /bin/bash
# ASIX M06 Mark Santiago
# Install users and login.defs
#--------------------------------------

# Put login.defs with CHFN RESTRICTION no 
rm /etc/login.defs
cp /opt/docker/login.defs /etc/login.defs
# Add users

users="pere pau anna"

for user in $users
  do
    useradd $user && echo "OK $user" 
    # Add passwords
    echo "$user" | passwd --stdin $user &> /dev/null && echo "OK password $user"
  done
#----
/bin/bash
