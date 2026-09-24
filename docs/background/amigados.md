# AmigaDOS Commands

These are the AmigaDOS commands found in the C directory
with an explanation of the command and an example.

### Addbuffers

```text
Format:  Addbuffers Drive/A Buffers/N
Purpose: Add memory to floppy disk buffers to improve speed.
Parameters: Drive = Name of drive, Buffers = Size of buffers to add.
Example: Addbuffers DF0: 10
```

### AddDatatypes

```text
Format:  AddDataTypes files/M QUIET/S REFRESH/S
Purpose: Activates datatypes or adds another datatype.
Parameters: files = List of datatypes to add, Quiet = No output, Refresh = Update datatypes.
Example: AddDataTypes gif.datatype REFRESH
```

### Alias

```text
Format:  Alias Name String/F
Purpose: Assigns a short name to a command.
Parameters: Name = Alias name, String = String or command to use for alias.
Example: Alias Del Delete
```

### Ask

```text
Format:  Ask Prompt/A
Purpose: Asks a question in a script (reply y/n). Use IF WARN
         to test for a yes.
Parameters: Prompt = Text to be displayed.
Example: Ask "Are you sure? Y/n"
```

### Assign

```text
Format:  Assign Name Target/M LIST/S EXISTS/S DISMOUNT/S DEFER/S
         PATH/S ADD/S REMOVE/S VOLS/S DIRS/S DEVICES/S
Purpose: Assign names to directory paths.
Parameters: Name = Name of the assign, Target = Directory path, List = Display list of assigns, Exists = Test if
 assign exists (use IF WARN), Dismount = Remove assign, Defer = Assign later, Path = Add assign with path,
 Add = Add a new target to existing path (like LIBS:), Remove = Remove an assign, Vols = List volumes,
 Dirs = List directories, Devices = List devices.
Example: Assign PPaint: DH0:PPaint
```

### Avail

```text
Format:  Avail CHIP/S FAST/S TOTAL/S FLUSH/S
Purpose: Memory availability
Parameters: Chip = Display chip memory, Fast = Display fast memory, Total = Display all memory, Flush = Free up
memory.
Example: Avail TOTAL
```

### Binddrivers

```text
Format:  BindDrivers
Purpose: Load device drivers for old hardware.
Example: BindDrivers
```

### Break

```text
Format:  Break Process/A/N ALL/S C/S D/S E/S F/S
Purpose: Stop a program (see Status)
Parameters: Process = Process name, All = Apply C,D,E and F, C = Apply Ctrl+C, D = Apply Ctrl+d, E = Apply Ctrl+E,
 F = Apply Ctrl+F.
Example: Break 2 C
```

### CD

```text
Format:  CD Dir/A
Purpose: Change directory
Parameters: Dir = Directory to change to
Example: CD Text_Files
```

### ChangeTaskPri

```text
Format:  ChangeTaskPri Pri=Priority/A/N Process/K/N
Purpose: Changes program's execution priority (see Status)
Parameters: Pri = Priority to apply (-128 to +127), Process = Process number (see Status).
Example: ChangeTaskPri 2 1
```

### Conclip

```text
Format:  Conclip Unit/N OFF/S
Purpose: Activates clipboard device
Parameters: Unit = Clipboard unit, Off = Turn off clipboard.
Example: Conclip 1
```

### Copy

```text
Format:  Copy from/M To/A ALL/S QUIET/S BUF=BUFFER/K/N CLONE/S
         DATES/S NOPRO/S COM/S NOREQ/S
Purpose: Copy files (with/without protection bits)
Parameters: from = Files to copy, To = Directory or file to copy to, All = Copy all files, Quiet = No output,
 Buffer = Size of buffer (default = 100K), Clone = Copy file and datestamp, protect bits and comment, Dates =
 Copy datestamp as well, NoPro = Set default protection bits, Com = Copy comment, NoReq = No requester popups.
Example: Copy mydoc.txt docs: Dates
```

