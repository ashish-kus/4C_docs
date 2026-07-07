---
title: "HP Install Notes"
weight: 2
draft: false
---

```text
For automatic startup on hp create a file called
/sbin/init.d/4csrvr.rc owned by bin and group bin with permissions
rxrxrx
Create symbolic links between this file and
/sbin/rc3.d/S6004csrvr.rc
and
/sbin/rc2.d/K6004csrvr.rc

The 600 number may be changed but the rest of the file
needs to be exactly as above.

If you want to skip the automatic shutdown you can omit the
rc2.d/K6004csrvr.rc link.

The contents of the 4csrvr.rc should be as follows:

#!/sbin/sh

#
# 4c startup: Startup and kill script for the 4c Server Daemon
#

PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH

case "$1" in

"start_msg") ;;

"start") /bin/sh /usr/4c/run4c.sh
break;;

"stop_msg") break;;

"stop") /bin/sh /usr/4c/4cshutdown.sh
break;;

*) exit 2;;

esac

exit 0;
#
# End of 4csrvr.rc
#
```
