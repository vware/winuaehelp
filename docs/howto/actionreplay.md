# Set Up Action Replay

## Requirements

- You need an AR 1, AR 2 or 3 ROM (see below for rip
  instructions)
- Set path to Action Replay ROM in the [GUI](../gui/rom.md) as Cartridge ROM file.
- Freeze button = Page Up
- Don't use AR support to save game states, use the
  built-in state save option instead, it is much faster and
  more compatible.
- WARNING: Action Replay may have problems with fast Amigas
  or 68020+ CPUs, and the max supported FastRAM ram is
  4MB.

## ROM ripping instructions

Find an A500 with an Action replay-cartridge, press the
'freeze'-button, and enter the correct codes for the version of
AR you have.

### Action Replay 1

lord olaf&lt;RETURN>

### Action Replay 2 / 3

may&lt;RETURN>  
the&lt;RETURN>  
force&lt;RETURN>  
be&lt;RETURN>  
with&lt;RETURN>  
you&lt;RETURN>  
new&lt;RETURN> (AR 3 only)

### Writing the ROM to an empty Floppy

AR1: "sm ar1.rom,f00000 f10000"  
AR2: "sm ar2.rom,400000 420000"  
AR3: "sm ar3.rom,400000 440000"
