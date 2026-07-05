# 4C Client/Server - Install Overview

In order to run the 4C Client/Server you need to download and install
two parts, the client and the server.

Use the ptrs at
[www.4csoftware.com/downloads.html](https://4csoftware.com/downloads.html)
to navigate the download.

The only client currently available is a 32bit x86 client
that runs on the following Windows OS's

- Windows-NT 4.0
- Windows-XP
- Windows-Vista
- Windows-7
- Windows-Server-2003
- Windows-Server-2008

The Server installs on Unix machines using the
normal 4cinst.sh.
In order to install the 4c server, untar the install file
and cd to the 4cinst.d directory and run the 4cinst.sh
shellscript.
You should make sure that for the first time you have a clean
XLBIN and XLSYSTEM directory.
Any binaries left over from previous versions of 4C will cause
problems.

Detailed Server Install and startup instructions are included
in the README file on the install tape.

---

## Post Install

- Always remove any file defs from your application that are duplicated from 4cSys. Using out of sync system files will result in undefined behavior for your application.
- Create security categories that your application uses. It is not necessary to create all user roles yet, but a program using an undefined security category will not run.
- If you have a well defined security plan, you should add the roles, user roles, program access, file access and dd access at this time. If added later, the system must be stopped and restarted for the changes to take effect. If you do not explicitly add access controls for security categories, there is no access control and all users have full access.

---

## Notes/Problems/Bugs

Here are some short notes on the 4c client server
that may be of interest.

- For the most up to date documentation, always read the [Most Recent Changes](https://www.4csoftware.com/docs/Install/Changes.html) document before installing any client or server.
- Some of the 4c utilities will work from client system to server, but you need to specify machine name as part of the "-n" option. For example: `xlkeys -f sys.program -n kje! or xlkeys -f sys.program -n kje!/usr/4c/sys.program.xl` This works with all utilities supplied with the client version of 4c. This includes xlcopy, xlcr, xldel, xled, xlflgrep, xlflrpt, xlscopy, xlset, xlupd
- See [NT Install]({{< ref "ntinstall.md" >}}) For NT specific server install info.
- You can set up the client and server on the same machine. In order to do this on WindowsNT, you need only to load the server version. All client programs are included with the server.
- I have noticed that the NT version needs lots of memory, especially when using source code control with lots of files/programs in a mod.
- See the README file in each version for special notices and instructions.

