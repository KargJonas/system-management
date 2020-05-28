#!/bin/bash
source ./error.sh

WALLPAPER_DIR=/home/jonas/Pictures/wallpapers

for last_argument; do true; done
image_location=$WALLPAPER_DIR/$last_argument

if ( ! test -f "$image_location" ) then
  error $0 "File does not exist: $image_location" true
fi

exec feh --bg-scale $image_location