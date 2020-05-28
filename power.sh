#!/bin/bash

# Jonas Karg 2019

command=$1

p_info() {
  echo "Sys: $1 ..."
}

case $command in
  "poweroff"|"p")
    p_info "Powering off"
    poweroff
    # shutdown
    ;;

  "reboot"|"r")
    p_info "Rebooting"
    reboot
    ;;

  "suspend"|"sleep"|"s")
    p_info "Going to sleep"
    systemctl suspend
    ;;

  "exit"|"ex"|"e")
    p_info "Exiting i3"
    i3-msg exit
    ;;

  "lock"|"glitchlock"|"gl"|"l")
    p_info "Locking i3"
    exec /home/jonas/Programs/glitchlock/glitchlock.sh
    ;;
esac
