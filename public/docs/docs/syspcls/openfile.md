# sys.open_file()

## Purpose

`sys.open_file()` allows you to open a file before it is needed for file access.

## Usage

```text
sys.open_file(<asfile>,<flags>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file to open.
- `integer <flags>` — Open flags.
These can be or'd together with '|'.
Possible values for the flags are:
F_DEFAULT -
Read/Write, NoCreate
F_CREATE -
Create the file.
F_TEMP -
Create and open a temporary file that will be deleted when it is closed.
F_NOMSG -
Do not display open error messages.
F_READONLY -
Open the file in readonly mode.
F_NOREADONLY -
Open the file in Read/Write mode.
This is the default and does not normally need to be specified.
F_TRANS
F_NOTRANS
F_SAVEBUF
F_NOSAVEBUF
F_BINARY -
Open the file in binary mode.
See the bootstrap program sys.file.xfer for how to
access a file in binary mode.
F_NODROP -
With external databases,
if F_CREATE is specified with F_NODROP,
then truncate the table rather then dropping it and recreating it.
There was a performance improvement with Oracle using this when
the table was created a lot of times.

## Returns

- `0` — File opened OK.
- `-1` — Some Error

## Where Used

`sys.open_file()` can be called from anywhere. It most likely will be used when you want to create a file if it does not yet exist, or to determine existence of a file before you try to do something to it.

## Example

```text
The bootstrap program sys.ph.maint uses the following
code in the edittext() pcl.
It assumes that if the text file does not exist
it should create it.




if (sys.open_file(sys.pcl_text,F_DEFAULT|F_NOMSG) < 0)
    sys.open_file(sys.pcl_text,F_CREATE);
```

## Description

`sys.open_file()` allows you to open files before they are automatically opened at file access time. If the asfile is already opened, possibly under a different ext name, it will be closed first. If the F_TEMP flag is specified, a temporary file is created. You do not need to specify both F_TEMP and F_CREATE. If the F_CREATE flag is specified without F_TEMP, then the file is created in the first directory of the data path. If neither F_CREATE nor F_TEMP are specified, then F_DEFAULT is assumed. This just opens the file. The F_SAVEBUF flag is used to specify that 4C saves the original field values after each read. You may want to do this if you will be calling [`sys.rcd_changed()`]({{< ref "rcdchanged.md" >}}) or if you will be calling [`sys.upd_file()`]({{< ref "updfile.md" >}}) on many rcds that may not have changed. When F_SAVEBUF is used, [`sys.upd_file()`]({{< ref "updfile.md" >}}) will not actually rewrite any rcds that did not change. Error messages can be suppressed by using the F_NOMSG flag. The F_TRANS and F_NOTRANS flags can be used to override the default transaction logging for files that support this.

If there is an error opening the file, sys.errno will be set to one of:

ERR_FILENF - File Not Found.

ERR_FILEPERM - The process does not have permission to open the file in the desired mode. This may be due to file permissions or because another process has opened the file without allowing sharing.

ERR_REMCONN - The file is a remote file and there was some type of connection error.

ERR_FILEISOPEN - Create file failed because the file is open.

ERR_UNKNOWN - Unknown error

## Bugs/Features/Comments

`sys.open_file()` does not set sys.errno for external database files.

## See Also

[`sys.close_file()`]({{< ref "closefile.md" >}})

[`sys.create_file()`]({{< ref "createfile.md" >}})

[`sys.create_tfile()`]({{< ref "createtfile.md" >}})

[`sys.read_file()`]({{< ref "readfile.md" >}})

Back to Top

## See Also

- [sys.close_file()]({{< ref "closefile.md" >}})
- [sys.create_file()]({{< ref "createfile.md" >}})
- [sys.create_tfile()]({{< ref "createtfile.md" >}})
- [sys.read_file()]({{< ref "readfile.md" >}})


