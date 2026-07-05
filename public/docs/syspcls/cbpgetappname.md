# sys.cbp_getappname()

## Purpose

`sys.cbp_getappname()` returns the 4C application name where 4C data was copied from.

## Usage

```text
<appname> = sys.cbp_getappname();
```

## Arguments

None

## Returns

alpha `<appname>`
- `""` — No 4C Format Paste Available.
- `alpha <appname>` — The application name originating the copy.

## Where Used

`sys.cbp_getappname()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_getappname()` returns the 4C application name where 4C data was copied from. If the paste did not originate from a 4C application, then the application name will not be known and an empty string will be returned.

## See Also

Cut/Copy/Paste Overview

[`sys.cbp_getipaddr()`]({{< ref "cbpgetipaddr.md" >}})

[`sys.cbp_getport()`]({{< ref "cbpgetport.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbp_getipaddr()]({{< ref "cbpgetipaddr.md" >}})
- [sys.cbp_getport()]({{< ref "cbpgetport.md" >}})


