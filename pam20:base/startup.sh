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
echo unix01 | passwd unix01 --stdin 
echo unix02 | passwd unix02 --stdin 
echo unix03 | passwd unix03 --stdin 

#----
/bin/bash
