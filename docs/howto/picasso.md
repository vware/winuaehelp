# Picasso96

Emulating the [Custom
Chipset](../background/custchips.md) is comparatively slow; instead, you can use the
PC's graphics card. This also gives access to higher
resolutions and better color modes.

## Set Up

- To use this feature, you must select at least a 68020 CPU
  with a 32 bit address space in the [CPU](../gui/cpu.md) tab. You also need a Kickstart 3.x ROM.
- To specify how much graphics memory you want to emulate,
  set the **VRAM size** on the [RTG Board](../gui/rtgboard.md) tab.
- Make sure Full Screen RTG is enabled on the [Display](../gui/display.md) tab.

Then, you need the [Picasso
96 software](../links.md#essential) which is not distributed with WinUAE. Version
1.31 or higher is recommended. Once the software is installed
on the emulated Amiga, it must be rebooted. After that new
display modes will be available - which are identified as
*uaegfx* - from the ScreenModes program on the
Amiga.

## Troubleshooting

- Currently only Permedia 2 and Voodoo cards are compatible
  with the Warp3D driver software for 3D games on the
  Amiga.
