# JIT - Just In Time

UAE can emulate the main CPU at considerably more speed than
what any classic Amiga was capable of. Still, a huge speedup
can be achieved by activating the JIT compiler in the [CPU tab](../gui/cpu.md).

A description of what the settings will cause the JIT
compiler to do:

**Cache Size:** The size (in kB) the JIT
compiler uses to store pre-translated code. When this becomes
full, or when the OS issues a flush icache instruction, this
gets completely emptied, and then refilled during execution.
Setting it to 0 will disable the JIT compiler.

**FPU Support:** If this is enabled, the JIT
compiler will be used for the most commonly used FPU
instructions. Unchecking this option will disable JIT-compiling
for the FPU.

**Constant Jump:** If this enabled,
unconditional branches will not end a block. Effectively,
UAE-JIT compiles "through" them. Generally, that's a good idea,
as it improves performance.  
However, it makes soft cache flushing impossible for some
blocks, so if you experience lots and lots of soft cache
flushes (e.g. when using a Mac emulator), you might try "no"
and see whether it does any better.

**Hard Flush:** If this is unchecked, an OS
induced icache flush doesn't actually empty the cache, but
instead a checksum will be used to check whether blocks have to
be discarded. You'll probably want to leave this at its default
(otherwise lots of stuff, like the OS, gets translated over and
over).

**Direct, Indirect:** These describe how
aggressive to be when it comes to accessing Amiga memory. If
you choose "Direct", the emulation will be very aggressive. If
you choose "Indirect", the emulation will always use the slower
but safe method.  
Unless you are not using P96 graphics, there isn't much point
setting this to "Direct".

**No Flags:** Whether to optimize away flag
generation when it isn't needed. There really shouldn't be any
reason why you'd want to disable this option. If you find
something that works with "no" and doesn't with "yes", it most
likely is a bug and you should [report](../credits/contrib.md) it.

**Catch unexpected exceptions** If there is an
error, then this option will catch it to avoid a system
crash.
