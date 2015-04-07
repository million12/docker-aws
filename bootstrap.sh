#!/bin/sh

set -u
# User params
USER_COMMAND=$@

#######################################
# Echo/log function
# Arguments:
#   String: value to log
#######################################
log() {
  if [[ "$@" ]]; then echo "[`date +'%Y-%m-%d %T'`] $@";
  else echo; fi
}

# Start Program
log $USER_COMMAND
$USER_COMMAND