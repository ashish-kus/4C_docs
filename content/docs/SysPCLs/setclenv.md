---
title: "sys.set_clenv()"
description: "allows the server to set an environmen"
weight: 272
draft: false
---

## Purpose

`sys.set_clenv()` allows the server to set an environment variable on the client.

## Usage

```text
sys.set_clenv(<envvar>,<envval>);
```

## Arguments

- `alpha <envvar>` — The name of the environment variable.
- `alpha <envval>` — The value to set the environment variable to.

## Returns

- `0` — Always returns 0

## Where Used

`sys.set_clenv()` is most useful when the you are going to have the 4cclient run another program and you need that program to have access to special info that you don't want to pass as arguments to the program.

## Description

`sys.set_clenv()` sets an environment variable in the current client process. Only the running client and any process that the client starts have access to environment variables set this way.

Requirements

4CServer version 4.8.1 and later

4CClient version 4.8.1 and later

## See Also

[`sys.get_clenv()`]({{< ref "getclenv.md" >}})

[`sys.get_env()`]({{< ref "getenv.md" >}})

[`sys.put_env()`]({{< ref "putenv.md" >}})

Back to Top

## See Also

- [sys.get_clenv()]({{< ref "getclenv.md" >}})
- [sys.get_env()]({{< ref "getenv.md" >}})
- [sys.put_env()]({{< ref "putenv.md" >}})

