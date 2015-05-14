#!/bin/sh

function pause()
{
	read -p "$*"
}

clear

echo "*****************"
echo "*** WIFI TEST ***"
echo "*****************"
echo

OUTPUT_FILE=with-wlan0.html

rm -f $OUTPUT_FILE

if stat /var/run/wpa_supplicant/wlan0 > /dev/null 2>&1; then
	echo "Wifi already initialized."
else
	ifconfig wlan0 up
	wpa_supplicant -iwlan0 -Dwext -c/etc/wpa_supplicant.conf -B
	udhcpc -iwlan0
fi

ETH0_GW_IP=`route -n | awk 'NR == 3 { print $2 }'`
WIFI_GW_IP=`route -n | awk '/wlan0/ { print $1 }' | awk 'END {print substr($1, 0, length($1) - 1)}'`1
route del default gw $ETH0_GW_IP
route add default gw $WIFI_GW_IP

wget google.com -O $OUTPUT_FILE

echo
if stat $OUTPUT_FILE > /dev/null 2>&1; then
	echo "Test result: SUCCESS."
	rm $OUTPUT_FILE
else
	echo "Test result: * * * FAIL * * *"
fi

