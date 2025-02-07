
An **IP address** definition is a numeric label assigned to devices that use the internet to communicate. 
 
Computers that communicate over the internet or via local networks share information to a specific location using IP addresses.

**IP addressing** is the process of assigning a unique numerical label to a device that uses the internet.

IP addresses have two distinct versions or standards.

**The Internet Protocol version 4 (IPv4)** address is the older of the two, which has space for up to 4 billion IP addresses and is assigned to all computers. 

**The Internet Protocol version 6 (IPv6)** has space for trillions of IP addresses, which accounts for the new breed of devices in addition to computers. 

#### Components:

**Network ID:** The first part of the IP address identifies the network the device belongs to. 

**Host ID:** The remaining part of the address identifies the specific device within that network. 

#### How it works:

- When you send data online, your device includes the recipient's IP address in the data packet. 

- Routers on the internet use the network ID in the IP address to determine which network to send the data to and matches the network address. 

- Once the data reaches the correct network, the host ID helps identify the specific device on that network to deliver the data.

 - An IP address is not random. The creation of an IP address has the basis of math.  The Internet Assigned Numbers Authority (IANA) allocates the IP address and its creation. The full range of IP addresses can go from 0.0.0.0 to 255.255.255.255.  

### Types of IP addresses

There are also several types of IP addresses, including public, private, static, and dynamic IP addresses.

- A **public IP address**, or external-facing IP address, applies to the main device people use to connect their business or home internet network to their internet service provider (ISP). In most cases, this will be the router. All devices that connect to a router communicate with other IP addresses using the router’s IP address.


- A **private IP address**, is assigned by an office or local area network to devices, or by the internet service provider (ISP). The home/office router manages the private IP addresses to the devices that connect to it from within that local network.

- A **static IP address** is a manually configured signifier assigned to a device that remains consistent and cannot change across multiple network sessions.

- A **dynamic IP address** is automatically assigned to a network when a router is set up. The Dynamic Host Configuration Protocol (DHCP) assigns the distribution of this dynamic set of IP addresses. The DHCP can be the router that provides IP addresses to networks across a home or an organization.