### CPU

```text
Format:  CPU CACHE/S BURST/S NOCACHE/S NOBURST/S DATACACHE/S DATABURST/S
         NODATACACHE/S NODATABURST/S INSTCACHE/S INSTBURST/S NOINSTCACHE/S
         NOINSTBURST/S COPYBACK/S NOCOPYBACK/S EXTERNALCACHE/S
         NOEXTERNALCACHE/S FASTROM/S NOFASTROM/S NOMMUTEST/S CHECK/K
Purpose: Change or display CPU settings e.g. caches, burst, fastrom. Useful for some backward compatibility.
Parameters: Cache|NoCache|DataCache|InstCache|NoDataCache|NoInstCache = Turn all or some caches on of off,
 Burst|NoBurst|DataBurst|InstBurst|NoDataBurst|NoInstBurst = Turn all or some burst modes on or off,
 CopyBack|NoCopyBack = Enable/disable copyback mode for 68040, ExternalCache|NoExternalCache = Enable/disable external
 cache for 68040, FastRom|NoFastRom = Copy ROM Fast memory or not, NoMMUTest = Don't check for MMU, Check = Check cpu.
Example: CPU INSTCACHE FASTROM
```

### Date

```text
Format:  Date Day Date Time To=Ver/K
Purpose: Display/change date or time
Parameters: Day = Day of the Week, Date = Date in dd-mmm-yy format, Time = Time in hh:mm[:ss] format, To = Save to
filename.
Example: Date To=date.txt
```

### Delete

```text
Format:  Delete File/M/A ALL/S QUIET/S FORCE/S
Purpose: Delete files and/or directories.
Parameters: Files = One or more files, All = Delete all subfolders and files, Quiet = No output, Force = Ignore
 protection flags when deleting.
Example: Delete OldFilesDir All
```

### Dir

```text
Format:  Dir Dir Opt/K ALL/S DIRS/S FILES/S INTER/S
Purpose: List contents of a directory
Parameters: Dir = Directory, Opt = Option, Dirs = List directories, Files = List Files, Inter = Interactive mode.
Example: Dir S: Files
```

### Diskchange

```text
Format:  Diskchange Device/A
Purpose: Tell AmigaDOS that a disk has been swapped in a non-autosensing disk drive.
Parameters: Device = Name of removable device.
Example: Diskchange DF2:
```

### Diskcopy

```text
Format:  Diskcopy from/A To/A Name/K NOVERIFY/S MULTI/S
Purpose: Duplicates disks
Parameters: from = Disk to copy from, To = Disk to copy to, Name = Volume name, NoVerify = Do not verify copy,
Multi = Make more than one copy.
Example: Diskcopy DF0: to DF1:
```

### DiskDoctor

```text
Format:  Diskdoctor Drive/A
Purpose: Repairs disk problems (in place). Deprecated in WB2.
Parameters: Drive = Disk drive name.
Example: DiskDoctor DF0:
```

### Echo

```text
Format:  Echo String/M NOLINE/S FIRST/K/N LEN/K/N TO/K
Purpose: Display text in a script or part of a string of text.
Parameters: String = Text to display, NoLine = Do not print a new line, First = Position of first character, Len =
 Length of substring, To = Destination file.
Example: Echo "Enter your name: " NoLine
```

### Ed

```text
Format:  ED from/A Size/N With/K Window/K Tabs/N Width=Cols/N
         Height=Rows/N
Purpose: Edit text files (screen editor)
Parameters: from = File to Edit, Size = Size of Memory for file, With = Extended commands file, Window = Console window
 (e.g. * = current), Tabs = Tab size, Width = Number of columns, Height = Number of rows.
Example: ED S:User-Startup
```

### Edit

