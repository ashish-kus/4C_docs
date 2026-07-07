---
title: "sys.cbp_getnflds()"
description: "returns the number of flds in the current clipboar"
weight: 27
draft: false
---

## Purpose

`sys.cbp_getnflds()` returns the number of flds in the current clipboard paste operation.

## Usage

```text
nflds = sys.cbp_getnflds();
```

## Arguments

None

## Returns

- `-1` — No Paste Available.
- `>= 0` — Number of flds in each clipboard paste item.

## Where Used

`sys.cbp_getnflds()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_getnflds()` returns the number of flds in the current clipboard paste operation. If the format is a 4C clipboard format, then the number of fields will is the number of fields defined in the 4c file definition used as the template. If the format is a text format paste, then the number of fields will be one.

## See Also

Cut/Copy/Paste Overview

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})

