#!/bin/bash
#Turn backlight brightness down
currentBrightness=$(cat "/sys/class/backlight/intel_backlight/brightness")
newBrightness=$(($currentBrightness - 50))

if [[ $newBrightness<0 ]]; then
	echo 1 | tee /sys/class/backlight/intel_backlight/brightness
else
	echo $newBrightness | tee /sys/class/backlight/intel_backlight/brightness
fi
