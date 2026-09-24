# Speed

On a sufficiently powerful PC, UAE will give you quite an
authentic flashback into the past.

Use the tips below to maximize the performance of your
emulated Amiga.

## Memory

As a rule of thumb, WinUAE needs 60+Z3+Chip+Fast+Picasso96
MB of system memory. Memory is allocated dynamically. This
means you can select 512MB Z3 memory, which will only be used
when needed.  
Make sure that the used RAM on your computer is always well
below the amount of physical memory it has, otherwise the
operating system has to swap the data to the hard disk if it
runs out of RAM, which is a huge performance hit.  
Also try to activate "Suspend to Disk" mode. If you do, do not
forget to use the [timehack](amigaprogs.md) to set
the Amiga clock to a correct value.

## Picasso96

When using Workbench, it is strongly recommended to make use
of WinUAE's Picasso96 support. Using this, you can utilize the
power of your computer's graphics card to display higher
resolutions, more colors, and give all graphics output a
significant speedup.  

Read more details about the correct usage on the [Picasso96 page](../howto/picasso.md).

## AHI

Again, if you are using the Workbench, it is recommended to
use AHI as your preferred sound interface.  
For a further speedup, use [ahitweak](amigaprogs.md). Increase the poll rate (the rate
WinUAE checks for sound buffers). You may also try to adjust
the sound buffer size in the [Sound](../gui/sound.md) tab.

## Hardfiles

It is recommended to install the AmigaOS and programs on a
hardfile, so the access and backup can be done quickly. To
store pictures and other data, you may use a Windows directory
for easier data exchange with the PC.  
Transferring data from/to a hardfile can done by simply copying
it, so you don't have to install all your Amiga stuff
again.
