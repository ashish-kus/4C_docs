---
title: "ConvertToString()"
weight: 51
draft: false
---

## Purpose

FCJSon::`ConvertToString()` converts a FCJSon object to a 4C alpha variable

## Usage

```text
avar = FCJSon::ConverToString(<jsonident>,[ <fmtflag> ]);
```

## Arguments

integer `<jsonident>` -
An FCJSon jsonident that identifies a json object.
- `integer <fmtflag>` — optional arg. Pass 1 if you want the json text formatted nicely,
0 to conserve space.
Default is 0 if not specified.

## Returns

alpha `<avar>` - The text representation of the JSon object. If the return is an empty string, there was an error.

## Where Used

FCJSon::`ConverToString()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ConverToString()` converts a FCJSon object to a 4C alpha variable. An alias for this function is FCJSon::[`Save()`]({{< ref "save.md" >}}).

Any FCJSon object can be converted to a string including simple objects of type double, int, bool, etc. This means that you can always fetch the alpha value of an object even if it is not a string. Something like the following will always return an alpha

aval = FCJSon::ConverToString(FCJSon::GetObject(`<jsonident>`,`<key>`));

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

