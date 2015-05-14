#!/bin/sh

echo 116 > /sys/class/gpio/export
echo  87 > /sys/class/gpio/export
echo 144 > /sys/class/gpio/export
echo 112 > /sys/class/gpio/export
echo 139 > /sys/class/gpio/export
echo 135 > /sys/class/gpio/export
echo 133 > /sys/class/gpio/export
echo 126 > /sys/class/gpio/export
echo 124 > /sys/class/gpio/export
echo 114 > /sys/class/gpio/export
echo   3 > /sys/class/gpio/export
echo   6 > /sys/class/gpio/export
echo   9 > /sys/class/gpio/export

echo out > /sys/class/gpio/gpio116/direction
echo out > /sys/class/gpio/gpio87/direction
echo out > /sys/class/gpio/gpio144/direction
echo out > /sys/class/gpio/gpio112/direction
echo out > /sys/class/gpio/gpio139/direction
echo out > /sys/class/gpio/gpio135/direction
echo out > /sys/class/gpio/gpio133/direction
echo out > /sys/class/gpio/gpio126/direction
echo out > /sys/class/gpio/gpio124/direction
echo out > /sys/class/gpio/gpio114/direction
echo out > /sys/class/gpio/gpio3/direction
echo out > /sys/class/gpio/gpio6/direction
echo out > /sys/class/gpio/gpio9/direction

ln -s /sys/class/gpio/gpio116/value nu1
ln -s /sys/class/gpio/gpio87/value nu2
ln -s /sys/class/gpio/gpio144/value nu3
ln -s /sys/class/gpio/gpio112/value nu4
ln -s /sys/class/gpio/gpio139/value nu5
ln -s /sys/class/gpio/gpio135/value nu6
ln -s /sys/class/gpio/gpio133/value nu7
ln -s /sys/class/gpio/gpio126/value nu8
ln -s /sys/class/gpio/gpio124/value nu9
ln -s /sys/class/gpio/gpio114/value nu10
ln -s /sys/class/gpio/gpio3/value nu11
ln -s /sys/class/gpio/gpio6/value nu12
ln -s /sys/class/gpio/gpio9/value nu13

echo 0 > nu1
echo 1 > nu2
echo 0 > nu3
echo 0 > nu4
echo 0 > nu5
echo 0 > nu6
echo 0 > nu7
echo 0 > nu8
echo 0 > nu9
echo 0 > nu10
echo 0 > nu11
echo 0 > nu12
echo 0 > nu13

