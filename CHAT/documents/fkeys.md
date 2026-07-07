---
title: "4C Function Key Usage on Microsoft Windows"
weight: 2
draft: false
---

| FKey Name | Default Keyboard Key | Default Processing |
|---|---|---|
| enter | Enter/Return/CariageReturn | End input on current field and goto next input field. On scrolling list screens may also be used instead of to display some detail screen. |
| accept | F4 | Accept current input and end the current field processing loop. If entered on the first input field of a 4C screen this will exit that program with a code of 0 |
| cancel | F8/Esc | End of input - do not accept changes. When entered on the first input field of a screen or when a scrolling screen is in "Lookup" mode this will cause the program to exit with a -1 code. |
| add | F5 | Toggle sys.mode between "Add" and "Lookup" |
| insert | Insert | Almost same as "add". For scrolling screens this will cause a line to be inserted above the current line instead of below. |
| modify | F6 | Toggle sys.mode between "Modify" and "Lookup" |
| delete | F7 | Toggle sys.mode between "Delete" and "Lookup" |
| tab | Tab | Skip over input fields until next tabstop |
| backtab | Shift+Tab | Backtab to a previous input field |
| help | F1 | Display simple help message or go to detailed help |
| search | F3 | When an input field has a search associated with it, this will popupup the search screen. |
| browseforward | Ctrl+DownArrow | Some input fields will allow browsing between possible values for that field. |
| browsebackward | Ctrl+UpArrow | Browse backward |
| print | Ctrl+P | Allows user to print the current screen. This normally will print the bitmap image of the screen but in some cases may print a report or form instead. |
| user1 | F9 | Typically used to display another screen that shows more detail or allows more processsing associated with the current screen |
| user2 | F10 | None |
| selectall | Ctrl+A | Select all scrolling records |
| find | Ctrl+F | Pop up a find window for scrolling programs |
| findnext | Ctrl+N | Find next instance of last searched for string in a scrolling screen |
| findprev | None | Find prev instance of last searched for string in a scrolling screen |
| cut | Ctrl+X | Delete rcds from a scrolling prog and save to clipboard |
| copy | Ctrl+C | Copy bitmap and selected scrolling records to clipboard |
| paste | Ctrl+V | When enabled by the application, this will allow pasting of the clipboard into the current scrolling screen. This is not used often in end user applications but is quite useful during development. |
| usercalc | Ctrl+= | When the current input field is a numeric or date field, this will popup a screen to allow simple calculations on the field. If user accepts the calculation the data is shared back into the numeric or date field. |
| info | Ctrl+G | Display info window for current program |
| inputinfo | Ctrl+Shift+G | Flash the current input field. This can be helpful on very crowded screens |
| windowleft | Ctrl+Shift+LeftArrow | Move the current window slightly to the left |
| windowright | Ctrl+Shift+RightArrow | Move the current window slightly to the right |
| windowup | Ctrl+Shift+UpArrow | Move the current window slightly upward |
| windowdown | Ctrl+Shift+DownArrow | Move the current window slightly downward |
