---
title: "sys.cbp_exit()"
description: "exits the paste loop"
weight: 22
draft: false
---

## Purpose

`sys.cbp_exit()` exits the paste loop.

## Usage

```text
sys.cbp_exit([<code>]);
```

## Arguments

- `integer <code>` — Optional code.  Currently unused.

## Returns

None

## Where Used

`sys.cbp_exit()` can be called anytime during the paste loop but when used is usually called during PasteInit.

## Description

`sys.cbp_exit()` exits the paste loop. The most likely reason to call `sys.cbp_exit()` is that the user has tried to paste an incompatible type of data to the 4C application. After calling `sys.cbp_exit()`, 4C will next process the PasteEnd state.

## See Also

Cut/Copy/Paste Overview

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})

