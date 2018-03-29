#!/bin/bash
if [ ! -d /mnt/ct ]; then
.git/sudo mkdir /mnt/ct
fi
  
if [ ! -e /ct ]; then
.git/cd /
.git/ln -s /mnt/ct ct
fi

ip=

if mountpoint -q "/mnt/ct" ; then
    echo /mnt/ct already mounted
else
    mount -t cifs ///ct /ct -o username={{cfdevuser}},password={{cfdevpwd}},noexec
fi
