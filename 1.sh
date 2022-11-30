#!/bin/bash
sudo nvidia-xconfig --enable-all-gpus
sudo nvidia-xconfig --cool-bits=28
sudo apt install -y python2.7
sudo systemctl mask apt-daily-upgrade.service
sudo systemctl disable apt-daily.timer
sudo systemctl mask apt-daily.service
