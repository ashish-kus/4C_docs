# ArrayGetBool()

## Purpose

FCJSon::`ArrayGetBool()` gets a boolean value from an array object.

## Usage

```text
bval = FCJSon::ArrayGetBool(<jsonident>,<arrayidx> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json array ident.
- `integer <arrayidx>` — The 0 based index into the json array.
- `alpha <key>` — Optional.
Use `<key>` if the object at `<arrayidx>` is a json object of `<key>`:`<value>`
pairs and it contains a boolean identified by `<key>`.
If the object in the array at idx arrayidx is a boolean value, then
you should not specify `<key>` when calling FCCom::ArrayGetBool()

## Returns

- `0` — false
- `1` — true
- `-1` — Error

## Where Used

FCJSon::`ArrayGetBool()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetBool()` gets a boolean value from an array object or from an json object in an array. When getting the value directly from the array, no `<key>` should be specified. When getting the value from a json object embedded in the array, you must specify the `<key>` parameter to FCJSon::`ArrayGetBool()`.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


