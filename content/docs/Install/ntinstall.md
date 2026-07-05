---
title: "4C Client/Server - NT Server Install"
weight: 7
draft: false
---

Follow these steps each time you reinstall 4cserver-win32.

- Login in as Administrator.
- Stop the 4CServer Daemon using the services applet from the control panel.
- Make a backup of HOME_4C. This is important if you have updated any files in that directory, just in case the install overwrites your changes. I've tried to be certain that the install will not overwrite any files that it shouldn't, but having a backup never hurts. You can always delete the backup later.
- For a first time 4cserver install, the msi install file MUST be run from the Administrator account, not just a normal account with elevated privileges through UAC. nor an account that is just a member of the Adminstrators group. You can enable the Adminstrator account by running "cmd" as Adminstrator and entering the cmd net user Administrator /Active:yes If it is not run from the Administrator account, then files in security will not be created correctly and permissions on security will not be set correctly. The reason for this is that the install runs a post install process to set up the security directory and it needs admin access. For whatever reason, msiexec will not let this process run with elevated privileges unless it is started by the "real" "Administrator" I really don't understand why not and would a fix, but until then there is a work around: Verify that no 4C directory exists in the VirtualStore under "VirtualStore/Program Files" or "VirtualStore/Program Files (x86)" for the user that ran the install. If it does exist remove the full 4C directory under the VirtualStore Navigate to $HOME_4C/bin right click on the fcsrvcnf.exe file select Run as administrator The above will also work to fix permissions on the security directory if they get messed up. For subsequent installs, since the security files do not need to be modified, it should be ok to run the install with UAC elevated privileges.
- When the install finishes, you may need to reboot your system.
- For a first time install, you will need to install the 4CServer Daemon as an NT Service. Do this by cd'ing to the HOME_4C/etc directory and entering: ./4csrvrd install start auto You will only need to do this after the first install. Afterwards it should automatically start correctly as long as you do not change the 4C directory.

See Also:
[MSI Install]({{< ref "msiinstall.md" >}})
