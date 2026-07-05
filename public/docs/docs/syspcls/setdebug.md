# sys.set_debug()

## Purpose

`sys.set_debug()` turns the 4C Debugger on or off.

## Usage

```text
ret = sys.set_debug(<val>);
```

## Arguments

- `choice <val>` — Can be "ON" or "OFF" only

## Returns

- `0` — Debug mode turned on or off depending on `<val>`.
- `-1` — Invalid `<val>`

## Where Used

`sys.set_debug()` can be called from anywhere. It is used in the bootstrap program development programs and is toggled on/off with the user12 function key.

## Example

```text
The following example is from the bootstrap global PCL
sys.dbg.set().
This PCL is called from any bootstrap program when the
user12 key is pressed.




if (sys.uscr_dbflag == "ON")
    sys.uscr_dbflag = "OFF";
else
    sys.uscr_dbflag = "ON";
sys.set_debug(sys.uscr_dbflag);
```

## Description

`sys.set_debug()` is used to turn 4C debug mode on or off.

## See Also

[`sys.get_debug()`]({{< ref "getdebug.md" >}})

Back to Top


