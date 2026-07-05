# 4C Logging - Intro

[4C Logging Home]({{< ref "_index.md" >}})
4C version 4.0.3 and higher allows you to log
changes to your data files.
The reason for introducing the logging capability
was to make it possible to replicated 4C files
to external database files.
There are at least several other ways that this type of
log can be used including the following:

- Data Replication
- Crash Recovery
- Auditing
- Debugging an application
- Undo/Redo of logged changes

---

## 4C Logging - Files

The following files are involved
in 4C logging and must exist only in the XLSYSTEM
directory and not in any application directory

- log_hdr - One rcd exists in this file for each defined log.
- log_det - One rcd exists in this file for each instance a data file is being logged.
- log_ctl - This file is used internally by 4C to serialize access to the log files when changes are part of a transaction.
- log_fdhdr - maintains information about the file definition of logged files
- log_fddet - maintains field information about logged files.
- log_err - This records errors in logging.

In addition to the above 4C also uses the
following files:

- log_idx - This is a normal 4C file and exists in each individual log directory.
- log_data - This is a sequential file and there is one of them for each day of the month. They are named log_data.01 through log_data.31. The log_data sequential files must exist in each individual log directory.

Each log is maintained in it's own directory.
The log directory will contain the log_idx and
all the log_data files.
The directory and files must be created before
a particular log can be used.
The newlog.sh script can be used for this purpose.
It is located in XLLIB.
Currently it creates the log_idx and log_data files
with read/write acces for everybody.
You can change those permissions but any process that
updates a file that is being logged must have permission
to update the log as well.

---

## 4C Logging - Programs

The lh.fm program is the main log definition program.
You can access this program from the sys.menu.tv program under
Environment/Log Maintenance.
The display fields shown are:

- LogName - unique log name
- Description
- Directory - You must specify the full path of a valid log directory. Use the newlog.sh script to create one if necessary.
- KeepFor - Enter the number of days you want to keep the log data for. This should be less than 31 but for most uses will be much smaller, somewhere between 3 and 7. The log.purge.1 program uses this number to determine which log_idx records to purge and which log_data files to truncate.
- NUpdates - This gets updated everytime a rcd gets written to this log. Set it to 0 anytime you want.
- SaveBeforeImage - Check this if you want the log to maintain a copy of the rcd before it was modified or deleted. Records being added never have a BeforeImage.
- SaveAfterImage - Check this if you want the log to maintain a copy of the changed rcd. Deleted rcds never have an AfterImage.
- LogAdd - Check this if you want the log to log rcd Adds.
- LogMod - Check this if you want the log to log rcd modifications.
- LogDel - Check this if you want the log to log deletes.
- LogFWrite - Check this you want the log to log forced writes. A forced write is an update where 4C cannot tell if the rcd is being added or modified since no read was done of the rcd.
- LogUnhanged - Check this if you want to log updates that result in no change to the rcd.
- Disabled - Check this to disable the log.

Once you've added a log_hdr record, you can add details.
From the LogDefinition screen, go to the detail screen by
selecting details.
The display fields for the details screen are:

- Sequence - sequence number
- Filename - The 4c filename
- ExtName - The external file name
- Dis? - 'y' if this file is disabled from logging.
- DBType - Valid only for external files. This currently can be one of: `Oracle Postgres Sybase For an ODBC database, it must be the same as that specified in the sys.ext_type file for that external type.`
- DBName - Valid only for External files.
- DBServer - Valid only for External files. Currently this should only be set for Sysbase Database external files. It should be the same as the sys.et_server field in the sys.ext_type file. If the external database does not use this field, then it should be left blank.

There are also several cmdbtns at the bottom that allow you
to enable or disable groups of files or to verify
that the Ext Name exists.
Currently VerifyExtnames only works with JISAM files.

There is a simple log viewer program that you can
run from the Log Maintenance program.
You have a choice of viewing either QuickDetails or
PKeyDetails.
The QuickDetails option does not need to open the log_data
file.
It only needs to read the correct log_idx file.
Hence, it runs faster.
The PKeyDetails shows the same info, plus the primary key
of the record changed.
From either of these detail screens you can view full BeforeImage and
AfterImage detail.

