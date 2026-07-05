# Free()

## Purpose

FCCom::`Free()` frees the resources associated with one connection.

## Usage

```text
ret = FCCom::Free(<connident>);
```

## Arguments

integer `<connident>` - A valid connection id returned by an earlier FCCom::[`Alloc()`]({{< ref "alloc.md" >}}) call.

## Returns

0 on success, -1 if `<connident>` is invalid.

## Where Used

FCCom::`Free()` can be called from anywhere as long as you have a valid `<connident>`

## Example

```text
Example
```

## Description

FCCom::`Free()` frees the resources associated with one connection. Once freed, the `<connident>` cannot be used in calls to the FCCom library. If the connection is still open when FCCom::`Free()` is called, it will be closed first.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


