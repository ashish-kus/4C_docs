# sys.cbc_init()

## Purpose

`sys.cbc_init()` clears the 4C clipboard and initializes it with default data.

## Usage

```text
sys.cbc_init();
```

## Arguments

None

## Returns

None

## Where Used

`sys.cbc_init()` can be called anytime to initialize the 4C clipboard.

## Description

`sys.cbc_init()` clears the 4C clipboard and initializes it with default data. After calling `sys.cbc_init()`, the application is able to make a series of [`sys.cbc_open()`]({{< ref "cbcopen.md" >}}), [`sys.cbc_senddata()`]({{< ref "cbcsenddata.md" >}}), and [`sys.cbc_close()`]({{< ref "cbcclose.md" >}}) calls.

## See Also

Cut/Copy/Paste Overview

[`sys.cbc_end()`]({{< ref "cbcend.md" >}})

[`sys.cbc_open()`]({{< ref "cbcopen.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbc_end()]({{< ref "cbcend.md" >}})
- [sys.cbc_open()]({{< ref "cbcopen.md" >}})


