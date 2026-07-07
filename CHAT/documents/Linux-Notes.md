---
title: "Linux Install Notes"
weight: 4
draft: false
---

```text
You need version 2.2 or higher of the Linux Kernel
for 4c to work

If selinux is enabled, it may be necessary run "chcon -t texrel_shlib_t lib"
on all 4c .so libraries in HOME_4C/lib

For simple automatic startup of the 4csrvrd daemon on Linux
systems you can:

Add a line in /etc/rc.d/rc.local to run correct run4c.sh script
```

A more robust way of startup and shutdown is to create
a script file, 4csrvrd, in /etc/init.d
Assuming that 4c was installed in /home/usr4c, it will look like this

```text
#!/bin/sh
# 4csrvrd - Start and Stop script for the 4c Server Daemon
# On stop, all running 4c processes are also killed
#
case "$1" in
"start") /bin/sh /home/usr4c/run4c.sh
touch /var/lock/subsys/4csrvrd
break
;;
"stop") /bin/sh /home/usr4c/4cshutdown.sh
rm -f /var/lock/subsys/4csrvrd
break
;;
*) echo "Usage: $0 {start|stop}"
exit 1
;;
esac
exit 0
#
# End of 4csrvrd
#
```

Then you must create symbolic links from this file to each of the
following:

- ../rc0.d/Knn4csrvrd
- ../rc1.d/Knn4csrvrd
- ../rc2.d/Knn4csrvrd
- ../rc3.d/Smm4csrvrd
- ../rc4.d/Smm4csrvrd
- ../rc5.d/Smm4csrvrd
- ../rc6.d/Knn4csrvrd

Where nn and mm are any 2 digits.
Use the same 2 nn digits for each of the K symbolic links.
Use the same 2 mm digits for each of the S symbolic links.

Do not call run4c.sh from /etc/rc.d/rc.local if you have set up the 4csrvrd
script and symbolic links

The permissions on /etc/init.d/4csrvrd should be owner/group both root
and rwx-r-x-r-x
