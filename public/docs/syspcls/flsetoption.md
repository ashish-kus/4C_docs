# sys.fl_setoption()

## Purpose

`sys.fl_setoption()` allows the application to set one or more file options at runtime

## Usage

```text
ret = sys.fl_setoption(<asfile>,<optname>, <optval> [,<optname>, <optval> ...];



or
ret = sys.fl_setoption(<asfile>,<optname=optval> [,<optname=optval> ...];
```

## Arguments

- `asfile <asfile>` — The asfile that is having the options set
- `alpha <optname>` — The options being set.
Current supported options are "ExtName", "ExtType", "AccType", and "AccessType".
"AccessType" and "AccType" are synonyms.
- `alpha <optval>` — The value the option should be set to.
See the description below for valid values of `<optval>` for each `<optname>`

## Returns

- `integer <ret>` — The number of options actually set is returned.
The number of invalid options is returned in sys_ret.
If no options were set, -1 is returned and sys_ret is set to SYSRET_ERROR.

## Where Used

`sys.fl_setoption()` can be called from anywhere

## Description

`sys.fl_setoption()` allows the application to set one or more file options at runtime Option names and values are specified as pairs that are either individual arguments such as "name1","val1","name2","val2" or combined like "name1=val1","name2=val2", etc.

If `<asfile>` is currently open, it is first closed by `sys.fl_setoption()` even if no options end up being set.

Current options that are modifiable by the application in at least some scenarios are

"ExtName" - This the external name for the file. It is settable for all file access types under all circumstances and is equivalent to the [`sys.set_extfname()`]({{< ref "setextfname.md" >}}) SysPCL. It is ok too set this to the empty string which will cause the file to use it's default external name.

"AccType" or "AccessType" - The access type of a file can only be changed to one of "4C", "JISAM64", or "External" and only if the current access type is also one those types. Trying to change the access type of a "FixSeq", "VarSeq", or "CISAM" file is not supported.

"ExtType" - You can change the ExtType of External files only. If you are changing a non external access type file to an external access type and want to set the ExtType also, you must change the access type to external first, either in the same call to `sys.fl_setoption()` or in an earlier call. Setting the ExtType of a file in `sys.fl_setoption()` is equivalent to calling sys.set_exttype(`<asfile>`, `<exttype>`)

Requirements

4csrvr version 6.4.7 or later

## See Also

`sys.fl_setoption()`

[`sys.set_extfname()`]({{< ref "setextfname.md" >}})

[`sys.set_exttype()`]({{< ref "setexttype.md" >}})

[`sys.fl_getoption()`]({{< ref "flgetoption.md" >}})

[`sys.get_exttype()`]({{< ref "getexttype.md" >}})

[`sys.ext_filename()`]({{< ref "extfilename.md" >}})

Back to Top

## See Also

- [sys.fl_setoption()]({{< ref "flsetoption.md" >}})
- [sys.set_extfname()]({{< ref "setextfname.md" >}})
- [sys.set_exttype()]({{< ref "setexttype.md" >}})
- [sys.fl_getoption()]({{< ref "flgetoption.md" >}})
- [sys.get_exttype()]({{< ref "getexttype.md" >}})
- [sys.ext_filename()]({{< ref "extfilename.md" >}})


