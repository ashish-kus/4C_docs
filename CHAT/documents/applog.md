---
title: "sys.app_log()"
description: "adds an entry to the application log"
weight: 1
draft: false
---

## Purpose

`sys.app_log()` adds an entry to the application log.

## Usage

```text
sys.app_log(<type>,<typedet>,<severity>,<message>);
```

## Arguments

- `alpha <type>` — An application specific type up 20 chars.
- `alpha <typedet>` — Detail of the type if needed. Up to 30 chars.
- `integer <severity>` — a value indicating how important the log message is.
The higher the serverity the more important the message.
- `alpha <message>` — A detailed message up to 200 characters.

## Returns

None

## Where Used

`sys.app_log()` can be called from anywhere.

## Example

```text
The sys.app_trace() Global PCL calls sys.app_log.
```

## Description

Every 4C application maintains an application log starting with 4cserver version 6.2.7. The application log is automatically purged as needed and you can configure the frequency of the purging through the System COnfiguration for the application. You can view entries in the the application by running the "Application Log" entry under "Logging" in the main sys.menu.tv developers menu.

Most entries in the application log are made by the application programs mostly for the purpose of logging events that can be reviewed later. However, there are some exceptional conditions that are automatically logged by the system.

Requirements

4cserver version 6.2.7 or later

## Bugs/Features/Comments

Bugs

## See Also

See Also

[`sys.app_trace()`]({{< ref "apptrace.md" >}})

Back to Top

## See Also

- [Global PCLs List]({{< ref "_index.md" >}})
- [sys.app_trace()]({{< ref "apptrace.md" >}})

