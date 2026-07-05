# CreateObject()

## Purpose

FCJSon::`CreateObject()` creates a new FCJSon object that will hold `<key>`:`<value>` pairs

## Usage

```text
<jsonident> = FCJSon::CreateObject();
```

## Arguments

None

## Returns

integer `<jsonident>`
- `>= 0` — A json ident that can be used in other FCJSon functions

## Where Used

FCJSon::`CreateObject()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`CreateObject()` creates a new FCJSon object that will hold `<key>`:`<value>` pairs. It returns an ident that is used in many different FCJSon functions. Initially this object will be empty and it will not be embedded in any other objects.

You can add this object to another JSon object of `<key>`:`<value>` pairs using FCJSon::[`AddObject()`]({{< ref "addobject.md" >}}).

You can add it to a json array using FCJSon::[`ArrayAddObject()`]({{< ref "arrayaddobject.md" >}}) or FCJSon::[`ArrayPutObject()`]({{< ref "arrayputobject.md" >}}). You can `<key>`:`<value>` pairs to this object by calling one of the FCJSon::Add...() functions.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


