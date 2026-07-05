# sys.cbp_getport()

## Purpose

`sys.cbp_getport()` returns the port number of the 4csrvr where 4C data was copied from.

## Usage

```text
<portno> = sys.cbp_getport();
```

## Arguments

None

## Returns

- `integer` — `<portno>`
- `-1` — No 4C Format Paste Available.
- `> 0` — The port number of 4csrvr originating the copy.

## Where Used

`sys.cbp_getportno()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_getport()` returns the port number of the 4csrvr where 4C data was copied from. If the paste did not originate from a 4C application, then the port num will not be known and -1 will be returned.

## See Also

Cut/Copy/Paste Overview

[`sys.cbp_getappname()`]({{< ref "cbpgetappname.md" >}})

[`sys.cbp_getipaddr()`]({{< ref "cbpgetipaddr.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbp_getappname()]({{< ref "cbpgetappname.md" >}})
- [sys.cbp_getipaddr()]({{< ref "cbpgetport.md" >}})