The le.fm program is used to view any logging errors
You can access this program from the sys.menu.tv program under
Environment/Log Errors.
You should run this program regularly until
you are sure your logging is working properly.

---

## 4C Logging - System PCLs

4C provides several PCLs for reading
a log.
They are:

- [sys.log_open()]({{< ref "../../SysPCLs/logopen.md" >}})
- [sys.log_close()]({{< ref "../../SysPCLs/logclose.md" >}})
- [sys.log_seek()]({{< ref "../../SysPCLs/logseek.md" >}})
- [sys.log_read()]({{< ref "../../SysPCLs/logread.md" >}})
- [sys.log_getattr()]({{< ref "../../SysPCLs/loggetattr.md" >}})
- [sys.log_getname()]({{< ref "../../SysPCLs/loggetname.md" >}})
- [sys.log_getval()]({{< ref "../../SysPCLs/loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "../../SysPCLs/logcopyflds.md" >}})
- [sys.log_error()]({{< ref "../../SysPCLs/logerror.md" >}})

When the above PCLs return an error, sys.errno
will be set to one of the following:

- 1 - LOG_ERRCONN - Connection errro
- 2 - LOG_ERROPEN - Open Failed
- 3 - LOG_ERRNF - The specified `<lclname>` was not found as a currently open log.
- 4 - LOG_ERREOF - End of file while reading log
- 5 - LOG_ERRNORCD - There is no current log rcd.
- 6 - LOG_ERRNOFILEDEF - No file definition. This is an internal error that you should never see.
- 7 - LOG_ERRARG - Invalid or missing argument.
- 8 - LOG_ERRNOIMAGE - No rcd image exists of the type needed.
- 999 - Unknown Error

Using the above PCLs it is fairly easy
to implement a Data Replication Application
between different 4C Servers.

---

## 4C Logging - Misc

- Because the log_data and log_idx files can get large, you should make sure you keep logs only as long as necessary and run the log.purge.1 program regularly.
- If you are using the log.purge.run program to purge log data, you must verify the doit() PCL. It used to not loop, then at one time it looped continuously without sleeping. The PCL should look like this: `while(1) { if (curdate != sys.cur_date) { curdate = sys.cur_date; sys.push_prog("log.purge.1"); } sleep(3600); }` This has been fixed in 4C Server Version 4.4.6-3 and higher
- Multiple log definitions are allowed
- One file may be logged by more than one log.
- Even though it is possible to log the same 4cfile without different external names in the same log, it is not a good idea. When reading the log it will be impossible to tell which of the external files was being updated. Use different logs for this purpose.
- 4C will notice when file definitions change and the data written to the log will always reflect the correct file definition.
- Don't try to log any of the following files: `log_idx log_fdhdr log_fddet`
- It is possible to log database files as well as 4C files, but it is not possible for 4C to know when non 4c programs make changes to database files. Neither is it possible for 4C to know what changes were made by an SQLStatement in a 4C program. If you need to log database files, you really should be using the DBMS tools for this.
- If more than one instance of 4c shared mem is running on a system and the different instances log the same data files, then the log_hdr, log_det, log_err log_fdhdr, and log_fddet files must be the same. The best way to accomplish this is to make symbolic links for these files between the different system directories.
- Do not define more than one log using the same directory Currently there is no check for this but it is guaranteed not to work.
- After defining logs, you should monitor them for size and errors.
- The system log info is initialized only when the 4c system memory is first allocated, so changes made to a log definition have no affect until all 4c process have been stopped. It is not necessary to stop the 4csrvrd process.
- It is very important to make sure your filesystem has enough space for your log files.
- Even when BeforeImage is selected, it is not always possible to know the BeforeImage rcd. The most common reasons for this are: The application uses F_NODEBLOCK when reading a rcd The Application calls sys.upd_file() without previously calling sys.read_file(). An external program, like the 4c utilities, use FCupdfile() without calling FCreadfile()
- Currently there is no program that can be used for crash recovery.

