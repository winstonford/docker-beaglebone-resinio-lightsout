#!/bin/bash

echo "ligthout.sh starting"

# Turn off heartbeat led lights
# Thanks to http://hoeckerson.de/notes/2014/07/stoppen-the-blinkenlights/

# For older distros

echo none > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger

# For new distros

echo none > /sys/class/leds/beaglebone\:green\:heartbeat/trigger
echo none > /sys/class/leds/beaglebone\:green\:mmc0/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger

# Turn off power led light.
# Thanks to http://beagleboard.narkive.com/hXsadizL/disable-the-power-led

i2cset -f -y 0 0x24 0x0B 0x6e
i2cset -f -y 0 0x24 0x13 0x23
i2cset -f -y 0 0x24 0x0B 0x6e
i2cset -f -y 0 0x24 0x13 0x23

echo "lightout.sh ending"
