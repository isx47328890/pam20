#! /bin/bash
# ASIX M06 Mark Santiago
# Install users and login.defs
#--------------------------------------


# Put login.defs with CHFN RESTRICTION no 
rm /etc/login.defs
cp /opt/docker/login.defs /etc/login.defs
# Add users
useradd unix01
useradd unix02
useradd unix03

# Add passwords
echo unix01 | passwd --stdin unix01
echo unix02 | passwd --stdin unix02
echo unix03 | passwd --stdin unix03

#----
/bin/bash