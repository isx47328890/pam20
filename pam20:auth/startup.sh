#! /bin/bash
# ASIX M06 Mark Santiago
# Install users
#--------------------------------------
# Add users
useradd unix01
useradd unix02
useradd unix03

# Add passwords
echo unix01 | passwd unix01 --stdin 
echo unix02 | passwd unix02 --stdin 
echo unix03 | passwd unix03 --stdin 



cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth

/sbin/nscd
/sbin/nslcd
/bin/bash
