---
title: "TextBegin()"
weight: 40
draft: false
---

## Purpose

FCPdf::`TextBegin()` modifies the graphics mode so that text writing is possible.

## Usage

```text
rc = FCPdf::TextBegin(<pageident>);
```

## Arguments

- `integer <pageident>` — A valid page ident.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid pageident or invalid graphics mode

## Where Used

FCPdf::`TextBegin()` can be called anytime you have a valid pageident to a FCPdf page with current graphics mode being PageDescriptionMode

## Description

FCPdf::`TextBegin()` modifies the graphics mode so that text writing is possible.

The only valid graphics mode that allows calls to FCPdf::`TextBegin()` is PageDescriptionMode.

If the call to  FCPdf::`TextBegin()` is successful, the new graphics mode is TextObjectMode.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

