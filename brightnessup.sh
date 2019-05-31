#!/bin/bash
#Turn backlight brighness up
currentBrightness=$(cat "/sys/class/backlight/intel_backlight/brightness")
newBrightness=$(($currentBrightness + 50))

if [[ $newBrightness>937 ]]; then
	echo 937 | tee /sys/class/backlight/intel_backlight/brightness
else
	echo $newBrightness | tee /sys/class/backlight/intel_backlight/brightness
fi
