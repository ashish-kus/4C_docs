# sys.get_answer()

## Purpose

`sys.get_answer()` prompts the user for input.

## Usage

```text
val = sys.get_answer(<prompt>,<defanswer>,<maxlen>,<gaflags>);
```

## Arguments

- `<prompt>` — An alpha value used to prompt the user for input.
- `<defanswer>` — An alpha value that is the default answer if the user
just presses return or OK.
- `<maxlen>` — Integer value indicating max number of characters the
user may enter.
- `<gaflags>` — Integer flags that can be or'd together.
Possible values are:
- `GA_DEFAULT` — Defaults to GA_INPNORMAL
- `GA_INPNORMAL` — Normal Input, No Conversion of characters.
- `GA_INPQUICK` — No return needed if max charaters typed by user.
- `GA_INPUC` — Map lower case characters to upper case.
- `GA_DIALOG` — Force Dialog Box.
- `GA_TEXT` — Force Text.
- `GA_BEEP` — Beep
- `INP_NORMAL` — Obsolete - same as GA_INPNORMAL
- `INP_QUICK` — Obsolete - same as GA_INPQUICK
- `INP_UC` — Obsolete - same as GA_INPUC

## Returns

Returns the characters typed by the user unless the user presses the `<cancel>` key. If the user presses the `<cancel>` key then the return is an empty alpha.

In addition to the alpha return, sys.get_answer will set sys_ret to either GA_OK or GA_CANCEL.

## Where Used

`sys.get_answer()` can be called from anywhere.

## Example

```text
if (sys.get_answer("Are You Sure?",'y',1,GA_DEFAULT) != 'y')
        sys.exit_prog(-1);
```

## Description

`sys.get_answer()` is a simple way to get input from the user. The default way that `sys.get_answer()` displays is as a prompt and a text field at the bottom of the current layout. If there is no current layout or the current layout already has a `sys.get_answer()` running then `sys.get_answer()` will display as a Dialog box on top of the current layout. This default behavior can be modified either by changing the _4CSRVRCONFIG file or by modifying the client preferences. When `sys.get_answer()` returns the application can tell if the user cancelled by simply checking sys_ret. sys_ret will have one the following values only:

GA_OK - User pressed return or clicked OK

GA_CANCEL - User pressed `<cancel>` or clicked Cancel.

## See Also

[`sys.message()`]({{< ref "message.md" >}})

Back to Top

## See Also

- [sys.message()]({{< ref "message.md" >}})


