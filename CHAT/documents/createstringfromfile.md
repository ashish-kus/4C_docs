---
title: "CreateStringFromFile()"
weight: 60
draft: false
---

## Purpose

FCJSon::`CreateStringFromFile()` creates a string JSon object with the value set from the entire contents of a file.

## Usage

```text
jsonident = FCJSon::CreateStringFromFile(<fullpath>);
```

## Arguments

- `alpha <fullpath>` — The fullpath to the content file on the 4c server machine.

## Returns

- `integer <jsonident>` — The ident to use when referring to this object.

## Where Used

FCJSon::`CreateStringFromFile()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`CreateStringFromFile()` creates a string JSon object with the value set from the entire contents of a file.

The returned jsonident can then be used in calls that require a jsonident to an object.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

