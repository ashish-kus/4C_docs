# Functions

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})
- [[D]]({{< ref "_index.md" >}})
- [[P]]({{< ref "_index.md" >}})
- [[T]]({{< ref "_index.md" >}})
- [DocAlloc]({{< ref "docalloc.md" >}})
- [DocCount]({{< ref "doccount.md" >}})
- [DocFreeAll]({{< ref "docfreeall.md" >}})
- [DocFree]({{< ref "docfree.md" >}})
- [DocGetFontFace]({{< ref "docgetfontface.md" >}})
- [DocGetFontSize]({{< ref "docgetfontsize.md" >}})
- [DocGetHeight]({{< ref "docgetheight.md" >}})
- [DocGetLineWidth]({{< ref "docgetlinewidth.md" >}})
- [DocGetPaperSize]({{< ref "docgetpapersize.md" >}})
- [DocGetWidth]({{< ref "docgetwidth.md" >}})
- [DocLoadTTFont]({{< ref "docloadttfont.md" >}})
- [DocLoadType1Font]({{< ref "docloadtype1font.md" >}})
- [DocNew]({{< ref "docnew.md" >}})
- [DocSaveAs]({{< ref "docsaveas.md" >}})
- [DocSetFontFace]({{< ref "docsetfontface.md" >}})
- [DocSetFont]({{< ref "docsetfont.md" >}})
- [DocSetFontSize]({{< ref "docsetfontsize.md" >}})
- [DocSetHeight]({{< ref "docsetheight.md" >}})
- [DocSetLineWidth]({{< ref "docsetlinewidth.md" >}})
- [DocSetOption]({{< ref "docsetoption.md" >}})
- [DocSetPaperSize]({{< ref "docsetpapersize.md" >}})
- [DocSetWidth]({{< ref "docsetwidth.md" >}})
- [DrawBegin]({{< ref "drawbegin.md" >}})
- [DrawEnd]({{< ref "drawend.md" >}})
- [PageAdd]({{< ref "pageadd.md" >}})
- [PageCount]({{< ref "pagecount.md" >}})
- [PageGetFontFace]({{< ref "pagegetfontface.md" >}})
- [PageGetFontSize]({{< ref "pagegetfontsize.md" >}})
- [PageGetHeight]({{< ref "pagegetheight.md" >}})
- [PageGetLineWidth]({{< ref "pagegetlinewidth.md" >}})
- [PageGetPaperSize]({{< ref "pagegetpapersize.md" >}})
- [PageGetWidth]({{< ref "pagegetwidth.md" >}})
- [PageSetFontFace]({{< ref "pagesetfontface.md" >}})
- [PageSetFont]({{< ref "pagesetfont.md" >}})
- [PageSetFontSize]({{< ref "pagesetfontsize.md" >}})
- [PageSetHeight]({{< ref "pagesetheight.md" >}})
- [PageSetLineWidth]({{< ref "pagesetlinewidth.md" >}})
- [PageSetPaperSize]({{< ref "pagesetpapersize.md" >}})
- [PageSetWidth]({{< ref "pagesetwidth.md" >}})
- [TextBegin]({{< ref "textbegin.md" >}})
- [TextEnd]({{< ref "textend.md" >}})
- [TextGetWidth]({{< ref "textgetwidth.md" >}})
- [TextRect]({{< ref "textrect.md" >}})
- [TextSetCharSpacing]({{< ref "textsetcharspacing.md" >}})
- [TextSetRenderingMode]({{< ref "textsetrenderingmode.md" >}})
- [TextSetWordSpacing]({{< ref "textsetwordspacing.md" >}})
- [TextWrite]({{< ref "textwrite.md" >}})


## Additional Notes

creates a new empty pdf document and returns

returns the total number of currently in use FCPdf documents

frees all resources for all FCPdf docs that

frees all resources used by one FCPdf document.

returns the default font facename for

returns the default font size for the

returns the current document level default page

returns the default linewidth for the document.

returns the default page size for new pages

returns the current document level default page

returns the name of a true type font loaded from a file.

returns the name of a type1 font loaded from a file.

creates a new empty pdf document and returns

outputs the FCPdf document to a file on the 4csrvr machine.

sets the default Fontface for new pages added to

sets the default Fontface and Fontsize for

sets the default pointsize to use for the font

sets the default page height for new pages that

sets the default Linewidth of the document.

sets a global document option.

sets the default paper size for new pages in

sets the default page width for new pages that

lets the FCPdf library know that

signals that you are done in drawing mode and changes

adds a new page to the FCPdf document and returns

returns the total number pages in one FCPdf document.

returns the current font facename for

returns the current font size for the

returns height of a specific

returns the linewidth used for drwing lines

returns the page size for a specific

returns width of a specific

sets the Fontface for text being written to

sets the Fontface and Fontsize for

sets the pointsize to use for

sets the page height a specific page

sets the Linewidth to use for drawing

sets the paper size for one specific

sets the page width a specific page

modifies the graphics mode so that text writing is possible.

signals that you are done in text mode and changes

returns the width of the specified text in points.

splits a text string into one or more lines and formats

sets the character spacing to use on the

sets the rendering mode for new text added

sets the word spacing to use on the

writes some text starting at xpos, ypos.