```text
Format:  Edit from/A To With/K Ver/K Opt/K Width/N Previous/N
Purpose: Edit text files (line editor)
Parameters: from = File to Edit, To = Destination file, With = Extended commands file, Opt = Options
Width = Number of columns, Previous = Number of previous versions.
Example: Edit s:User-Startup With Ed-Script
```

### Else

```text
Format:  Else
Purpose: Used with IF, if not true do these commands
Example: If Exists s:User-Startup
         Say "User Startup already exists"
         Else
         Ed s:User-Startup
         Endif
```

### Endcli

```text
Format:  Endcli
Purpose: Close CLI console window
Example: Endcli
```

### Endif

```text
Format:  Endif
Purpose: End a IF..ELSE..ENDIF block
Example: If $Age GT 65
         Say "You are a pensioner!"
         Endif
```

### Endskip

```text
Format:  Endskip
Purpose: Stops a SKIP branch (for debugging)
Example: Endskip
```

### Eval

```text
Format:  Eval Value1/A Op Value2/M To/K LFormat/K
Purpose: Evaluate a simple arithmetic expression
Parameters: Value1, Value2 = Values to evaluate (Decimal, Hex (0xn) or Octal (0nnn), Op = Operation (+,-,*,/,^,%),
 To = File to save result, LFormat = Output format string (use *n to give a line feed).
Example: Eval $count + 1 to env:count
```

### Execute

```text
Format:  Execute File/A
Purpose: Execute a script or batch file
Parameters: File = Script file to execute
Example: Execute PCD
```

### Failat

```text
Format:  Failat RCLIM/A
Purpose: Change failure limit for scripts (0,5,10,20)
         (0 - Ok, 5 - Warn, 10 - Error, 20 - Fail)
Parameters: RCLIM = Failat number (0-20)
Example: Failat 20
```

### Fault

```text
Format:  Fault Error/N/M
Purpose: Display error message from a code
Parameters: Error = One or more error numbers
Example: Fault 221
         "Fault 221: Disk is full"
```

### FF

```text
Format:  FF
Purpose: Turns on Fast Fonts
Example: FF
```

### FileNote

```text
Format:  Filenote File/A Comment ALL/S QUIET/S
Purpose: Attach a comment to a file (see LIST)
Parameters: File = File to add comment to, Comment = Text to apply, All = Apply to all files, Quiet = No output
Example: FileNote List.txt "A list of people's names"
```

### Format

```text
Format:  Format Device=Drive/K/A Name/K/A OFS/S FFS/S
         INTL=INTERNATIONAL/S NOINTL=NOINTERNATIONAL/S
         DIRCACHE/S NODIRCACHE/S NOICONS/S QUICK/S
Purpose: Initialises Amiga disks (in System drawer)
Parameters: Device|Drive = Disk device or name to format, Name = New volume name, OFS = Old Filing System,
 FFS = Fast File System, Intl|International = FFS International mode,  NoIntl|NoInternational = International mode
 off, DirCache|NoDirCache = Directory caching on or off, NoIcons = No disk or trash icons, Quick = Less thorough format
Example: Format Drive DF0: Name "Docs" NOICONS FFS
```

### Get

```text
Format:  Get Name/A
Purpose: Returns contents of local env variable
Parameters: Name = Environment variable name
Example: Get RC
```

### Getenv

```text
Format:  Getenv Name/A
Purpose: Return contents of a global environment variable
Parameters: Name = Environment variable name
Example: Getenv Workbench
```

### Iconx

```text
Format:  Iconx
Purpose: Enables a script to be run from Workbench. The script
         must have a Project .info file and the Default Tool
         set to c:IconX to run it.
Example: Iconx
```

### If

```text
Format:  If NOT/S WARN/S ERROR/S FAIL/S EQ/K GT/K GE/K VAL/S EXISTS/K
Purpose: If condition is true execute following commands until
         an ELSE or ENDIF occurs.
Parameters: Not = Reverse boolean result, Warn = Test warn flag from previous command, Error = Test error flag from
 previous command, Fail = Test fail flag from previous command, EQ = Equality test, GT = Greater than test,
 GE = Greater or equal test, VAL = Input is a number, Exists = Test file exists.
Example: IF WARN, IF $count GT 10, IF EXISTS C:List
```

