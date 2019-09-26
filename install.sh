#!/bin/bash
# This script will install the application for user "pi".
# If you have a different user change the user name!
RASPI_USER=pi

# install relevant python3 libraries
sudo apt-get update
sudo apt-get install -y python3-espeak
sudo apt-get install espeak
sudo apt-get install -y python3-netifaces

# remember current working directory
ORIG_DIR="$( pwd )"

# change to installation directory 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
path2RaspySay="/home/${RASPI_USER}/.raspySayIp4Addr/"

# copy the application into the user folder
mkdir $path2RaspySay
cp -r $DIR/* $path2RaspySay

# set automatic program call on system boot
line="@reboot sleep 30 && cd $path2RaspySay && ${path2RaspySay}run.sh"
(crontab -u $RASPI_USER -l; echo "$line" ) | crontab -u $RASPI_USER -

# change back to initial working directory
cd $ORIG_DIR
