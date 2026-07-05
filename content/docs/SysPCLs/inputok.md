---
title: "sys.input_ok()"
description: "lets the application know if the curren"
weight: 195
draft: false
---

## Purpose

`sys.input_ok()` lets the application know if the current field will be input.

## Usage

```text
if (sys.input_ok()) do_something();
```

## Arguments

None

## Returns

- `0` — Either there is not a current field or the current
field is not going to allow input.
- `1` — Field will allow user input.

## Where Used

`sys.input_ok()` should be called only from the SFld PCL for any field.

## Description

`sys.input_ok()` and be used to determine if the current field will allow input. This may be useful to know in case the field is being processed but will not allow input due to tabbing to another field or user pressing `<accept>` key or something similar.

## See Also

Back to Top

