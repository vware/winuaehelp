# Command-Line Parameters

WinUAE offers many command line parameters to control its
startup behavior.

## WinUAE Specific

| Parameter | Description |
| --- | --- |
| -diskswapper=*d1.adf,d2.adf* | Comma-separated list of disk images. Pre-loads disk images into the [Disk Swapper](../gui/diskswapper.md) mechanism. |
| -cfgparam=<br> -cfgparam | Previously used to pass configuration parameters, currently ignored - see the *-s parameter*. |
| -config=*configfile.uae* | Load the given [configuration file](../gui/configurations.md) during startup. |
| -statefile=*statefile.uss* | Load a saved system state file. |
| -f *configfile.uae* | Similar to -config, but without the equals sign: will load a configuration file. |
| -s *option=value* | Pass on one or more options from a configuration file directly, without loading a file. |
| -h<br> -help | Opens the help, if available (the one you are reading right now). |
| -cdimage=*image.iso* | Inserts the given image into the emulated CD-ROM drive. |
| -version | Outputs the header lines of winuaebootlog.txt (version and build information), then exits. |

If the last parameter entry is an orphan and nothing else
was loaded, WinUAE will check if it is a config file or
statefile and load it.

If standard output is redirected (e.g. `winuae.exe >log.txt`),
all logging is redirected to that file in UTF-8 format.

## Generic

| Parameter | Description |
| --- | --- |
| -0 *disk.adf*<br> -1 *disk.adf*<br> -2 *disk.adf*<br> -3 *disk.adf* | Insert specified ADF image into emulated floppy drive 0-3 |
| -r *kick.rom* | Load main ROM from the specified path. |
| -K *kick.rom* | Load extended ROM from the specified path. |
| -p *value* | Name for the parallel port to be configured, i.e. LPT2: |
| -m *VOLNAME:mount\_point*<br> -M *VOLNAME:mount\_point* | Attach a volume directly to the specified mount point. |
| -W *value* | Hardfile specification. |
| -S *value* | Sound parameter specification |
| -R *value* | Output framerate in frames per second. |
| -i | Enable illegal memory. |
| -J *xy* | Specify joystick 0 (x) and 1 (y). Possible values: 0/1 for joystick 0/1, M for mouse, and a/b/c. |
| -w *value* | CPU emulation speed. Possible values: 0 for cycle exact, -1 for maximum speed. |
| -G | Don't show the GUI. |
| -D | Start the debugger. |
| -n | Enable immediate blits. Only available when illegal memory is not enabled. |
| -v *value* | Set chipset. Possible values: 0 (OCS), 1 (ECS Agnus), 2 (ECS Denise), 3 (Full ECS), 4 (AGA) |
| -C *value* | Set CPU specs. |
| -Z *value* | Z3 Fastmem size, value in 1MB blocks, i.e. 2=2MB. |
| -U *value* | RTG memory size, value in 1MB blocks, i.e. 2=2MB. |
| -F *value* | Fastmem size, value in 1MB blocks, i.e. 2=2MB. |
| -b *value* | Bogomem size, value in 256kB blocks, i.e. 2=512kB. |
| -c *value* | Chipmem size, value in 512kB blocks, i.e. 2=1024kB. |
| -l *value* | Set keyboard layout language. Possible values: de, dk, us, se, fr, it, es. |
| -O *value* | Set graphics specs. |
| -d *value* | Serial or parallel port on demand, insert *s* or *p* as value. |
| -H *value* | Color mode. |

## Obsolete

For the sake of completeness, these parameters are no longer
supported: accuracy, gfx\_opengl, gfx\_32bit\_blits, 32bit\_blits,
gfx\_immediate\_blits, gfx\_ntsc, win32, gfx\_filter\_bits,
sound\_pri\_cutoff, sound\_pri\_time, sound\_min\_buff, sound\_bits,
gfx\_test\_speed, gfxlib\_replacement, enforcer, catweasel\_io,
kickstart\_key\_file, fast\_copper, sound\_adjust, sound\_latency,
serial\_hardware\_dtrdsr, gfx\_filter\_upscale, gfx\_correct\_aspect,
gfx\_autoscale, parallel\_sampler, parallel\_ascii\_emulation,
avoid\_vid, avoid\_dga, z3chipmem\_size, state\_replay\_buffer,
state\_replay, z3realmapping, force\_0x10000000\_z3,
fpu\_arithmetic\_exceptions,
gfx\_filter\_vert\_zoom,gfx\_filter\_horiz\_zoom,
gfx\_filter\_vert\_zoom\_mult, gfx\_filter\_horiz\_zoom\_mult,
gfx\_filter\_vert\_offset, gfx\_filter\_horiz\_offset, gfx\_tearing,
gfx\_tearing\_rtg, uaehf0\*, uaehf1\*, uaehf2\*, uaehf3\*, uaehf4\*,
uaehf5\*, uaehf6\*, uaehf7\*, pcibridge\_rom\_file,
pcibridge\_rom\_options, cpuboard\_ext\_rom\_file, uaeboard\_mode,
comp\_oldsegv, comp\_midopt, comp\_lowopt, avoid\_cmov,
compforcesettings
