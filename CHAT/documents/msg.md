---
title: "sys.err_msg()"
description: "- Displays an status messag"
weight: 226
draft: false
---

## Purpose

`sys.err_msg()` - Displays an status message

## Usage

```text
sys.msg([Arg1-Arg15]);
```

## Arguments

- `AnyType` — arg1,arg2,...,arg15 - The parts of the msg

## Where Used

`sys.msg()` can be called from anywhere.

## Example

```text
sys.msg("Processing...",sys.pr_name);
```

## Description

`sys.msg()` displays a message on in the status area and does not wait for any user response.

Requirements

4CServer version 5.0.6-05 or higher is required for using non alpha arguments

## Bugs/Features/Comments

`sys.msg()` is obsolete. Use [`sys.message()`]({{< ref "message.md" >}}) instead.

## See Also

[`sys.message()`]({{< ref "message.md" >}})

`sys.err_msg()`

Back to Top

## See Also

- [sys.message()]({{< ref "message.md" >}})
- [sys.err_msg()]({{< ref "errmsg.md" >}})

