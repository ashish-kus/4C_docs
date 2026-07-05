---
title: "Platform Differences"
weight: 4
draft: false
---

Here are some differences that exist on the different platforms.

## Windows 4C Client

- For multi line text fields, the scrollbars are only visible when the length of the field is greater than the total columns * total rows. If you need them to be visible just make sure that the format specified in the display field definition is at least one greater than the #rows * #cols.

## MacOS X 4C Client

- For the MacOS X Client, `<ctrl>`+`<return>` cannot be used to insert a new line into a multi line text field. Use `<option>`+`<return>` to do so instead.
- For multi line text fields, the scrollbars are always there.
