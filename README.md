# RaspySayIp4Addr
The idea of this project was to add an audio output of the actual IP-V4 address on booting a raspberry pi computer.
Often when I use my raspberry pis for development I do not add a monitor to the raspberry pi and I just want to work with an external
ssh client.
But then I do not know the IP of this device. Of course there are also other possibilities to find that out (e.g. install fing on my laptop )

With this sollution I will add a small software that will tell me on the audio out what the current IP addresses are.

## Installation
Download the whole project (e.g. via zip file from the browser).
Run the file install.sh.
This will automatically add a call to the script run.sh to the cron-jobs with "reboot" option.
So whenever the raspby will be booted it will tell you the actual IP-addresses.

Have fun!