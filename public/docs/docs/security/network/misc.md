# 4C Network Security - Misc Notes/Issues

- It is not necessary to remove the DataEncryption line from _4CSRVRCONFIG. When a secure connection is used, data will be encrypted using secure data encryption. The insecure "DataEncryption 4C" will be ignored. However, if you have an insecure connection, with an non secure client, the "DataEncryption 4C" will be used as long as it is specified in _4CSRVRCONFIG.
- The only process that reads _4CSRVRCONFIG now is 4csrvrd. It does not need to be readable by any other users than root.
- It is not necessary and it is a insecure to specify DefaultLogon in _4CSRVRCONFIG. If you are using it, you should remove it.
- If you make a change to any of the security config files or to _4CSRVRCONFIG, the change will not be seen by 4csrvrd unless you run the command: 4csrvrd -R This will cause 4csrvrd to reread the security config files and _4CSRVRCONFIG the next time it gets a connect request.
- You can also make JISCONFIG and XLCONFIG readonly. They need to be readable by all users connecting, but no longer need to be writable. If you make them readonly, you need to create an empty writable .lk file on Unix systems. On NT this is not necessary. On Unix this should work: `chmod 440 $JISCONFIG > ${JISCONFIG}.lk chmod 660 ${JISCONFIG}.lk chmod 440 $XLCONFIG > ${XLCONFIG}.lk chmod 660 ${XLCONFIG}.lk` Only create and start using the $(JISCONFIG}.lk file when there are no current JISAM users.
- The HOME_4C directory should not be writable by any user other than root and OWNER_4C
- 4C Server processes and 4C client processes both occasionally change the key that is used for encryption. This is done transparently and is not currently a configuration setting.
- Except during the authentication loop, the 4C client process and the 4C server process use different keys for the messages they send to one another.
- There are scripts in HOME_4C/lib for generating DH param files, RSA keys and DSA keys. They are: gendhparam.sh gendrsa.sh gendsa.sh

