#!/bin/bash

function secure_kill() {
  log "stopping $1"

  killall -9 $1
  while pgrep -x $1 >/dev/null; do sleep 1; done

  log "$1 stopped"
}
