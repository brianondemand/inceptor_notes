## What is MAC Address?

Unlike an IP address (a layer 3 address), **MAC Address** is a layer 2 address. It is the hardware address of a network interface. It is the unique identifier of a network interface.

MAC addresses are composed of 12 hexadecimal digits, and the first six identify the network card manufacturer. The remaining 6 digits identify a unique network card specific to any given manufacturer. If you want to see who made your network card, simply Google the first six digits of your MAC address. The following are just a few of uses of MAC addresses:

- **Static IP Address**: If a network administrator didn’t want to use DHCP, they can configure static IP addresses. This is most typically done for servers since it would be a disadvantage if their IP addresses were constantly changing.
- **Address Filtering**: some network administrators only allow specific devices to connect to a network, and they make filtering decisions based on MAC addresses since they are globally unique.
- **Authentication Application**: Sometimes ISPs and other network services require a user to sign in or log on with their MAC address.
- **Identification and Temporal Services**: Often coffee shops and airports will only permit a short amount of free Internet (30 minutes to an hour). After the time limit has been reached, they will sometimes ban a MAC address, but spoofing your address will allow more free access.
- **Tracking Devices**: Because every MAC address is globally unique, it is possible for software to track which locations and networks individual computers connect to.

The following is an example of a valid MAC address:

![mac-address](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fmac-address.png&w=1920&q=75)

There are two methods for spoofing a **MAC address**: installing and configuring either `iproute2` or `macchanger`. Both of them are outlined below.

Now let's see how to change **MAC Address** in Linux using **iproute2**. But first let's select the interface that we want to change the MAC address.

Show all network interfaces in linux type this command:

You can choose which interface you want to change MAC address.

```bash
$ 1: lo:  mtu 16436 qdisc noqueue state UNKNOWN
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0:  mtu 1500 qdisc mq state UP qlen 1000
    link/ether b8:ac:6f:65:31:e5 brd ff:ff:ff:ff:ff:ff
3: wlan0:  mtu 1500 qdisc mq state DOWN qlen 1000
    link/ether 00:21:6a:ca:9b:10 brd ff:ff:ff:ff:ff:ff
4: vboxnet0:  mtu 1500 qdisc noop state DOWN qlen 1000
    link/ether 0a:00:27:00:00:00 brd ff:ff:ff:ff:ff:ff
5: pan0:  mtu 1500 qdisc noop state DOWN
    link/ether c2:10:fa:55:8e:32 brd ff:ff:ff:ff:ff:ff
6: vmnet1:  mtu 1500 qdisc pfifo_fast state UNKNOWN qlen 1000
    link/ether 00:50:56:c0:00:01 brd ff:ff:ff:ff:ff:ff
7: vmnet8:  mtu 1500 qdisc pfifo_fast state UNKNOWN qlen 1000
    link/ether 00:50:56:c0:00:08 brd ff:ff:ff:ff:ff:ff
11: ppp0:  mtu 1496 qdisc pfifo_fast state UNKNOWN qlen 3
    link/ppp
```

where,

1. **lo** is the loopback interface.
2. **eth0** My first Ethernet interface on Linux.
3. **wlan0** is the wireless interface.
4. **ppp0** Point to Point Protocol network interface which can be used by dial up modem, PPTP vpn connection, or 3G wireless USB modem.
5. **vboxnet0, vmnet1, vmnet8** Virtual machine interface working in bridge mode or NAT mode on Linux.

> **Note:** You can use **ifconfig** command to see all interfaces. In this article, I will use **eth0** interface for changing a MAC address.

## How to change MAC Address in Linux using iproute2

The first step to spoofing the MAC address is to bring the network interface down. It can be accomplished with the command:

Next, we actually spoof our MAC. Any hexadecimal value will do, but some networks may be configured to refuse to assign IP addresses to a client whose MAC does not match up with any of known vendors. Therefore, unless you control the network(s) you are connecting to, use MAC prefix of any real vendor (basically, the first three bytes), and use random values for next three bytes.

To change the MAC, we need to run the command:

```bash
ip link set dev eth0 address XX:XX:XX:XX:XX:XX
```

Where any 6-byte value will suffice for XX:XX:XX:XX:XX:XX.

The final step is to bring the network interface back up. This can be accomplished by running the command:

If you want to verify that your MAC has been spoofed, simply run `ip link show eth0` again and check the value for 'link/ether'. If it worked, 'link/ether' should be whatever address you decided to change it to.

## How to change MAC Address in Linux using macchanger

Another method uses macchanger (a.k.a., the GNU MAC Changer). It provides a variety of features such as changing the address to match a certain vendor or completely randomizing it.

Install macchanger using the following command:

```bash
sudo apt-get install macchanger
```

The MAC address can be spoofed with a fully random address:

To randomize only device-specific bytes of current MAC address (that is, so that if the MAC address was checked it would still register as being from the same vendor), you would run the command:

To change the MAC address to a specific value, you would run:

```bash
macchanger --mac=XX:XX:XX:XX:XX:XX eth0
```

Where XX:XX:XX:XX:XX:XX is the MAC address you want to change to.

Finally, to return the MAC address to its original, permanent hardware value:

**Note:** A device cannot be in use (connected in any way or with its interface up) while the MAC address is being changed.

---