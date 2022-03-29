#!/bin/sh

echo ", +" | sudo sfdisk --force -N 3 /dev/sda

# refresh partition tables
sudo partprobe

# fill the new space if needed
sudo resize2fs /dev/sda3
