---
title: "DocLoadTTFont()"
weight: 11
draft: false
---

## Purpose

FCPdf::`DocLoadTTFont()` returns the name of a true type font loaded from a file.

## Usage

```text
afontname = FCPdf::DocLoadTTFont(<docident>,<fontfullpath>);
```

## Arguments

- `integer <docident>` — A valid docident
- `alpha <fontfullpath>` — The full path name to the font file on the 4C Server machine.

## Returns

- `alpha <afontname>` — The name of the font to use in calls to FCPdf that expect a font name.

## Where Used

FCPdf::`DocLoadTTFont()` can be called anytime you have a valid docident.

## Description

FCPdf::`DocLoadTTFont()` returns the name of a true type font loaded from a file.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

