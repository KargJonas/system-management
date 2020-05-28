#!/bin/bash
location=$(dirname $0)
source $location/log.sh

log "[CONTEXT] launch-dwall.sh"
log "Stopping Dwall"

killall -9 dwall
while pgrep -x dwall > /dev/null; do sleep 1; done

log "Launching Dwall"

dwall -o street &

log "Dwall Launched"