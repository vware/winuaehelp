# Create Image Files

In the [Amiga
Programs](../emulation/amigaprogs.md) subdirectory you will find two small Amiga
programs that will help you generate the necessary image
files.

## ROM Images

Transrom will dump the contents of your Kickstart ROM to a
file.

To create a file called "kick.rom" in the RAM disk, use the
following syntax:

*transrom >RAM:kick.rom*

This will create a 524288 Byte ROM image in the RAM disk.
The file has to be [transferred](pcamitrans.md) to
the PC.

## Disk Images

A disk file is an image of the raw data on an Amiga floppy
disk, it contains 901120 bytes (880kB), which is the standard
capacity of an Amiga disk. Transdisk will dump an image of a
floppy in one of the drives, or write an image to an Amiga
disk.

### Disk to ADF

transdisk >RAM:DF0.adf

This command will create a file called "DF0.adf" in the RAM
disk. Such a file is 901120 bytes of size for one disk.

You can also create disk images in several parts. To create
4 parts of the disk in DF0: do the following:

*transdisk >ram:DF0\_1.adf -s 0 -e 19  
transdisk >ram:DF0\_2.adf -s 20 -e 39  
transdisk >ram:DF0\_3.adf -s 40 -e 59  
transdisk >ram:DF0\_4.adf -s 60 -e 79*

After [transferring the files](pcamitrans.md) to
a PC, they need to be merged again. To do so in a command
prompt:

*COPY /B DF0\_1.adf+DF0\_2.adf+DF0\_3.adf+DF0\_4.adf
DF0.adf*

### ADF to Disk

It is possible to transfer an ADF disk image back to an
original Amiga disk. Copy the ADF to an original Amiga and
insert a disk into DF0. Then, you will also need transdisk in
order to transfer the data to the disk. Do the following:

*transdisk -w filename.adf*

If you do not have an Amiga to write to Amiga disks, then it
is suggested to get hold of the PCI Catweasel device which will
allow you to write ADF files to Amiga formatted disks on your
PC. See [Individual Computers](../links.md#shops)
for more information.

You can also get direct access to an Amiga's floppy drive if
you have your PC and Amiga networked and using the [Amiga Explorer](../links.md#allinone) supplied with
Cloanto's Amiga Forever software.
