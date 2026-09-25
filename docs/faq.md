# FAQ

## Where can I get the latest WinUAE?

Have a look at our collection of [official UAE sites](links.md#official).

## What version of Windows is supported?

Windows 7 SP1 is the absolute minimum. See [Requirements](started/require.md).

## Can a PC read Amiga floppy disks?

Yes, if you have two floppy drives and the new [Disk2FDI](links.md#tools) program which will read Amiga
Disks and write it to FDI format which is compatible with
WinUAE.  
For the PC to read Amiga disks directly, extra hardware will
need to be purchased which can read (or write) Amiga disks
easily. The ISA Catweasel floppy controller can be used on the
PC to read (or write) Amiga disks. Further information is
available from the web site at [Individual Computers](links.md#shops).

## How can I troubleshoot AmigaOS startup?

Start UAE and immediately press both mouse buttons when the
main window is shown. In the Amiga Early Startup select "Boot
without Startup-Sequence", try disabling drivers or settings
that may cause the problem.

## What are ADFs, ADZ, LHA, LZX, DMS, ZIP and Z files?

Compression or disk image file formats. Please check our
[Glossary](glossary.md) for explanations of these
acronyms.  
You can download all the Amiga (de)archivers from here: Amiga
Archivers for use within WinUAE or try X-Arc from [Aminet](links.md#original) for use in Workbench.

## Can I emulate a Hard Disk?

Yes, that is possible. You can either specify a directory on
the PC's hard disk e.g. C:\UAE\AmigaHD or you can specify a
hard file. The advantage of a directory is that you can copy
files directly from the PC site into the directory for
immediate access by the Emulator. For hardfiles you can use the
Amiga's long filenames, file comments and protection flags. For
a hard disk to be bootable, make sure you copy the whole
Workbench disk including hidden directories. Some programs work
better with Hard Files than directories.  
For more information see [Hard
Disk](gui/harddrives.md) page.  
If using Workbench 1.3, it is now possible to use HardFiles if
you copy the FastFileSystem file to the WinUAE ROMs directory
first (0.8.22r1 or later).  
The HDF may not be recognized on boot, in which case, boot off
a WB2 or later disk to format it, then WB1.3 can then see
it.

## Why does the uae\_german keymap not support µ or € Symbols?

Recommended is the use of german\_keymap\_new.zip and input
set to anything other than compatibility mode.

## What are the differences of CD drivers?

AsimCDFS:

- Fails if you mount more than 1 CD drive (all devices show
  the same CD content)
- Seems to be a bug in AsimCDFS, because it happens on real
  Amigas as well

CacheCDFS:

- Set the MaxTransfer size to 0x10000 (65 kb) in the
  mountfile
- This makes cacheCDFS work and not display read/write
  error Requesters

## Why does WinUAE not accept my hardfiles or show only CLI with my standard configuration?

This happens if another instance of WinUAE is running. It is
not allowed to use the same hardfile with multiple WinUAE
sessions at the same time. In very rare situations a crash
could happen and prevent WinUAE from releasing the hardfile. In
this case, free the file manually or reboot Windows. If WinUAE
takes long to boot you can switch on drive LEDs in the GUI. If
the hard drive LED is on you know the hardfile is valid.

## I have several Amigas - can I use the Kickstart from them?

Follow the instructions on the [Create Image Files](howto/imagefiles.md) page.

## After resuming from hibernation, the Amiga clock shows the wrong time?

Use the Amiga program [timehack](emulation/amigaprogs.md) to fix this.

## Can I use native Amiga Hard Disks with WinUAE?

WinUAE 0.8.22 or later can read Amiga Formatted hard disks
directly via the Hard Drives tab on WinUAE. Click on Add Hard
Drive and it will list any connected Amiga hard drives or any
empty hard drive space to add to WinUAE. On older emulators,
you could only access hard disks via the AFFS file system on
Linux or a third party program such as ADFOpus.

## Can I access Amiga CDs via the Emulator?

Yes, Amiga CDs use the same file system for CDs as the PC
i.e. ISO9660 except that it uses the Rock Ridge extension for
long filenames, PCs use a file system called Joliet for long
filenames. CacheCDFS can read all these formats.

There are two ways to access Amiga CDs:

- On the Hard Drive screen of WinUAE, click 'Add Directory'
  and then enter the volume name of the CD and the drive letter
  of the CD-ROM drive e.g. D: (without the slash). Use the
  Diskchange &lt;device> command in a Shell if you change
  CDs (type Info for list of devices).
- You can install the CacheCDFS CD-ROM drivers from either
  AmigaOS3.9 CD or a third party driver such as AmiCDFS. You
  need to enable uaescsi.device on the Misc tab before starting
  WinUAE and enable Logging to determine the Unit numbers (see
  WinUAElog.txt file) for your CD-ROM drive. When you install
  the drive make sure the device is uaescsi.device and the unit
  numbers match the unit numbers in the log file.

## What limitations can I expect from using WinUAE?

Depending on your hardware and operating system, none,
really. WinUAE exceeds the capabilities of most hardware
Amigas.

## Can I use the mouse wheel?

Yes, but like on a real Amiga, you need the Freewheel tool
from AmiNet.

## How do I create a blank disk for saving files or games?

Go to the [Floppy Drives](gui/floppies.md) and
click the button "Create Standard Floppy" for use in Workbench
or use "Create Custom Floppy" for some games to save files
to.

## I have all my floppy drives full, how do I change disks?

Use the [keyboard
shortcuts](emulation/keyboar.md) to change disks directly or press F12 for the
full GUI. Also, be aware of the [Disk Swapper](gui/diskswapper.md) mechanism, which makes
this task much less tedious.

## How do I save the current "State" of a game?

Press F12, go to the Misc screen and click 'Save current
state' which will save the state as a .USS file. Use 'Load a
save-state snapshot' to load state file. There are also
[keyboard shortcuts](emulation/keyboar.md)
available.

## Why should I buy Amiga Forever CD or AF Online?

Unless you have access to a real Amiga, or have bought a
Kickstart and Workbench disks, there is no other legal way of
getting the OS for your emulation. The software is the property
of Amiga Corporation and only they can license it to companies.
Cloanto have a license to distribute Amiga Emulation with
Kickstart ROM files and Workbench images from CD or from their
web site. The CD also includes some popular Amiga Software, a
complete Workbench hard disk setup, MPEG videos of Jay Miner's
speech and the Deathbed Vigil (last days of Commodore), Amiga
Explorer network program etc. You can also boot from the CD
direct into the Emulator without the need of a host OS using KX
Light.  

For easy access, you can download the online version for as
little as $20, you get Kickstart and Workbench 1.3 and 3.0,
PPaint 7.1, an easy setup menu system, Amiga Explorer and the
Emulation programs themselves. These would cost a lot more if
bought separately. For beginners, it is ideal to set up an
Amiga on your PC within minutes than having to search the web
for them and fiddle with setups to get it to work!  
To check it out and get your copy visit [Amiga Forever](links.md#allinone).

## Can I access the Internet through WinUAE?

Yes, you can through the PC's Internet connection by
enabling the **BSD socket library support**
feature on the [Expansions](gui/expansions.md) page in
configuration.

## How can I make or see inside ADF files without using an emulator?

You need ADFOpus or ADFView which will allow you to create
and explore and manipulate the contents of Amiga Disk Format
images easily. ADFOpus also features a DMS-ADF-ADZ image
converter as well. Both tools can be found in our [links section](links.md#tools).

## Why does my program / game not work correctly?

First make sure your UAE configuration matches the game's
requirements. Very old games depend on specific versions of
Kickstart, processor and memory. See [Example Configurations](started/examples.md) for a list of
the most common Amiga configurations. If you still have
problems then download a patch from the [Patch & HD Installers Page](links.md#help) or [WHDLoad](links.md#tools), which can degrade the Amiga to
such a state that the program will run correctly. You will
probably need to get the latest AmigaOS Installer from [Aminet](links.md#original) to install these tools.

## Where can I download a good Workbench set up with useful programs?

Get the latest [AmiKit](links.md#allinone) which
includes Directory Opus and many utilities including AmiStart,
AMPlifier, Antiword, Apdf, AWeb, ClassAct, Eagleplayer,
EvenMore, FFmpeg, FreeDB, HippoPlayer, Hollywood Player,
HomeBank, IBrowse, ixemil, KingCON, MagicASL, MagicMenu, MCP,
Midiplay, MUI, NetSurf, MUIBase, NewsCoaster, PerfectPaint,
Picasso96, PFS III, Scalos theme, ScummVM, ShowAmiga96,
StormMesa, SysInfo, TTEngine, twittAmiga, Warp3D, XPKMaster,
YAM, and many others.

## When I run WinUAE, I get an error DINPUT8.DLL not found?

Please update your OS and WinUAE. If you are intentionally
trying to run an old WinUAE version on an outdated Windows, you
need DirectX 8 or later installed. Run DXDiag.exe to see what
version you have installed.

## How do I create a bootable floppy (real or ADF)?

There is a dedicated [guide](howto/bootdisk.md)
for this.

## I have a Workbench disk but no Install disk, how do I install Workbench?

You can download UAEInstall.adf disk which has some AmigaDOS
or Installer scripts to install Workbench for most Workbench
versions including 1.3 to 3.1.  
If you have the AmigaOS 3.9 CD-ROM, you can boot from the
\Emergency-boot folder via the Hard Drives, Add Directory
option.  
For AmigaOS 4.1 Final Edition, you can find instructions
online.

## Is there an emulator for the AmigaOne or PPC processor?

There is a Classic Amiga emulator for the AmigaOne that
comes with AmigaOS 4. Winuae 4.0 or later now supports PowerPC
(PPC) processors using the CyberStorm PPC or Blizzard PPC
expansion accelerator boards, along with Picasso IV Zorro for
graphics, Blizzard PPC SCSI-2 HD Controller for Hard disk
support.  
Unfortunately, you cannot use uaescsi.device, uaenet.device,
bsdsocket.library, PC drives or removable drive options as they
are not compatible with PPC emulation.

## What is the folder "displaydrivers" for?

These are the picasso96 UAE drivers. It is usually safe to
ignore the drawer. The latest Picasso96 installer has working
display drivers included.
