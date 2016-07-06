# Lights Out

A simple Resin.io app that turns off the led lights on a beaglebone black running Resin os and Docker.

## What

During boot up, the led lights follow the normal solid on power and blinking heartbeat pattern, but once the app fires the script, the led lights go dark. 

The script sets triggers in the device tree, and sets registers visible through the I2c bus.

## Why

If you've ever seen a beaglebone black at night, you'll know why you're reading this.  It's like lightning during a thunderstorm, only brighter. 

Another reason to turn off the led lights is to save power.  

## How

There's nothing to do with the app.  It just works.  For me at least.

## Troubleshooting

## To Do

1. Test to see how much power saved: Run two bones side by side, one with lights on, other with them off.  Log watt hours over 24 hour period.

1. Figure out how to turn off led lights on the usb wifi dongle.

https://www.topbug.net/blog/2015/01/13/control-the-led-on-a-usb-wifi-adapter-on-linux/



```
root@beaglebone-93a5db:/# lsusb
Bus 001 Device 007: ID 7392:7811 Edimax Technology Co., Ltd EW-7811Un 802.11n Wireless Adapter [Realtek RTL8188CUS]
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

```


## Notes

The led lights do serve a purpose. I have noticed that when a beaglebone locks up and becomes unreachable, the heartbeat is gone and 2 of the 4 leds are on solid.    I have also observed this same light pattern when the voltage dips below about 4.85, and the device locks up.  In the event of recurring freezes, let the led lights signal normally, run power through a usb meter, and watch for voltage above or below 5 volts. The spec is something like 5 volts +/- 0.25.

## Disclaimer

"i2cset can be extremely dangerous... may DESTROY your memory, leaving your system unbootable!  Be extremely careful using this program."

- Frodo (yes Frodo, he wrote ic2set.)


