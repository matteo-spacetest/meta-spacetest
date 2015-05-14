#!/bin/sh

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

