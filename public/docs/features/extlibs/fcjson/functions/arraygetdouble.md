# ArrayGetDouble()

## Purpose

FCJSon::`ArrayGetDouble()` gets a double value from an array object.

## Usage

```text
fval = FCJSon::ArrayGetDouble(<jsonident>,<arrayidx> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json array ident.
- `integer <arrayidx>` — The 0 based index into the json array.
- `alpha <key>` — Optional.
Use `<key>` if the object at `<arrayidx>` is a json object of `<key>`:`<value>`
pairs and it contains a double identified by `<key>`.
If the object in the array at idx arrayidx is a double value, then
you should not specify `<key>` when calling FCCom::ArrayGetDouble()

## Returns

- `float <fval>` — A 4c float value.
If this value is equal to -1.0 it may indicate an error and the application
should call sys.get_extfn("FCJSon","LastError") to determine if it is an error
or a valid value.
- `-1` — Error

## Where Used

FCJSon::`ArrayGetDouble()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetDouble()` gets a double value from an array object or from an json object in an array. When getting the value directly from the array, no `<key>` should be specified. When getting the value from a json object embedded in the array, you must specify the `<key>` parameter to FCJSon::`ArrayGetDouble()`.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


