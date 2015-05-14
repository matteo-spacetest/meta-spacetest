#!/bin/sh

# Enable job control.
set -m

function pause()
{
	read -p "$*"
}

SERIAL_TO_TEST=/dev/ttymxc2
CONSOLE_SERIAL=/dev/ttymxc3

clear

echo "*******************"
echo "*** SERIAL TEST ***"
echo "*******************"

echo
pause "Please connect the second serial in loopback and press <Enter>."

stty -F $SERIAL_TO_TEST -echo -onlcr

# Fork a listening process.
cat $SERIAL_TO_TEST > cat.out && sync &

# Write to the serial.
echo "Trying to write/read to/from $SERIAL_TO_TEST..."
sleep 1
echo "hello" > $SERIAL_TO_TEST
sleep 1
kill %1

TEXT=`cat cat.out`
echo
if [ $TEXT ] && [ $TEXT = "hello" ]; then
	echo "Test result: SUCCESS."
	rm cat.out
else
	echo "Test result: * * * FAIL * * *"
fi

