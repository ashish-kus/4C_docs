---
title: "4CUpdate - Overview"
weight: 1
draft: false
---

4CUpdate is a win32 program that runs as a win32 service.
It allows a single client PC to get 4cclient updates automatically.
The updates come from a server of your choice.
It consists of 2 executable files:

- 4cupdd - the win32 service that must be running in order get 4cclient updates.
- 4cupdcnf - the program used to configure 4CUpdate.

---

## 4CUpdate - Installation

4CUpdate must be installed from an administrator account.
After the first installation, use 4cupdcnf to configure and install
the 4CUpdate Service.

---

## 4CUpdate - Client Configuration

From the Connection tab specify the following information:

- Protocol - One of http, 4cfs, or LocalShare.
- Server - The server string will be dependant on the protocol used. http - Server is the well known domain name where the client update script is. 4cfs - Server is a standard 4c connection string similar to: Machine=4chelp.com,Port=1412,Type=TCP,App=4cSys LocalShare - Server is not used and should not be specified.
- Script File Name - Specify the full path to the update script file on the server machine.
- Username, Password, and Confirm Password - Specify login credentials if they are needed to connect to the server. If they are not needed, leave blank.
- Install Type - One of: Automatic - Use this to have client updates automatically downloaded and installed without any user interaction. Prompt - Use this to download updates automatically but only install them after prompting the user for confirmation. The user that is prompted does not need any administrative rights. Before this option is usable, 4C Client Version 4.8.2 or higher must be installed on the client PC. OnRequest - Only download 4cclient updates when prompted to do so by the user. Only install 4cclient updates after prompting for user confirmation. The user that requests the check for updates does not need any administrator rights. Before this option is usable, 4C Client Version 4.8.2 or higher must be installed on the client PC.
- Startup Wait - Specify an initial startup wait for 4CUpdate.
- Log Level - Specify how verbose you want the 4CUpdate log to be. The log file is stored in HOME_4C/4CUpdate/Log/4cupd-log.txt.
- Check For Updates On Start - Check this if you want 4CUpdate to check for updates immediately after a reboot after the initial startup wait. If InstallType is OnRequest, you probably don't want to check this.

On the Schedule tab you specify when and how often 4CUpdate should
check for updates.
You can specify 1 to 5 different schedules.
Each Schedule has the following:

- Start Time - Start of the time range that 4CUpdate will check for updates.
- End Time - End of the time range that 4CUPdate will check for updates. If End Time is less than Start Time 4CUpdate uses the next day So, you only need one Schedule to specify look for updates only between 11pm and 3am.
- Interval - How often from Start Time to End Time should 4CUpdate look for updates.
- DayOfWeekFilter - Use this if this schedule applies to only one particular day, such as Sunday.
- DayOfMonthFilter - Use this if you want to limit the Schedule to a single day of the month, such as the 1st.

Once you have specified the Connection options and Schedules, you must save
those changes by clicking Save Config.

Use the Service tab to:

- Modify the AutoStart option of an already Installed 4CUpdate Service. If you modify AutoStart on an Installed 4CUpdate Service, you must save the change by clicking Update Options.
- Install - The service must be installed before it can be used. Make sure that AutoStart is set the way you want before Installing the 4CUpdate Service.
- Remove - Removes the service. This shouldn't really be necessary. An uninstall will stop and remove the 4CUpdate service.
- Start - Start the service. The service must be started before if can get 4cclient updates. As long as the service is AutoStart, you won't need to Start/Stop it again. It will all be automatic.
- Stop - Stop the service. Shouldn't be necessary.
- Test - Test the connection by downloading the update script and any available updates. This may take a while depending on what may be downloaded. Even if updates are available and downloaded, they will not be installed by Test. The 4CUpdate Service needs to be running and config file changes saved in order to test the connection.
- View Log - View 4CUpdate log information, including results of last Test.

---

## 4CUpdate - Client Issues

Since the main idea behind running 4CUpdate on a client PC is to avoid
needing support staff to walk around to PCs and install 4c clients,
it is probably best to get the configuration right the first time.
If not, then support staff will be walking around reconfiguring 4CUpdate.
So, some of the things you should keep in mind are:

- 4cupdate can not download or install updates when in any of sleep/hibernate/shutdown mode. However, if 4CUpdate starts a download or an install, it will complete before the PC goes to sleep automatically.
- It is not necessary to have all PCs download the same client update script. It may be a good idea to have a few test users download from one beta location and all others to download from a final location.
- Only use a particular server for staging client updates if you can be reasonably sure it will be available well into the future.
- Checking for Updates on start, could slow the overall startup speed of the PC.
- If InstallType is Automatic, there is no way for a user to initiate an UpdateCheck.
- If InstallType is not Automatic, then any user can initiate an UpdateCheck from 4CClient/Preferences/Update
- 4CUpdate tries to avoid rebooting the client machine. This may not always be possible. Some changes may not be able to take effect until the PC is rebooted. However, in most cases, reboot will not be necessary and updates take effect immediately after closing and restarting any affected 4c client programs.
- Not all client PCs are permanently connected to a network. Some may connect to a pay network and incur extra costs for downloading updates.

