# Requirements

## Introduction

WinUAE runs on any reasonably current Windows PC:

- Windows 7 or newer, 32-bit or 64-bit (64-bit is recommended)
- A CPU with SSE2 support

Memory is rarely a concern: the emulated Amiga needs only as
much RAM as you configure for it.
Accurate emulation, especially cycle-exact A1200 or other AGA
setups, depends heavily on single-core performance, so a fast
modern CPU gives the best results. On weaker machines, using the
[JIT](../emulation/jit.md) compiler will help with performance.

WinUAE 4.2.1 was the last version to support Windows XP SP3
(32-bit only). Users of older Windows versions have to stay
with even older WinUAE releases.

## Emulation Requirements

WinUAE requires some Amiga software in order to work
properly. This software is not included for legal reasons:

- A copy of a [Kickstart](../background/kickst.md) ROM. Sometimes
  referred as a ROM-image, ROM-file, KickFile, or KickROM - has
  to be loaded by WinUAE on startup, just like a real Amiga
  would. It can be extracted from an original Amiga with the
  [transrom](../emulation/amigaprogs.md).
  Alternatively, a legal copy can be obtained with the
  [Amiga Forever](../credits/about.md) software
  package. Kickstarts are supplied on the **Amiga
  Forever** CD in *\Emulation\shared\ROM*. If
  you have the **Amiga Classix CD**, you can
  find a Kickstart version 1.3 ROM file on it.
- The Workbench, which is the Amiga's user interface to
  manage files and start applications, in other terms
  AmigaOS.  
  Workbench disks can be transferred to the ADF file-format
  used by WinUAE by running the included [transdisk](../emulation/amigaprogs.md) utility. Also,
  a legal copy of various AmigaOS releases can be found in
  the Amiga Forever software package.  
  A larger set of Workbench disks (up to 3.1) can be found on
  the **Amiga Forever** CD in
  *\Emulation\shared\ADF* and a full Workbench
  directory hard disk set up in
  *\Emulation\shared\dir*.  
  Workbench or **AmigaOS 3.5 or 3.9** CDs can be
  purchased from any [Amiga
  dealer](../links.md#shops) and can be read directly on the PC by
  WinUAE.  

If you have everything you need, continue with the [GUI](../gui/index.md) to configure WinUAE. If the setup of
the program is complete and the emulation is working, please
refer to [Emulation](../emulation/index.md) for
information on how to get the most out of WinUAE.

**NOTE:** Neither WinUAE itself nor this help
will point you at illegal content sites, nor will you be
provided with copyrighted material by any of the involved
people.
