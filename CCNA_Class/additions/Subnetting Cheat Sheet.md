**Key Concepts:**

* **Network Address:** The first address in a subnet; identifies the network.
* **Broadcast Address:** The last address in a subnet; used for broadcasting messages.
* **Usable IP Addresses:** Addresses between the network and broadcast addresses, assigned to devices.
* **Subnet Mask:** Determines the size of the network and the number of usable hosts.
* **CIDR Notation:** (e.g., /24) indicates the number of '1' bits in the subnet mask.

**Common Subnet Masks and Host Ranges:**

| CIDR | Subnet Mask       | # of Hosts | Usable Hosts |
|------|-------------------|------------|--------------|
| /30  | 255.255.255.252 | 4          | 2            |
| /29  | 255.255.255.248 | 8          | 6            |
| /28  | 255.255.255.240 | 16         | 14           |
| /27  | 255.255.255.224 | 32         | 30           |
| /26  | 255.255.255.192 | 64         | 62           |
| /25  | 255.255.255.128 | 128        | 126          |
| /24  | 255.255.255.0   | 256        | 254          |
| /16  | 255.255.0.0     | 65536      | 65534        |
| /8   | 255.0.0.0       | 16777216   | 16777214     |

**Subnetting Steps (Example: 192.168.1.0/27):**

1.  **Determine the Subnet Mask:** /27 = 255.255.255.224
2.  **Calculate the Block Size:** 256 - 224 = 32 (the "magic number")
3.  **List the Network Addresses:** Start with the base network (192.168.1.0) and increment by the block size:
    * 192.168.1.0
    * 192.168.1.32
    * 192.168.1.64
    * 192.168.1.96
    * ...and so on.
      
4.  **Determine the Broadcast Addresses:** The broadcast address is the address just before the next network address:
    * 192.168.1.31
    * 192.168.1.63
    * 192.168.1.95
    * 192.168.1.127
    * ...and so on.
      
5.  **Calculate Usable IP Addresses:** Addresses between the network and broadcast addresses.
    * For 192.168.1.0/27, usable IPs are 192.168.1.1 to 192.168.1.30.

**Quick Tips:**

* To find the number of subnets, 2 to the power of the number of borrowed bits.
* To find the number of hosts, 2 to the power of the number of host bits, minus 2.
* Remember that the first IP in a subnet is the Network ID and the last IP is the broadcast ID.
* Online subnet calculators are helpful for quick calculations.

**Example of your vlan subnets:**

* 10.0.0.0/26.
    * Subnet mask: 255.255.255.192
    * Block size: 64
    * Network ID: 10.0.0.0
    * Broadcast ID: 10.0.0.63
    * Usable IPs: 10.0.0.1 - 10.0.0.62
      
* 10.0.0.64/26.
    * Network ID: 10.0.0.64
    * Broadcast ID: 10.0.0.127
    * Usable IPs: 10.0.0.65 - 10.0.0.126
      
* 10.0.0.128/26.
    * Network ID: 10.0.0.128
    * Broadcast ID: 10.0.0.191
    * Usable IPs: 10.0.0.129 - 10.0.0.190

----

