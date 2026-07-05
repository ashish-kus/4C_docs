# sys.dr_state()

## Purpose

`sys.dr_state()` returns the internal state of the current driver.

## Usage

```text
ret = sys.dr_state();
```

## Arguments

None

## Returns

`<integer>` ret
DR_MODIFY -
The driver is in fld loop processing in modify mode.
DR_DELETE -
The driver is in fld loop processing in delete mode.
DR_ADD -
The driver is in fld loop processing in add mode.
DR_DISPLAY -
The driver is in fld loop processing in display mode.
- `-1` — No Current Driver

## Where Used

`sys.dr_state()` is would normally be called somewhere in the field loop processing to determine mode. This may be useful in the SFldLp PCL since sys.mode has not been set yet.

## Example

```text
if (sys.dr_state() == DR_DISPLAY)
     return;
```

## Description

`sys.dr_state()` returns the internal state of the current driver.

## Bugs/Features/Comments

You normally won't need to call this routine since mode is available during fld processing in the sys.mode variable.

## See Also

Back to Top

## Note

Any other value returned > 0 should be of no interest to the application.


