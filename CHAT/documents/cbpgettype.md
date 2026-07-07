---
title: "sys.cbp_gettype()"
description: "returns the type of clipboard paste available"
weight: 30
draft: false
---

## Purpose

`sys.cbp_gettype()` returns the type of clipboard paste available.

## Usage

```text
type = sys.cbp_gettype();
```

## Arguments

None

## Returns

- `""` — No Paste Available.
- `"Text"` — Text paste available
- `filename` — 4C format paste is available using format of filename.

## Where Used

`sys.cbp_gettype()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_gettype()` returns the type of clipboard paste available. The type of a paste is either "Text" or a 4C filename. The type returned when the data in the clipboard is not from a 4C application will always be "Text"

## See Also

Cut/Copy/Paste Overview

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})

