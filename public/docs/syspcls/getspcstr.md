# sys.get_spcstr()

## Purpose

`sys.get_spcstr()` returns the current value of a 4C function key.

## Usage

```text
spcstr = sys.get_spcstr(<spcname>);
```

## Arguments

- `alpha <spcname>` — The name of the spc to get.
This will be a key to the file sys.spc_char.

## Returns

- `<alpha> spcstr` — The value of the spc string for `<spcname>`.
This will be blank if an illegal `<spcname>` is specified.
Any control characters are converted to a displayable
format.

## Where Used

`sys.get_spcstr()` can be called from anywhere. It normally would be called from a program that remaps the function keys to a particular users liking.

## Example

```text
The following is from the slp() PCL of sys.spc.set.




spcstring = sys.get_spcstr(sys.spc_name);
spclabel = sys.get_spclabel(sys.spc_name);
spcalt = sys.get_spcalt(sys.spc_name);
ok = ''
```

## Description

`sys.get_spcstr()` returns the spcstring sequence of a 4C function key. The spcstring sequence is what 4C expects to see when you press a particular 4C function key like `<accept>` or `<modify>`. Whenever 4C sees the spcstring sequence in the input stream, it triggers the 4C function key that it is associated with. The 4C function key can be triggered by the spcalt sequence also.

## See Also

[`sys.set_spcstr()`]({{< ref "setspcstr.md" >}}) [`sys.set_spclabel()`]({{< ref "setspclabel.md" >}}) [`sys.set_spcalt()`]({{< ref "setspcalt.md" >}}) `sys.get_spcstr()` [`sys.get_spclabel()`]({{< ref "getspclabel.md" >}}) [`sys.get_spcalt()`]({{< ref "getspcalt.md" >}})

Back to Top


