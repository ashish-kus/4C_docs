---
title: "'Linking Data'"
weight: 3
draft: false
---

There is a new feature in 4C that allows linking of data
between 4C applications on different servers and
between 4C applications and external applications that
have a DDE interface.
I call this feauture LData (linking data).

In order to start using ldata,
you need to:

- create the s_ldatah file in your application directory.
- On a windows NT server you MUST set the startup option of the 4CServerD service to allow it to interact with the desktop.

Currently, there are 3 ways to link data.

- Between 4C applications on different servers using 4C shared memory. This type is called 4cShare. It makes use of a process called 4cshare on both Unix and NT servers.
- Between a 4C application on any type of server and a WindowsNT application with a DDE interface. This is called 4cDDE and it makes use of a process called 4cdde on an NT Server machine. There will need to be a 4CServer installed on the WindowsNT machine, but the 4C application does not need to run on the NT Server.
- The 3rd scenario is similar to the second. This is a linking of data between the 4C application on any server and a Windows95 application on the client machine. The Windows95 client will have to have a DDE interface. The Windows95 client will only need to have the client installed in order for this work.

An LData item has two parts.
One is a definition in the s_ldatah file.
The other is the runtime open with the
[sys.open_ldata()]({{< ref "../SysPCLs/openldata.md" >}})
system pcl.
For every rcd in s_ldatah you may have multiple
sys.open_ldata() calls.
Every sys.open_ldata() call refers to a single
LData item.
This will be a single data field in the 4C application
and may be a single cell in a spredsheet.
The fields defined in the s_ldatah file and how
to use them follows.
You will need to use xlfile to access this file for
now.
As soon as the final definition is done,
the bootstraps will have some new programs
for defining your LData.

- sldh_key, alpha(20) - This can be anything that makes sense for your application.
- sldh_type - Must be either DDE or 4CSHARE.
- sldh_server - This identifies the server machine that will be used to run either 4cdde or 4cshare. This may be a machine name known to your system or an ip address in nnn.nnn.nnn.nnn format. If sldh_server is set to "%client", then a connection is made through the Win95 4C Client to the external application.
- sldh_portno - Port number to use for connection. Usually 1412.
- sldh_usr - Usrname on remote machine to connect as.
- sldh_pwd - Password on remote machine.
- sldh_shfile - File name on remote machine for a 4cShare connection. This field may be overridden at runtime by specifying "File=`<file>`" in the sys.open_ldata() call. Unused for a DDE connection.
- sldh_shvar - Field name in shfile to for 4cShare. This field may be overridden at runtime by specifying "Field=`<field>`" in the sys.open_ldata() call. Unused for a DDE Connection.
- sldh_ddeapp - The application name for the DDE connection. This may be something like "Excel". This field may be overridden at runtime by specifying "App=`<app>`" in the sys.open_ldata() call. Unused for 4cShare.
- sldh_ddetopic - The topic to be used in a DDE connection. This field may be overridden at runtime by specifying "Topic=`<topic>`" in the sys.open_ldata() call. Unused for 4cShare.
- sldh_ddeitem - The item to create a DDE link with. This may be something like "R1C1". This field may be overridden at runtime by specifying "Item=`<item>`" in the sys.open_ldata() call. Unused for 4cShare.
- sldh_ddecmd - The cmd that will start the application that can provide this data at runtime if it is not already running. If this field is not specified, then 4C will not start the application. This field may be overridden at runtime by specifying "Cmd=`<cmd>`" in the sys.open_ldata() call. Unused for 4cShare.

Once you have defined an LData, you can use the
links with 3 new system PCL's.

- [sys.open_ldata()]({{< ref "../SysPCLs/openldata.md" >}})
- [sys.get_ldata()]({{< ref "../SysPCLs/getldata.md" >}})
- [sys.set_ldata()]({{< ref "../SysPCLs/setldata.md" >}})
- [sys.close_ldata()]({{< ref "../SysPCLs/closeldata.md" >}})
