#!/usr/bin/env sh

IFS='x+' read -ra rect < <(slop -b 5 -l -c 0.3,0.4,0.6,0.4)
bspc node -t floating # when using bspwm
xdotool getwindowfocus windowsize "${rect[0]}" "${rect[1]}" windowmove "${rect[2]}" "${rect[3]}"
