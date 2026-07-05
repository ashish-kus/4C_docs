---
title: "Save()"
weight: 81
draft: false
---

## Purpose

FCJSon::`Save()` saves a FCJSon object to a 4C alpha variable

## Usage

```text
avar = FCJSon::Save(<jsonident>,[ <fmtflag> [, <noslashescapeflag>] ]);
```

## Arguments

integer `<jsonident>` -
An FCJSon jsonident that identifies a json object.
- `integer <fmtflag>` — optional arg. Pass 1 if you want the json text formatted nicely,
0 to conserve space.
Default is 0 if not specified.
integer `<noslashescapeflag>` -
Optional arg that when 1 tells FCJSon that it should not escape slash characters in the
output.
The default is 0 if not specified.

## Returns

alpha `<avar>` - The text representation of the JSon object. If the return is an empty string, there was an error.

## Where Used

FCJSon::`Save()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`Save()` saves a FCJSon object to a 4C alpha variable. An alias for this function is FCJSon::[`ConvertToString()`]({{< ref "converttostring.md" >}}).

Any FCJSon object can be converted to a string including simple objects of type double, int, bool, etc. This means that you can always fetch the alpha value of an object even if it is not a string. Something like the following will always return an alpha

aval = FCJSon::Save(FCJSon::GetObject(`<jsonident>`,`<key>`));

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

