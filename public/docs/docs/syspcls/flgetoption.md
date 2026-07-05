# sys.fl_getoption()

## Purpose

`sys.fl_getoption()` returns the value of the requested file option.

## Usage

```text
aval = sys.fl_getoption(<asfile>,<optname>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file to get the option for
- `alpha <optname>` — The option name to get the value for.
Current supported options are "Filename", "AsFile", AsFileName", "ExtName", "ExtType",
"AccType", and "AccessType".
"AsFile" and "AsFileName" are synonyms.
"AccessType" and "AccType" are synonyms.
`<optname>` is case insensitive so specifying "ExtName" is equivalent to "extname"

## Returns

- `alpha <aval>` — A string representing the current value of `<optname>`.
When "" is returned, you need to check sys_ret to determine if it is an error or not.

## Where Used

`sys.fl_getoption()` can be called from anywhere.

## Description

`sys.fl_getoption()` allows the application to get the current value of some application settable file options. The options currently supported are

"Filename" - Returns the alpha 4C filename of the file. This is equivalent to calling sys.get_filename(`<asfile>`).

"AsFile" or "AsFileName" - returns the AsFile name of the file. This is equivalent to calling sys.get_asfile(`<asfile>`).

"ExtType" - For an External file this will return the ExtType of that file. If `<asfile>` is not External, "" is returned and sys_ret is set to SYSRET_ERROR.

"ExtName" - This will return the external filename of the file if it has been set. It may return "" if the file definition does not specifiy an external name, the application has not explicitly set it, and the file has not been opened by the program yet.

"AccType" or "AccessType" - Returns the access type of the file. Currently, one of the following is always returned

"4C" "CISAM" "FixSeq" "VarSeq" "JISAM64" "External" "Binary"

The 4C AccessType is also known as JISAM32

Requirements

4cserver version 6.4.7 or later

## See Also

[`sys.fl_setoption()`]({{< ref "flsetoption.md" >}})

[`sys.set_exttype()`]({{< ref "setexttype.md" >}})

[`sys.set_extfname()`]({{< ref "setextfname.md" >}})

`sys.fl_getoption()`

[`sys.get_exttype()`]({{< ref "getexttype.md" >}})

[`sys.ext_filename()`]({{< ref "extfilename.md" >}})

Back to Top

## See Also

- [sys.fl_setoption()]({{< ref "flsetoption.md" >}})
- [sys.set_exttype()]({{< ref "setexttype.md" >}})
- [sys.set_extfname()]({{< ref "setextfname.md" >}})
- [sys.fl_getoption()]({{< ref "flgetoption.md" >}})
- [sys.get_exttype()]({{< ref "getexttype.md" >}})
- [sys.ext_filename()]({{< ref "extfilename.md" >}})


