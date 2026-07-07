---
title: "req4c_get_num_results()"
weight: 29
draft: false
---

## Purpose

`req4c_get_num_results()` returns the the number of ResultRows in `<resultset>`

## Usage

```text
$numresults = req4c_get_num_results(<resultset>);
```

## Arguments

- `<resultset>` — A ResultSet resource returned by req4c_run().

## Returns

- `false` — Error
Otherwise the number of ResultRows in `<resultset>`

## Where Used

`req4c_get_num_results()` can be called anytime you have a ResultSet and need to know the number of ResultRows it holds.

## Description

`req4c_get_num_results()` returns the the number of ResultRows in `<resultset>` After getting the number of ResultRows in the ResultSet you will probably want to process them using one of the req4c_fetch functions.

## Bugs/Features/Comments

`req4c_get_num_results()` does not access the network

[`req4c_get_error_num()`]({{< ref "geterrornum.md" >}}) leaves the current message list intact and does not reset $_REQ4C['errno'] or $_REQ4C['errmsg']

## See Also

[`req4c_get_apprc()`]({{< ref "getapprc.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_get_apprc()]({{< ref "getapprc.md" >}})

