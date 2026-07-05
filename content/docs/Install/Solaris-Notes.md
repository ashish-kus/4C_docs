---
title: "Solaris Install Notes"
weight: 9
draft: false
---

```text
For automatic startup on Solaris create a file called
4csrvr.rc in the /etc/init.d directory.
The owner should be root and group sys.
Permissions should be rwxr--r--

If the system boots to runlevel 3 - Standard MultiUser
Create symbolic links between this file and
/etc/rc0.d/K164csrvr.rc
/etc/rc1.d/K164csrvr.rc
/etc/rc2.d/K164csrvr.rc
/etc/rc3.d/S504csrvr.rc
/etc/rcS.d/K164csrvr.rc

If the system boots to runlevel 2
Create symbolic links between this file and
/etc/rc0.d/K164csrvr.rc
/etc/rc1.d/K164csrvr.rc
/etc/rc2.d/S504csrvr.rc
/etc/rcS.d/K164csrvr.rc

The S50 or K16 numbers may be changed but the rest of the file
needs to be exactly as above.

If you want to skip the automatic shutdown you can omit the
K164csrvr.rc link.

The contents of the 4csrvr.rc should be as follows:
#!/sbin/sh
#
# 4c startup: Startup and kill script for the 4c Server Daemon
#

PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH

case "$1" in

"start") /sbin/sh /usr/win4c/run4c.sh
break;;

"stop") /sbin/sh /usr/win4c/4cshutdown.sh
break;;

*) exit 2;;

esac

exit 0;
#
# End of 4csrvr.rc
#
```
