---
title: "4C Licensing Info"
weight: 1
draft: false
---

- 4C Server Software is licensed based on number of concurrent interactive connections.
- If your use of 4C Server Software is for development or demo use and you do not need more than 2 concurrent interactive users, then no license is necessary. In order to force demo use remove the serial.txt file from the HOME_4C/security directory.
- No license is required for running any 4C Client software.
- The 4C Server License file is a simple text file and is located at HOME_4C/security/serial.txt

---

## Obtaining a new 4C License

In order to obtain a new 4C License:

- Make sure 4C Server Software is installed and can run in demo mode.
- Logged in as root and with the appropriate 4C environment variables set, run the command: `4csp -I >serinfo.txt`
- Send an email to support@4csoftware.com with the serinfo.txt file attached Please include company name and contact info in the email as well as number of users license is needed for and detailed company contact info. If you want any of the info in serinfo.txt changed, specify those changes in the email. Do not change serinfo.txt.
- You will receive a new license promptly.
- Copy the serial.txt file to the HOME_4C/security directory.

---

## Modifying an existing 4C License

In order to move a license to a new machine or modify an existing license,
follow the instructions
for obtaining a new license but also attach the original serial.txt
to the email.
Please describe the reason for the license change/upgrade.

---

## Hardware Upgrade Issues

Each 4C License is machine dependant and it is possible that a hardware
upgrade could invalidate the 4C License.
If this happens, you will still be able to run 4C, but you will
see the "Invalid License" each time you connect to the server until
you obtain a replacement license.

---

## Viewing The Current 4C License

In order to view the current 4C License on the server

- Press `<Cntl>`+`<Alt>`+`<F8>` from a connected interactive client.
- Click the "4C License Info" button.

---

## Miscellaneous Issues

- Creating the serinfo.txt file Login as root cd HOME_4C . ./4Crc 4csp -I >serinfo.txt
