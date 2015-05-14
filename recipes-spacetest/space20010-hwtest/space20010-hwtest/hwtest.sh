function pause()
{
	read -p "$*"
}

clear

CURDIR=`pwd`
HWTEST_DIR=.

cd $HWTEST_DIR/i2c-camregs
./test-camregs.sh
cd $CURDIR
pause "Press <Enter> to continue."

cd $HWTEST_DIR/i2c-eeprom
./test-eeprom.sh
cd $CURDIR
pause "Press <Enter> to continue."

cd $HWTEST_DIR/keypad
./test-keypad.sh
cd $CURDIR
pause "Press <Enter> to continue."

cd $HWTEST_DIR/led
./test-leds.sh
cd $CURDIR
pause "Press <Enter> to continue."

cd $HWTEST_DIR/serial
./serial-loopback-test.sh
cd $CURDIR
pause "Press <Enter> to continue."

cd $HWTEST_DIR/wifi
./test-wifi.sh
cd $CURDIR
pause "Press <Enter> to continue."

