#!/bin/bash

# Jonas Karg 2019

# Brightness  Commands:
# <number>    : xrandr --output $brightness <number>/100
# max         : amixer -D pulse sset Master 0%

brightness=$1
screen="eDP-1"

b_info() {
  echo "Sys: Brightness set to $1%"
}

if [ $brightness -eq $brightness 2> /dev/null ]; then
	# Brightness is a number
	if [[ $(($brightness)) -gt 19 && $(($brightness)) -lt 150 ]]; then
		xrandr --output $screen --brightness $(bc -l <<< "$brightness/100")
    # xbacklight -set $brightness
    b_info $brightness
  else
		echo "You won't be able to see anything if then monitor brightness is lower than 20% or higher than 150%"
	fi

else
	# Brightness is NaN
	case $brightness in
		"max")
			xrandr --output $screen --brightness 1
      b_info 100
      ;;

		"min")
			xrandr --output $screen --brightness 0.2
      b_info 20
      ;;
	esac
fi
