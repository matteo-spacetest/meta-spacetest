#!/bin/sh

function pause()
{
	read -p "$*"
}

DELAY=2
CNT_R=1
CNT_Y=1
CNT_K=1
CNT_B=1
CNT_G=1

echo 142 > /sys/class/gpio/export
echo  71 > /sys/class/gpio/export
echo  51 > /sys/class/gpio/export
echo  80 > /sys/class/gpio/export
echo 143 > /sys/class/gpio/export

ln -s /sys/class/gpio/gpio142/value its1
ln -s /sys/class/gpio/gpio71/value  its2
ln -s /sys/class/gpio/gpio51/value  its3
ln -s /sys/class/gpio/gpio80/value  its4
ln -s /sys/class/gpio/gpio143/value its5

ln -s /sys/class/gpio/gpio142/direction its1-dir
ln -s /sys/class/gpio/gpio71/direction  its2-dir
ln -s /sys/class/gpio/gpio51/direction  its3-dir
ln -s /sys/class/gpio/gpio80/direction  its4-dir
ln -s /sys/class/gpio/gpio143/direction its5-dir

echo in > its1-dir
echo in > its3-dir
echo in > its5-dir

echo out > its2-dir
echo out > its4-dir

clear

echo "**************************"
echo "*** 5-KEYS KEYPAD TEST ***"
echo "**************************"

echo
echo "Press keys on the 5-keys keypad (CTRL+C to exit)."
echo "Test the (R)ed, (Y)ellow, blac(K), (B)lue and (G)reen keys."
echo

trap ctrl_c INT

function ctrl_c() {

	rm its1-dir
	rm its2-dir
	rm its3-dir
	rm its4-dir
	rm its5-dir

	rm its1
	rm its2
	rm its3
	rm its4
	rm its5

	echo 142 > /sys/class/gpio/unexport
	echo  71 > /sys/class/gpio/unexport
	echo  51 > /sys/class/gpio/unexport
	echo  80 > /sys/class/gpio/unexport
	echo 143 > /sys/class/gpio/unexport

	echo	
	echo "Test finished."
	exit 0

}

while true; do

	if [ `cat its1` -eq 0 ]; then
		CNT_K=`expr $CNT_K - 1`
		if [ $CNT_K -eq 0 ]; then
			CNT_K=$DELAY
			echo -n "K "
		fi
	fi

	echo 1 > its4
	echo 0 > its2
	if [ `cat its3` -eq 0 ]; then
		CNT_G=`expr $CNT_G - 1`
		if [ $CNT_G -eq 0 ]; then
			CNT_G=$DELAY
			echo -n "G "
		fi
	fi
	if [ `cat its5` -eq 0 ]; then
		CNT_R=`expr $CNT_R - 1`
		if [ $CNT_R -eq 0 ]; then
			CNT_R=$DELAY
			echo -n "R "
		fi
	fi

	echo 1 > its2
	echo 0 > its4
	if [ `cat its3` -eq 0 ]; then
		CNT_B=`expr $CNT_B - 1`
		if [ $CNT_B -eq 0 ]; then
			CNT_B=$DELAY
			echo -n "B "
		fi
	fi
	if [ `cat its5` -eq 0 ]; then
		CNT_Y=`expr $CNT_Y - 1`
		if [ $CNT_Y -eq 0 ]; then
			CNT_Y=$DELAY
			echo -n "Y "
		fi
	fi

done

