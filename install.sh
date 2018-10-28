#!/bin/bash
sudo apt-get update
sudo apt install -y python3-espeak
sudo apt install -y python3-netifaces

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
path2RaspySay="/home/pi/RaspySayIp4Addr/"

mkdir $path2RaspySay
cp -r $DIR/* $path2RaspySay

line="@reboot sleep 30 && cd $path2RaspySay && $path2RaspySay/run.sh"
(crontab -u pi -l; echo "$line" ) | crontab -u pi -
