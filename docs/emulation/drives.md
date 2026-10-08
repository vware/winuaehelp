# Drives

## Hard Disks

### Directories

When mounting a directory as hard disk in WinUAE, files will
be placed into the host directory. However, the Amiga file
systems used different and/or additional meta information,
such as protection flags, file comments or characters in file
names that Windows does not allow. Depending on your host file
system, WinUAE will store this extra information in a file
called UAEFSDB inside each directory.
This can be turned off with **Disable UAEFSDB-support** on the
[CD & Hard Drives](../gui/harddrives.md) page.

### Hardfiles

Hard disk files are large files that contain the image of an
Amiga file system. They work much the same way as a disk file.
You can simply create a large empty file and tell UAE to use it
as a hardfile, but you will need to format it from the
emulation before you can actually use it.  
If you want to boot an FFS formatted hardfile under Kickstart
1.3, you need the FastFileSystem file from the L: directory of
a Workbench 1.3 disk. Place it in the same directory as the
Kickstart ROM file, or select it in the **FileSys** field of
the hardfile settings.  

Hardfiles are mounted automatically at boot time, and you can
boot from them, even under Kickstart 1.3 and older. If you
ticked **Do not mount** in the hardfile settings, the hardfile
is only attached to uaehf.device and you can mount it later
yourself. To do this, add the following to "DEVS:mountlist":

```text
UAE0:
Device = uaehf.device
Unit = 0
Flags = 0
Surfaces = 1
BlocksPerTrack = 32
Reserved = 1
Interleave = 0
LowCyl = 0 ; HighCyl = 511
Buffers = 5
DosType = 0x444F5300
BufMemType = 1
```

You may need to adjust the values if you specified a different
geometry, and/or your hardfile has a different size than 8MB,
and/or the hardfile is not mounted as UAE0: because you mounted
other hard disks before it. Then, type "mount UAE0:" (or put
that command in your startup-sequence), and you should be able
to access it. Don't forget to format it with the AmigaOS!  
If using HDToolbox to manage Hard files, you must create
hardfile normally or use hard disk image from your real Amiga
but clear all hardfile parameters except block size (sectors,
surfaces and reserved). HDToolBox must be run with
"uaehf.device"-parameter ("tools/hdtoolbox uaehf.device")

## Mounted Drives

If **Add PC drives at startup** is enabled on the
[CD & Hard Drives](../gui/harddrives.md) page, the following
conventions apply for mounting drives:

- If the drive-letter has a Windows volume-name associated
  with it, the drive will get mounted in the Amiga using its
  volume-name. On PCs, the volume name can be set via the
  Properties of the drive in Windows Explorer.
- If no volume-name, the drive gets assigned an Amiga
  volume-name based on its drive-type (the 'x:' is the PC
  drive-letter):

| Type | Volume Name |
| --- | --- |
| Hard Drives | WinDH\_x: |
| CD-ROM Drives | WinCD\_x: |
| Network Drives | WinNET\_x: |
| Removable Drives (including floppy drives) | WinRMV\_x: |
| RAM Disk Drives | WinRAM\_x: |

**NOTE:** If a drive doesn't currently have a
disc in it (floppy, CD-ROM, etc.), then this option will NOT
mount the drive for use by the Amiga. With **Automount
removable drives** enabled, it gets mounted as soon as a disc
is inserted.
