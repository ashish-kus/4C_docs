---
title: "Uninstalling Old 4C Client and 4C Server"
weight: 4
draft: false
---

Though not absolutely necessary, in the interest of maintaining
a cleaner PC, you should uninstall all previous versions of any 4C
Server or 4C Client before installing any of the newer MSI packages.
This only needs to be done the first time an install is done of the newer
msi packages over an older 4C install not using msi.
All future msi installs will install fine.
No user data is lost by doing the uninstall.
The procedure to follow for uninstalling all previous versions is:

- If there is a 4C Server installed, stop and remove the 4CServerD service by doing the following: `run cmd cd to the HOME_4C/etc directory 4csrvrd stop remove`
- Remove all 4C Clients and 4C Servers using the Control Panel/UninstalProgram
- Delete any .shr files in the HOME_4C directory
- If there is 4c.cnf file in HOME_4C/etc and that is the XLCONFIG you want to use for 4C Server, mv it to HOME_4C.
- Remove any INSTALL.LOG or UNWISE.EXE files left in HOME_4C
- Remove all references to HOME_4C/bin and HOME_4C/bin/win from the PATH environment variable.
- Remove the registry key "HKLM/Software/4C Software" If the client being uninstalled is version 4.4.3 or earlier, don't delete this key, or you will lose global connection info that will be converted when you install a later version. If you don't mind reentering connection info for global connections, then go ahead and delete the key. Otherwise, leave it and delete both `HKLM/Software/4C Software/4C Client and HKLM/Software/4C Software/4C Server` after the new install completes:
- Reboot and install/configure any of the new 4C Clients and 4C Servers

The only known issues of not uninstalling older 4C Clients
and 4C Servers before installing the newer MSI packages are:

- ControlPanel/Programs will show the older installed packages, even though they have been replaced by a package with a different name.
- Uninstalling an older package after one of the newer ones has been installed will probably make the newer package unusable unless you repair it.
- There will be registry keys that are not needed, both in HKLM/Software/4C Software and HKCU/Software/4C Software.
