# Features

WinUAE is a very feature-rich implementation of an
Amiga:

## Chipsets

- A1000 original chipset
- OCS
- ECS (Agnus and/or Denise)
- AGA
- RTG (via Picasso 96)

PAL and NTSC chipset support.  
All chipset types have optional cycle-exact emulation mode.

## CPU

- 68000
- 68010
- 68EC020
- 68020
- 68030
- 68040 (including EC/LC)
- 68060 (including EC/LC)
- PPC support

68000 has optional more compatible prefetch and cycle-exact
modes.  
68020 and higher CPU: optional JIT (Very fast x86 just in time
translation) emulation mode available.  
68030, 040 and 060 have optional MMU emulation support. MMU
emulation is not JIT compatible.  
68060 has optional exception emulation for unimplemented
integer instructions.  
PPC support via CyberStorm PPC or Blizzard PPC boards.

All CPUs also have user adjustable and fastest possible
speed options and optional FPU support.

## FPU

- 68881
- 68882
- 68040
- 68060

FPU speed is not restricted, it is always fastest
possible.  
Optional accurate softfloat mode (v3.4.1) that also emulates
all arithmetic exceptions.  
68040 and 68060 have optional emulation for unimplemented FPU
instruction/datatype exceptions.

## Memory

- Chip memory max 2M (real chipset limit), 8M (UAE only,
  24-bit CPU), max 512M (UAE only, 32-bit CPU)
- Fast memory. 24-bit CPU max 8M, 32-bit CPU max 2G/3.5G
  (\*)
- Model specific memory regions supported (“Slow RAM”,
  A3000/A4000 mainboard RAM etc)

\*) 64-bit Windows required, 3.5G only possible with 64-bit
WinUAE. 32-bit max is 512M.

## Floppy drives

- 0 to 4 floppy drives supported.
- Multiple floppy speed options, compatible, 2x/4x/8x or
  turbo mode (floppy rotation not emulated, as fast as
  possible).
- DD and HD drives supported.
- PC Bridgeboard floppy drives (SD/DD 5.25″ and DD/HD
  3.5″)

## Parallel port printer

- Passthrough. Data from Amiga is sent directly to printer.
  Only works if Amiga native printer driver is available for
  selected printer.
- PostScript passthrough. Amiga PostScript printer driver
  and PostScript printer required.
- PostScript emulation. Amiga PostScript printer driver,
  Windows GhostScript installation. Any Windows compatible
  printer.
- Epson matrix printer emulation. Emulates 1980/90s
  de-facto Epson control codes (fonts, positioning, colors,
  graphics etc..) supported by nearly all programs that had
  printer support. Any Windows compatible printer.

## Serial port

- Amiga native serial port to host serial port option. Only
  supports standard 7/8-bit serial protocols, 9-bit serial
  protocol is not supported by PC hardware.
- Supports all host serial-port like serial ports,
  bluetooth adapters etc.
- Connect two running WinUAE instances with emulated null
  modem cable.
- Serial port to TCP socket support.
- Telnet-like serial port to WinUAE log window
  support.

## MIDI

- Amiga native serial port to host MIDI device option.
  Automatically used when serial port is programmed to 31200
  bps speed.
- Optional MIDI in to MIDI out routing.

## UAEGFX Picasso96 compatible RTG (Retargetable graphics) board

- Configurable 24-bit CPU ZorroII (max 8M) or 32-bit CPU
  ZorroIII (max 512M) VRAM.
- Full color depth support, including modes that host
  OS/hardware don’t support (for example 8-bit, 24-bit and
  big-endian RGB modes)
- All native hardware resolutions available.
- Also supports Amiga common modes that host OS/hardware
  may not support, for example 320×256.

## Miscellaneous emulator expansions

- Host harddrive directory mounted as Amiga harddrive.
- uaehf.device. Hard disk image support and direct block
  device support (Physical HD, CF card etc..)
- bsdsocket.library. Amiga TCP/IP stack that uses host’s
  TCP/IP stack.
- uaenet.device SANA-II device driver. SLIRP or WinPCap
  backends supported.
- uaeserial.device. Multiport serial device, Amiga side
  unit x = host serial port COMx:.
- uaescsi.device. Access host PC optical drives. SCSI
  emulation and CD audio supported.

All above harddrive options support Amiga automount and
autoboot, even under Kickstart 1.2 and older.

## CD support

- Most popular CD images are directly supported: iso,
  cue/bin, cue/iso/wav, cue/iso/mp3, cue/iso/flac, mds, chd,
  nrg. (All sector sizes supported, automatic conversion)
- Compressed images supported, transparent on the fly
  decompression, no temporary files used.
- Physical CD/DVD/BD drives supported, including CD
  emulators that emulate CD/DVD/BD drives.
- Multiple emulated CD drives, each with its own CD image,
  can be used simultaneously.
- Physical drive audio tracks supported, uses real time
  digital audio extraction, does not require analog audio
  cables.
- SCSI command emulation, including audio track support
  using digital audio extraction.
- Hardware ATAPI and SCSI emulation, CD image or drive
  connected to any hardware emulated IDE or SCSI
  controller.

## CDTV/CD32 special CD features

- Hardware subchannel (CD+G/CD+MIDI audio CD)
  emulation.
- Autodetects CDTV/CD32 media in any physical or virtual
  drive.
- CD32 FMV module (VCD player).

## File support

- Transparent decompression of popular compression formats,
  supported by all file types, including disk and CD images
  (zip, 7zip, lzx, lha, lzx, rar)
- Floppy disk image formats supported: adf, adz, dms, ipf,
  fdi, scp, dsq, st, img.

## Amiga models emulated

Very high compatibility and accuracy:

- A500
- A500+
- A600
- A1000
- A2000
- CDTV

A500 emulation in cycle-exact mode has practically 100%
compatibility.

Good compatibility (Cycle-exact chipset emulation, CPU
memory accesses are cycle-exact, CPU internal instruction
execution speed is not exact):

- A1200
- CD32

Fast CPU emulation only, chipset/chip ram CPU accesses
optionally cycle-exact:

- A3000
- A3000T
- A4000
- A4000T

## Customized Amiga based hardware emulated

- Arcadia (A500)
- American Laser Games, including light gun(s) and
  laserdisc player (A500)
- Cubo (CD32)
