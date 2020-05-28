#!/bin/bash
location=$(dirname $0)
source $location/log.sh

log "[CONTEXT] launch-compton.sh"
log "Stopping Compton"

killall -9 compton
while pgrep -x compton > /dev/null; do sleep 1; done

log "Launching Compton"

compton &

log "Compton Launched"