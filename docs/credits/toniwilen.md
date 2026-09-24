# Toni Wilen

Toni Wilen is the maintainer of WinUAE, he took over this
position from [Brian King](brianking.md). He has
been at the helm for many years now, and has become famous for
his incredible speed of answering bug reports, fixing the
reported issues, as well as for implementing a big bunch of
features users would not want to miss in WinUAE.

Also, Toni was interviewed by Georg Veichtlbauer on the 19th
of November, 2002. It may be a bit lengthy but sure worth a
read.

## Interview:

Q: Would you tell a few things about yourself Toni?  
A: I am from Finland, 27 years old, working as
programmer/sysadmin. I haven't really done anything lately than
working, watching Anime, reading Manga and programming
something stupid and of course idling :).

Q: Did you ever own an original Amiga?  
A: Of course, and many models... A1000 was my first Amiga (1988
or so), then I had two A500s (another was my brothers) and
later two A1200's (again one for my brother). Now I have one
A500 and A1200 for emulator compatibility testing :).

Q: When (and how) did your programming career start?  
A: My first computer was Spectra Video svi-328. My first
"programming" was writing and modifying some basic programs
from computer magazines. I think I was 9 or 10 when I had my
first computer :). I had c64 about 2-3 years later, wrote some
stupid programs with C64-assembler...

Q: How did you get involved in UAE?  
A: I think I saw someone say something like "it is impossible
to emulate AGA" or something (I believe everything is
possible). Then I started to examine UAE's code and add AGA
support slowly (and this is true!). It took about 0.5 years
until I understood UAE and even now I don't understand
everything.

Q: You did not use any AGA documentation?  
A: The unofficial aga.guide is the only documentation, but I
knew it is correct because I programmed some AGA programs on my
A1200 ages ago...

Q: Why did you decide to realize it with UAE instead of
Fellow?  
A: Choice was easy, UAE was in C. I hate Intel assembler!

Q: How much progress do you think UAE has made over the past
years?  
A: Too much? :) I'd say A500 emulation is very close. Only 100%
correct cycle-exact CPU/Blitter emulation is not yet complete
(because there is no documentation, you have to run
test-programs on a real A500 to find everything out. Very time
consuming. I am not really interested...). Of course 68020+
emulation needs MMU support (but probably not useful until
everyone have 4GHz+ CPU :).

Q: What are the main features you implemented in
UAE/WinUAE?  
A: AGA, much more compatible disk emulation, more compatible
Blitter emulation, rdb, booting from real HDD's, more
compatible sprite emulation, CD32, A1000 boot ROM, state save,
drive LEDs :), partial CDTV (because of missing hardware
documentation).

Q: Why did you accept the position as WinUAE maintainer? It
sure isn't the nicest and best paid "job" you could get...  
A: Because I wanted to continue improving UAE :). Sending
patches to someone else is much more complex, and anyway, Brian
wasn't interested in continuing for a long time. I'd probably
have become win32 maintainer even if I didn't want :).

Q: Do you actually use WinUAE? I remember Brian saying he
didn't do much with it apart from coding it...  
A: Yes, mostly for classic A500 demos and games.

Q: How do you see the cooperation with the other coders of
UAE?  
A: Usually I disagree with Bernd Schmidt but unfortunately he
has been too quiet lately. Unfortunately it appears only me and
Bernd know how the UAE core works. Bernd Roesch and 2-3 other
coders send me fixes for picasso96, bsdsocket etc., non-core
emulation but thats it. Finding someone who knows Amiga
hardware, has programmed demos/games on an Amiga, knows C
(Amiga demos/games were mostly in assembler) and knows Unix or
Windows programming is nearly impossible... and especially one
who has time to learn how UAE works.

Q: Are you working on other publicly available programs?  
A: Great Nations (Civilization clone, don't know if I ever have
time to continue), NHLinfo (EA Sports NHL-game editor, mostly I
have lost interest on that too because all NHL games since 2001
have been total crap), Filemaster for Amiga, and some other
smaller Amiga programs.

Q: What are you planning for the WinUAE future?  
A: File system notification support,
"sprites-outside-playfield" AGA-feature (but probably requires
big rewrite of display code, don't expect too soon), Catweasel
support, full CDTV emulation, MK3 (PCI) support.
