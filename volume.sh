#!/bin/bash

# Jonas Karg 2019

# Volume Commands:
# <number>    : amixer -D pulse sset Master <number>%
# up          : amixer -D pulse sset Master 10%+
# down|dw     : amixer -D pulse sset Master 10%-
# mute|mt     : amixer -D pulse sset Master 0%

volume=$1

v_info() {
  echo "Sys: Volume set to $1%"
}

if [ $volume -eq $volume 2> /dev/null ]; then
	# Volume is a number
  $(pactl set-sink-volume 0 $volume%)
  v_info $1
else
	# Volume is NaN
	case $volume in
		"up")
      pactl set-sink-volume 0 +5%
      v_info "+10"
			;;

		"down"|"dw")
      pactl set-sink-volume 0 -5%
      v_info "-10"
			;;

		"mute"|"min"|"mt")
      pactl set-sink-volume 0 0%
			v_info "0"
      ;;
	esac
fi