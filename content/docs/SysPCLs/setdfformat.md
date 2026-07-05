---
title: "sys.set_dfformat()"
description: "changes the format of a display field at ru"
weight: 281
draft: false
---

## Purpose

`sys.set_dfformat()` changes the format of a display field at run time.

## Usage

```text
ret = sys.set_dfformat(<dflabel>,<fmt>);
```

## Arguments

- `dflabel <dflabel>` — the unique label id of the display field.
This is in the display field specs and normally is upper case.
- `alpha <fmt>` — The new format to use.
`<fmt>` must be a valid format to use with the display field.

## Returns

integer ret
- `0` — OK - format set OK
- `-1` — Some error, probably illegal `<dflabel>`.

## Where Used

`sys.set_dfformat()` can be called from anywhere.

## Example

```text
The bootstrap program sys.get.answer uses sys.set_dfformat()
to set the format of the answ display field based on the
passed args.
The code that does this is in the init PCL.




prompt = argv[1];
defanswer = argv[2];
if ((maxlen = atoi(argv[3])) > 32)
        maxlen = 32;
flags = atoi(argv[4]);
$row_ofst = min(sys.get_msgline1()*1.0,sys.get_msgline2()*1.0) - 2;
if (flags & INP_QUICK)
        sys.set_dfoption(ANSWER,"qi");
if (flags & INP_UC)
        fmtchar = 'X'
else
        fmtchar = 'x'
fmt = fmtchar+'('+itoa(maxlen)+')'
sys.set_dfformat(ANSWER,fmt);
```

## Description

`sys.set_dfformat()` is used to dynamically change the format of a display field at run time. The format that is set must be compatible with the data type of the display field. Using `sys.set_dfformat()` allows you to write one simple routine that may be used to get many types of input based on passed args.

## See Also

[`sys.set_dfoption()`]({{< ref "setdfoption.md" >}}) [`sys.set_dfattr()`]({{< ref "setdfattr.md" >}})

Back to Top

