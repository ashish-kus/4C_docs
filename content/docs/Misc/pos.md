---
title: "4C Client/Server Positioning"
weight: 3
draft: false
---

In positioning fields on layouts,
4C needs to take into account that on a windowing system
not all fields of the same character width/height
will have the same pixel width/height.
This is due to a number of factors, the most obvious
being that different fields may have different fonts
and some fields have extra pixels used for highlighting.
With this in mind, 4C still trys to position fields
using their specified rows and cols.
This is necessary so that the thousands of applications
already installed will be able to run with minimal changes.
The way that 4C goes about this is by maintaining an array
of column widths and row heights for every program.
These arrays are built by calculating the
number of pixels needed by any single field and then
dividing these across the columns/rows needed by the field.
An example using widths should help make this clear.
Assume a program is using columns 10 through 50
and has fields positioned as follows:

```text
Field Row Col CharWidth PixelWidth
----------- --- --- --------- ----------
Cust Code: 2 10 10 65
Cust Addr: 3 10 10 65
cm_code 2 21 7 62
cm_addr1 3 21 30 246
cm_notes 5 10 40 326
```

After calculating the first field,
the col width array will look like this:

```text
0 0 0 0 0 0 0 0 0 7 7 7 7 7 6 6 6 6 6
```

This will remain unchanged after calculating the second field.
After calculating the 3rd field,
the array will look like this:

```text
0 0 0 0 0 0 0 0 0 7 7 7 7 7 6 6 6 6 6 0
9 9 9 9 9 9 8
```

After calculating the 4th field,
the array will look like this:

```text
0 0 0 0 0 0 0 0 0 7 7 7 7 7 6 6 6 6 6 0
9 9 9 9 9 9 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8
```

And Finally, after the 5th field, it will look like this:

```text
0 0 0 0 0 0 0 0 0 9 9 9 9 9 9 8 8 8 8 8
9 9 9 9 9 9 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8
```

This is done for every field displayed on the screen.
Embedded cols that have zero pixels needed are set
to 6 so spaces do take up space.

Now, when 4c tries to position any single field,
it needs to take several things into account.
First, how many pixels does the field need.
Next, how many pixels are available between the
start col and end col for that field.
Next, what is the start pixel for that column.
Last, if the number of pixels available is greater
than the number needed, how should this affect the
positioning of the field.

Continuing with the above example we have for field1:

1. Needs 65 pixels
2. There are 86 pixels available in the 10 columns used by this field.
3. The starting pixel for this field is 0.
4. Since the number of pixels available is 24 greater than the number needed, this field can be positioned anywhere between 0 and 24. In reality, though, 4C considers only 0, 12, and 24 depending on whether it thinks it should left align it, center align it or right align it. How it chooses is based on the settings in the s_dftype file for HAlign. This alignment should not be mistaken for justification. A field can be left justified and still be right aligned.

NOTE:

It is possible to have fields on the screen that skew
the col width array so much that fields that were meant
to be evenly spaced space in odd ways.
For this reason, a flag has been added to the
sys.dpy_field file so that you can specify positioning
a field based on fixed width columns.
When this flag is set, the field is positioned using the
average pixel width for the program, rather than
the width array discussed above.
In the above example, this would not matter, since
the colwidth array is pretty even with widths of only 9 or 8.
I would expect this flag to be set only in rare occasions.
This should be used with care and only if the above discussion
is fully understood.

For the most part, row positioning works the same with some
minor exceptions.
The row height used for empty rows is 10,
except for scrolling programs which set it to 0.
For this reason, positioning non multi fields at row
100 has the affect of positioning directly below the
scrolling area.
I don't think that programs should be written to depend on this
though.
