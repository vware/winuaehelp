# Install AmigaOS 3.5/3.9

## Requirements

It is only allowed to either use OS3.5 or 3.9 on 1 Computer
at the same time. Read the license carefully.  
Booting off any Workbench ADF should be sufficient to install
AmigaOS 3.5 or 3.9, make sure you have correct access to your
CD-ROM drive (see below).  
To install AmigaOS versions 3.5 and 3.9, you have to make sure
you set the following options:

- CPU emulation set to 68020
- Kickstart ROM version 3.1
- Sound emulation enabled

## Prepare emergency disk for CD-ROM access

Here we go:

1. Boot your emulated Amiga with WinUAE and "insert" the ADF
   in a floppy drive
2. Open the file devs/dosdrivers/emergency\_CD on the disk
   with a texteditor
3. Change the line device = "xxxxxx" to device =
   "uaescsi.device"
4. Change UnitNum if needed
5. Change the text MaxTransfer = xxxxxxx to MaxTransfer =
   0xFFFF  
   If you get read/write errors from CD use a value of 0x1FFF
   instead
6. Save the changed file to disk

## Crashes during install?

Try changing the Sound options to a better level, e.g. 16
bit and 44.1 kHz; change the CPU settings to adjustable and
level 1. Alternatively, remove the references to playing sounds
(such as the clapping noise) from the installer script if you
know what you are doing.  
There is an update available for AmigaOS 3.9 called a *Boing
Bag* and to get it to install on WinUAE you need a patch
available from [Amiga,
Inc](../links.md#original).

## Installing OS3.9 using an AmiKit installation

If you don't have [AmiKit](../links.md#tools),
it is recommended to install it. This is the fastest way to get
a working OS 3.9 installation.

1. Boot from Host machine
2. Copy kick.rom to AmiKit/ROMs folder
3. Optionally, copy Picasso96.lha to AmiKit/RabbitHole
   folder
4. Insert the OS 3.9 CD
5. Run Amikit.exe program and click Configure to import
   AmigaOS files
6. Select 1366x768 32bit screen mode

**Hint:** If you get CD read errors you need
reduce the max transfer rate in your CD-ROM driver
settings.
