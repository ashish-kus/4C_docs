# Environment Variables

The following are environment variables used by 4C.

- HOME_4C - This must be set in order to install 4C. It is the name of the main 4C system directory. It is the home of the 4C.info file This should be set by the script that starts the 4C Server Daemon process. It should also be set in _4CSRVRCONFIG.
- _4CSRVRCONFIG - The name of the 4C Server Config file. This should be set by the script that starts the 4C Server Daemon process.
- XLCONFIG - The name of the config file used by all 4C processes for setting shared mem structures. This should be set in the _4CSRVRCONFIG file.
- JISCONFIG - The name of the config file used by JIsam. This should be set in _4CSRVRCONFIG. It also needs to be set in the .profile of users that may be running JIsam processes from a command prompt. An easy way to set it for interactive users is to source the HOME_4C/4Crc file from a login script. It is important to note that any JISAM processes that access the same JISAM files must use the same JISCONFIG file. The above env vars also need to be set for any users running 4C processes from a command prompt. An easy way to set them for interactive users is to source the HOME_4C/4Crc file from a login script.

In addition to using env vars that are set externally to 4C,
4C sets some env vars and the 4C application can query
the values, but should not change them.
Any process started by any 4csrvr process will have these vars set.

- LOGIN - The name of the user connected.
- USER - Same
- LOGNAME - Same
- HOME - The home directory of the connected user.
- APPDATA - The name of a directory that the application may store user specific data. On Windows systems this is the CSIDL_APPDATA directory, and is usually HOME/Application Data. Of course this changes from release to release and you should never depend on it being in a known place. On Unix systems, this is usually the users home directory. If you store data in this directory, you should use your own subdirectory underneath APPDATA. On Unix this directory will normally be something like ".AppName" and on Win32 simply "AppName". 4C will create directories as needed when creating files. So if you try to open a file with an external name of ${APPDATA}/MyApp/tmp.txt and the MyApp directory does not exist yet, 4C will create it if possible. 4C Does not automatically set this var on clients. It may or may not be set depending on Op Sys.

Other env vars used by 4C that should be set in _4CSRVRCONFIG
in the non-application area are:

- FCSHELL - The pathname of the command shell.
- system_lst or XLSYSTEM - The pathname of the 4C bootstrap directory

Env vars that should be set by each application in _4CSRVRCONFIG
are:

- prog_lst or XLPROG
- data_lst or XLDATA

Every time the user switches applications,
4C will set:

- exp_dir or XLEXP - The directory that the source code control system uses as it's root. This will be the the first directory in the prog_lst path list unless the application sets it otherwise.
- app_dir or XLAPP - Also the first directory in the prog_lst path list.

The following env vars are also available for both client and
server versions 4.4.2 and higher.
These will normally be used by an application that wants to
write temporary or permanent (non data) files to the client
or to the server.
They are:

- FC_APPDATA - 4C Application specific directory for current user. This will be ${APPDATA}/4C on WIN32 systems and ${APPDATA}/.4C on Unix systems. On Unix systems, you can change the default location of this directory by adding an Env line for it in the XLCONFIG file. In most cases this is not necessary, but on systems where different users share the same home directory, A line like the following may be useful `Env FC_APPDATA ${HOME}/${USER}` This will prevent permission problems and allow users to keep their own data private. All in all though, it is better not to have different users sharing the same home directory.
- FC_COMMONAPPDATA - 4C Application specific directory for all users. On Windows systems this will be CSIDL_COMMON_APPDATA/4C and on Unix systems it will be ${HOME_4C}/share. Data stored in this directory will normally be viewable by all users. On Unix systems, you can change the default location of this directory by adding an Env line for it in the XLCONFIG file.
- FC_DOCUMENTS - The current users document directory. On Windows systems this is the "My Documents" directory and on Unix systems it is the users home directory. On Unix systems, you can change the default location of this directory by adding an Env line for it in the XLCONFIG file. dir.
- FC_HOME - This the directory where 4C is installed and is the same as ${HOME_4C}.
- FC_TEMP - This is the 4C temp directory and is ${HOME_4C}/tmp I've done my best to make sure that this directory has permissions set so that all users can create,read and delete files there on all systems running 4.4.2 or higher. This is a good directory to use for storing temp files. If you create a lot of temp files, you need to remember to remove them as well. There are lots of techniques for doing this. Dont leave 10000 files in FC_TEMP or anywhere else. You can change the default location of this directory by adding an Env line in the XLCONFIG file. This will work on any system.
- FC_SESSION - This the directory that both 4C server and 4C client processes create at startup. Each process will have a different FC_SESSION. Only 4C server and 4C client versions 4.4.4 and higher create the session directory set the FC_SESION env var. On the client machine, it is currently used for storing non permanent images. It could be used by the application to store non permanent data on either the client or server. This directory is created everytime a 4c process starts and it is removed, along with all files in it, when the process exits.