### Info

```text
Format:  Info Device
Purpose: Displays information about disks
Parameters: Device = Name of device to display
Example: Info DH0:
```

### Install

```text
Format:  Install Device/A NOBOOT/S CHECK/S FFS/S
Purpose: Saves a bootblock to a disk. If you have only one drive
         type INSTALL ? and swap disks and then type DF0: and
         press RETURN to save bootblock.
Parameters: Device = Disk to install bootblock, NoBoot = Erase bootblock, Check = Test for bootblock, FFS = Use
 Fast File System.
Example: Install DF0:
```

### IPrefs

```text
Format:  IPrefs
Purpose: Initialises preferences files on startup.
Example: IPrefs
```

### Join

```text
Format:  Join File/M/A AS=TO/K/A
Purpose: Join two or files together.
Parameters: File = File(s) to join together, To|as = Destination file
Example: Join File1 File2 File3 as FileFull
```

### Lab

```text
Format:  Lab Label
Purpose: State a Label to Skip to in a script
Parameters: Label = Name of label
Example: Lab PROC2
```

### List

```text
Format:  List Dir/M P=PAT/K KEYS/S DATES/S NODATES/S To/K Sub/K
         Since/K Upto/K QUICK/S BLOCK/S NOHEAD/S FILES/S DIRS/S
         LFORMAT/K ALL/S
Purpose: List file details in a directory.
Parameters: Dir = One or more directory name(s), Keys = Display keys, NoDates = Do not display dates, To = Destination
 file, Sub = Subdirectories included, Since = List files since date given, Upto = List files up to given date, Quick =
 Simple directory list, Block = List files in block sizes, NoHead = Do not display header lines, Files = Files only,
 Dirs = Directorys only, LFormat = Output list using this format string, All = All files.
Example: List Workbench: Block Dates Since=01-Jul-00
```

### LoadWB

```text
Format:  Loadwb -DEBUG/S DELAY/S CLEANUP/S NEWPATH/S
Purpose: Display workbench screen
Parameters: Debug = Activate debug menu, Delay = Wait 3 secs before loading, Cleanup = Clean up desktop,
 NewPath = Resnap current path settings.
Example: LoadWB -Debug
```

### Lock

```text
Format:  Lock Drive/A ON/S OFF/S Passkey
Purpose: Lock a device from writing.
Parameters: Drive = Drive to lock, On|Off = Turn lock on or off, PassKey = Specify password.
Example: Lock DH1: On GHK459
```

### MagTape

```text
Format:  MagTape Device/K Unit/N/K RET=RETENSION/S REW=REWIND/S SKIP/N/K
Purpose: Controls magnetic tape device.
Parameters: Device = Tape device, Unit = Unit number, Ret|Retension = Retension tape, Rew|Rewind = Rewind tape,
 Skip = Skip parts of tape by a value.
Example: Magtape Device TAPE1: Unit 0 REWIND
```

### MakeDir

```text
Format:  Makedir Name/M
Purpose: Create one or more new directories.
Parameters: Name = One or more directories to create.
Example: MakeDir DH1:Docs DH1:Basic DH0:TempFiles
```

### MakeLink

```text
Format:  MakeLink from/A To/A HARD/S FORCE/S
Purpose: Creates a logical link between files
Parameters: from = Link file, To = Actual file, Hard = Hard link, Force = Link to sub-directory
Example: MakeLink T C:Type Hard
```

### Mount

```text
Format:  Mount Device/M from/K
Purpose: Loads and mount a device
Parameters: Device = Device to mount, from = Mount file
Example: Mount DEVS:CD0
```

### Newcli

