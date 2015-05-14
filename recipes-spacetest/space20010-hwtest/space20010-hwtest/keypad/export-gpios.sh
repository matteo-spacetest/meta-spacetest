#!/bin/sh

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

echo out > its1-dir
echo out > its2-dir
echo out > its3-dir
echo out > its4-dir
echo out > its5-dir

echo 0 > its1
echo 0 > its2
echo 0 > its3
echo 0 > its4
echo 0 > its5

