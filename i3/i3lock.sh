#!/bin/bash

PICTURE=/tmp/i3lock.png
SCREENSHOT="scrot $PICTURE"
PID="pgrep zenity"
BLUR="70x52"
#WARNING='zenity --warning --text=Going_to_Sleep'

$SCREENSHOT 
#$WARNING;$PID; sleep 3 ;kill $PID

convert $PICTURE -blur $BLUR $PICTURE
i3lock -i $PICTURE -f -e

rm $PICTURE 

#sleep 3m
# systemctl sleep
#xbacklight -inc 20%
#PICTURE = /usr/share/backgrounds/wallpapers-2018/mountains-1412683.png
#xbacklight -dec 20%
