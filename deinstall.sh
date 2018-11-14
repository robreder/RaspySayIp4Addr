#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd ~
path2RaspySay="/home/${RASPI_USER}/.raspySayIp4Addr/"



# delete crontab line of script
line=`(crontab -u pi -l | grep $path2RaspySay)`
echo -n "Removing line '${line}' from automatic cronjobs."
(crontab -u pi -l | grep -v $path2RaspySay ) | crontab -u pi -
echo " - done"
echo "-------"

#mkdir $path2RaspySay
echo "!! Are you sure you want to delete following folder to deinstall this app?"
echo "You can remove the folder $path2RaspySay later."
rm -r -I $path2RaspySay
echo "Deinstallation completed!"
