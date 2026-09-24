# Create a Boot Disk

## In Workbench

Boot off your Workbench disk, insert a floppy disk in DF1:,
open a command Shell and type **Install DF1:**
which will copy the book block on to the disk. Then type
**MakeDir DF1:S** to create the Script directory.
Copy your program file(s) on the disk, preferably root or use
directories if you wanted to. Then change directory to DF1:S
and type **Ed Startup-sequence** and type in
commands to load your program, usually just the name of the
Program file will do. Test the disk by inserting the disk into
DF0: and reboot the Amiga.

## Create a boot disk manually

You can use the following procedure to create a fresh
Workbench boot disk from within the emulator:

1. Create a blank formatted disk using WinUAE
   - Click on Floppies tab
   - Tick Bootblock to make it bootable.
   - Click 'Create Standard Floppy'
   - Type a filename and save it
2. Install **ADFView** and
   **ADFOpus** (see [Links](../links.md))
3. Locate Workbench files from either a CD, Hard file,
   Directory or hard disk or some other location
4. Open the floppy to view the contents of your new ADF
   disk
5. Create the following folders and copy any .info files
   from source folder to your floppy folders:
   - **S, C, L, T**
   - **Devs**
   - **System**
   - **Utilities**
   - **Libs**
   - **Expansion**
   - **Prefs**
   - **Classes**
   - **Rexxc**
   - **WBStartup**
6. Copy these files from the source **S**
   directory to S on your floppy: **startup-sequence,
   user-startup** (other files are optional)
7. Copy these files from the source **C**
   directory to C on your floppy: **addbuffers,
   adddatatypes, assign, avail, binddrivers, break, conclip,
   copy, date, delete, dir, ed, eval, execute, iconx, iprefs,
   list, loadwb, makedir, mount, protect, relabel, rename,
   setclock, setdate, setfont, setkeyboard, setpatch, version,
   wait, which** (other commands are optional, if they
   are used in the startup-sequence or user-startup then include
   them too)
8. Copy these files from the source **Libs**
   directory to Libs on your floppy: **amigaguide.library,
   asl.library, bullet.library, commodities.library,
   datatypes,library, diskfont.library, iffparse.library,
   locale.library, lowlevel.library, mathieeedoubbas.library,
   mathieeedoubtrans.library, mathieeesingtrans.library,
   mathtrans.library, realtime.library, rexxsupport.library,
   rexxsyslib.library, version.library**
9. Copy these files from the source L directory to L on your
   floppy: **aux-handler, CDFileSystem,
   CrossDosFileSystem, port-handler, queue-handler,
   FileSystem\_Trans (and contents)**
10. Copy these files from the source **System**
    directory to System on your floppy (including .info files):
    **CLI, DiskCopy, FixFonts, Format, NoFastMem, RexxMast,
    Shell**
11. Copy these files from the source **Prefs**
    directory to Prefs on your floppy: Contents of
    **env-archive** and
    **Presets**
12. Copy these files from the source **RexxC**
    directory to RexxC on your floppy: **HI, RX, RXC,
    RXLIB, RXSET, TCC, TCO, TE, TS, WaitForPort**
13. Copy these files from the source **Devs**
    directory to Devs on your floppy: Contents of
    **Datatypes, DOSDrivers, Keymaps, Monitors and
    Printers** (contents should only contain what you need
    as this can take up quite a bit of disk space). Also these
    files: **clipboard.device, mfm.device, parallel.device,
    postscript\_init.ps, printer.device,
    parallel.device**
14. Copy any additional drivers or programs you require if
    there is still room

To test the file, insert the Workbench.adf in DF0: and try
to boot WinUAE from it. It should boot and load Workbench.
