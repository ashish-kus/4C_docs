# 4C FCPdf External Library - Overview

[4C External Libraries Home]({{< ref "../_index.md" >}})[FCPdf Home]({{< ref "_index.md" >}})

## 15 January 2018

The FCPdf 4C external library is meant to allow applications to
easily create PDF files.
This library gives you 100% complete control over creating PDF documents.
It does not have the ability to take an existing PDF document and extract
data from it.
Some of what the FCPdf external library allows an application to do are

- Create new PDF documents and add or insert pages anywhere in the document.
- Assign document level attributes to the document including but not limited to document passwords, print scaling preferences, default fonts, default font sizes.
- For any page in the document you can also set page specific preferences.
- Write text in any supported font at any size at any location on a page in any direction.
- Draw shapes anywhere on a page
- Use colors for text and shapes.

Something to keep in mind when creating PDF documents follow

- The user of the document has control over how it is printed in the end. You scan specify certain scaling options so that a form prints exactly as defined but the user or even the printer driver can override this and scale the document best for a particular printer. This is extremely important when creating a form that needs to print on a pre printed form.
- All locations are in points with location 0, 0 at the lower left corner of the page.
- Even though letter size pages will be 8.5 x 11 inches (612 x 792 points), all printers will have some unprintable margin area and this area is not the same on all printers. At a minimum, avoid printing within .25 inches (18 points) of any paper edge.
- At any one time the page of a document may be in one of several different graphics modes. Not all library calls are valid in all graphics modes. The different graphics modes that a page may be in are PageDescriptionMode PathObjectMode TextObjectMode ClippingPathMode ShadingMode InlineImageMode ExternalObjectMode Currently there is no way to check what the current graphics mode is. You just kind of have to know which calls change it and what it has changed to. When an FCPdf function requires a specific graphics mode or if it changes the graphics mode it is documented in the long description section for that function. For the most part all you really need to know about the graphics mode is Each page maintains it's own graphics mode. Adding or Inserting a page initializes the graphics mode for that page to PageDescriptionMode. FCPdf::TextBegin(), if successful, changes the graphics mode to TextObjectMode FCPdf::TextEnd(), if successful, changes the graphics mode to PageDescriptionMode FCPdf::DrawBegin(), if successful, changes the graphics mode to PathObjectMode FCPdf::DrawEnd, if successful, changes the graphics mode to PageDescription mode. Writing text requires the graphics mode to be TextObjectMode Drawing shapes and lines requires the graphics mode to be PathObjectMode When a document is first created, FCPdf sets the following defaults for the document. Any of them can be overridden by the application. The defaults are Fontface - "Courier" Fontsize - 9pts Pagesize - "Letter" Orientation - "Portrait" Linewidth - 1pt Though not set specifically by FCPdf, the following attributes appear to be the defaults used by libharu for the document TextRenderingMode - "Fill" StrokeColor - Black StrokeColor is the color to use for drawing lines, shapes, and for drawing the the outsize edge of text. The outside edge of text is only drawn if the TextRendering mode is one of "Stroke", "FillStroke", "StrokeClipping", or "FillStrokeClipping" FillColor - Black Fill color is used for filling in shapes and the inside region of text. The inside region of text is only filled if TextRenderingMode is one of "Fill", "FillStroke", "FillClipping", or "FillStrokeClipping" The inside area of shapes are filled when FCPdf::DrawEnd() is called with `<fillflag>` == 1. WordSpacing - 0 CharSpacing - 0 When adding or inserting pages default attributes are set for that page. If an equivalent document attribute has been set by the application, that value is used. Otherwise the FCPdf default or the libharu default attribute is used. No attributes are carried forward from any previous page.

[Credits and Acknowledgements]({{< ref "fcpdfcredits.md" >}})
- Updated 15 January 2018

