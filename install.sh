#!/bin/bash
sudo apt-get update
apt install python3-espeak

path2RaspySay="/path/to/RaspySayIp4Addr/"
line="@reboot sleep 30 && cd $path2RaspySay && $path2RaspySay/run.sh"
(crontab -u pi -l; echo "$line" ) | crontab -u pi -
