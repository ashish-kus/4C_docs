# sys.share_field()

## Purpose

`sys.share_field()` allow you to set up sharing of fields at run time.

## Usage

```text
ret = sys.share_field(<field1>,<field2>);
```

## Arguments

- `<field1>` — Any field in the program
- `<field2>` — Any field in the program
Note: `<field1>` and `<field2>` are passed by name,
not by cdefine or by dpy field label.
Any data type is allowed, but they both must
be compatible to allow sharing.

## Returns

- `0` — OK
- `-1` — Field Data Types not compatible for sharing

## Where Used

`sys.share_field()` can be called from anywhere. However, since fields cannot be unshared, it is most useful in the Init PCL.

## Description

`sys.share_field()` allows you to set up field sharing at run time for fields within the same program. If you know ahead of time which fields will be shared, it is better to use the local field sharing definition. However, if it is not known until run time which fields will be shared, then this PCL can be used. This PCL always causes Full Sharing.

## See Also

[`sys.unshare_field()`]({{< ref "unsharefield.md" >}})

Back to Top

## See Also

- [sys.unshare_field()]({{< ref "unsharefield.md" >}})


