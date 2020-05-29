#!/bin/bash

function lauch_dwall() {
  local location=$(dirname $0)
  source $location/util/log.sh
  source $location/util/secure_kill.sh

  secure_kill dwall
  dwall -o street &
  log "Dwall Launched"
}
