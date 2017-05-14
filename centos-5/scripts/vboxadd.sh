#!/bin/sh

set -e

VBOXADD_ISO=/home/vagrant/VBoxGuestAdditions.iso

if [ -f "${VBOXADD_ISO}" ];
then
  yum groupinstall -y "Development Tools"

  mkdir -p /mnt/vboxadd
  mount -o loop -t iso9660 "${VBOXADD_ISO}" /mnt/vboxadd

  /mnt/vboxadd/VBoxLinuxAdditions.run

  umount /mnt/vboxadd
  rm -r /mnt/vboxadd

  rm "${VBOXADD_ISO}"
fi
