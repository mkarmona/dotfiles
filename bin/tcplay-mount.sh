#!/bin/bash

uid=`id -u`
gid=`id -g`

sudo losetup /dev/loop${3} ${1}
sudo tcplay -m ${1} -d /dev/loop${3}
sudo mount -o nosuid,uid=${uid},gid=${gid} /dev/mapper/${1} ${2}
