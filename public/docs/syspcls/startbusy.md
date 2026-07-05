# sys.start_busy()

## Purpose

`sys.start_busy()` starts a progress bar on the client.

## Usage

```text
sys.start_busy(<name>,<title>,<label>,<flags>);
```

## Arguments

- `<name>` — an alpha that can be used to reference this progress
bar in subsequent calls to
sys.stop_busy()
and
sys.set_busy()
- `<title>` — The text to display as the title.
- `<label>` — The text to display as the label.
- `<flags>` — and integer argument that consists of any of the
following ored together.
- `SB_DEFAULT` — same as SB_TITLE|SB_LABEL|SB_NOCANCEL|SB_PROGRESS|SB_STATUS
SB_TITLE, SB_NOTITLE
SB_LABEL, SB_NOLABEL
SB_CANCEL, SB_NOCANCEL
SB_PROGRESS, SB_NOPROGRESS
SB_STATUS, SB_NOSTATUS
SB_OK, SB_NONOOK
SB_FOCUS, SB_NOFOCUS

## Returns

This pcl should always return 0.

## Where Used

`sys.start_busy()` can be called from anywhere.

## Description

This system pcl causes a progress bar to start on the client's display if one with the same name is not already there. The progress bar will stop automatically when the program that started it either exits or needs user input on a field or at end page. The application can stop the progress bar by itself by calling

[`sys.stop_busy()`]({{< ref "stopbusy.md" >}})

If the user cancels on the progress bar, the program that started the progress bar as well as all pushed programs will exit with a -3 code. This is why cancel is not used in SB_DEFAULT.

## Bugs/Features/Comments

If the status area is present on a progress bar, `sys.msg()` output goes there.

## See Also

[`sys.stop_busy()`]({{< ref "stopbusy.md" >}})

[`sys.set_busy()`]({{< ref "setbusy.md" >}})

Back to Top

## See Also

- [sys.stop_busy()]({{< ref "stopbusy.md" >}})
- [sys.set_busy()]({{< ref "setbusy.md" >}})


