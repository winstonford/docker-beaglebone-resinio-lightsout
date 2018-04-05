#!/bin/bash

echo "/usr/src/app/lightsout.sh starting"

echo "Turn off heartbeat led lights"
echo "Thanks to http://hoeckerson.de/notes/2014/07/stoppen-the-blinkenlights/"


# For older 

echo none > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger

# For newer

echo none > /sys/class/leds/beaglebone\:green\:heartbeat/trigger
echo none > /sys/class/leds/beaglebone\:green\:mmc0/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger

sleep 2s

echo "Turn off power led light."
echo "Thanks to http://beagleboard.narkive.com/hXsadizL/disable-the-power-led"

i2cset -f -y 0 0x24 0x0B 0x6e
i2cset -f -y 0 0x24 0x13 0x23
i2cset -f -y 0 0x24 0x0B 0x6e
i2cset -f -y 0 0x24 0x13 0x23

echo "/usr/src/app/lightsout.sh ending"
