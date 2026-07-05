---
title: "4C PDFReports - Issues/Bugs"
weight: 3
draft: false
---

- xlexport and xlimport do not read/update sys.pdf_font or sys.pdf_dftype. It is up to the application to make sure any needed sys.pdf_font or sys.pdf_dftype entries exist on the systems that PDFReport programs are imported to. This is true for copy and paste of 4C programs also.
- Currently the only type of image supported in PDFReports is jpeg. The fullpath of the image must end in one of jpeg, jpg, jpeg2, jpg2, jp2 or jpx with case not significant.
- It currently is not possible to determine the size of an image so you should always specify the width/height of the image in the row/col width and height of the display field. If necessary, the the image will be shrunk/stretched to fit the specified size.