```text
Format:  Newcli Window from
Purpose: Open a new CLI console (CON) window
         Window format: CON:X/Y/Width/Height/Name/Option(s)
         Options: Auto,Backdrop,Noborder, Nodrag,Simple,
         Smart,Wait,Close
Parameters: Window = Window config string, from = Alternative script to Shell-Script.
 Options. Auto = Open only when output sent to it, Backdrop = Open as a backdrop behind other windows, NoBorder = No left or
 bottom borders, NoDrag = No draggable title bar, Simple = Simple refresh, Smart = Smart refresh, Wait = Remain open
 under window is close manually.
Example: Newcli CON:0/10/400/200/Shell/CLOSE
```

### NewShell

```text
Format:  NewShell Window from
Purpose: Open a new Shell console (CON) window
Parameters: Window = Window config string, from = Alternative script to Shell-Script.
Example: NewShell from S:Shell-Startup
```

### Path

```text
Format:  Path Path/M ADD/S SHOW/S RESET/S REMOVE/S QUIET/S
Purpose: Set or change the program search path
Parameters: Path = Directory path to change, Add = Add path, Show = Display path, Reset = Clear path,
 Remove = Remove entry from path, Quiet = No output
Example: Path SC:C Add
```

### Prompt

```text
Format:  Prompt Prompt
Purpose: Change the prompt text (Codes: %R = last return code,
         %S = Current path, %N = CLI Number)
Parameters: Prompt = Path format
Example: Prompt "%N.%S> "
```

### Protect

```text
Format:  Protect File/A Flags ADD/S SUB/S ALL/S QUIET/S
Purpose: Change the 'rwedsp' flags of a file. (r=read,w=write,
         e=execute,d=delete,s=script,p=pure)
Parameters: File = File to change, Flags = One or more flags, Add = Add flag(s) to existing flags, Sub = Remove
 flags from file, All = Change all files, Quiet = No output
Example: Protect Editor rwed
```

### Quit

```text
Format:  Quit RC/N
Purpose: Quit a script with optional return code
Parameters: RC = Return Code
Example: Quit 5
```

### Relabel

```text
Format:  Relabel Drive/A Name/A
Purpose: Change name of a disk
Parameters: Drive = Disk to change, Name = New volume name
Example: Relabel DF0: "Documents"
```

### RemRAD

```text
Format:  RemRAD Device FORCE/S
Purpose: Remove RAD device from memory
Parameters: Device = RAD device, Force = Remove even if in use
Example: RemRAD RAD:
```

### Rename

```text
Format:  Rename from/A/M To=As/A QUIET/S
Purpose: Rename or move one or more files
Parameters: from = Old filename, To|As = New filename, Quiet = No output
Example: Rename MyDoc as MyDoc.doc
```

### RequestChoice

```text
Format:  RequestChoice  Title/A Body/A Gadgets/M PubScreen/K
Purpose: Asks for input via a requester
Parameters: Title = Title for dialog box, Body = Text for dialog box, Gadgets = List of buttons, Pubscreen = Screen
 to use.
Example: RequestChoice >ENV:RT "Format" "About to format your hard
         disk*nAre you sure?" "Go ahead" "No way!"
```

### RequestFile

```text
Format:  RequestFile Drawer File/K Pattern/K Title/K Positive/K
         Negative/K AcceptPattern/K RejectPattern/K SAVEMODE/S
         MULTISELECT/S DRAWERSONLY/S NOICONS/S PUBSCREEN/K
Parameters: Drawer = Initial drawer to use, File = Initial file name, Pattern = Use pattern as filter, Title =
 Title of dialog box, Positive = Text for OK button, Negative = Text for Cancel button, AcceptPattern = Defines
 file pattern(s) to show (overrides Pattern), RejectPattern = Pattern(s) of files to hide, SaveMode = Change colors
 to indicate Save or other mode, MultiSelect = Allow multiple file selection, DrawersOnly = Display only directories,
 NoIcons = Suppress info files, PubScreen = Screen to use.
Purpose: Asks for a filename via ASL file requester
Example: RequestFile >ENV:File Title "Select a File" Positive "Load" Noicons
```

