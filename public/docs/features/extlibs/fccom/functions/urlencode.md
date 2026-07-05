# URLEncode()

## Purpose

FCCom::`URLEncode()` converts an ascii string, replacing special characters with the percent encoding specified by the HTTP specification.

## Usage

```text
avalret = FCCom::URLEncode(<aval>);
```

## Arguments

alpha `<aval>` - The value to encode.

## Returns

alpha `<avalret>` - The url encoded alpha.

## Where Used

FCCom::`URLEncode()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCCom::`URLEncode()` converts an ascii string, replacing special characters with the percent encoding specified by the HTTP specification. The characters in `<aval>` that do not need to be converted are any alphanumeric character and the characters '-', '_', '.', and '~'. Any other character gets converted to it's %HEX value using uppercase letters. Some libraries will encode to lowercase %hexvalue and will also encode more characters than that required by the HTTP Specification.

## See Also

See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


