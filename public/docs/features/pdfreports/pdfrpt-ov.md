# 4C PDFReport - Overview

[PDFReport Home]({{< ref "_index.md" >}})
4C Server version 7.0 allows an application to define a report that will be saved as a
PDF document or displayed immediately in a PDF Document Viewer program.
All 4C programs with a class of PDFReport will generate a PDF document that makes use
of the programs defined reports and display fields.

Some of the key concepts behind a 4C PDFReport are:

- A 4C PDFReport program is a subclass of a NewReport class program that allows you to create a PDF document based on some common 4C specifications.
- A 4C PDFReport can combine different reports defined in the same program or across multiple 4C programs. These reports can be run automatically by a PDFReport class program that specifies a "Defalt Rpt" for that program or by explicitly calling sys.run_rpt(`<rptname>`).
- A 4C PDFReport in a single 4C program is comprised of display fields and subreports defined in that program.
- Any subreport for a running PDFReport will automatically run when the first display field for the subreport is encountered while running it's parent report. Any display fields that are not part of the running report or any of it's subreports are ignored.
- It is not necessary to use subreports as any one report can be run from any PCL in the PDFReport program by calling sys.run_rpt(`<rptname>`). This includes both the InitPCL and ExitPCL for the program.
- Only 1 PDF document is created for each running 4C Group that is running a 4C PDFReport program.
- The PDF document created is not saved permanently, printed or displayed by a PDF viewer application unless the PDFReport program specifically requests it. There are several global PCLs that can be used to do this. sys.pdf_view() - This global PCL will save the PDF document in the FC_SESSION directory on the server, copy it to the client and start a PDF viewer program to view it. sys.pdf_save(`<savetopath>`) - This global PCL will save the PDF document to the fullpath specified in `<savetopath>` on the server.
- A 4C PDFReport document begins when the the PDFReport class program runs and it stays active until the last PDFReport class program in the 4C Group ends.
- 4C PDFReport programs use the same FCCom external library that can be used outside of 4C PDFReport programs as well as inside of PDFReport programs.
- One big difference in that way 4C PDFReport programs use the library is that rows and columns specified in display field definitions start from 0.0, 0.0 at the upper left of the printable page including margins defined by the program. The FCPdf library functions all use the std PDF origin of bottom left with the y pos increasing as you move up the page.
- Another difference is that 4C PDFReport rows/columns are defined with a start pt which is a 4C float var specifying the top/left of the row/column.
- PDFReport rows and columns also have a width/height also specified as a 4C float var with a 1.0 width row being 12pts in height and a 1.0 height column being 12pts in height.
- When a 0.0 width or height is specified for a row or column then 4C calculates the width/height that is needed to display the text/image and uses that for positioning.
- Similar to 4C display fields meant to display on a Windows/MacOS PC the PDFReport display fields have a PDF Dfield Type associated with them that is used to determine some defaults such as the font used, the ptsz used, how to position the display field in its "rectangle", underline style, if any, and any fg/bg and border colors.
- You can think of a PDFReport display field as occupying an outer rectangle and an inner rectangle on the page. The outer rectangle encompasses the inner rectangle and adds a border area to it. The border area even when not drawn has a width and a height of whatever the line width for the page is defined as. The default PDFReport line width is initially set at .75 pts but it can be overriden by the 4C program that starts the PDFReport as well as by any page that is added to the PDFReport. The inner rectangle is either the exact size that is specified by width and height of the display field or if not specified it is calculated to be the width/height of the text being displayed. Neither rectangle takes into account any top or side label. Those labels, when used are positioned either above the outer rectangle or to the left of the outer rectangle.

[Next - Getting Started]({{< ref "pdfrpt-start.md" >}})

