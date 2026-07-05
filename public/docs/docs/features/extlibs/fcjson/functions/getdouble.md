# GetDouble()

## Purpose

FCJSon::`GetDouble()` gets a double value from an  object.

## Usage

```text
fval = FCJSon::GetDouble(<jsonident> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json  ident.
- `alpha <key>` — Optional.  The key to the double value in the object.

## Returns

- `float <fval>` — A 4c float value.
If this value is equal to -1.0 it may indicate an error and the application
should call sys.get_extfn("FCJSon","LastError") to determine if it is an error
or a valid value.
- `-1` — Error

## Where Used

FCJSon::`GetDouble()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetDouble()` gets a double value from a JSon object. If the object identified by `<jsonident>` is a json double object and not a json object of `<key>`:`<value>` pairs, then no key is used. The normal case though is where `<jsonident>` identifies an object of "`<key>`","`<value>`" pairs and the double you are getting is in one of these pairs. When this is the case you must specify the `<key>` parameter to FCJSon::`GetDouble()`

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


