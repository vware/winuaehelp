# Info for First Time Users

## Introduction

WinUAE essentially simulates the Amiga hardware on other
computers. Just like a real Amiga, it needs a [Kickstart](../background/kickst.md) and Workbench to
function. Please read the [Requirements](require.md) for information about what these
are and how to obtain them.  
Several Amiga models have been released over the years, hence
the complexity of WinUAE: it can emulate everything from the
first A1000 right up to the A4000 and even the CD32 gaming
console. So you need to know a little about how to configure
WinUAE to emulate a specific Amiga model with their small
variations in specifications such as memory, CPU, custom
chipset, etc.

## Basics

The first screen when running WinUAE is the Quickstart
section, which offers you an extremely easy way to configure
your emulated Amiga. Just select the desired Amiga model you
have a [Kickstart ROM](../background/kickst.md)
for. For your convenience, a comparison table of popular Amiga
models is available at the [Examples](examples.md)
page.  
If using one configuration a lot, save it as
**default**, and WinUAE will use this
configuration without you having to **Load** it
every time.

When your configuration is complete, click the
**Start** button to start the emulation. If no
hard disk or bootable floppy is found, you may see the Insert
Disk screen, press F12 and click on Floppies to change the disk
and click OK to restart. If the emulation crashes or fails to
boot, press F12, goto Misc screen and click **Reset
Amiga** and then OK.

When finished with the emulation you can either press
**Ctrl+F11,** close the window, or press F12 and
click **Quit** on the bottom left of the
window.

## Data Storage

### Floppy Disks

- Programs and games are usually distributed on floppy
  disks in a format which PC's cannot read directly. So, these
  disks are copied into a file called an ADF (Amiga Disk
  Format). To load an ADF disk, use the [Floppy Drives](../gui/floppies.md) menu entry.

WinUAE offers 4 emulated disk drives (DF0-DF3), so further
floppies may be inserted at any time. Note that a few games
assume there is only one floppy drive (DF0) and will only look
there. If you need to change disks, press **F12**
to load the WinUAE GUI and click on Floppies, select
**Eject** next to floppy drive and load the next
disk. Alternatively, press END and F1, F2, F3 or F4 to change a
disk in DF0-DF3.

### Hard Drives

Of course, Amigas can also use [Hard Drives](../gui/harddrives.md). You can either use a
normal directory on a PC hard disk to store Amiga files or you
can use a hardfile, which is one big file that stores all the
Amiga files together. You can also use real Amiga formatted
disks as well. To access data on PC volumes, tick **Add
PC Drives at Startup**.

- To set up a Directory, click Hard Drives, click Add
  Directory, then give the disk a device name e.g. DH0, a
  volume name e.g. System and the location of the directory
  e.g. C:\AmigaForever\System for example.
- To set up a hardfile, click Hard Drives, click Add
  Hardfile, under **New Hard File,** enter the
  size of the Hard file in Megabytes, anything from 10MB to 2GB
  is possible, click on **Create,** select the
  location and name of the hard file and click
  **Save**. You can load an existing hardfile via
  the **Path** ... button.
- If you have a real Amiga Hard Disk, and it is connected
  directly to your PC, you can select it from a list via the
  **Add Hard Drive** button.

### CD-ROMs

To set up a CD-ROM drive for access via WinUAE, click on the
[Expansions](../gui/misc.md) tab and enable the
**uaescsi.device**, when you load up Workbench,
you need to install an Amiga compatible CD-ROM file system such
as CacheCDFS, AmiCDFS, IDEFix and so on. The device name for
the **CD0** DosDriver should be UAEscsi.device and
the unit number is usually 0 or 1 (if unsure, enable
**Create Log file** on the Miscellaneous page and
start WinUAE to create a log file and it will tell you what
your CD-ROM unit numbers are), see the Icon Information and
tooltips to change these values.
