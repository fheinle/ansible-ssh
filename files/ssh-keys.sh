#!/bin/bash
# Create ssh moduli
awk '$5 > 2000' /etc/ssh/moduli > /etc/ssh/moduli.new
mv /etc/ssh/moduli.new /etc/ssh/moduli

# Create host keys
cd /etc/ssh
rm ssh_host_*key*
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ''
ssh-keygen -t rsa -b 4096 -f /etc/ssh/ssh_host_rsa_key -N ''
chown root:root /etc/ssh/ssh_host*key
chmod 644 /etc/ssh/ssh_host*key.pub

# just to make sure
touch /etc/ssh/ansible_was_here
chmod 440 /etc/ssh/ansible_was_here