### Resident

```text
Format:  Resident Name File REMOVE/S ADD/S REPLACE/S PURE=FORCE/S SYSTEM/S
Purpose: Stores AmigaDOS command in memory (quicker then reloading
         from disk each time it is executed). To ensure a
         command can be made resident check the pure flag (see List).
Parameters: Name|File = File to be made resident, Remove = Remove file from resident list, Add = Add file to resident
 memory, Pure|Force = Force a non-pure file to be resident, System = Show system's resident code segments.
Example: Resident C:Dir Pure
```

### Run

```text
Format:  Run Command/F
Purpose: Execute a program in the background (multi-task)
Parameters: Command = Program to run
Example: Run Printfiles Doc1
```

### Search

```text
Format:  Search from/M Search/A ALL/S NONUM/S QUIET/S QUICK/S
         FILE/S PATTERN/S
Purpose: Search for a string in a file or a file on a disk
Parameters: from = Directory to seach from, Search = Text to search for, All = Search sub-directories, NoNum = Line
 numbers are not displayed, Quiet = No Output, Quick = Reduce output listing, File = Search a file rather than
 content, Pattern = Search using a pattern.
Example: Search SYS: "List" File All
```

### Set

```text
Format:  Set Name String/F
Purpose: Sets or lists a local environment variable (local to current
         shell or current process)
Parameters: Name = Variable name, String = Text or number for variable
Example: Set MyName "Peter"
```

### SetClock

```text
Format:  Setclock LOAD/S SAVE/S RESET/S
Purpose: Load or set the date and time from battery-backed clock
Parameters: Load = Load date from clock, Save = Save date and time to clock, Reset = Resets the click
Example: Date 27-Nov-00 10:00, SetClock Save
```

### SetDate

```text
Format:  Setdate File/A Weekday Date Time ALL/S
Purpose: Set date of a file or directory (see List)
Parameters: File = File to change, Weekday = Day of week, Date = Date, Time = Time, All = All files
Example: Setdate DEVS: Monday 10:30
```

### Setenv

```text
Format:  Setenv Name String/F
Purpose: Change the contents of an environment variable
Parameters: Name = Variable name, String = Text or number for variable
Example: Setenv Workbench "3.1"
```

### Setfont

```text
Format:  Setfont Name/A Size/N/A SCALE/S PROP/S ITALIC/S
         BOLD/S UNDERLINE/S
Purpose: Sets console font
Parameters: Name = Font name, Size = Font size, Scale = Scale font to size, Prop = Specify if a Proportional font,
 Italic = Use italic font, Bold = Use bold font, Underline = Use underlined font
Example: SetFont Courier 15 Bold
```

### SetKeyboard

```text
Format:  Setkeyboard Keymap/A
Purpose: Sets keyboard layout using layouts in Devs:Keymaps.
You can use the Input preferences instead.
Parameters: Keymap = Keymap file to use
Example: SetKeyboard USA0
```

### SetMap

```text
Format:  SetMap <keymap id>
Purpose: Sets keyboard layout. Deprecated in WB2.
Keymaps include CDN,CH1,CH2,D,DK,E,F,GB,I,IS,N,S,USA0,USA1,USA2.
Keymap can be set in icon using Tooltype: KEYMAP=<map>
Parameters: Keymap = Keymap file to use
Example: Setmap GB
```

### SetPatch

```text
Format:  Setpatch QUIET/S NOCACHE/S REVERSE/S NOAGA/S
Purpose: Patch Operating System functions and remove bugs (43.4)
Example: Setpatch Quiet
```

### SetPatch

