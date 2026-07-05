# sys.get_spclabel()

## Purpose

`sys.get_spclabel()` returns the current value of a label for a 4C function key.

## Usage

```text
spclabel = sys.get_spclabel(<spcname>);
```

## Arguments

- `alpha <spcname>` — The name of the spc to get the label for.
This will be a key to the file sys.spc_char.

## Returns

- `<alpha> spclabel` — The value of the label for `<spcname>`.
This will be blank if an illegal `<spcname>` is specified.

## Where Used

`sys.get_spclabel()` can be called from anywhere. It normally would be called so that you can indicate to the user what function key to press.

## Example

```text
The following is from the slp() PCL of sys.spc.set.




spcstring = sys.get_spcstr(sys.spc_name);
spclabel = sys.get_spclabel(sys.spc_name);
spcalt = sys.get_spcalt(sys.spc_name);
ok = ''
```

## Description

`sys.get_spclabel()` returns the label of a 4C function key.

## See Also

[`sys.set_spcstr()`]({{< ref "setspcstr.md" >}}) [`sys.set_spclabel()`]({{< ref "setspclabel.md" >}}) [`sys.set_spcalt()`]({{< ref "setspcalt.md" >}}) [`sys.get_spcstr()`]({{< ref "getspcstr.md" >}}) `sys.get_spclabel()` [`sys.get_spcalt()`]({{< ref "getspcalt.md" >}})

Back to Top


