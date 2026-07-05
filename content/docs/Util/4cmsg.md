---
title: "4cmsg"
weight: 2
draft: false
---

## Purpose

4cmsg allows you to send a message to all 4c clients at once.

## Usage

```text
4cmsg <option> [ <optarg> ] ...
```

## Options

- `-m <message>` — Mandatory Message text
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
4cmsg -m "Pizza Party in the Board Room at 4:00pm"
```

## Description

4cmsg allows you to send one message to all 4cusers at once. You must me super user or administrator to use this program.

## Bugs/Features/Comments

Neither the 4ccl client nor the xled client can display messages from 4cmsg.

## See Also

```text
4cshutdown
```

Back to Top

## See Also

- [4cshutdown]({{< ref "4cshutdown.md" >}})

