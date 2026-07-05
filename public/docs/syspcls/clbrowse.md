# sys.cl_browse()

## Purpose

`sys.cl_browse()` starts a file/dir browse dialog on the client.

## Usage

```text
nfiles = sys.cl_browse(<fullpath>,<startdir>,<deffilename>,<defext>,<filter>,<title>,<flags>);
```

## Arguments

- `alpha <retarray>` — A variable to hold the returned results.
If this is an aray var, then it can hold multiple fullpath names.
If there are more fullpaths returned than will fit in fullpath
sys_ret will be set to SYSRET_PARTIAL.
If all paths Chave been returned sys_ret will be set to SYSRET_OK.
- `alpha <startdir>` — The directory on the client to start the browse in.
If used, this should be a full path and any of the FC_ env vars can be used
by specifying something like ${FC_TEMP} or ${FC_HOME} etc.
- `alpha <deffilename>` — A default filename to use.
- `alpha <defext>` — A default extension without the "." to use
- `alpha <filter>` — A list of filters.
This is a comma separated list of "desc:*.ext" pairs.
In order to browse for both text files and rich text files set the
filter to something like "All Text Files:*.txt,Rich Text Files:*.rtf".
Use "All Files:*.*" to allow filtering on all files.
- `alpha <title>` — Set this to the non empty string to specify a custom title
on the dialog.
integer `<flags>` -
Combinations of
BF_DIR -
Browse only for a directory name.
BF_FILE -
Browse for file(s).
If neither BF_DIR nor BF_FILE is specified, BF_FILE is assumed.
If bith BF_DIR and BF_FILE is specified, BF_FILE is used.
BF_READ -
File should be readable.
This is not enforced and needs to be verified by the app when
opening the file.
BF_WRITE -
File should be readable.
This is not enforced and needs to be verified by the app when
opening the file.
BF_EXECUTE -
File should be executable.
This is not enforced and needs to be verified by the app when
opening the file.
BF_MUSTEXIST -
User can only specify an existing file.
BF_SHOWHIDDEN -
SHow files that normally would be hidden by the user.
BF_MULTISELECT -
Allow selecting of multiple files.
There is a limit and selecting too many files will prompt the
user to select fewer.
The limit is a memory limit.
32K for directory name (once only) plus long filename of each file
selected.
BF_RW -
Same BF_READ|BF_WRITE
BF_RWX -
Same BF_READ|BF_WRITE|BF_EXECUTE
BF_DEFAULT -
Defaults to BF_FILE|BF_READ

## Returns

- `integer <nfiles>` — The number of fullpath names that have been stored in
- `fullpath or fullpath[0]` — fullpath[n]
- `> 0` — `<nfiles>` fullpath names have been stored.
sys_ret may be set to SYSRET_PARTIAL to indicate more files were
selected but the fullpath array did not allow room for storing all of
them
- `0` — User probably cancelled out of the dialog.
sys_ret will be set to SYSRET_CANCEL.
- `-1` — Some Error - Depends on mode and error code set in sys.errno.
If the client doesn't support browsing, then sys_ret will
be set to SYSRET_ERRNOTSUPPORTED

## Where Used

`sys.cl_browse()` can be called from any 4c program as long as it is connected to an interactive client.

## Example

```text
The demo.clbrowse.1 program in the Demo app shows how to use sys.cl_browse().
```

## Description

`sys.cl_browse()` starts a file/dir browse dialog on the client. When processing the fullpath filenames, the application should must verify that the file can be opened with the desired access.

Requirements

4csrvr version 5.0.6-05 or higher

4cclient version 5.0.6-05 or higher

## Bugs/Features/Comments

If the path is truncated, there is no indication You should make sure that fullpath has room for the largest path that the user can select.

## See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})


