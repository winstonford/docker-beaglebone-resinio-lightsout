# Light Out

A dead simple resin.io app that turns off the led lights on a beaglebone black running docker.

## What

Set triggers in the device tree, and set registers visible through the I2c bus.

## Why

If you've ever seen a beaglebone black at night, you'll know why you're reading this.  It's like lightning during a thunderstorm, only brighter. 

Another reason to turn off the led lights is to save power.  

## How

There's nothing to do with the app.  It just works.  For me at least.

## Troubleshooting

## To Do

1. Test to see how much power saved: Run two bones side by side, one with lights on, other with them off.  Log watt hours over 24 hour period.

1. Figure out how to turn off led lights on the usb wifi dongle.


## Notes

## Disclaimer

"i2cset can be extremely dangerous... may DESTROY your memory, leaving your system unbootable!  Be extremely careful using this program."

- Frodo (yes Frodo, he wrote ic2set.)