```text
Format:  Setpatch QUIET/S NOCACHE/S REVERSE/S NONSD/S NOAGA/S PATCHCONFIGFILE=PCF/K
 PATCHCONFIGLINE=PCL/K PATCHINFO=PI/S FORCEUPDATE/S KILLUPDATE/S NOROMUPDATE/S
 DISABLEROMMODULES/S SKIPROMUPDATES=SKIPROMMODULES/K WAITFORVALIDATE/S
 AVOIDMEMFKICKFORPATCHES/S
Purpose: Patch Operating System functions, enable/disable ROM updates, disable
 HD NDS mode, wait for disk validation and remove bugs (44.38)
Parameters: Quiet = No output, NoCache = Cache off, Reverse = Reverse action of setpatch, NoNSD = No New Style
 Device (Large HD support), PatchConfigFile = Specify a patch config file, PatchConfigLine = Specify a Patch
 Config line, PatchInfo = Show patch info, ForceUpdate = Install updates despite something installed
 earlier, NoRomUpdate = Do not install ROM updates, DisableRomModules = Remove some ROM modules (can cause a
 crash), SkipROMUpdates = Skip following updates,WaitForValidate = Waits for all volumes to be
 validated, AvoidMemFKickForPatches = Ignore MemFKick for Patches.
Example: Setpatch NOROMUPDATE NONSD QUIET
```

### Skip

```text
Format:  Skip Label BACK/S
Purpose: Jump to a label in a script (see Lab). Use back if
         label occurs before Skip command.
Parameters: Label = Label name to skip to, Back = Go back in script to label
Example: Skip Lab2 Back
```

### Sort

```text
Format:  Sort from/A To/A Colstart/K CASE/S NUMERIC/S
Purpose: Sort a file and output to new file
Parameters: from = File to sort, To = Output file, Colstart = Column to sort from, Case = Upper
 case entries are done first, Numeric = Input treated as numbers.
Example: Sort Figures To SortedFigures Numeric
```

### Stack

```text
Format:  Stack Size/N
Purpose: Change/display amount of stack space in bytes.
Parameters: Size = Stack size in bytes
Example: Stack 10000
```

### Status

```text
Format:  Status Process/N FULL/S TCB/S CLI=ALL/S COM=COMMAND/K
Purpose: Display status of running programs. TCB is Task Control Block
Parameters: Process = Task number, Full = Full output of process info, TCB = Information except
 the command name, CLI|All = Command info only, COM|Command = Search for command.
Example: Status 2 Full
```

### Type

```text
Format:  Type from/A/M TO/K OPT H|N/K HEX/S NUMBER/S
Purpose: Display contents of text file on screen and binary files using
         HEX with optional line numbers.
Parameters: from = Text file to display, To = Output file or device, Opt H | Hex = Display
 as hex values, Opt N | Number = Number the lines.
Example: Type C:DIR HEX
```

### Unset

```text
Format:  Unset Name
Purpose: Remove a local env variable
Parameters: Name = Environment variable name
Example: Unset MyName
```

### UnSetEnv

```text
Format:  UnSetEnv Name
Purpose: Remove a global env variable
Parameters: Name = Environment variable name
Example: UnSetEnv Workbench
```

### Unalias

```text
Format:  Unalias Name
Purpose: Remove a short name for a command
Parameters: Name = Alias name
Example: UnAlias MyDir
```

### Version

```text
Format:  Version Name Version/N Revision/N FILE/S FULL/S
         Unit/N INTERNAL/S RES/S
Purpose: Display workbench, library or device version information.
Parameters: Name = File, Version = Print Kickstart or Workbench number and sets env variables and sets
 Warn flag, Revision = As Version but for Revision numer, File = Check file rather than memory,
 Full = Display full information, Internal = Check internal files, Res = Check resident files.
Example: Version Kickstart Version=39 Revision=106
```

### Wait

```text
Format:  Wait Time/N SEC=SECS/S MIN=MINS/S UNTIL/K
Purpose: Wait for a specified period of time
Parameters: Time = Time period in either Sec (Seconds) or Mins (Minutes), Until = Wait until a time
Example: Wait Until 12:00
```

