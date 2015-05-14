#!/bin/sh

function pause()
{
	read -p "$*"
}

I2CBUS=1

FRONT_CAM_I2C_ADDR=0x5d
REAR_CAM_I2C_ADDR=0x48

clear

echo "******************************"
echo "*** CAMERA CONNECTION TEST ***"
echo "******************************"

echo
pause "Press <Enter> to dump the registers of the \"front\" camera."
echo
i2cdump -y $I2CBUS $FRONT_CAM_I2C_ADDR w

echo
echo "If the first and last values are \"0118\", this test has succeeded"
echo "Otherwise, this test has failed."

echo
pause "Press <Enter> to continue."

clear

echo "******************************"
echo "*** CAMERA CONNECTION TEST ***"
echo "******************************"

echo
pause "Press <Enter> to dump the registers of the \"rear\" camera."
echo
i2cdump -y $I2CBUS $REAR_CAM_I2C_ADDR w

echo
echo "If the first and last values are \"0118\", this test has succeeded"
echo "Otherwise, this test has failed."

echo
echo "Test finished."

