# Release()

## Purpose

FCJSon::`Release()` decrements the reference count on a FCJSon object and if the reference count is 0, frees all resources used by that object.

## Usage

```text
rc = FCJSon::Release(<jsonident>);
```

## Arguments

integer `<jsonident>` - A valid json object identifier.

## Returns

- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`Release()` can be called anytime you have a valid json ident.

## Example

```text
Example
```

## Description

FCJSon::`Release()` decrements the reference count on a FCJSon object and if the reference count is 0, frees all resources used by that object.

I'm not sure if any application will ever really need this function. Most applications will use FCJSon:[`Free()`]({{< ref "free.md" >}}) or FCJSon::[`FreeAll()`]({{< ref "freeall.md" >}}) instead.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


