---
title: "sys.put_env()"
description: "sets an environment variable"
weight: 246
draft: false
---

## Purpose

`sys.put_env()` sets an environment variable.

## Usage

```text
<ret> = sys.put_env(<ENVVAR>,<value>);
```

## Arguments

- `alpha <ENVVAR>` — the name of the environment variable.
- `alpha <value>` — The new value for the environment variable.

## Returns

integer `<ret>`
- `0` — normal return
- `-1` — Error setting the value

## Where Used

`sys.put_env()` can be called from anywhere.

## Description

`sys.put_env()` is used to modify environment variables. The variables modified will be accessible to any external programs called outside of 4C. If you modify XLDATA, then it affects any subsequent opens of files. If you modify XLPROG, then it affects any subsequent program calls. Modifying XLSYSTEM is not recommended.

## See Also

[`sys.get_env()`]({{< ref "getenv.md" >}})

[`sys.get_clenv()`]({{< ref "getclenv.md" >}})

Back to Top

## See Also

- [sys.get_env()]({{< ref "getenv.md" >}})
- [sys.get_clenv()]({{< ref "getclenv.md" >}})

