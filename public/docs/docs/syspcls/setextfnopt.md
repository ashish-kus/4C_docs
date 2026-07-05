# sys.set_extfnopt()

## Purpose

`sys.set_extfnopt()` allows the application to set certain options for a 4C External Library.

## Usage

```text
ret = sys.set_extfnopt(<extlibname>,<optname>,<optval>);
```

## Arguments

alpha `<extlibname>` - The name of the library.

alpha `<optname>` - The name of the option.

alpha `<optval>` - The value to set the option to.

## Returns

integer `<ret>` -
- `0` — OK
- `< 0` — Error

## Where Used

`sys.set_extfnopt()` can be called from any 4C program that uses the library `<extlibname>`.

## Example

```text
sys.set_extfnopt("FCCom","MessageLevel","1");
```

## Description

There are several options that can be set on a 4C External Library. Setting these options only affects the current 4C program that is using the library. The options that can be set are:

MessageLevel - The value for MessageLevel can be any of "0","1","2","3","4","5","6","7", "8", or "9". When set to "0", not messages from the library are automatically displayed. When set to "1", only error messages from the library are displayed. When set to "2" or higher, all messages, error and informational, from the library are displayed.

Requirements

4csrvr version 5.8.7 or later.

## Bugs/Features/Comments

Bugs

## See Also

[`sys.get_extfnopt()`]({{< ref "getextfnopt.md" >}})

Sys PCLs List

Back to Top

## See Also

- [sys.get_extfnopt()]({{< ref "getextfnopt.md" >}})
- [Sys PCLs List]({{< ref "_index.md" >}})