---

## 4CUpdate - Staging Updates

4C client updates are made available to client machines running 4CUpdate
when the client install files are copied from 4csoftware.com to your
staging server and you create an appropriate client update script
file.
4C client install files include both a .msi and .sig file.
Both must be readable by the downloading program.
The client update script file is used to specify what client updates
are staged and who should download them.
A sample client update script file follows:

```text
#
# 4C Client Update Script
#
MessageDigest Filename=/home/4CUpdate/cl-update.sha1,Type=sha1
#
# 4C Client Win32
#
Update
Name 4cclient-win32
Desc "Update 4CClient to Version 5.8.5-06"
InstallFile /home/4CUpdate/4cclient-win32-5.8.5-06.msi
SignatureFile /home/4CUpdate/4cclient-win32-5.8.5-06.sig
Verify VersionLT=5.8.5-06
MinOSVersion 6
#
# DNA ENCEdit Win32
#
Update
Name dna-encedit-win32
Desc "Update dna-encedit-win32 to Version 5.8.5-06"
InstallFile /home/4CUpdate/dna-encedit-win32-5.8.5-06.msi
SignatureFile /home/4CUpdate/dna-encedit-win32-5.8.5-06.sig
Verify Installed=True
Verify VersionLT=5.8.5-06
#
# 4CUpdate Win32
#
Update
Name 4cupdate-win32
Desc "Update 4cupdate-win32 to Version 5.8.5-06"
InstallFile /home/4CUpdate/4cupdate-win32-5.8.5-06.msi
SignatureFile /home/4CUpdate/4cupdate-win32-5.8.5-06.sig
Verify VersionLT=5.8.5-06
#
# XP Version of 4C Client Win32
#
Update
Name 4cclient-win32-xp
Desc "Update XP 4CClient to Version 5.8.5-06"
InstallFile /home/4CUpdate/4cclient-win32-xp-5.8.5-06.msi
SignatureFile /home/4CUpdate/4cclient-win32-xp-5.8.5-06.sig
Verify VersionLT=5.8.5-06
MaxOSVersion 5
```

Note that the only entries that start at the beginning of a line without
a leading space are the MessageDigest and Update Entries as well as comments.
If this cl-update.txt script was specified as the script file for a 4CUpdate
config,
it would cause 4CUpdate to download the cl-update.txt and cl-update.sha1
file, and optionally download the .msi and .sig files for
each Update entry.
If the dna-encedit-win32 were not already installed on the client running
4CUpdate, it would not be considered as an available update for that client.
If the current 4cclient-win32 were already at least 5.8.5-06, the
4cclient-win32 Update would not be considered an avalable update.

The client update script file consists of the following

- An optional MessageDigest entry specifying the digest of the client update script. When used, the file referred to in this entry must be recreated everytime the client update script file changes. Use `4cmdcalc -f cl-update.txt -m cl-update.sha1` To create the message digest file. 4cmdcalc is installed with all 4cservers version 4.8.1 and later. The message digest file is used to verify the integrity of the downloaded client update script. Though not required, it is recommended that you use the MessageDigest in order guarantee the integrity of the script file downloaded and processed by the client.
- One or more Update sections. Each Update section starts on its own line with no leading space. Options that can specified for Update start on lines with a leading space. The options available are: Name `<name>` - This must be a valid 4client name Desc `<desc>` - This description is shown to a user when prompting to install an update. InstallFile `<msifilename>` - The name of the msifile to install. This must be the full path on the server to the msifile This file will need to be downloaded from 4csoftware.com to your staging server. SignatureFile `<sigfilename>` The name of the sigfile to compare to the msifile for validity. This must be the full path on the server to the sigfile This file will need to be downloaded from 4csoftware.com to your staging server. ForceReboot <True|False> - Specify "ForceReboot True" if you want the PC to reboot after the last client install completes. Verify `<verifyopts>` - Some possible verify options are: Installed=True Installed=False VersionEQ=<v.r.l-rev> VersionGT=<v.r.l-rev> VersionGEQ=<v.r.l-rev> VersionGT=<v.r.l-rev> NN VersionLEQ=<v.r.l-rev> You can specify multiple verify lines for each update section. When using version numbers, you can specify just the highest numbers needed. For example VersionLT=4.8 means the same as VersionLT=4.8.0-00 Any of the verifyopts can negated by specifying something like `Verify !`<verifyopts>`` MACAddress `<macaddr1>`,`<macaddr2>`,...,`<macaddrN>` OSVersion `<n>` MinOSVersion `<n>` MaxOSVersion `<n>`

---

## 4CUpdate - Server Issues
