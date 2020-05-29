#!/bin/bash

function launch_polybar() {
  local location=$(dirname $0)
  source $location/util/log.sh
  source $location/util/secure_kill.sh

  secure_kill polybar

  polybar dummy &
  polybar main &
  xdo lower -N "Polybar"
  log "Polybar Launched"
}
