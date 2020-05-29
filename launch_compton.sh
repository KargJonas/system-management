#!/bin/bash
function launch_compton() {
  local location=$(dirname $0)
  source $location/util/log.sh
  source $location/util/secure_kill.sh

  secure_kill compton
  compton &
  log "compton Launched"
}
