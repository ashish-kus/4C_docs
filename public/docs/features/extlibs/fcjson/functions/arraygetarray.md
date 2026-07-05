# ArrayGetArray()

## Purpose

FCJSon::`ArrayGetArray()` returns the jsonident of an array embedded in an array.

## Usage

```text
jsonident1 = FCJSon::ArrayGetArray(<jsonident0>,<arrayidx> [, <key> ]);
```

## Arguments

- `integer <jsonident0>` — A valid json object identifier.
- `integer <arrayidx>` — The index into the array of the array object or the
json object containing the array.
- `Array indexes start at 0 and end at array length` — 1.
- `alpha <key>` — Optional.
A key to an array object in the json object found at arrayidx
in the original array.
See long description for better clarification.

## Returns

- `>= 0` — A json identifier for the array.
- `< 0` — Error

## Where Used

FCJSon::`ArrayGetArray()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetArray()` returns the jsonident of an array embedded in an array or embedded in an object that is an element of an array.

There are 2 scenarios where you will use a FCJSon::`ArrayGetArray()`.

Scenario one. You have an ident to a json array that looks similar to the following

[ 1, 2, "c", [ `<elem1>`, `<elem2>`, ... ,`<elemN>` ] "x", ..., 26.45 ]

If jsonident0 is the jsonident for the main array above, then to get the ident for the single embedded array at idx 3 in that array use the following

jsonident1 = FCJSon::ArrayGetArray(jsonident0,3);

No `<key>` is needed, nor can one even be used.

Scenario two. The following JSon array is similar to the one above except that there is a JSon object at idx 3 and this object has an array item identified by the key "subarray"

[ `<a>`, `<b>`, `<c>`, { "x": "hello", "subarray" : [ `<elem1>`, `<elem2>`, ... ,`<elemN>` ], "z" : 26 } `<x>`, ..., `<z>` ]

If jsonident0 is the jsonident for the main array above, then to get the ident for the array embedded in the object at idx 3 in the main array use the following

jsonident1 = FCJSon::ArrayGetArray(jsonident0,3,"subarray");

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


