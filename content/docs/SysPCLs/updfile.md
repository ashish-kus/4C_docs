---
title: "sys.upd_file()"
description: "updates a rcd on disk"
weight: 338
draft: false
---

## Purpose

`sys.upd_file()` updates a rcd on disk.

## Usage

```text
ret = sys.upd_file(<file>, <flags>);
```

## Arguments

- `file <file>` — the asfile name of the file to update.
- `integer <flags>` — flags that can be combined using the '|' operator.
Allowable flags are:
- `F_DEFAULT` — update file based on last sys.read_file() access.
- `F_ADD` — Add new rcd.
If last sys.read_file() did not specify F_ADD, then read rcd first
specifying
F_ADD|F_NOMSG|F_KEYEQ|F_NODEBLOCK|F_LOCK
- `F_DELETE` — Delete rcd.
If last sys.read_file() did not specify F_DELETE, then read rcd first
specifying
F_DELETE|F_NOMSG|F_KEYEQ|F_NODEBLOCK|F_LOCK
- `F_MODIFY` — Modify rcd.
If last sys.read_file() did not specify F_MODIFY, then read rcd first
specifying
F_MODIFY|F_NOMSG|F_KEYEQ|F_NODEBLOCK|F_LOCK
- `F_NOMSG` — Don't print default message for READ errors and don't
prompt if delete OK for F_DEFAULT.
- `F_FORCE` — Don't read this file in the current upd mode

## Returns

- `0` — Update OK
- `-1` — Error - could be error in reading if F_DEFAULT not used,
update error, or user typed 'n' to Delete OK prompt.

## Where Used

`sys.upd_file()` can be called from anywhere but is quite often used from the EndFldLp PCL for screen programs.

## Example

```text
In the tutorial application, the program cm.fm calls updfiles()
from the EndFldLp PCL.
Here is that PCL.
It makes two calls to sys.upd_file().




/*
    End Field Loop PCL

    Name: updfiles

    Usage: updfiles();

    This PCL updates the file cust_mstr based on sys.mode

    For Add or modify modes, if no record exists in the
    zip code file, add one now
*/

if ( (sys.mode=="Add")||(sys.mode=="Modify") ) {
    zc_zip = cm_zip;
    if (sys.read_file(zip_code,F_ADD|F_NOMSG) == 0 ) {
        zc_city = cm_city;
        zc_state = cm_state;
        zc_phprefix = cm_phone[0](0,2);
        sys.upd_file(zip_code,F_DEFAULT);
    }
}
sys.upd_file(cust_mstr,F_DEFAULT);
```

## Description

`sys.upd_file()` allows updating a single rcd in a file. The file is normally updated based on the mode of the last access, but a mode can be specified with `sys.upd_file()` instead. If the mode specified with `sys.upd_file()` is different than the mode of the last read, then rcd is accessed in the updmode first, unless F_FORCE is specified, to allow for locking and for error checking.

sys.errno does not get set like it does with [`sys.read_file()`]({{< ref "readfile.md" >}}).

## See Also

[`sys.read_file()`]({{< ref "readfile.md" >}})

Back to Top

