# sys.close_log()

## Purpose

`sys.close_log()` closes the CISAM log file.

## Usage

```text
ret = sys.close_log();
```

## Arguments

None

## Returns

Always returns 0.

## Where Used

`sys.close_log()` can be called from anywhere.

## Description

See your CISAM documentation for detailed description of the CISAM logfile.

## Bugs/Features/Comments

As other databases are added to 4C this call will probably be changed or another added to account for differences in the databases and to make the 4C programs transparent to them.

## See Also

[`sys.open_log()`]({{< ref "openlog.md" >}})

[`sys.start_task()`]({{< ref "starttask.md" >}})

[`sys.end_task()`]({{< ref "endtask.md" >}})

[`sys.abort_task()`]({{< ref "aborttask.md" >}})

Back to Top

## See Also

- [sys.open_log()]({{< ref "openlog.md" >}})
- [sys.start_task()]({{< ref "starttask.md" >}})
- [sys.end_task()]({{< ref "endtask.md" >}})
- [sys.abort_task()]({{< ref "aborttask.md" >}})


