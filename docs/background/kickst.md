# Kickstart

The Kickstart, a ROM chip which contains essential parts of
the Operating System and an Amiga can not boot without it.

## Kickstart Disk

Originally, the first Amiga (A1000) had a small bootstrap
ROM, which contained code to load the basic operating system
from a disk, known as the "**Kickstart disk**"
into 256 kilobytes of RAM, which was then transformed into ROM
by disabling the write signal to this RAM. Of course, the
contents of this pseudo-ROM was lost when the computer was
turned off. The point of using RAM was that Commodore wanted to
be able to continue developing the operating system without
requiring people to change ROMs when a version was available;
instead, they could just distribute new "Kickstart" disks,
which they did three times, upgrading version 1.0 to 1.1 and
later 1.2.

## Kickstart ROM

Version 2.0 was too large to fit into this pseudo-ROM, so
the Kickstart was stored on ROM chips directly. This is the
reason why Amiga 1000s cannot run more modern versions of
AmigaOS.
