# req4c_fetch_prev()

## Purpose

`req4c_fetch_prev()` returns the previous ResultRow as a numerically indexed array.

## Usage

```text
$result = req4c_fetch_prev(<resultset>);
```

## Arguments

- `<resultset>` — A ResultSet resource returned by req4c_run().

## Returns

- `false` — Error
- `$result` — A numerically indexed array with each element holding
one string representing one column in the ResultRow.

## Where Used

`req4c_fetch_prev()` can be called anytime you have a ResultSet and want to fetch the previous ResultRow.

## Description

[`req4c_fetch_assoc_prev()`]({{< ref "fetchassocprev.md" >}}) fetches the previous ResultRow in `<resultset>` into a numerically indexed array. The internal pointer of the current ResultRow is updated to this ResultRow.

## Bugs/Features/Comments

`req4c_fetch_prev()` does not access the network

`req4c_fetch_prev()` leaves the current message list intact

## See Also

[`req4c_fetch_next()`]({{< ref "fetchnext.md" >}})

[`req4c_fetch_assoc_next()`]({{< ref "fetchassocnext.md" >}})

[`req4c_fetch_assoc_prev()`]({{< ref "fetchassocprev.md" >}})

[`req4c_fetch_cur()`]({{< ref "fetchcur.md" >}})

[`req4c_fetch_assoc_cur()`]({{< ref "fetchassoccur.md" >}})

[`req4c_fetch_first()`]({{< ref "fetchfirst.md" >}})

[`req4c_fetch_assoc_first()`]({{< ref "fetchassocfirst.md" >}})

[`req4c_fetch_last()`]({{< ref "fetchlast.md" >}})

[`req4c_fetch_assoc_last()`]({{< ref "fetchassoclast.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_fetch_next()]({{< ref "fetchnext.md" >}})
- [req4c_fetch_assoc_next()]({{< ref "fetchassocnext.md" >}})
- [req4c_fetch_assoc_prev()]({{< ref "fetchassocprev.md" >}})
- [req4c_fetch_cur()]({{< ref "fetchcur.md" >}})
- [req4c_fetch_assoc_cur()]({{< ref "fetchassoccur.md" >}})
- [req4c_fetch_first()]({{< ref "fetchfirst.md" >}})
- [req4c_fetch_assoc_first()]({{< ref "fetchassocfirst.md" >}})
- [req4c_fetch_last()]({{< ref "fetchlast.md" >}})
- [req4c_fetch_assoc_last()]({{< ref "fetchassoclast.md" >}})


