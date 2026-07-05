# 4C Client/Server - Unix Install

1. You must have root access for running the 4cinst.sh install script.
2. Make sure the environment variable HOME_4C is set correctly and exported.
3. cd to the HOME_4C directory.
4. If there are any 4c processes running or if the 4csrvrd daemon is running, stop thme by running: `/bin/sh 4cshutdown.sh` It is absolutely imperative that no 4C processes are running when you do the install.
5. untar the 4csrvr inst tar file with a command similar to: `tar -xf <4csrvr-inst-v.r.l.tar>`
6. cd to the 4csrvr-inst-v.r.l directory.
7. /bin/sh 4cinst.sh
8. Answer the questions and read any error messages.

---

## 4C Client/Server - Unix Post Install

Some of the following steps are only necessary for a
new install.
However, it probably is a good idea to double check them
after each install.

1. cd $HOME_4C
2. rm -rf 4csrvr-inst-v.r.l You may also want to remove the original tar file.
3. Modify the run4c.sh script file to suit your specific needs.
4. Verify that the jisamconfig file is set appropriately for your site.
5. Verify that 4CConfig is set appropriately for your site.
6. Make sure jisamconfig and 4CConfig are rwrw-- or rwrwrw depending on 4C.info security. This is needed because of locks
7. 4CSrvrConfig must be readable by anyone needing to run 4c
8. Set setuid and owner root on 4csrvrd. This is only necessary if non root starts 4csrvrd. Do not use this if root starts and stops the 4csrvrd daemon.
9. If you are using PAM for authorization, make sure the following line is in the _4CSRVRCONFIG file LogonSecurity PAM Also, you will need to configure a 4csrvrd entry. Different versions of PAM expect different parameters. The easiest is to copy the parameters you want to use from the sshd pam configuration file. Of course, you should also read and be familiar with the PAM administrators guide.

---

## 4C Client/Server - Unix Install Troubleshooting

1. Make sure if you have system files defined in your application that they are up to date. It may be necessary to export/import all sysfiles everytime you update 4c. As of version 4.2, it is not necessary to have any of the system files in any application directory. They should be removed.
2. Some steps you can take if you have authentication problems are: Make sure that the LogonSecurity parameter is set correctly in _4CSRVRCONFIG If you are using PAM, make sure that the PAM 4csrvrd file is configured correctly. See: [Security Trouble Shooting]({{< ref "../Security/Network/trouble.md" >}})
3. Many problems can be easily solved by enabling logging in the _4CSRVRCONFIG file and by reading the messages in the log file. There is no harm in having logging permanently enabled as long as you clear the log file on a daily basis. It is automatically cleared every time the 4csrvrd process is started if logging is enabled.

For other specific operating system install and
4csrvrd startup issues,
see one of the following.

1. [AIX-Notes]({{< ref "AIX-Notes.md" >}})
2. [HP-Notes]({{< ref "HP-Notes.md" >}})
3. [Linux-Notes]({{< ref "Linux-Notes.md" >}})
4. [SCO-Notes]({{< ref "SCO-Notes.md" >}})
5. [Solaris-Notes]({{< ref "Solaris-Notes.md" >}})

