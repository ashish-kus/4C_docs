# sys.page_isfull()

## Purpose

`sys.page_isfull()` returns a 1 or a 0 to the user program indicating whether the current page is full or not.

## Usage

```text
if (sys.page_isfull([minlines]))
     dosomething();
```

## Arguments

integer minlines;

minlines is an optional argument that is the minimum number of lines that the user program needs to print another iteration of fields.

If minlines is not passed as an argument, then 4C will calculate what it thinks is the number of lines needed to display one iteration of all fields. It will include all NON-MULTI fields in the calculation.

You may want to pass a number higher than 4C would calculate if you want to leave space for something else also.

## Returns

0 Page is not full.

There is room for at least one more iteration of fields, or there is at least minlines available for printing on.

1 Page is full.

Either there is not room for at least one more iteration of fields, or minlines are not available for printing on. User program should take appropriate action.

There are no error returns.

## Where Used

`sys.page_isfull()` is normally called in the StartPage PCL of a scrolling rpt program, or in the Init PCL of a non-scrolling rpt program.

## Example

```text
if (sys.page_isfull(6)) {

     sys.page();
     sys.push_prog("pagehdr");
     sys.push_prog("rpthdr");

}


sys.page_ofst = sys.get_linenum() + 1;



     or



if (sys.page_isfull()) {

     sys.page();
     sys.push_prog("pagehdr");
     sys.push_prog("rpthdr");

}


$row_ofst = sys.get_linenum() + 1;
```

## Description

`sys.page_isfull()` indicates to the user program whether it can continue printing on the current page or not. `sys.page_isfull()` makes this determination based on the current line of the current device, the number of lines needed for one iteration of fields, including NON-MULTI fields, and the optional minlines argument. If used, the optional minlines argument overrides what 4C thinks is the min lines needed for one iteration of a field.

`sys.page_isfull()` can be called from scrolling and from non-scrolling programs. It is necessary that the rpt device already be open.

Typically, from a scrolling program, `sys.page_isfull()` would be called from the SPagePCL to determine if a call to [`sys.page()`]({{< ref "page.md" >}}) was necessary before printing headers and setting sys.page_ofst.

In a non-scrolling program, it would be called from the InitPCL, to determine if a call to [`sys.page()`]({{< ref "page.md" >}}) was necessary before printing headers and setting $row_ofst.

I don't see any reason to call this system PCL from any other place.

## See Also

[`sys.page()`]({{< ref "page.md" >}}) [`sys.end_page()`]({{< ref "endpage.md" >}}) [`sys.exit_page()`]({{< ref "exitpage.md" >}}) [`sys.get_pagediff()`]({{< ref "getpagediff.md" >}}) [`sys.get_linediff()`]({{< ref "getlinediff.md" >}})

Back to Top


