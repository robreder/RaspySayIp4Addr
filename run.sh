#!/bin/bash

# remember original audio output channel to set it back after running the script
origAudChan=`amixer cset numid=3 | grep ": values=" | cut -d= -f2`
analogChan=1
echo "Original channel is $origAudChan ."
# set audio output to analog
amixer cset numid=3 $analogChan

# start IP output on analog audio channel
python3 sayIp4Addr.py 2>/dev/null

# set back original audio output channel
amixer cset numid=3 $origAudChan
