#!/bin/sh

function pause()
{
	read -p "$*"
}

FRONT_EEPROM=/sys/bus/i2c/devices/1-0055/eeprom
REAR_EEPROM=/sys/bus/i2c/devices/1-0054/eeprom

clear

echo "******************************"
echo "*** EEPROM CONNECTION TEST ***"
echo "******************************"

echo
pause "Press <Enter> to dump the registers of the \"front\" EEPROM."
echo
hexdump $FRONT_EEPROM

echo
pause "Press <Enter> to continue."

clear

echo "******************************"
echo "*** EEPROM CONNECTION TEST ***"
echo "******************************"

echo
pause "Press <Enter> to dump the registers of the \"rear\" EEPROM."
echo
hexdump $REAR_EEPROM

echo
echo "Test finished."

