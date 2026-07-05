---
title: "Panels - Issues/Bugs"
weight: 2
draft: false
---

- When using option panels, if the user navigates from an dfield in an option panel to the main scrolling panel, the timing can be unpredictable and the end field PCL may not always get executed. The best workaround for this is to desing you option panels so that the end field pcl is not the only way that a dfield is verifyied. You can use the VerifyPCL instead and you can also use an "Apply" cmdbtn that verifies the data as well as applies any changes made in the option panel. When users see the "Apply" cmdbtn they will know that they need to click it in order for their changes to be applied.
