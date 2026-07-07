---
title: "sys.stop_tab()"
description: "stops the tabbing initiated b"
weight: 329
draft: false
---

## Purpose

`sys.stop_tab()` stops the tabbing initiated by the user pressing the `<tab>` key.

## Usage

```text
sys.stop_tab();
```

## Arguments

None

## Returns

None

## Where Used

`sys.stop_tab()` can be called anytime during field processing. The most likely place to call it is from the StFld PCL of the field that wants to force input.

## Description

`sys.stop_tab()` ends the tabbing action started by the user pressing the `<tab>` key.

## Bugs/Features/Comments

There really should be a bootstrap defined field to allow this also.

## See Also

Back to Top

