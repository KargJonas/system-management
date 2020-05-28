#!/bin/bash
location=$(dirname $0)

function log() {
  local timestamp=$(date +"%Y.%m.%d-%H:%M:%S")
  echo "[$timestamp] $1"
}