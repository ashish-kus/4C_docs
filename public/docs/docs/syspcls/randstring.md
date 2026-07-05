# sys.rand_string()

## Purpose

`sys.rand_string()` returns a random string of length `<len>` from the characters `<charset>`.

## Usage

```text
rstr = sys.rand_string(<charset>,<len>);
```

## Arguments

- `alpha <charset>` — The set of characters to use to create the random string.
- `integer <len>` — The length of the string to return.

## Returns

- `alpha <rstr>` — The random string.

## Where Used

`sys.rand_string()` can be called from anywhere.

## Example

```text
There are some examples of sys.rand_string() in the demo program dtf32.bld.1
```

## Description

`sys.rand_string()` is used to create a cryptographically strong random string from the characters in `<charset>`. It can be use to create random numbers by limiting `<charset>` to the digits you want to allow in the number and then converting the return to a number. For example, to create a random 5 digit number use:

n = atoi(sys.rand_string("0123456789",5));

Requirements

4csrvr version 5.0 or later

## See Also

[`sys.rand_integer()`]({{< ref "randinteger.md" >}})

mathfunc

Back to Top

## See Also

- [sys.rand_integer() mathfunc]({{< ref "randinteger.md" >}})
- [mathfunc]({{< ref "mathfunc.md" >}})


