#!/bin/bash
# Dependencies:
# - tput

location=$(dirname $0)
source $location/config

DISPLAY=cat
if [ "$RAINBOW" = true ]; then
  DISPLAY=lolcat
fi

if [ "$(tput cols)" -gt "93" ]; then
  $DISPLAY /home/jonas/.config/greeting.txt
else
  $DISPLAY /home/jonas/.config/greeting-small.txt
fi
