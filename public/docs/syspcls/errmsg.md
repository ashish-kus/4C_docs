# sys.err_msg()

## Purpose

`sys.err_msg()` - Displays an error message

## Usage

```text
sys.err_msg([Arg1-Arg15]);
```

## Arguments

- `AnyType` — arg1,arg2,...,arg15 - The parts of the error msg

## Where Used

`sys.err_msg()` can be called from anywhere.

## Example

```text
sys.err_msg("Invalid Program Name",sys.pr_name);
```

## Description

`sys.err_msg()` displays a message and waits for a user response.

Requirements

4CServer version 5.0.6-05 or higher is required for using non alpha arguments

## Bugs/Features/Comments

`sys.err_msg()` is obsolete. Use [`sys.message()`]({{< ref "message.md" >}}) instead.

## See Also

[`sys.message()`]({{< ref "message.md" >}})

`sys.msg()`

Back to Top

## See Also

- [sys.message()]({{< ref "message.md" >}})
- [sys.msg()]({{< ref "msg.md" >}})


