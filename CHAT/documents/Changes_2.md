---
title: "4C Env And Config Files Change Log"
weight: 2
draft: false
---

## 22 October 2011

Version 5.0.6 and later

- You can set the "Path" option in the _4CSRVRCONFIG file to indicate that all following applications should be grouped together under the same menu under Application submenu.

## 01 March 2009

Version 4.6.3 and higher

- The follwing are new [4C Client Preferences]({{< ref "cl-pref.md" >}}) DisableTypeAhead - Disables TypeAhead buffering. ShowUser - Displays authenticated username in the layout title. ShowDate - Displays current date in the layout title. ShowTime - Displays current time in the layout title. PSHDrConnInfo - Prints connection info in the hdr of a PrintScreen page. PSHdrUser - Prints authenticated username in the hdr of a PrintScreen page. PSHdrDate - Prints current date in the hdr of a PrintScreen page. PSHdrTime - Prints current time in the hdr of a PrintScreen page. PSHdrLayoutTitle - Prints the layout title in the hdr of a PrintScreen page.

## 12 June 2008

Version 4.4.8 and higher

- You can specify Client Timeouts as well as Server Timeouts in the XLCONFIG file. See: [XLCONFIG]({{< ref "xlconfig.md" >}})

## 26 March 2008

Version 4.4.7 and higher

- Env vars can be used in the directory path lists used in _4CSRVRCONFIG. For example you could use the following to specify a program path list for a particular application: `prog_lst=${HOME}/test1.d:${XLSYSTEM}`

## 21 November 2007

- You can specify ReconnectTimeout in the _4CSRVRCONFIG file. If set, you do not need to set AllowReconnect also.
- You can modify the default values for FC_APPDATA(Unix only), FC_COMMONAPPDATA(Unix Only), FC_DOCUMENTS(Unix only), and FC_TEMP (Win32 and Unix) See: [4C Environment Variables]({{< ref "envvars.md" >}}) for details.

## 28 June 2007

- [Client Connection Files]({{< ref "cl-conn.md" >}})
- [Client Preferences Files]({{< ref "cl-pref.md" >}})

## 01 May 2007

- Env var FC_SESSION will be set for both 4C server and 4C client processes, version 4.4.4 and higher. It will be different for each 4C process and will be deleted at the end of the session.

## 05 March 2007

- The following env vars will be guaranteed to be set for both clients and servers running Version 4.4.2 or higher. FC_APPDATA FC_COMMONAPPDATA FC_DOCUMENTS FC_HOME FC_TEMP See [EnvVars]({{< ref "envvars.md" >}}) for more details.

## 18 December 2006

- There are 2 new options you can set in the _4CSRVRCONFIG file. They are: AllowReconnect - Set this to True to allow clients to reconnect to the same 4c srvr process if the network connection is lost. ContinueWork - Set this to true to allow 4C programs to continue running when the client is no longer there.

## 27 November 2006

- There is a little info on how to configure the 4C shared memory in [Configuring 4C Shared Memory]({{< ref "sysmem.md" >}})

## 05 July 2005

- You can specify MinClientVersion in the the application section of the _4CSRVRCONFIG file.
