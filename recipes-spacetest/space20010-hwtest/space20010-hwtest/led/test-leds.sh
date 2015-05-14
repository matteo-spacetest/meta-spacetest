#!/bin/sh

function pause()
{
	read -p "$*"
}

clear

echo "****************"
echo "*** LED TEST ***"
echo "****************"

echo
pause "Press <Enter> to turn GREEN led OFF."
echo 0 > /sys/class/leds/green/brightness
pause "Press <Enter> to turn GREEN led ON."
echo 1 > /sys/class/leds/green/brightness
pause "Press <Enter> to turn RED led ON."
echo 1 > /sys/class/leds/red/brightness
pause "Press <Enter> to turn RED led OFF."
echo 0 > /sys/class/leds/red/brightness

# TODO: one LED is missing for a hw bug!

echo
echo "Test finished."

