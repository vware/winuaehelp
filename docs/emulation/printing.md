# Printing

Printing is set up in the Parallel Port section of the
[IO ports](../gui/ports.md) page: select a Windows printer and
choose how the data from the Amiga should be handled with the
**Type** setting. A print job is handed over to Windows when no
more data has arrived for the **Autoflush** time, or as soon as
you click **Flush print job**.

There are several ways to print with WinUAE:

- **Passthrough** works the same way as on classic Amigas:
  the data is sent to the printer unchanged, so the Amiga needs
  a native driver for the selected printer. If you use
  TurboPrint, do not use the TurboPrint spooler and choose
  parallel port or turbopar for the print device. If you print
  something you should see an entry in the Windows printer
  spooler.
- **Epson Matrix Printer Emulation** (9pin or 48pin) is the
  easiest way to print. WinUAE emulates an Epson dot matrix
  printer and renders its output on any printer Windows
  supports. On the Amiga, select one of the Epson printer
  drivers that come with Workbench. TurboPrint or Ghostscript
  are not required.
- **PostScript (Passthrough)** sends PostScript data from the
  Amiga unchanged to the printer. This requires a PostScript
  printer driver on the Amiga and a printer that understands
  PostScript.
- **PostScript (Emulation)** lets you print PostScript on any
  printer Windows supports. For this you need to install
  Ghostscript for Windows, in the same 32-bit or 64-bit flavor
  as the WinUAE you are running. Additional options for
  Ghostscript can be entered in **Ghostscript extra
  parameters**.  
  There is a large probability that TurboPrint does not work
  with this setting, and prints out an empty page instead.
  Remove turbostart if you have it and choose the Workbench
  PostScript printer. Please note that the OS3.5 and OS3.9
  drivers crash when you use grayscale or black and white, this
  function also does not work on real Amigas. So either use an
  older driver or choose color instead. Set it on all printer
  preferences pages. You can choose the real output format in
  the Windows printer driver. The printer must dither colors,
  so it is important to choose 600 or 1200 dpi on the Windows
  side.
- **ASCII-Only** prints plain text without any formatting.
