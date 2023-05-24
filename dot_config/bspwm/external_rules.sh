#!/usr/bin/env sh

wid=$1
class=$2
instance=$3
cons=$4

if [[ $2 =~ "steam_app_.*" ]]; then
  dunstctl set-paused true
  echo "desktop=$(bspc query -D -d 'next.!occupied')"
  echo "follow=on"
fi
