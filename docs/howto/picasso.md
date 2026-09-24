# Picasso96

Emulating the [Custom
Chipset](../background/custchips.md) is comparatively slow, instead, you can use the
PC's graphics card. This also gives access to higher
resolutions and better color modes.

## Set Up

- To use this feature, you must select at least a 68020 CPU
  with a 32 bit address space in the [CPU](../gui/cpu.md) tab. You also need a Kickstart 3.x ROM.
- To specify how much graphics memory you want to emulate,
  you must adjust the RTG in the [RAM](../gui/ram.md) tab.
- Make sure Full Screen RTG is enabled on the [Display](../gui/display.md) tab.

Then, you need the [Picasso
96 software](../links.md#essential) which is not distributed with WinUAE. Version
1.31 or higher is recommended. Once the software is installed
on the emulated Amiga, it must be rebooted. After that new
display modes will be available - which are identified as
*uaegfx* - from the ScreenModes program on the
Amiga.

## Maximize Stability and Performance

Make sure you utilize the latest rtg.library which is
located in the [Amiga
Programs](../emulation/amigaprogs.md) folder of your WinUAE installation. You have to
copy that file into the following directory on your Workbench
drive: *libs:picasso96*.  
Start the program p96\_uae\_tweak from the Amiga Programs folder
if you notice large slowdown when 16bit AHI is activated.

## Trouble Shooting

- Currently only Permedia 2 and Voodoo cards are compatible
  with the Warp3D driver software for 3D games on the
  Amiga.
- If you get no Picasso screens larger than 1024x768 in
  32bit, you have to copy picasso96fix from the [Amiga Programs](../emulation/amigaprogs.md) directory to
  a drive in your emulated Amiga, and load it in the
  startup-sequence before the LoadWB command.
