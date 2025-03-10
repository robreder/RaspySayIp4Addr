#!/bin/bash

# remember original audio output channel to set it back after running the script
origAudChan=$(pactl get-default-sink)
echo "Original channel is $origAudChan."

# set audio output to analog
pactl set-default-sink alsa_output.platform-bcm2835_audio.stereo-fallback

# start IP output on analog audio channel
python3 sayIp4Addr.py 2>/dev/null

# set back original audio output channel
pactl set-default-sink "$origAudChan"
