#!/bin/bash

sudo umount ${2}
sudo dmsetup remove ${1}
sudo losetup -d /dev/loop${3}
