#!/bin/bash
location=$(dirname $0)
source $location/util/log.sh
source $location/config

source $location/launch_compton.sh
source $location/launch_dwall.sh
source $location/launch_polybar.sh
source $location/wallpaper.sh

# A couple notes / coding paradigms for this project:
# - Each file should be executable individually, meaning:
#     Dependencies / Varaible decalatations must be made inside each file
# - Each feature should be countained within it's own function

# Pipe output of script into log file using:
# (./script.sh &) >> $location/logs/log.txt 2>&1

if ( $CLEAR_LOGS == true      ); then log "Logs have been cleared" > logs/log.txt; fi
if ( $START_COMPTON == true   ); then launch_compton;         fi
if ( $START_DWALL == true     ); then launch_dwall;           fi
if ( $START_POLYBAR == true   ); then launch_polybar;         fi
if ( $START_WALLPAPER == true ); then wallpaper;              fi