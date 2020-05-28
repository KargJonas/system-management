#!/bin/bash

# Jonas Karg 2019

# System Commands
#	volume|vol|v
# brightness|brgt|b

command=$1
location=$(dirname $0)

case $command in
	"volume"|"vol"|"v")
		source $location/volume.sh $2
		;;

	"brightness"|"brgt"|"b")
		source $location/brightness.sh $2
		;;

	"power"|"pwr"|"p")
		source $location/power.sh $2
		;;

  "wallpaper"|"wall"|"wp"|"w")
    source $location/wallpaper.sh $2
esac