### Which

```text
Format:  Which File/A NORES/S RES/S ALL/S
Purpose: Find where a file is in command path (see Path) and sets Warn flag.
Parameters: File = File to locate, NoRes = Resident list is not searched, Res = Only the resident
 list is searched, All = Search full path.
Example: Which Multiview
```

### Why

```text
Format:  Why
Purpose: Display reason why a previous command failed
Example: Why
```

### Key

```text
/A Required argument
/F Final argument in list
/K Keyword must be entered with argument
/M Multiple arguments
/N Number
/S Switch (optional)
```

## Additional AmigaDOS commands

### DMS

```text
Format: DMS Read file[.DMS] [from dev:] [TEXT filetext] [CMODE mode] [LOW lowtrack] [HIGH hightrack] [NOVAL] [NOZERO] [ENCRYPT password]
 DMS Write file[.DMS],,, [TO dev:] [LOW lowtrack] [HIGH hightrack] [NOVAL] [NOTEXT] [NOPAUSE [DECRYPT password]
 DMS Repack file[.DMS] [TO dev:] [LOW lowtrack] [HIGH hightrack] [CMODE mode]
 DMS View file[.DMS],,, [FULL] DMS Text file[.DMS],,,
 DMS Test file[.DMS],,, DMS Help
Purpose:  To read, write or view Disk Masher disk images of floppy disks.
Example: DMS Write MyDisk.DMS from DF0:
```

### Installer

```text
Format:  Installer [SCRIPT] filename <[APPNAME] name> <[MINIUSER] level> <[DEFUSER] default> <[LOGFILE]
 logname> <[LANGUAGE] language> <NOPRETEND> <NOLOG> <NOPRINT>
Purpose: To install an application via an installer script. Usually provided as a default tool for script
 files in icon.
Example: Installer SCRIPT InstallApp APPNAME MyProgram LOGFILE DH0:MyProgram.log
```

### LHA

```text
Format:  LHA [-options] <command> <archive[.LZH|LHA]> [[homedir] <filespec...] [@file] [destination]
Purpose: To create, modify or list LHA or LZH files
Examples:
LHA a pictures.lha #?.jpg (archives all jpg files into pictures.lha)
LHA l pictures.lha        (lists all files in pictures.lha)
LHA x pictures.lha        (extracts all files from pictures.lha)
```

### LZX

```text
Format:  LZX [-options] <command> <archive> [<file> ...] [<destdir>]
Purpose: To create, modify or list LZX archive files.
Examples:
LZX a documents.lzx #?.doc (archives all doc files into documents.lzx)
LZX l documents.lzx        (lists all files in documents.lzx)
LZX x documents.lzx        (extracts all files from documents.lzx)
```



## Additional AmigaDOS Information

**Clear Screen**  
Example: Echo "\*E[0;0H\*E[J"  
Purpose: Clears the AmigaOS screen. Uses printer commands to
control text formatting in CLI, so \*E is equivalent to ESC
character.  
The command **clear** is normally defined using an
**Alias** or an AmigaDOS script in S: folder.

**Text in Italics**  
Example: Echo "\*E[3mItalics\*E[23m"  
Purpose: \*E[3m turns on italics and \*E[23m turns off
italics

**Text in Bold**  
Example: Echo "\*E[1mBold\*E[22m"  
Purpose: \*E[1m turns on bold, and \*E[22m turns off bold.

**Underline Text**  
Example: Echo "\*E[4mUnderline\*E[24m"  
Purpose: \*E[4m turns on underline, and \*E24m turns off
underline.

**Colored Text**  
Example: Echo "\*E[32mRed Text\*E[0m"  
Purpose: \*E[nm where n=30-39 for foreground color or n=40-49
for background color.  
\*E[0m resets to normal character set.
