#!/bin/bash
sudo nvidia-xconfig --enable-all-gpus
sudo nvidia-xconfig --cool-bits=28
sudo apt install -y python2.7
sudo systemctl mask apt-daily-upgrade.service
sudo systemctl disable apt-daily.timer
sudo systemctl mask apt-daily.service
free -h
lsblk
nvidia-smi -q | grep pcie -i -A 5
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
wget https://vast.ai/install -O install; sudo python2.7 install f8f04c98739d2c5051c30a3b9a0c65c165e50fd3c08b47a53e9a69b714fd0b04; history -d $((HISTCMD-1));
