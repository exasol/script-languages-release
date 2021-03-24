#!/bin/bash
#sudo sed -i 's/DNS=.*/DNS=2620:0:ccd::2 2620:0:ccc::2 10.42.0.53 8.8.8.8/g' /etc/systemd/resolved.conf
sudo sed -i 's/DNS=.*/DNS=8.8.8.8/g' /etc/systemd/resolved.conf
sudo service systemd-resolved restart
sudo rm -f /etc/resolv.conf
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf

