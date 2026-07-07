---
title: "_4CSRVRCONFIG"
weight: 7
draft: false
---

_4CSRVRCONFIG, named for the env var you use to name it,
is the main server side configuration file.
There must be a unique _4CSRVRCONFIG file for each 4csrvrd daemon
running.
Most systems will use only one.
_4CSRVRCONFIG is used to set the runtime environment for the
different 4C server processes.
You use it to specify default system options,
environment variables,
and to define applications that different 4c clients may access.
As in other 4C config files, a line starting with a '#' is a comment.
Each option that can be specified starts on a new line.
Option arguments are separated by white space.
If an option argument needs embedded white space,
enclose the argument in double quotes.
Option arguments can be on separate lines as long as there
is white space at the front of the line.
The system options that can be specified are:

- LogFile - The name of log file that may be used for debugging. This option should usually be disabled in a stable system.
- Connect - Connect information for 4csrvrd. You shouldn't need to change this except if you are changing the Port that 4csrvrd will listen on.
- ServerDir - The directory where the 4C server process are located.
- WorkDir - The directory that the 4C server process should use as a working directory.
- MaxProcesses - The maximum number of 4c server processes to allow to run from this _4CSRVRCONFIG. You should not need to specify this unless you expect to have more than 500 4c server processes running at a time.
- DpyAlarm - How frequently should the 4csrvr check and see if client needs update of display fields. Nothing will be sent if no changes. The default, if not specified in _4CSRVRCONFIG, is 60 seconds.
- ClUpdAlarm - How often should the 4csrvr force flushing data being sent to the client. The default is 60 seconds, unless specified in _4CSRVRCONFIG.
- DataEncryption - This is meant to be a temporary measure to secure application data transmitted across the network. This can be one of: None - no encryption is done. 4C - A weak encryption scheme is used. Both client and server need to be version 4.0.6 or higher for this to work. If either is an earlier version, then no data is encrypted. Please note that the algorithm used for 4C data encryption is weak and is no where near current cryptograpy standards. There will be a strong encryption algorithm sometime in the future. This option is ignored when both Client and Server are at versions 4.4 or higher as long as one of the more secure encryption methods is specified in the [Security Configuration.](https://www.4csoftware.com/docs/Security/config.html)
- DefaultLogon - Can be specified to allow remote 4csrvrs to connect to a 4cfs process, without supplying a login and password, and read 4C files from this machine. Think twice before using this option and never use root. This option should not be used on version 4.4 or higher servers. Use methods found in [4C Security]({{< ref "../Security/_index.md" >}}) instead.
- LogonSecurity - How 4C checks a logon. This can be one of: Default PAM MD5 Default, will work on most systems, except where PAM is used.
- AllowReconnect - Set this to True to allow interactive clients to reconnect to the same 4csrvr process if a connection is lost due to network problems. In most cases the client will be able to reconnect and continue work exactly where they were. Other than the delay in reconnecting there will be no detrimental effect on either the 4client process of the 4c srvr process. In some cases a reconnect may not be possible and the client will exit as it always has. Both client and server need to be running version 4.4.1 or higher.
- ReconnectTimeout - Number of seconds that a 4csrvr process should wait for a client to try to reconnect. The default is 120. If you set this option to a value <= 0, then AllowReconnect is automatically set to False. If you set this option to a value > 0, then AllowReconnect is automatically set to True. The default value for the timeout, if not set is 2 minutes.
- ContinueWork - Set this to True if you want the 4csrvr process to continue working even when the client is now longer there. Any 4C program that needs requires user input when there is no client to get the input from will exit with $wexit_code set to EXIT_KILL. If you are not sure if you want this option enabled consider the case where a user starts a long update and then shuts down their PC. If you wan the update to be able to continue running and preserve the consistency of your data then set this option to True. If you prefer for the update to stop and leave your data in an inconsistent state then set this option to False.
- AllowPasswordSave - This can have the value "True" or "False" If set to False, then the 4csrvr will instruct any 4cclients that connect to this machine to not allow the user to save the password. (Client and Server both need to be at Version 3.6.7 OR higher)
- SessionControl - Specify the default SessionControl dialog options that the client will show when the user press `<Ctrl>`+`<Alt>`+`<F8>`. `<Ctrl>`+`<Shift>`+`<Alt>`+`<F8>` should also work. The second key sequence may be necessary on some HP computers that run hkcmd at startup. This option can be overridden by individual applications. Values for this can be one or more of the following: All None [+-]NoErrorWait [+-]Debug [+-]ExitProg [+-]ExitSession [+-]ChangePassword Separate multiple options by commas. SessionControl defaults can be overriden in each application. (Client and Server both need to be at Version 3.6.7 OR higher)
- GetAnswerType - The default way that the sys.get_answer() SysPCL displays it's question. This can be overriden in each application. Value you can specify are: Text Dialog
- Env - Default environment variables for each 4C server process. Separate the env name from the value by whitespace. Environment variabels can be overridden bt each application. Note, however, that defining environment vars in the application section uses a different syntax. You can use the value of another env var when setting env vars by using the standard shell syntax "${ENVVAR}"
- SecurityGroup - The security group context that 4csrvrd should run in. (This is specific to NT systems and not used on Unix systems.
- ExecProg - Here you can specify commands to run when when the 4csrvrd process first starts. <!--
- SODebugAddr - An option that can be set to turn on network debugging for a specific ip address. -->
- Path `<pathname>` The menu you want this application to display under. Requires 4csrvr 5.0.6 or later and 4cclient 5.0.6 or later.
- Application - Definition of one application. This is where each individual application defines it's options. Application options are all separated by whitespace and can be specified on separate lines as long as the start of the line has some white space. The first option is always the application name and has no arguments. Application options arguments are always separated from the option by an equal sign. Multiple arguments to the same option are separated by commas. The options and arguments you can specify for an application are: Desc - Description of the application. Prog - The program to run when a user connects to this application. Group - The name to give the 4C group that runs when this app starts. Not to be confused with the Groups option. Users - Which users are allowed to run or are forbidden from running this app. Separate multiple users by commas. To prevent a user from accessing this application, precede the usename with a minus sign. Groups - Which groups are allowed to run or are forbidden from running this app. Users may belong to more than one os security group. Separate multiple groups by commas. To prevent a group from accessing this application, precede the usename with a minus sign. Startup - "True" or "False" If an application is a startup up, it runs everytime a 4csrvr process starts. It can be used to check client versions or possibly to check client security credentials. Other possibilities include setting a users profile based on their login name. Ignore - "True" or "False" Ignore this App. Hide - "True" or "False" Hide this app from client menus. The app can still be used by 4cfs for allowing remote file access. prog_lst, ProgList, or XLPROG - Three ways to set the XLPROG env var. data_lst, DataList, or XLDATA - Three ways to set XLDATA exp_dir, ExpDir, or XLEXP - Three ways to set XLEXP Icon - The name of the icon to use for the application. The file needs to exist on the server in the images directory. It will be copied to the client one time only. PrtWinTitle - The title to use for the window when displaying reports. ShellWinTitle - The title to use for the 4C Shell window. ErrorWinTitle - The title to use for the 4C Error window InfoWinTitle - The title to use for the 4C Info window. GetAnswerWinTitle - The title to use for the 4C GetAnswerWin. SessionControl - This will override the default SessionControl that may be specified as a system option. GetAnswerType - This will override the default GetAnswerType specified as a system option. MinClientVersion - The minimum version of the 4cclient that is necessary to tun the application. Specify this with a line similar to: MinClientVersion=v.r.l Everything else is assumed to be an environment var of the form ENVVAR=VALUE. All application env vars will be set each time the application starts.

The _4CSRVRCONFIG created by the 4C install process has examples
of most of the above options.

For 4C Server versions earlier than 4.4,
this file must be readable by any user allowed to connect to 4C.

For 4C Server versions 4.4 and higher,
this file should only be readable by the root/administrator users.

It should not be writable except by the root/administrator users.
