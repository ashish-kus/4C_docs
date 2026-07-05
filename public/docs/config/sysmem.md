# SysMemory

The SysMemory option in XLCONFIG tells 4C how much
shared memory to allocate.
SysMemory is used for storing data that
may be needed my multiple processes at the
same time.
This includes:

- File specifications.
- Program specifications.
- Layout specifications.

4C currently only allocates the shared memory segment
once and it cannot grow, so it is important
to make sure you specify it correctly.
Nowadays, with so much memory available there is little
sense in trying to keep shared memory to a minimum.
I would recommend setting it high to start with and
monitor how it is used.
16 or 32 meg are reasonable numbers to start with.
Here are several ways to specify these values.

- SysMemory 32768 1 - 32 meg allocated all in one segment
- SysMemory 4096 8 - 32 meg allocated in 8 segments.
- SysMemory 16384 1 - 16 meg allocated all in one segment
- SysMemory 4096 4 - 16 meg allocated in 4 segments

The only reason in using multiple segments
is that some Unix kernels default to low values
for maximum size of a shared memory segment.
Allocating multiple smaller segments helps
you avoid having to reconfigure the kernel.
When possible, you should try to use as few segments
as possible.

In addition to the size of SysMemory there are
two other parameters in XLCONFIG that affect how shared
memory is used.
They are:

- Files `<nfiles>`
- Programs `<nprograms>`

Both of theses parameters take one argument, the number
of file specs or the number of program specs that you want to try
to keep in shared memory.
Determining this number can be tricky, is installation and application
dependant, and may change over time as the number of users increase
on a system.
Here are some guidelines that may help:

- The number of files to keep in shared memory should be high enough so that any currently running program will have all of it's file definitions in shared memory.
- The number of programs to keep in shared memory should be high enough to account for the maximum number of unique programs you expect to have running at the same time plus a little extra.
- If you set the number of files too low, then 4C will end up allocating some file definitions in UsrMemory and you will see file (SFL) slot faults in the sys.mem.summary program.
- If you set the number of programs too low, then 4C will allocate program specs in UsrMemory and you will see program (SP) slot faults in the sys.mem.summary program.
- If you set the number of programs or files too high, you risk fragmenting the shared memory and you will probably see program (SP) mem faults or file (SFL) mem faults in sys.mem.summary.
- Another error you may see when either the number of programs or the number of files is set too high is: "Layout: `<name>` not in SysMem Yet"

While 4C tries to deal with shared memory problems by allocating
program specs and file specs in UsrMemory when necessary,
it is important to get these settings as correct as possible.
You will not get these values right by guessing or by using
the default 4CConfig file.
You can only get them right by monitoring
new installations and by checking older ones as usage changes.

Here's one scenario to start with.

Set the SysMemory, Files, and Programs as follows:

```text
SysMemory 16384 1
Files 1000
Programs 100
```

This allocates 16meg shared memory all as one segment,
allows up to 1000 different file specs and 100 different
program specs to be kept in memory at the same time.

When the system is up and running under heavy load,
run the sys.mem.summary 4C program and look for the following:

- If SFL slot faults > 0 then you probably need to increase the number of files allowed in SysMemory.
- If SP slot faults is > 0 then you probably need to increase # programs allowed in SysMemory.
- If either SFL or SP mem faults is > 0 then you either have to increases the amount of shared memory used, or decreases the number of programs and/or number of files allowed in shared memory.
- If there are no faults of any kind and if there is a lot of unused shared memory, then you can lower the SysMemory or increase the number of files or programs allowed in shared memory.

Until 4C adapts to changing usage and shared mem requirements automatically
you should run this program:

- On new installs
- On running systems whenever usage changes
- On running systems whenever XLCONFIG changes
- On any system experiencing mysterious crashes or strange 4C errors.

Another way of checking for 4C shared memory problems is to run:

```text
xlview -v
or
xlview -V
```

from a command line.

