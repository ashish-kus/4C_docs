---
title: "4CUpdate - Change Log"
weight: 2
draft: false
---

[4CUpdate Home]({{< ref "_index.md" >}})

## 10 July 2017

Version 5.8.5-05 and higher

The 4CUpdate program will only process the first matching entry in the
cl-update.txt file for each name.
This means that you can install one 4cclient-win32 entry for one user and
a different one for a different user assuming the entries use different filters.

The 4CUpdate program will allow filtering by the following

- MACAddress `<macaddr1>`,`<macaddr2>`,...,`<macaddrN>`
- OSVersion `<n>`
- MinOSVersion `<n>`
- MaxOSVersion `<n>`

For the OSVersions specified for windows system, the following values are used

- 5 - Windows-2000, Windows-XP, Windows-2003
- 6 - Windows-Vista, Windows-2008, Windows-7, Windows-8, Windows-2012
- 10 - Windows-10, Windows-2016
