# ArrayGetInt()

## Purpose

FCJSon::`ArrayGetInt()` gets an integer value from an array object.

## Usage

```text
i64val = FCJSon::ArrayGetInt(<jsonident>,<arrayidx> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json array ident.
- `integer <arrayidx>` — The 0 based index into the json array.
- `alpha <key>` — Optional.
Use `<key>` if the object at `<arrayidx>` is a json object of `<key>`:`<value>`
pairs and it contains an integer identified by `<key>`.
If the object in the array at idx arrayidx is an integer value, then
you should not specify `<key>` when calling FCCom::ArrayGetInt()

## Returns

- `int64 <i64val>` — A 4c int64 value.
int64 return values are automatically converted to 32 bit integers on return if necessary.
If this value is equal to -1 it may indicate an error and the application
should call sys.get_extfn("FCJSon","LastError") to determine if it is an error
or a valid value.
- `-1` — Error

## Where Used

FCJSon::`ArrayGetInt()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetInt()` gets an integer value from an array object or from an json object in an array. When getting the value directly from the array, no `<key>` should be specified. When getting the value from a json object embedded in the array, you must specify the `<key>` parameter to FCJSon::`ArrayGetInt()`.

## Bugs/Features/Comments

Only versions 6.7.3-01 and later return an int64 value. Earlier version return a 32 bit integer value.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


