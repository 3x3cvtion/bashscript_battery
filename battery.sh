#!/bin/sh

battery_level="$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk 'NF{print $NF}' | tr -d '%' )"

if [ $battery_level -ge 80 ] && [ $battery_level -le 100 ]; then 
    echo "%{F#46ff33} %{F#ffffff}$battery_level%%{u-}"
elif [ $battery_level -ge 40 ] && [ $battery_level -lt 80 ]; then 
    echo "%{F#00ca9c} %{F#ffffff}$battery_level%%{u-}"
elif [ $battery_level -ge 20 ] &&  [ $battery_level -lt 40 ]; then 
    echo "%{F#fff402} %{F#ffffff}$battery_level%%{u-}"
else
    echo "%{f#ff0202} %{F#ffffff}$battery_level%%{u-}"
fi




