# sys.read_file()

## Purpose

`sys.read_file()` accesses a record in a file.

## Usage

```text
ret = sys.read_file(<file>, <flags> [, <keyno> ]);
```

## Arguments

- `file <file>` — The asfile name of the file you are reading.
- `integer <flags>` — Any number of predefined flags that can be
combined using the '|' operator.
See below for flag descriptions.
- `integer <keyno>` — optional arg that allows specification of
key number to read by.
The primary key number is 0, first secondary key 1, etc.
Allowable flags are:
- `F_DEFAULT` — read based on sys.mode.
If error, sys.next_field will be set to sys.cur_field.
This flag is only used by screen programs that allow user setting
of sys.mode through the function keys.
It is normally used only on the main file of the screen program.
F_CONTINUE -
If specified with F_DEFAULT in a non scrolling program and sys.mode is
either "Lookup" or "Delete" continue processing all fields without prompting
for input.
Without F_CONTINUE, the 4C program would skip to the EndFldLoop processing
for "Delete" and jump back to the first field for "Lookup".
- `F_ADD` — read in add mode.
Rcd will be locked unless F_NOLOCK specified.
Unless F_NODEBLOCK or F_OVERRIDE specified, data fields are cleared.
Error if rcd exists unless F_MODIFY flag specified also.
- `F_DELETE` — read assuming record will be deleted.
Unless F_NOLOCK specified, rcd will be locked first.
Error if rcd does not exist.
- `F_MODIFY` — read assuming record will be modified.
Unless F_NOLOCK specified, rcd will be locked first.
Unless F_NODEBLOCK specified, data fields are updated.
Error if rcd does not exist unless F_ADD specified also.
- `F_VERIFY` — read to verify rcd exists, but do not
copy data into any fields.
Unless F_LOCK specified rcd will not be locked.
Error if record does not exist and sys.next_field
will be set to sys.cur_field.
- `F_VERIFYNE` — read to verify rcd does not exist but
do not clear data from data fields or set new data into them.
Unless F_LOCK specified rcd will not be locked.
Error if record exists and sys.next_field
will be set to sys.cur_field.
- `F_LOOKUP` — read in lookup mode.
Unless F_LOCK specified rcd will not be locked.
Unless F_NODEBLOCK specified, data fields are updated.
Error if rcd does not exist.
- `F_NOMSG` — suppresses default error messages so you can supply your own.
- `F_NOLOCK` — suppress default rcd locking even for update modes.
- `F_LOCK` — Force rcd locking even in non-update modes.
- `F_OVERRIDE` — Leave data fields untouched for F_ADD.
- `F_WAIT` — When locking, wait for lock rather than return error.
- `F_KEYEQ` — Read exact key only - THIS IS THE DEFAULT.
- `F_KEYGEQ` — If exact key not there, read next rcd with key greater.
- `F_KEYLEQ` — If exact key not there, read prev rcd with key less.
- `F_KEYGT` — Read next rcd with key greater than current key val.
- `F_KEYLT` — Read prev rcd less than current key val.
- `F_SEQNEXT` — Read next sequential rcd.
- `F_SEQPREV` — Read prev sequential rcd.
- `F_DRNEXT` — Equivalent to F_SEQNEXT except that if no `<keyno>` var is specified,
it will use the `<keyno>` used in sys.dr_init() or sys.seek_key().
This is useful when using sys.dr_init() or sys.seek_key() to initiate sequential
reading of a file without actually using sys.run_driver().
- `F_NODEBLOCK` — Do not update or clear data fields.

## Returns

- `0` — File accessed OK.
- `-1` — Some Error - Depends on mode and error code set in sys.errno.
The values sys.errno may have are:
- `1` — Record Not Found
- `2` — Cannot Lock Record
- `3` — Record Already Exists

## Where Used

`sys.read_file()` can be called from anywhere. Normally when using the F_DEFAULT flag, `sys.read_file()` will be called from an EndField PCL of a screen program to access the main file of that screen.

## Example

```text
There are many examples of sys.read_file() in the tutorial application.
Some of them are listed below.




/* from global PCL cm_read */
cm_code = cmcode;
if (sys.read_file(cust_mstr,F_LOOKUP|F_NOMSG) < 0) {
    if (cm_code == "")
        return(1); /* Return 1 for null cmcode */
    return(-1);
}
return(0);



/* from op.call.de.sel addcall() */
while (1) {
    if (sys.read_file(call_hdr,F_ADD|F_NOMSG|F_NODEBLOCK) < 0) {
        if (sys.errno == 3) { /* Rcd Already Exists */
            ch_num += 1;        /* Try for next */
            continue;
        }
        /* Different error - msg and exit PCL */
        sys.err_msg("Error Trying to Add - TRY AGAIN");
        return;
    }
    break;
}
```

## Description

`sys.read_file()` is the main way to access files in 4C. You can also use `sys.run_driver()` to read files sequentially, but to read a file by exact key, you must use `sys.read_file()`. Basically `sys.read_file()` reads a rcd in a file using an optional keynumber (0 by default) and a set flags. The flags determine most of what `sys.read_file()` does and they are described above. `sys.read_file()` can read sequentially or by key and may indicate thet a rcd will be updated later by specifying an update mode.

Requirements

F_CONTINUE requires 4csrvr version 4.6.2 or higher.

## See Also

`sys.run_driver()`

[`sys.seek_key()`]({{< ref "seekkey.md" >}})

[`sys.set_ekey()`]({{< ref "setekey.md" >}})

[`sys.set_skey()`]({{< ref "setskey.md" >}})

[`sys.upd_file()`]({{< ref "updfile.md" >}})

Back to Top

## See Also

- [sys.run_driver()](https://www.4csoftware.com/docs/SysPCLs/rundriver.html)
- [sys.seek_key()]({{< ref "seekkey.md" >}})
- [sys.set_ekey()]({{< ref "setekey.md" >}})
- [sys.set_skey()]({{< ref "setskey.md" >}})
- [sys.upd_file()]({{< ref "updfile.md" >}})


