# sys.is_clsrvr()

## Purpose

`sys.is_clsrvr()` returns 1 if 4c is client/server 4c.

## Usage

```text
ret = sys.is_clsrvr();
```

## Returns

- `0` — Not running Client/Server 4c
- `1` — Running Client/Server 4c

## Where Used

`sys.is_clsrvr()` can be called from anywhere.

## Example

```text
if (sys.is_clsrvr())
        dosomething();
else
        dosomethingelse();
```

## Description

`sys.is_clsrvr()` is meant to allow you to distinguish between character4c and client/srvr 4c while your application is running.

## Bugs/Features/Comments

This is not available in older character versions of 4c.

## See Also

Back to Top


