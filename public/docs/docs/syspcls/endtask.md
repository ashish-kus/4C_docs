# sys.end_task()

## Purpose

`sys.end_task()` ends a CISAM transaction.

## Usage

```text
ret = sys.end_task();
```

## Arguments

None

## Returns

`<integer>` ret
- `0` — OK
- `-1` — CISAM Not Available or CISAM ERROR
For CISAM errors, a message has been displayed including the CISAM errno.

## Where Used

`sys.end_task()` can be called from anywhere as long as a CISAM task is in progress.

## Description

`sys.end_task()` ends a CISAM transaction. `sys.end_task()` calls `iscommit()`. You should read and understand the `iscommit()` documentation in the CISAM manuals.

## Bugs/Features/Comments

No Nested transactions.

Beware of ENORMOUS log files.

4C will eventually need to accomodate other file systems that allow transaction processing. A new more general call will probably replace `sys.end_task()`.

## See Also

[`sys.open_log()`]({{< ref "openlog.md" >}})

[`sys.close_log()`]({{< ref "closelog.md" >}})

[`sys.start_task()`]({{< ref "starttask.md" >}})

[`sys.abort_task()`]({{< ref "aborttask.md" >}})

Back to Top

## See Also

- [sys.open_log()]({{< ref "openlog.md" >}})
- [sys.close_log()]({{< ref "closelog.md" >}})
- [sys.start_task()]({{< ref "starttask.md" >}})
- [sys.abort_task()]({{< ref "aborttask.md" >}})


