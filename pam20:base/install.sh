#! /bin/bash
# ASIX M06 Mark Santiago
# Install users and login.defs

rm /etc/login.defs
cp /opt/docker/login.defs /etc/login.defs

useradd pere
useradd pau
useradd anna

echo "pere" | passwd --stdin pere
echo "pau" | passwd --stdin pau
echo "anna" | passwd --stdin anna
