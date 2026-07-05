# GetCount()

## Purpose

FCJSon::`GetCount()` returns the number of `<key>`:`<value>` pairs in an FCJSon object.

## Usage

```text
count = FCJSon::GetCount(<jsonident>);
```

## Arguments

integer `<jsonident>` - A valid identifier to a json object of `<key>`:`<value>` pairs.

## Returns

- `>= 0` — count of `<key>`:`<value>` pairs in object.
- `-1` — Error

## Where Used

FCJSon::`GetCount()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetCount()` returns the number of `<key>`:`<value>` pairs in an FCJSon object. The object identified by jsonident must be an FCJSon object of `<key>`:`<value>` pairs and not an array or other type of json object.

## Bugs/Features/Comments

Versions earlier than 5.8.7-15 will crash if the `<jsonident>` refers to a json object that is any type other "object".

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


