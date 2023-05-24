#!/usr/bin/env sh

n=$(checkupdates | wc -l)
if [ "$n" != "0" ]; then
	#notify-send "Pacman Update" "$n update available!" && paplay ~/.local/share/sounds/complete.oga
	notify-send "Pacman Update" "$n update available!" 
fi
