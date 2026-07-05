# Functions

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [[C]]({{< ref "_index.md" >}})
- [[D]]({{< ref "_index.md" >}})
- [[F]]({{< ref "_index.md" >}})
- [[G]]({{< ref "_index.md" >}})
- [[L]]({{< ref "_index.md" >}})
- [[O]]({{< ref "_index.md" >}})
- [[R]]({{< ref "_index.md" >}})
- [[U]]({{< ref "_index.md" >}})
- [[V]]({{< ref "_index.md" >}})
- [req4c_close_session]({{< ref "closesession.md" >}})
- [req4c_create_session]({{< ref "createsession.md" >}})
- [req4c_delete_session]({{< ref "deletesession.md" >}})
- [req4c_fetch_all_errors]({{< ref "fetchallerrors.md" >}})
- [req4c_fetch_all_msgs]({{< ref "fetchallmsgs.md" >}})
- [req4c_fetch_assoc_cur]({{< ref "fetchassoccur.md" >}})
- [req4c_fetch_assoc_first]({{< ref "fetchassocfirst.md" >}})
- [req4c_fetch_assoc_last]({{< ref "fetchassoclast.md" >}})
- [req4c_fetch_assoc_next]({{< ref "fetchassocnext.md" >}})
- [req4c_fetch_assoc_prev]({{< ref "fetchassocprev.md" >}})
- [req4c_fetch_cur]({{< ref "fetchcur.md" >}})
- [req4c_fetch_first]({{< ref "fetchfirst.md" >}})
- [req4c_fetch_last]({{< ref "fetchlast.md" >}})
- [req4c_fetch_next_error]({{< ref "fetchnexterror.md" >}})
- [req4c_fetch_next_msg]({{< ref "fetchnextmsg.md" >}})
- [req4c_fetch_next]({{< ref "fetchnext.md" >}})
- [req4c_fetch_prev]({{< ref "fetchprev.md" >}})
- [req4c_get_apprc]({{< ref "getapprc.md" >}})
- [req4c_get_error_msg]({{< ref "geterrormsg.md" >}})
- [req4c_get_error_num]({{< ref "geterrornum.md" >}})
- [req4c_get_first_prog]({{< ref "getfirstprog.md" >}})
- [req4c_get_first_type]({{< ref "getfirsttype.md" >}})
- [req4c_get_last_prog]({{< ref "getlastprog.md" >}})
- [req4c_get_last_type]({{< ref "getlasttype.md" >}})
- [req4c_get_next_prog]({{< ref "getnextprog.md" >}})
- [req4c_get_next_type]({{< ref "getnexttype.md" >}})
- [req4c_get_num_errors]({{< ref "getnumerrors.md" >}})
- [req4c_get_num_msgs]({{< ref "getnummsgs.md" >}})
- [req4c_get_num_results]({{< ref "getnumresults.md" >}})
- [req4c_get_prev_prog]({{< ref "getprevprog.md" >}})
- [req4c_get_prev_type]({{< ref "getprevtype.md" >}})
- [req4c_get_prog]({{< ref "getprog.md" >}})
- [req4c_get_sessionid]({{< ref "getsessionid.md" >}})
- [req4c_get_type]({{< ref "gettype.md" >}})
- [req4c_log]({{< ref "log.md" >}})
- [req4c_open_session]({{< ref "opensession.md" >}})
- [req4c_run]({{< ref "run.md" >}})
- [req4c_use_session]({{< ref "usesession.md" >}})
- [req4c_verify_session]({{< ref "verifysession.md" >}})


## Additional Notes

closes the current req4c session if there is one.

creates a new req4c session

deletes a req4c session

returns an array containing

returns an array containing

returns the current ResultRow from ``<resultset>``

returns the first ResultRow in ``<resultset>``

returns the last ResultRow in ``<resultset>``

returns the next ResultRow in ``<resultset>``

returns the prev ResultRow in ``<resultset>``

returns the current ResultRow as a numerically indexed array.

returns the first ResultRow from ``<resultset>``

returns the last ResultRow from ``<resultset>``

returns the next error msg from the

returns the next info msg from the

returns the next ResultRow as a numerically indexed array.

returns the previous ResultRow

returns the exit code of the 4C program that created ``<resultset>``

returns the error msg set

returns the error number set

returns the 4C program name that generated the

returns the 4C type that generated the

returns the 4C program name that generated the

returns the 4C type that generated the

returns the 4C program name that generated the

returns the 4C type that generated the

returns the number of errors in the current

returns the number of info msgs in the current

returns the the number of ResultRows in ``<resultset>``

returns the 4C program name that generated the

returns the 4C type that generated the

returns the 4C program name that generated the

returns the sessionid string of the session.

returns the 4C type that generated the

writes a string to the req4c

opens a req4c session

runs a 4C program and returns a req4c ResultSet.

sets the requested session as the current session.

verifies that a session is valid and can be used.

