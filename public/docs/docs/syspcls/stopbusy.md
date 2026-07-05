# sys.stop_busy()

## Purpose

`sys.stop_busy()` stops a progress bar on the client.

## Usage

```text
sys.stop_busy(<name>);
```

## Arguments

- `<name>` — The alpha that was used to start this progress
bar in
sys.start_busy()

## Returns

- `-1` — means no progress bar with name `<name>` was found.
Otherwise 0 is returned.

## Where Used

`sys.stop_busy()` can be called from anywhere.

## Description

This system pcl causes a currently running progress bar to stop running on the client's display.

## See Also

[`sys.start_busy()`]({{< ref "startbusy.md" >}})

[`sys.set_busy()`]({{< ref "setbusy.md" >}})

Back to Top

## See Also

- [sys.start_busy()]({{< ref "startbusy.md" >}})
- [sys.set_busy()]({{< ref "setbusy.md" >}})


