#!/bin/sh

BAR_HEIGHT=46  # polybar height
BORDER_SIZE=1  # border size from your wm settings
YAD_WIDTH=222  # 222 is minimum possible value
YAD_HEIGHT=193 # 193 is minimum possible value
DATE="$(LC_ALL=en_US.UFT-8 date +"%a %d.%m.%Y %H:%M")"

case "$1" in
--popup)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi

    eval "$(xdotool getmouselocation --shell)"
    eval "$(xdotool getdisplaygeometry --shell)"

    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons \
        --width="300" --height="$YAD_HEIGHT" --posx="-5" --posy="45" \
        --title="yad-calendar" --borders=0 >/dev/null &
    ;;
*)
    echo "$DATE"
    ;;
esac
