# install

Just run a normal 4C server install.
If there is no security directory,
it will be created as will the following files:

- SecurityConfig
- AuthClient
- AuthUser
- dhparam.pem
- hostkey_rsa
- hostkey_rsa.pub

On Unix systems,
each of the above files will have correct permissions
as long as root ran the install.
On an NT system, you may need to modify the security
settings for those files.

You should review the SecurityConfig, AuthClient, and AuthUser
config files and make the changes necessary for your system.
As installed, they will allow your system to accept connections
from any 10.0.*.* host as well as any 192.168.*.* host.
Any user will be able to connect from any machine.

There should not be any reason to change the dhparam.pem,
hostkey_rsa, or hostkey_rsa.pub files.

The following installation issues may occur:

- You may get an error loading lib4ccrypto.so because it wants another version of the OpenSSL crypto lib. If you have a recent version of OpenSSL, it should be safe to create a symbolic link from the most recent version .so file to the one that is being complained about. On Fedora Core 5 you should not have any problems, but on Fedora Core 4 you may need to create a symbolic link to libcrypto.so.6

