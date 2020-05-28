#!/bin/bash
location=$(dirname $0)
source $location/log.sh
source $location/config

log ""
log "[CONTEXT] launch-compton.sh"

if ( $START_COMPTON == true ); then source $location/launch-compton.sh; fi
if ( $START_DWALL == true   ); then source $location/launch-dwall.sh;   fi
if ( $START_POLYBAR == true ); then source $location/launch-polybar.sh; fi
# if ( START_WALLPAPER == true ); then source $location/wallpaper.sh fi
