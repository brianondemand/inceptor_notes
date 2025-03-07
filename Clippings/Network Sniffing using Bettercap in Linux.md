

Sniffing is the process of capturing and monitoring data packets that are passed through the network. It is used to capture the data of the victim and bettercap is a powerful tool used to perform various MITM(man in the middle) attacks on a network. Also, ARP Spoofing is a type of attack in which an attacker sends false ARP (Address Resolution Protocol) messages over a LAN(local area network). 

****Prerequisites:**** Kali Linux, laptop or computer with WIFI modem, and bettercap installed in it.

****Note****: You need to be connected with the network on which you want to sniff. Type these all command on the terminal

### ****Approach for Sniffing using Bettercap****

****Step 1:**** Selecting the ****interface of wlan0**** i.e Wi-Fi. You can also try it with LAN (local area network ), It will work the same as with Wi-Fi. -iface command is used for selecting the interface. You can use the command ****ifconfig**** to get all the interfaces for example if you are connected with an eth0 you need to type bettercap -iface eth0 to get into the bettercap interface.

```
bettercap  -iface wlan0
```

![bettercap -iface](https://media.geeksforgeeks.org/wp-content/uploads/20201225114237/pic1.png)

****Step 2:**** To show all the devices that are connected to the same network with their IP, MAC, Name, etc. Now we need to copy the IP address of the devices on which we want to sniff.  

```
net.show
```

![net.show in bettercap](https://media.geeksforgeeks.org/wp-content/uploads/20201225120424/pic2.png)

****Step 3:**** This will provide you with the Modules of bettercap with their status ( i.e running or not running )

```
help
```

![bettercap help](https://media.geeksforgeeks.org/wp-content/uploads/20201225120926/pic3.png)

****Step 4:**** This will send various probe packets to each IP in order and in the present subnet so that net.recon module may detect them with ease.

```
net.probe on
```

![net.probe on in bettercap](https://media.geeksforgeeks.org/wp-content/uploads/20201225133917/pic4.png)

****Step 5:**** In order to attack both the targets and the gateway, we will have to set arp.spoof.fullduplex to true.

```
set arp.spoof.fullduplex true
```

****Step 6:**** Set the target to the IP you can add any number of IPs here by using “,”. For example 192.168.43.157 ,192.168.43.152

```
set arp.spoof.targets 192.168.43.157(IP address of the target Device)
```

****Step 7:**** Start the ARP spoofer 

```
arp.spoof on
```

![Start the ARP spoofer ](https://media.geeksforgeeks.org/wp-content/uploads/20201225134448/pic7.png)

****Step 8:**** Setting it to true will consider packets from/to this computer, otherwise it will skip them. As we are MITM (man in the middle) that means all the data is transferring from our computer

```
set net.sniff.local true
```

![set net.sniff.local true](https://media.geeksforgeeks.org/wp-content/uploads/20201225134555/pic8.png)

****Step 9:**** Turning on the sniffing and catching the packets.

```
net.sniff on
```

![Turning on the sniffing and catching the packets](https://media.geeksforgeeks.org/wp-content/uploads/20201225134626/pic9.png)

****Note:**** After these all steps you can get the data of the targets only for the unsecured sites like the sites with the “http” for the https and the hsts there are some more steps involved in it. For now, you can get all the data entered by the target on the unsecured sites even the passwords. Just perform these steps on the website after signing off a written agreement with the owner of the website.

  
