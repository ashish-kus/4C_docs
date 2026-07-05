# sys.message()

## Purpose

`sys.message()` displays either an error or an info message.

## Usage

```text
ret = sys.message(<smflags>,arg1[,arg2,...arg15);
```

## Arguments

- `<smflags>` — Integer flags that can be or'd together.
Possible values are:
- `SM_DEFAULT` — Assumes SM_ERROR|SM_WAIT|SM_BEEP
- `SM_INFO` — Displays info message.
- `SM_ERROR` — Displays error message.
- `SM_WAIT` — Waits for user to click ok or press return before continueing.
- `SM_NOWAIT` — Displays message at bottom of layout and does not wait for
user input.
- `SM_TITLE` — Uses first arg as title to the message dialog.
If the first arg is not an alpha, then the SM_TITLE is ignored.
- `SM_NOTITLE` — Uses default title.
- `SM_FLUSH` — Flushes output to client so client even sees SM_NOWAIT
messages immediately.
- `SM_NOFLUSH` — Does not flush SM_NOWAIT messages immediately.
This flag has no effect on SM_WAIT messages.
- `SM_BEEP` — Sounds the bell with the message.
- `SM_NOBEEP` — Does not sound the bell.
- `SM_LOG` — Writes the message to the ErrLogFile file specified in XLCONFIG.
- `SM_FMT` — Format alpha fields using the associated format.
Non alpha fields are always formatted using the flds format.
The reason alpha fields are not is because when only alpha fields
were allowed, they were not formatted.
Just don't want to surprise anybody.
- `SM_SEP` — Uses first non title arg as a separator.
If it is not an alpha, then SM_SEP is ignored.
- `SM_DELIM` — Uses first non title arg as delimiter.
If it is not an alpha, then SM_DELIM is ignored.
The difference between SM_DELIM and SM_SEP is that SM_DELIM
displays before first arg and after last arg as well as between all
args.
SM_SEP only displays between the args.
- `AnyType` — <arg[1-15]> - Multiple flds that are formated and concatenated to
form the message.
The difference between SM_DELIM and SM_SEP is that SM_DELIM
displays before first arg and after last arg as well as between all
args.
- `SM_NOSEP` — Specifies not to display a separator char between args.
If none of SM_DELIM|SM_SEP|SM_NOSEP are specified, a space character
displays between args.
SF

## Returns

- `0` — Currently the only value that can be returned.

## Where Used

`sys.message()` can be called from anywhere.

## Example

```text
sys.message(SM_INFO|SM_TITLE,"4CSys Info","No Such Program");
```

## Description

`sys.message()` displays either an error or an info message. This is meant to replace both `sys.msg()` and [`sys.err_msg()`]({{< ref "msg.md" >}}). If you do not specify a title as part of the `sys.message()` statement, then 4c will use the application ErrorWinTitle or the application InfoWinTitle if specified in the _4CSRVRCONFIG file. If no title is specified then 4C will use the name of the application followed by either " - Info" or " - Error" for the window title.

Requirements

4CServer version 5.0.6-05 or higher is required for using non alpha arguments

4CServer version 5.0.6-05 or higher is required for specifying SM_LOG, SM_FMT, SM_SEP, SM_NOSEP, and SM_DELIM flags.

## Bugs/Features/Comments

If none of SM_ERROR, SM_INFO, or SM_LOG are specified, then SM_ERROR is assumed.

If SM_LOG is specified and neither SM_ERROR nor SM_INFO are, then amessage is written to the ErrLogFile, but nothing is displayed to the user.

## See Also

[`sys.get_answer()`]({{< ref "getanswer.md" >}})

Back to Top

## See Also

- [sys.get_answer()]({{< ref "getanswer.md" >}})


