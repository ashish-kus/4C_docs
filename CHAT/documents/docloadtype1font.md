---
title: "DocLoadType1Font()"
weight: 12
draft: false
---

## Purpose

FCPdf::`DocLoadType1Font()` returns the name of a type1 font loaded from a file.

## Usage

```text
afontname = FCPdf::DocLoadType1Font(<docident>,<afmfullpath>, <pfbfullpath>);
```

## Arguments

- `integer <docident>` — A valid docident
- `alpha <afmfullpath>` — The full path name to the afm fontfile on the 4C Server machine.
- `alpha <pfbfullpath>` — The full path name to the pfb fontfile on the 4C Server machine.

## Returns

- `alpha <afontname>` — The name of the font to use in calls to FCPdf that expect a font name.

## Where Used

FCPdf::`DocLoadType1Font()` can be called anytime you have a valid docident.

## Description

FCPdf::`DocLoadType1Font()` returns the name of a type1 font loaded from a file.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

