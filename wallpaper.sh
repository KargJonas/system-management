#!/bin/bash

function wallpaper() {
  local location=$(dirname $0)
  source $location/config
  source $location/util/error.sh

  # Use config by default
  image_location=$WALLPAPER_DIR/$WALLPAPER

  # Use file name if provided
  if [ ! -z $1 ]; then
    image_location=$WALLPAPER_DIR/$1
  fi

  # Validate the input file
  if (! test -f "$image_location"); then
    error $0 "File does not exist: $image_location" true
  fi

  # Set the background
  exec feh --bg-scale $image_location
}
