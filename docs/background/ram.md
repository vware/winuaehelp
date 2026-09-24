# Amiga RAM

The Amiga's unique hardware design is also reflected in how
RAM is used.

- The **Fast RAM** is for CPU's use only,
  capacity are differentiated by different CPU.
- **Chip RAM** is shared between CPU and
  [Custom Chips](custchips.md) (up to 4MB),
  similar to other computers' Video RAM and Sound Buffer. In
  an Amiga, it can also be used by the CPU. A500 or A600 had
  512kB or 1MB or Chip RAM, A1200 or A4000 had 2MB Chip. In
  WinUAE, up to 8MB can be configured (no real Amiga had
  this!)
- **Slow** RAM is extra RAM added via the A500
  trapdoor and is slower than Fast RAM, which is due to A500's
  architecture.
- **Z3-Fast** is Fast RAM in [Zorro 3](zorro.md) address space and can be used
  instead of Fast RAM.
- **RTG (graphics card)** is memory for
  Retargetable Graphics cards needed for Picasso 96
  support.
- **Motherboard Fast RAM** is memory fitted to
  the motherboard.
- **Processor Slot Fast RAM** is memory fitted
  to a board in processor slot.
- **Second Z2 Fast RAM board** is memory
  fitted to a 2nd Zorro 2 board.

Z3-Fast and RTG RAM is supported on the 68020, 68020+FPU and
68040 only. PPC systems will use Processor slot Fast RAM.

Depending on the processor variant, you can expand the RAM
up to 10 MB or theoretically up to 2 GB. The limit of 2 GB is
valid for the Amiga models A3000 and A4000. On the Motherboard
of these computers you can plug in up to 18 MB RAM, and for
every of the four Zorro-III bus expansion you can expand memory
to the maximum.
