# FreeAll()

## Purpose

FCCom::`FreeAll()` frees all currently allocated FCCom connections.

## Usage

```text
count = FCCom::FreeAll();
```

## Arguments

None

## Returns

- `integer <count>` — The actual number of connections freed.

## Where Used

FCCom::`freeall()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCCom::`FreeAll()` frees all currently allocated FCCom connections. This may be easier than calling FCCom::Free(`<connident>`) on each connection separately but should only be used when you know that no other 4C program being run by the current 4csrvr process is using any FCCom connections. After calling FCCom:`FreeAll()` no  FCCom function that needs a `<connident>` can be called until a new FCCom::[`Alloc()`]({{< ref "alloc.md" >}}) call has returned a valid `<connident>`.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


