# sys.file_op()

## Purpose

`sys.file_op()` allows you to manipulate files on both the client and the server in a platform independent manner.

## Usage

```text
ret = sys.file_op(<cmd>,<flags>,<path1>[,<path2>]...);
```

## Arguments

- `<cmd>` — One of
FOP_COPY
FOP_MOVE
FOP_RENAME
FOP_DELETE
FOP_CREATEDIR
FOP_CREATEFILE
FOP_DELETEDIR
FOP_DELETEFILE
FOP_TESTEXIST
FOP_TESTDIR
FOP_TESTFILE
FOP_TESTDIREMPTY
FOP_TRUNCATE
FOP_SIZE32
- `<flags>` — Any combination of
FOP_DEFAULT
FOP_CLIENT -
Specify this in order to manipulate files on the client PC.
FOP_SILENT
FOP_VERBOSE
FOP_FORCE
FOP_RECURSIVE
- `<path1>,...<pathN>` — One or more file/directory paths.
The meaning and correct number of path arguments depends on
`<cmd>`.

## Returns

integer `<ret>` -
- `0` — OK, No Error/False
- `1` — No Error/True
- `< 0` — Error, and sys.errno will be set appropriately.

## Where Used

`sys.file_op()` can be called from anywhere.

## Example

```text
The demo.fileop.1 program in the demo application shows
how to use sys.file_op().
```

## Description

`sys.file_op()` allows the application to manipulate files on either the client or the server in a platform independent manner. The commands available and they way they operate are

FOP_COPY - Copy one or more files to another file or directory. Requires at least 2 `<path>` args. If more than 2 `<path>` args are specified, then the last one must be an existing directory. Returns 0 if copy succeeded, -1 otherwise.

FOP_MOVE - Requires at least 2 `<path>` args. If more than 2 `<path>` args are specified, then the last one must be an existing directory. Returns 0 if move succeeded, -1 otherwise.

FOP_RENAME - Rename a file or directory. Requires exactly 2 `<path>` args. Returns 0 if rename succeeded, -1 otherwise.

FOP_DELETE - Delete one or more files/directories. Allows any number of `<path>` args up to maximum of 14. If deleting a directory, then it must be empty unless the FOP_RECURSIVE flage is set. Returns 0 if delete succeeds, -1 otherwise.

FOP_CREATEDIR - Create a single directory. Requires exactly one arg. If `<path1>` does not exist it is created as a directory. If FOP_FORCE is specified `<path1>` is recursively removed before attempting the create. Any needed higher level directories will be created as well. Returns 0 if create succeeds, -1 otherwise.

FOP_CREATEFILE - Create a single file. Requires exactly one arg. If `<path1>` does not exist it is created as an empty file. If FOP_FORCE is specified `<path1>` is recursively removed before attempting the create. Any needed higher level directories will be created as well. Returns 0 if create succeeds, -1 otherwise.

FOP_DELETEDIR - Delete directory. Requires exactly one arg. Returns 0 if delete succeeds, -1 otherwise.

FOP_DELETEFILE - Delete file. Requires exactly one arg. Returns 0 if delete succeeds, -1 otherwise.

FOP_TESTEXIST - Test for existence of `<path1>`. Requires exactly one arg. `<path1>` may be an existing file or directory. Return 0 if `<path1>` does not exist, 1 if it does, and -1 for error.

FOP_TESTDIR - Test for existence of directory. Requires exactly one arg. Return 0 if `<path1>` does not exist, 1 if it does exist and is a directory, -1 for error.

FOP_TESTFILE - Test for existence of file. Requires exactly one arg. Return 0 if `<path1>` does not exist, 1 if it does exist and is a file, -1 for error.

FOP_TESTDIREMPTY - Test if `<path1>` is an empty directory. Requires exactly one arg. Return 0 if `<path1>` is a non empty directory, 1 if `<path1>` is an empty diretory, -1 for error.

FOP_TRUNCATE - Truncate `<path1>`. Requires exactly one arg. `<path1>` must be an existing file. Return 0 if file truncated successfully, -1 for error.

FOP_SIZE32 - Return size of `<path1>`. Requires exactly one arg. `<path1>` must be an existing file. Return the file size if file is accesible and size is <= 2,147,483,647, -1 for error, FOP_SIZE32_OVERFLOW if the filesize is > 2,147,483,647.

Any of the `<path>` arguments can be an environment variable that is expanded on the target machine before executing the operation. Use the ${ENVVAR} syntax to specify an envvar for a `<path>`.

`<path>` arguments can also use the special '*' character to indicate multiple filenames.

When `sys.file_op()` returns -1, `sys.errno()` may be set to any of the following:

FC_CMD_ERR - Invalid `<cmd>`.

FC_ARG_ERR - Invalid number of arguments.

FC_FILENF_ERR - One of `<pathN>` should exist, but doesn't.

FC_FILEPERM_ERR - At least one of `<pathN>` could not be accessed due to permissions.

FC_ISDIR_ERR - At least one of `<pathN>` should not exist as a directory, but does.

FC_NOTDIR_ERR - At least one of `<pathN>` should exist as a directory, but doesn't.

FC_NOTEMPTY_ERR - At least one of `<pathN>` is a directory that should be empty but is not.

FC_NFILE_ERR - Too many open files.

FC_FILEEXISTS_ERR - At least one of `<pathN>` should not exist but does.

FC_UNKNOWN_ERR - Unknown error.

Requirements

4cserver Version 4.8.1 or later.

4cclient Version 4.8.1 or later when FOP_CLIENT is specified.

## See Also

Back to Top


