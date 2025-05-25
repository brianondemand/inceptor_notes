We can copy any hash from our previous captured hash while using responder and save to a .txt file

![](https://i.imgur.com/j4Lw2XY.png)

Now if we are cracking with `hashcat` , we need to know the right module we are gonna be using, there are 2 ways to do this :

1. Navigate to your browser and paste in this [Web Address](https://hashcat.net/wiki/doku.php?id=example_hashes) then search for **NTLMv2** and note it down

![](https://i.imgur.com/VfgVezC.png)

OR

2.  On your Linux terminal do `hashcat --help | grep NTLMv2`

![](https://i.imgur.com/toyU1IY.png)

> Note that cracking NTLMv2 hashes might be a little bit slower than cracking NTLMv1 hashes, Because with NTLMv1 hashes we can do a lot more complex attacks  against it

We can then crack this hash by doing `hashcat -m 5600 hash.txt /usr/share/wordlists/rockyou.txt -O`

![](https://i.imgur.com/YtPIx11.png)

If you cleared your screen, you can use the `--show` option if you want to review the cracked hash file password, just like this

We can also `Johntheripper` to do this :

![](https://i.imgur.com/DPBPDGk.png)

