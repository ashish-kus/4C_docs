# sys.cbp_getcount()

## Purpose

`sys.cbp_getcount()` returns the number of clipboard paste items available.

## Usage

```text
count = sys.cbp_getcount();
```

## Arguments

None

## Returns

- `-1` — No Paste Available.
- `>= 0` — count of items available.

## Where Used

`sys.cbp_getcount()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_getcount()` returns the number of clipboard paste items available.

## See Also

Cut/Copy/Paste Overview

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})


