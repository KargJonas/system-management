#!/bin/bash

txt_rst='\e[0m'
bak_red='\e[0;30m\e[41m'
bak_ylw='\e[0;30m\e[43m'
txt_red='\e[0;31m'

# Parameters:
#   file_name [string]
#   error_message [string]
#   exit [boolean] (optional)
function error() {
  echo -e "$bak_red ERROR $txt_rst in $bak_ylw $1 $txt_rst"
  echo -e "$txt_red╚═>$txt_rst $2"

  # Exit program if so desired
  if ( $3 == true ); then
    exit 1
  fi
}