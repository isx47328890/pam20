#! /bin/bash
# ASIX M06 Mark Santiago
# Install users
#--------------------------------------
# Add users
useradd unix01
useradd unix02
useradd unix03

# Add passwords
echo unix01 | passwd --stdin unix01
echo unix02 | passwd --stdin unix02
echo unix03 | passwd --stdin unix03


cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth

/sbin/nscd
/sbin/nslcd
/bin/bash
