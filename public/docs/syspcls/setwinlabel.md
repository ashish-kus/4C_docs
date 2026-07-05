# sys.set_winlabel()

## Purpose

`sys.set_winlabel()` lets the application change the label that appears either on the Window menu or on the TabContainer tab for the current 4C group.

## Usage

```text
ret = sys.set_winlabel(<wlflags>,<label>);
```

## Arguments

- `integer` — `<wlflags>` -
wlflags can be any combination of
WL_TABC, WL_MENU, and WL_OVERRIDE.
- `alpha` — `<label>` -
The new value for either the Window menu label or
the TabContainer tab.

## Returns

- `0` — OK
- `-1` — Error.

## Where Used

`sys.set_winlabel()` can be called anytime.

## Example

```text
Run sys.menu.tv to see working examples.
```

## Description

`sys.set_winlabel()` lets the application change the label that appears either on the Window menu or on the TabContainer tab for the current 4C group. The WL_OVERRIDE flag allows you to override an earlier call to sys.set_winlabel.

## See Also

[`sys.sl_settab()`]({{< ref "slsettab.md" >}})

Back to Top

## See Also

- [sys.sl_settab()]({{< ref "slsettab.md" >}})


