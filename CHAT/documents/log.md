---
title: "req4c_log()"
weight: 35
draft: false
---

## Purpose

`req4c_log()` writes a string to the req4c log file

## Usage

```text
req4c_log($msg);
```

## Arguments

- `$msg` — A non empty string

## Returns

- `false` — Error
- `true` — $msg written to log

## Where Used

`req4c_log()` can be called from anywhere.

## Description

If the req4c configuration defines a log file, then the lib4cphp library will write informational messages to this log. The log file is periodically flushed automatically so there is no need for the application to worry about this. `req4c_log()` allows the application to write to this log file as well. This may be helpful in debugging.

## Bugs/Features/Comments

`req4c_log()` does not access the network

`req4c_log()` leaves the current message list intact.

## See Also

req4c Function List

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})

