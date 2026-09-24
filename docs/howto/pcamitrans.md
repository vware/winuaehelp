# Transfer Data from/to Amiga

## Overview

You may need to transfer files between a computer where the
emulation is run and a real Amiga. There are several options to
choose from, each with pros and cons. In either case, you ought
to read the documentation for the programs that you use for the
transfer.

## Serial Cable

If you are using a null modem cable, you will need a
terminal program on your Windows machine and your Amiga. 68000
equipped Amigas are only able to reach approximately 3000cps
through the null modem cable. This speed is achieved with the
standard serial.device or the new baudbandit.device There are
some tools available which can speed up the connection speed up
to 5500cps. For more help on how to set up a serial transfer
see [ADF Sender Terminal FAQ](../links.md) and
[WarTrans](../links.md#tools). The [Aminet](../links.md#original) is a great source for such
tools such as TwinExpress and AmiTrans.

All you need is the following:

- Terminal software for Amiga and PC, preferably ones than
  can do Binary Transfers using common protocols such as Kermit
  and X/Y/ZModem. Amiga term programs include NComm, JRComm,
  and Term. PC term programs include Terminal and
  Terminus.
- A commonly used program called Twin Express can be used
  instead or *PC2Ami* or [AmigaTrans](../links.md#tools) or Amiga Explorer from
  [Cloanto](../links.md#allinone).
- A serial cable with 9pin end for PC and 25 pin end for
  Amiga. It has to be a null-modem cable which means that lines
  2 and 3 have to cross over to receive/transmit between peers
  and line 7 for control signals. See [RS232 cable information](../links.md#help) for a null
  modem cable specification.

Then, do the following:

- Connect the computers with serial lead and load up the
  software on each end.
- Start binary receive on one end using one of the
  protocols common to both programs.
- Start binary transmit on the other and load the file to
  be transmitted, it should then transfer to the other end in
  seconds/minutes depending on size.
- Further details of networking can be found at [Amiga Emulation FAQ](../links.md#help)

## Floppy Disks

If you have an Amiga with OS 2.0 or later, you may use
**CrossDOS**. It is a part of the AmigaOS and
enables you to read and write DOS formatted floppies on your
Amiga. **MessyDOS** or **MSH** is a
freeware program with the same functionality. It can be found
on Aminet. If you do not have a high density floppy drive in
your Amiga, you will have to use 720kB formatted disks.
Compress the disk image with - for example - LHA and copy the
compressed file on the floppy. Copy the file to your Windows
machine and decompress it.

## Compact Flash Card

If your PC or Mac has a Compact Flash reader installed and
have a real Amiga, you can install [EasyADF](../links.md#tools) which includes a CF card
reader which allows you to easily create, read and transfer ADF
or other files between the Amiga and your Mac or PC to run on
your Emulator.

## Direct Copy

If you have a PC with 2 floppy drives then you can use
[Disk2FDI](../links.md#tools) which will allow you
to read an Amiga disk in A: and read and transfer the contents
to the B: drive. The FDI files can then be directly read with
WinUAE.

## Network

If your Amiga has a network card, this is probably the
fastest and most convenient way of exchanging data with the
rest of the world. You may use [Cloanto's](../links.md#allinone) Amiga Explorer program to
set up a PC to Amiga link and use a friendly front end program
to transfer programs to and from your PC and your Amiga.  
You can also use AmigaToPC, which is a professional network
software setup, and can be found at our links page in the
[tools section](../links.md#tools).
