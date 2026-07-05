# AIX Install Notes

```text
For automatic startup on AIX create a file called
4csrvr.rc in the /etc/rc.d directory.
The owner should be root and group system.
Permissions should be r-xr--r--

If the system boots to runlevel 3, then

Create symbolic links between this file and
/etc/rc.d/rc3.d/S504csrvr.rc
and
/etc/rc.d/rc2.d/K164csrvr.rc

If you want to skip the automatic shutdown you can omit the
rc2.d/K164csrvr.rc link.

If the system boots to runlevel 2, then
Create symbolic links between this file and
/etc/rc.d/rc2.d/S504csrvr.rc

The S50 or K16 numbers may be changed but the rest of the filename
needs to be exactly as above.

The contents of the 4csrvr.rc should be as follows:

#!/bin/sh
#
# 4c startup: Startup and kill script for the 4c Server Daemon
#

PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH

case "$1" in

"start") /bin/sh /usr/win4c/run4c.sh
break;;

"stop") /bin/sh /usr/win4c/4cshutdown.sh
break;;

*) exit 2;;

esac

exit 0;
#
# End of 4csrvr.rc
#

AIX VMM Stuff
AIX has what they think is a real clever algorithm
called Sequential Write Behind.
For 4C and especially JISAM, there is no way that this is
ever beneficial. It is usually detrimental and in some
cases can degrade performance to the point of a standstill.
The VMM Sequential write behind should be turned off and
some form of random write behind should be turned on.
The commands to do this depend on the file system type as well as AIX
version.
For mixed file systems types, you must use both forms of the
command.

The following pertains to AIX version 5.1 or earlier

For jfs, turn off Sequential Write Behind with
the cmd:

vmtune -c 0

and turn on random write behind with

vmtune -W `<n>`

where `<n>` is one of 32|64|128

For jfs2, use:

vmtune -j 0

to turn off sequential write behind and

vmtune -z 0 -J `<n>`

where `<n>` is one of 32|64|128

to turn on random write behind.

Please note that changes made using the vmtune command are
only valid until the next reboot. In order to make changes
permanenent, appropriate entries in inittab must be made.
Please READ the Performance Management Guide for details.
The VMM Write-Behind is the relevant section.

For AIX version 5.3 the command to use is ioo.
```

Some versions of AIX may have the libcrypto.a (with a .so)
installed in both /usr/linux/lib and /usr/lib.
Depending on the version 4C was compiled with it may be necessary to
set LIBPATH (not LD_LIBRARY_PATH) to /usr/linux/lib

