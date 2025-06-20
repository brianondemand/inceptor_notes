## Host Discovery

Let us begin with a quick netdiscover to get the IP for the Beebox VM

![1.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/1.jpg?w=1108)

So we see here the IP for the box is 192.168.56.106.

In your case the IP may change as per adapter settings.

I always check the IP in browser to get any leads.

![2.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/2.jpg?w=1108)

So we understand port 80 is open HTTP.

Let us recon using tools like dirb ,wfuzz .If you have Burp Pro ,try the Content discovery it’s an awesome feature.

gobuster also do pretty good job.

![3JPG.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/3jpg.jpg?w=1108)

![4.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/4.jpg?w=1108)

Quite a lot of interesting url’s are found .let us check it later

Run nikto to check the server side vuls

![5.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/5.jpg?w=1108)

Oh I forgot , our nmap ! run a port scan to check open ports

![6.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/6.jpg?w=1108)

![7.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/71.jpg?w=1108)

![8.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/8.jpg?w=1108)

![9.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/9.jpg?w=1108)

Ok so once nmap scanning is done , we are interested in the open ports and services.

Here we see VNC port 5901 is open.

There is a metasploit auxillary scanner for VNC login.

We will see if some default login is used

![10.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/10.jpg?w=1108)

Woot! login is successful using “password” as the password.

Let us see other metasploit auxiliary modules

![11.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/11.jpg?w=1108)

Now we can  also bruteforce login using hydra and check if we can get access to verify

![12.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/121.jpg?w=1108)

Let us login to the VNC using terminal from obtained “password”

![13.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/13.jpg?w=1108)

We can get access to vnc console

![14.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/14.jpg?w=1108)

That was an easy piece of cake..woot ! woot ! got ROOT

Now enumerate more ….

get /etc/passwd file

![15.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/15.jpg?w=1108)

Next /etc/shadow file

![16.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/16.jpg?w=1108)

Pretty good ..

Let us try to crack the /etc/shadow file using john the ripper

![17.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/17.jpg?w=1108)

That’s interesting !!!!

Quite a lot of user’s and passwords were cracked

Going back to nmap results we can see ssh 22 port open .

Let’s give it a shot.

![18.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/18.jpg?w=1108)

![19.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/19.jpg?w=1108)

Ok , just a synopsis what we observed above is the different ways a machine can be rooted.


## Metasploit

Enumeration is the key ,don’t give up , try all possible attack vectors

The other auxillary scanners i tried on the box are

![20.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/20.jpg?w=1108)

![23.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/23.jpg?w=1108)

![24.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/24.jpg?w=1108)

Wow heartbleed , this was the actual hearbleed working for me the first time I believe.

There was a SNMP port running .

Tons of data was dumped

![26.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/26.jpg?w=1108)

![27.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/27.jpg?w=1108)

![28JPG.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/28jpg.jpg?w=1108)

![29.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/29.jpg?w=1108)

![30.JPG](https://secbyteblog.wordpress.com/wp-content/uploads/2018/06/30.jpg?w=1108)

