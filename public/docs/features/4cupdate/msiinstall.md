# 4C - Win32 MSI Installs

Starting with version 4.8,
all Win32 4C installs are packaged as Miscrosoft Windows Installer Packages.
There are many advantages to this, including:

- You can use Microsoft Group Policy to push updates out to client PCs.
- You can use your choice of other desktop management systems to push updates out to client PCs.
- You can use 4CUpdate to keep client PCs updated.
- It works really well. Install and Uninstall are always completely done or not done at all.
- You can use your own installer tools to disasemble/reassemble the 4C msi packages into your own msi packages.

There are a few differences between the old .exe install and the newer

- The old install always added HOME_4C/bin/win and HOME_4C/bin to the PATH env variable. This is no longer done nor is it necessary for any client installs. For a 4cserver-win32 install, if you will be running utility commands from the command line, then you will probably want to add HOME_4C/bin to your path.
- The old .exe install allowed you to change the install location. The new .msi does not. The reason for this is that it is necessary for all 4cclient/4cserver installations to use the same HOME_4C. If you need to use a different install location than the default, then with no 4c-win32 packages installed, create a system environment variable, HOME_4C, and set it to your preferred install location. It may be necessary to reboot the computer for the env var to be be seen by the installer.

