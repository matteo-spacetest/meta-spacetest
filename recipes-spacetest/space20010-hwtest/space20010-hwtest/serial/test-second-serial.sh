#!/bin/sh

function pause()
{
	read -p "$*"
}

SERIAL_TO_TEST=/dev/ttymxc2
CONSOLE_SERIAL=/dev/ttymxc3

clear
echo "Please connect the second serial to a serial monitor at 115200, 8N1."
pause "Press <Enter> to continue..."
echo "Configuring the second serial to 115200, 8N1."
stty -F $SERIAL_TO_TEST `stty -F $CONSOLE_SERIAL -g`
echo "Writing \"Hello, $SERIAL_TO_TEST!\" on the second signal: check that it appears on the serial monitor."
echo "Hello, $SERIAL_TO_TEST!" > $SERIAL_TO_TEST
pause "Press <Enter> to continue..."
echo "Now type something on the serial monitor, and check that it appears here in this terminal."
echo "(Then type CTRL+C in this terminal to finish.)"
cat $SERIAL_TO_TEST

