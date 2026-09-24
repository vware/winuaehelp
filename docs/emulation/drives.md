# Drives

## Hard Disks

### Directories

When mounting a directory as hard disk in WinUAE, files will
be placed into the host directory. However, the Amiga file
systems used different and/or additional meta information, so
by default, UAEFSDB files will be created which store this
extra information, such as additional protection flags for
files when using the Directory type of file systems.

### Hardfiles

Hard disk files are large files that contain the image of an
Amiga file system. They work much the same way as a disk file.
You can simply create a large empty file and tell UAE to use it
as a hardfile, but you will need to format it from the
emulation before you can actually use it.  
If you are want to boot a hardfile under Kickstart 1.3, you
need the FastFileSystem file from the L: directory to be placed
in the Kickstart ROMs-directory where WinUAE is installed.  

If you are using WinUAE 0.8.22r1 or earlier and Kickstart 1.3
or earlier, hardfiles can't currently be mounted at boot time,
and therefore you can't boot from it either. You will have to
boot either from a [Floppy Disk
Image](../gui/floppies.md) or from a file system, and mount the hardfile.device
later. To do this, add the following to "DEVS:mountlist":

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
but clear all hardfile parameters except block size.(sectors,
surfaces and reserved). HDToolBox must be run with
"uaehf.device"-parameter ("tools/hdtoolbox uaehf.device")

## Mounted Drives

The following conventions apply for mounting drives:

- If the drive-letter has a Windows volume-name associated
  with it, the drive will get mounted in the Amiga using its
  volume-name. On PCs, the volume name can be set via the
  Properties of the drive in My Computer.
- If no volume-name, the drive gets assigned an Amiga
  volume-name based on its drive-type (the 'x:' is the PC
  drive-letter):

| Type | Drive Letter |
| --- | --- |
| Hard Drives | WinDH\_x: |
| CD-ROM Drives | WinCD\_x: |
| Floppy Drives | WinDF\_x: |
| Network Drives | WinNW\_x: |
| Removable Drives | WinRMV\_x: |
| RAM Disk Drives | WinRAM\_x: |

**NOTE:** If a drive doesn't currently have a
disc in it (floppy, CD-ROM, etc.), then this option will NOT
mount the drive for use by the Amiga.
