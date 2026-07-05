---
title: "4C PDFReport - Example Programs"
weight: 2
draft: false
---

[PDFReport Home]({{< ref "_index.md" >}})
The simplest example PDFReport program is one that displays on a single page without using
any dynamic positioning of fields.
All fields are part of a single main PDFReport and the report is run from the
InitPCL by calling the sys.run_rpt() System PCL.

The pdfr.demo.1 program in the Demo application is an example of a simple PDFReport program.
It displays the fields from a single rcd in the language_info file.
It is started by a Panel program, pdfr.lang.sel, that allows you to select 1 rcd
and then by clicking the CreateAndViewPDF cmdbtn it will call the pdfr.demo.1 program
passing in lang_name and the value of 2 flags, one that you can set to show the row/column grid
as part of the PDF and other to call up a program to display info about the PDFReport before
displaying the PDF document.
The PDFReport displays a hdr and 4 vertically aligned data fields.
The data fields each display with a side label and in a different row.

Here are some important things to notice about the PDFReport that you can see by browsing
the Program Characteristics, Display Fields and PCLs.

- The Program class is "PDFReport"
- The Program Characteristics set the following PDF document defaults PaperSize - "Letter" Orientation - "Portrait" Top, Bottom, Left and Right margins - all set to 36.00 pts (1/2 inch) LineWidth - .75 pts ULHeight - .75 pts AllowProntScaling - 'y'
- The only PCL is the InitPCL.
- There are 5 display fields hdr - The hdr field uses the pdft_dftype "text4" and overrides the Halign, BG RGB and Border RGB defaults. It specifies 0 as the top row and 7.5 as the left column to use for the top left of the rectangle that it will display in. It specifies a height of 3.0 rows (36 pts) and a width of 30.0 columns (360 pts) Since it has BG and Border colors specified you can see the rectangle used by the dfield and how VAlign and HAlign work. lang_name lang_abbr lang_ttsabbr Each of these 3 dfields all use the pdft_dftype "text1" and keep the default sys.pdf_dftype values. They all have a side label that uses the defaults from the pdft_dftype "def-sidelabel" None of these 3 dfields specify a width or a height to be used in calculating the "rectangle" needed for displaying so the rectangle is calculated based on the font, fontptsz, linewidth and text being displayed. lang_nativename - This dfield uses the pdft_dftype of utf8-text1 and overrides the ptsz, FG and Border colors. Notice that some of the languages need a utf8 font to display the native name correctly. This may not be the best utf8 font to use because wome native names don't display correctly. Howver, most of them do display correctly. The native names for Burmese, Korean, Khmer and probably a few others display boxes instead of the real characters.
- InitPCL - The InitPCL runs the only report that the program defines, "main", with the stmt sys.run_rpt("main"); Once the the "main" report finishes it checks whether the flags for showing the grid and displaying info about the PDF document and optionally calls sys.pdf_drawgrid() and/or sys.pdfinfo_view(). Next it calls sys.pdf_view() which copies the PDF document to the client and starts up a viewer. When pdfr.demo.1 exits at the end of the InitPCL there no longer is a PDFReport document on the server that can be accessed by the application.

Some other points worth mentioning about pdfr.demo.1 are

- If the program did not exit the program in the InitPCL and if the program had defined a default report the default report would have run automatically after the OpenPCL.
- All display fields are positioned at absolute row and column positions.

- It's worth playing around with this simple PDFReport program and getting an idea of how the different pdf options affect the display.
- Also, run the "Test PDF" option from the Display Fields context menu. This should give an idea of the ways a display field is positioned in it's "rectangle"
- There is a lot more that can be done with a PDFReport than just the single page absolute positioning of pdfr.demo.1
