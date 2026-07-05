# CreateNull()

## Purpose

FCJSon::`CreateNull()` creates a new initialized json double object and returns it's ident.

## Usage

```text
jsonident = FCJSon::CreateNull();
```

## Arguments

None

## Returns

- `integer <jsonident>` — The ident of the new json object

## Where Used

FCJSon::`CreateNull()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`CreateNull()` creates a new json null object and returns it's ident.

If the only reason for creating the null object is to immediately add it to another object and then never use if for anything else, you should use one of FCJSon::[`ArrayAddNull()`]({{< ref "arrayaddnull.md" >}}), `FCJSonArrayPutNull()`, or FCJSon::[`AddNull()`]({{< ref "addnull.md" >}}) instead. Those functions will create and add it the other object using only one call.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