![][https://www.fortinet.com/content/dam/fortinet/images/cyberglossary/ip-address-types.jpeg]

---

## What Is IPv4?

IPv4 is the fourth version of the IP. IPv4 is currently assigned to all computers. An IPv4 address uses 32-bit binary numbers to form a unique IP address. 

It takes the format of four sets of numbers, each of which ranges from 0 to 255 and represents an eight-digit binary number, separated by a period point.



### Structure of an IPv4 Address

- An IPv4 address is a 32-bit number divided into four 8-bit octets.
- It is written in **dotted decimal notation**, e.g., `192.168.1.1`.

---
### Internet Protocol Version 4 (IPv4) Characteristics

**32-bit addressing** : IPv4 addresses are 32 bits long, which allows for around 4.3 billion unique addresses. 

**Connectionless protocol**: IPv4 operates on a best-effort delivery model, meaning that each packet is treated as an independent entity. 

**Hierarchical addressing**: IPv4 uses a hierarchical addressing scheme to organize networks into smaller subnets. 

**Checksum field**: Every IPv4 packet header has a checksum field to check for errors in the header. 

**Dotted decimal notation**: IPv4 addresses are usually displayed in dotted decimal notation, where each octet is separated by a period. 

**Network address translation (NAT)**: IPv4 uses NAT to translate private IP addresses into public IP addresses when connecting to the internet. 

**Variable length subnet mask**: IPv4 supports variable length subnet masks. 

 **Unicast, multicast, and broadcast**: IPv4 supports unicast (one-to-one), multicast (one-to-many), and broadcast (one-to-all) communication.

---
### IP Address Classes

Some IP addresses are reserved by the Internet Assigned Numbers Authority (IANA). These are typically reserved for networks that carry a specific purpose on the Transmission Control Protocol/Internet Protocol (TCP/IP), which is used to interconnect devices. Four of these IP address classes include:

- **0.0.0.0**: This IP address in IPv4 is also known as the default network. It is the non-routeable meta address that designates an invalid, non-applicable, or unknown network target.

- **127.0.0.1**: This IP address is known as the loopback address, which a computer uses to identify itself regardless of whether it has been assigned an IP address.

- **169.254.0.1** to **169.254.254.254**: A range of addresses that are automatically assigned if a computer is unsuccessful in an attempt to receive an address from the DHCP.

- **255.255.255.255**: An address dedicated to messages that need to be sent to every computer on a network or broadcasted across a network.


Further reserved IP addresses are for what is known as subnet classes. Subnetworks are small computer networks that connect to a bigger network via a router. 

The subnet can be assigned its own IP address system, so that all devices connecting to it can communicate with each other without having to send data via the wider network.

#### Class A Public & Private IP Address Range

Class A addresses are for networks with large number of total hosts. Class A allows for 126 networks by using the first octet for the network ID. 

The first bit in this octet, is always zero. The remaining seven bits in this octet complete the network ID. 

The 24 bits in the remaining three octets represent the hosts ID and allows for approximately 17 million hosts per network. Class A network number values begin at 1 and end at 127.

- Public IP Range: 1.0.0.0 to 127.0.0.0
    - First octet value range from 1 to 127
- Private IP Range: 10.0.0.0 to 10.255.255.255
- Subnet Mask: 255.0.0.0 (8 bits)
- Number of Networks: 126
- Number of Hosts per Network: 16,777,214

---

#### Class B Public & Private IP Address Range

Class B addresses are for medium to large sized networks. Class B allows for 16,384 networks by using the first two octets for the network ID. 

The first two bits in the first octet are always 1 0. The remaining six bits, together with the second octet, complete the network ID. 

The 16 bits in the third and fourth octet represent host ID and allows for approximately 65,000 hosts per network. Class B network number values begin at 128 and end at 191.

- Public IP Range: 128.0.0.0 to 191.255.0.0
    - First octet value range from 128 to 191
- Private IP Range: 172.16.0.0 to 172.31.255.255 
- Subnet Mask: 255.255.0.0 (16 bits)
- Number of Networks: 16,382
- Number of Hosts per Network: 65,534

---

#### Class C Public & Private IP Address Range

Class C addresses are used in small local area networks (LANs). Class C allows for approximately 2 million networks by using the first three octets for the network ID. 

In a class C IP address, the first three bits of the first octet are always 1 1 0. And the remaining 21 bits of first three octets complete the network ID. 

The last octet (8 bits) represent the host ID and allows for 254 hosts per network. Class C network number values begins at 192 and end at 223.

- Public IP Range: 192.0.0.0 to 223.255.255.0
    - First octet value range from 192 to 223
- Private IP Range: 192.168.0.0 to 192.168.255.255 
- Special IP Range: 127.0.0.1 to 127.255.255.255 
- Subnet Mask: 255.255.255.0 (24 bits)
- Number of Networks: 2,097,150
- Number of Hosts per Network: 254

---

#### Class D IP Address Range

Class D IP addresses are not allocated to hosts and are used for multicasting. 

**Multicasting** allows a single host to send a single stream of data to thousands of hosts across the Internet at the same time. It is often used for audio and video streaming, such as IP-based cable TV networks. 

Another example is the delivery of real-time stock market data from one source to many brokerage companies.

- Range: 224.0.0.0 to 239.255.255.255
    - First octet value range from 224 to 239
- Number of Networks: N/A
- Number of Hosts per Network: Multicasting

---

#### Class E IP Address Class

Class E IP addresses are not allocated to hosts and are not available for general use. These are reserved for research purposes.

- Range: 240.0.0.0 to 255.255.255.255
    - First octet value range from 240 to 255
- Number of Networks: N/A
- Number of Hosts per Network: Research/Reserved/Experimental


----

##### Summary:

1. **Class A**: IP addresses between **10.0.0.0** and **10.255.255.255**
2. **Class B**: IP addresses between **172.16.0.0** and **172.31.255.255**
3. **Class C**: IP addresses between **192.186.0.0** and **192.168.255.255**
4. **Class D or multicast**: IP addresses between **224.0.0.0** and **239.255.255.255**
5. **Class E, which are reserved for experimental usage**: IP addresses between **240.0.0.0** and **254.255.255.254**

IP addresses listed under Class A, Class B, and Class C are most commonly used in the creation of subnets.

Class D reserved for multicast addressing (group communication, e.g., video streaming). 

Class E reserved for research and experimental purposes.

|**Class**|**First Octet Range**|**Default Subnet Mask**|**Purpose**|**Key Note**|
|---|---|---|---|---|
|A|0 - 127|255.0.0.0|Large networks|First bit is `0`|
|B|128 - 191|255.255.0.0|Medium networks|First two bits are `10`|
|C|192 - 223|255.255.255.0|Small networks|First three bits are `110`|
|D|224 - 239|N/A|Multicasting|First four bits are `1110`|
|E|240 - 255|N/A|Experimental/Research|First four bits are `1111`|

----

#### Private IP Addresses

Within each network class, there are designated IP addresses that are reserved specifically for private/internal use only. 

These IP addresses cannot be used on Internet-facing devices as they are non-routable. For example, web servers and FTP servers must use non-private IP addresses. 

However, within your own home or business network, private IP addresses are assigned to your devices (such as workstations, printers, and home media server).

- Class A Private Range: 10.0.0.0 to 10.255.255.255
- Class B Private APIPA Range: 169.254.0.0 to 169.254.255.255
    - _Automatic Private IP Addressing_ (APIPA) is a feature with _Microsoft Windows_-based computers to automatically assign itself an IP address within this range if a _Dynamic Host Configuration Protocol_ (DHCP) server is not available on the network. A DHCP server is a network device that is responsible for assigning IP addresses to devices on the network.  
          
        In your home, your Internet modem or router likely provides this functionality. In your work place, a _Microsoft Windows Server_, a network firewall, or some other specialized network device likely provides this functionality for the computers on your work network.
- Class B Private Range: 172.16.0.0 to 172.31.255.255
- Class C Private Range: 192.168.0.0 to 192.168.255.255

---

#### Special IP Addresses

 IP Range: 127.0.0.1 to 127.255.255.255 are network testing addresses (also referred to as loop-back addresses). These are virtual IP address, in that they cannot be assigned to a device. 

Specifically, the IP 127.0.0.1 is often used to troubleshoot network connectivity issues using the `ping command`. Specifically, it tests a computer's TCP/IP network software driver to ensure it is working properly.

A **local broadcast address** (255.255.255.255) sends messages to all devices on the **same local network** and is not routed.

Not routed  means that the broadcast message is confined to a **single network or subnet** and **does not pass through routers** to other networks.

A **directed broadcast address** (e.g., 192.168.1.255) targets all devices on a **specific subnet** and can be routed.

Routers can forward directed broadcasts to other networks as long as the broadcast is targeting a specific subnet.

The **loopback address** (127.0.0.1) is used to test the network stack of the **local machine** without leaving the device.

---



