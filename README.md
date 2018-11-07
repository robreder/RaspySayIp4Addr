# RaspySayIp4Addr
Welcome to the project RaspySayIp4Addr.
This project is mainly thougth to be used on raspberry pis as for me this is the main use case. But if you would use such a solution on an other linux system fill free to use it there.
I will be glad if I get some inputs from you. So whenever you would have an idea to change this solution write me a note.
# Idea of the solution
The idea of this project was to add an audio output of the actual IP-V4 address on booting a raspberry pi computer.
Often when I use my RASPBERRY PIs for development I do not add a monitor to the raspberry pi and I just want to work with an external ssh client.
But then I do not know the IP of this device. Of course there are also other possibilities to find this information (e.g. install fing on my laptop )  

But with this solution I will only add a small software that will tell me on the audio port what the current IP addresses are. I just need an ear plug.
The solution uses python3.

## Installation
Download the whole project (e.g. via zip file from the browser).
Run the file install.sh.
This will automatically copy the files to a specific folder on /home/pi/ and add a call to the script run.sh to the cron-jobs with "@reboot" option.
So whenever the raspby will be booted it will tell you the actual IP-addresses after 30 seconds.

## Testing
You can test the output by running the script "run.sh".

Have fun!

## Important to know
Today (2018.11.07) I learned that older versions of raspbian do not work with python3-espeak and python3-netifaces. Until now I do not have the plan to port this solution down to older versions of raspbian. But actually I think it could also run with modifications on the scripts on python2 with python-espeak and python-netifaces.
