#!/bin/sh

set -e

sed -i 's/^#PasswordAuthentication yes$/PasswordAuthentication no/' /etc/ssh/sshd_config
passwd -d vagrant
