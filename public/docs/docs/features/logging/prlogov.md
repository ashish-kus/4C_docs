# 4C Program Logging - Overview

[4C Logging Home]({{< ref "_index.md" >}})
The program logging facility allows you to keep a log of who ran specific programs and the values
of application specific file variables at specific program states.
This makes it easy to meet auditing requirements without needing to change any program.
The states of a program where a log record can be generated are

- Init
- Open
- Start Field Loop
- End Field Loop
- End
- Exit

Any single program can generate log records for 1 or more program states.
The Start Field Loop and End Field Loop states may generate multiple log rcds during one
instance of running a program.
If you need to log the value of sys.mode,
then you will need to make sure a log rcd is written during the End Field Loop state since
that is the only state where it may be set to somthing other than "Lookup".

Program logging is application specific not global.
The files used for program logging are stored in the Application Program directory along with
other system files.
The logging files are

- log_proghdr - The main hdr file for defining the program log. Used to specify a name for the log, description, whether it is disabled, how many days is the log maintained before it is purged, and to store some program log statistics.
- log_progdet - This specifies each program that is part of this specific log, which states to write log rcds and the names of the file variables to write to the program log.
- log_progdata - This is the actual log and is written automatically by the system.

An application that uses program logging must purge the log by calling the lprog.purge.1 program
sometimes,
presumably from one of the nightly or weekly maintenance scripts used by the application.

It is also assumed that if the application wants to maintain a permanent log,
that it will read the log_progdata file and update the application permanent log.
This can be done from a remote system or on the same system where the application is running.

In order to create or modify a program log,
select the "Program Logging Definitions" under the "Logging" submenu of the main system treeview
menu.
Or, you can just run lprogh.fm.

Program logging changes take effect only when 4C Shared memory is initialized,
that is each time all 4C processes have ended and a new one is started.
It is not necessary to restart the 4csrvrd process as it does not use 4C shared mem.

