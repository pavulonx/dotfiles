#!/bin/sh

function displaytime {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  (( $D >= 1 )) && printf '%d days ' $D
  (( $H >= 1 )) && printf '%d hours ' $H
  (( $M >= 1 )) && printf '%d minutes ' $M
  (( $D > 0 || $H > 0 || $M > 0 )) && printf 'and '
  printf '%d seconds\n' $S
}

function  timetohome {
    while true; do
        printf "\033c"
        displaytime `awk '{print 8*60*60-($1)}' /proc/uptime`;
        sleep .9;
        done
}

