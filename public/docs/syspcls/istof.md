# sys.is_tof()

## Purpose

`sys.is_tof()` is used to determine if the current output device is at the top of form or not.

## Usage

```text
if (sys.is_tof())
     dosomething();
```

## Arguments

None

## Returns

- `1` — Current output device is at top of form.
- `0` — Current output device is not at top of form.
There are no error returns.

## Where Used

`sys.is_tof()` is NORMALLY called from a StartPage PCL of a scrolling rpt program, or from an init PCL of a non-scrolling rpt program. It is usually used in together with [`sys.page_isfull()`]({{< ref "pageisfull.md" >}}) and [`sys.page()`]({{< ref "page.md" >}}). It is used to determine if headers need to be printed.

## Example

```text
if (sys.is_tof())
     sys.push_prog("rpt.pagehdr");
```

## Description

`sys.is_tof()` is called to determine if the current output device is at top of form. Typically, `sys.is_tof()` is called to determine if page headers and report headers need to be printed.

`sys.is_tof()` can be called from any program, scrolling and non-scrolling, printing and non-printing. The report output device needs to be open.

`sys.is_tof()` should be called instead of checking if [`sys.get_linenum()`]({{< ref "getlinenum.md" >}}) <= 1.

Normally, `sys.is_tof()` would be called from the SPagePCL of a scrolling program, or from the InitPCL of a non-scrolling program.

After a call to [`sys.page()`]({{< ref "page.md" >}}), calls to `sys.is_tof()` will return 1 until something new is printed on the current output device, or until [`sys.skip()`]({{< ref "skip.md" >}}) is called. Thereafter, calls to `sys.is_tof()` will return 0 until the next call to [`sys.page()`]({{< ref "page.md" >}}).

## See Also

[`sys.page_isfull()`]({{< ref "pageisfull.md" >}}) [`sys.page()`]({{< ref "page.md" >}}) [`sys.skip()`]({{< ref "skip.md" >}})

Back to Top


