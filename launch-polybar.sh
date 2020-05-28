#!/bin/bash
location=$(dirname $0)
source $location/log.sh

log "[CONTEXT] launch-polybar.sh"
log "Stopping Polybar"

killall -9 polybar
while pgrep -x polybar > /dev/null; do sleep 1; done

log "Polybar Stopped"

# (polybar dummy &) >> $location/logs/log.txt 2>&1
# (polybar main &) >> $location/logs/log.txt 2>&1
polybar dummy &
polybar main &

xdo lower -N "Polybar"
log "Polybar Launched"