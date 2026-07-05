# beep()

## Purpose

`beep()` beeps the terminal.

## Usage

```text
beep();
```

## Arguments

None

## Returns

None

## Where Used

`beep()` can be called from anywhere.

## Example

```text
if (cm_read(cmcode < 0)) {
        beep();
        sys.exit_field(sys.cur_field);
}
```

## Description

Sends a beep to the terminal. Currently this is done by writing a ^G to the std err device. Possibly in the future a visible bell could be sent if it is defined for the terminal.

## See Also

[`sys.err_msg()`]({{< ref "msg.md" >}}),

`sys.msg()`

Back to Top

## See Also

- [sys.err_msg(),]({{< ref "errmsg.md" >}})
- [sys.msg()]({{< ref "msg.md" >}})


