upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|time|percentage" | awk 'NR 1 {print $2 " " $3 " " $4" " $5 " " $6} '
