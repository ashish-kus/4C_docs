---
title: "4C Utility Programs"
weight: 4
draft: false
---

[4C Utility List]({{< ref "_index.md" >}})
There are several 4C standalone utility programs
that manipulate one or more 4C data files.
Most of these utilities work by reading 1 file sequentially
and either listing data, or using the data read to update the
same or another file.
All files read sequentially in this way have common options
used to indicate where to start reading in the file and where to
stop reading.
These utilities are mostly helpful in debugging and
testing,
but can also be used in the end user application
under some circumstances.

The 4C utility programs are:

- xlbuild Compile 4C programs/files
- xlconv Convert a 4C data file to a different file type
- xlcopy Copy rcds from 1 4C file to another
- xlcr Create 4C files
- xldel Delete rcds from a 4C file
- xled Edit a sequenced 4C file with text data
- xlexport export 4C Programs/Files/GlblPCLs to an export file
- xlfile Add/Modify/Delete/Browse thru a 4C data file
- xlfldoc Display the file specification for a 4C data file
- xlflgrep "grep" for patterns in a 4C data file
- xlflrpt List the data from a 4C data file.
- xlimport Import Programs/Files/GlblPCLs from an export file
- xlkeys List the keys in a 4C data file
- xlscopy Copy data from a sequential text file to a sequenced 4C data file with text data.
- xlset Set fields in file.
- xlupd Update multiple rcds in a 4C data file from a sequential file.
- xlview Display current 4C users

All of the 4C utilities, except xled,
have the same usage style.
That is:

```text
xlutil `<option>` [`<optarg>`] ...
```

An option is a '-' followed by a single character.
Some options also need a single argument.
Normally, the lower case options take exactly one argument,
and the upper case options take 0 arguments.
Except where indicated, options can be specified in any order,
but option arguments must immediately follow the option.
For some programs, some of the options can be repeated.
The order of repeated options is always important.

Some examples will clarify the use of options and option arguments.

```text
xlcr -f cust_mstr -n /tmp/cm.xl
```

This cmd creates 1 4C data file, cust_mstr.
It will find the file definition in the normal XLPROG
search path and it will create the file
as /tmp/cm.xl.

```text
xlfldoc -f cust_mstr -f call_hdr
```

This cmd prints the file definition for the 2 4C files,
cust_mstr and call_hdr.
It will find the file definitions in the normal XLPROG
search path.

```text
xlflrpt -f cust_mstr -t " " -v cm_name \
-w 30 -v cm_addr[0] -N -K
```

This cmd lists the primary key followed by cm_name and cm_addr[0]
from the cust_mstr file.
The fields are printed on the same line and the cm_name field is
padded to 30 characters.
All rcds in the cust_mstr file are listed.
The file definition will be found in the normal XLPROG search
path and the cust_mstr file will be found in the normal XLDATA
search path.
The fields will be separated by a single blank.

There are options that are similar in all of the 4C utility programs.
Except where indicated otherwise the following options have the same
meaning in all 4C utility programs.

- "-c `<count>`" Stop processing after `<count>` rcds have been read. This can cause processing to continue farther than it would have if no `<count>` was specified, or to stop earlier.
- "-f `<filename>`" This is the 4C filename. Most 4C utility programs need this argument specified at least once. Some, such as xlcopy, need it specified twice.
- "-d `<directory>`" This is the directory used to look for the 4C specs. When this is not specified, the normal XLPROG search path will be used.
- "-k `<keynum>`" Specifies the key number to use for sequential reading. 1 = Primary Key, 2 = 1st Secondary Key, etc.
- "-n `<ext name>` This is the external file name known to the op sys. Every "-f" option can take a "-n" option. Every "-n" option refers to the closest preceding "-f" option.
- "-s `<start key>`" Specify value for a starting key. Multiple "-s" options can be used if the key being used to process the file has multiple parts. The "-s" options specified define a scrolling area of a file that will be processed. When no "-s" options are specified, the file is processed from BOF to EOF.
- "-F" Use MATCH FULL when reading sequentially. This flag must be specified when using non alpha keys.
- "-H" Print usage message.
- "-I" Interactive, prompt before making any modifications.
- "-P" Use MATCH PARTIAL when reading sequentially. This is the default when the last part of the key is an alpha.
- "-R" Process rcds in reverse order.

The 4C utility programs exit with a 0 code
if there were no errors, and with a non zero code
if there were any errors.
The most likely cause of error is failure to open a file.
In case of error,
an appropriate message will be printed.
