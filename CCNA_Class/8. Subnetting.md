## Introduction

An IP address (Internet Protocol address) is a unique identifier assigned to every device connected to a network, like the internet.

It's like a phone number that allows devices to send and receive data.

There are two main types of IP addresses:

- **Public IP address:** This is a unique address that identifies your device on the public internet.  (Service Provider)
    
- **Private IP address:** This is a unique address that identifies your device on your local network (like your home or office network).

**Note:** To find your public IP address, you can search for "What's my IP" on a search engine.

![demo][https://ipwithease.com/wp-content/uploads/2018/07/img_5b5f52b5ec2f1.png.webp]

- IP addresses are represented in two ways: decimal and binary.
- Binary is the language of computers, consisting of only 0s and 1s.
![demo][https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOMogm4HeGVbRocVedEzHrYxZLtUDjXxnG_VbJ-C1ieEYBu9Td7geUr-l9dsQHu0Gh1RM]
- An IP address is made up of 32 bits, divided into four octets of 8 bits each. This is a standard format for IP addresses.

Here's a breakdown of the terms:

- **Bit:** A bit is the smallest unit of data in a computer, and it can have a value of either 0 or 1.
- **Octet:** An octet is a group of 8 bits.

![[Pasted image 20250109090932.png]]

- **IP address:** An IP address is a 32-bit number that is used to identify a device on the internet.

Here's an example of an IP address in binary format:

```
11000000.10101000.00000001.10110101.
```

```
11111111.11111111.11111111.00000000.
```


The reason why IP addresses are divided into octets is that it makes them easier to read and remember. Instead of having to remember a long string of 32 bits, you can simply remember four numbers between 0 and 255.

- According to computers understanding, The `1 `indicates `on` and the `0` indicates `off`

For example, the IP address in the example above can be written in decimal format as follows:

```
192.168.1.181
```

```
255.255.255.0
```

This is much easier to read and remember than the binary format.

- To convert from binary to decimal, use the powers of two chart.

**Powers Of Two Chart**

![[Pasted image 20250109092627.png]]

- To convert from decimal to binary, subtract the largest possible power of two from the decimal number and repeat until you reach zero.

---
### What is Subnetting ?

Subnetting is the process of dividing a large IP network into smaller, more manageable networks called subnets. This is done by borrowing bits from the host portion of an IP address and using them to create new network addresses.

**Why Subnet?**

- **Efficiency:** Subnetting allows for more efficient use of IP addresses, especially in large networks.
- **Security:** By dividing a network into smaller segments, you can improve security by controlling traffic flow and isolating potential threats.
- **Broadcast Reduction:** Subnetting reduces the number of unnecessary broadcasts, improving network performance.
- **Administrative Ease:** Subnetting makes it easier to manage and troubleshoot network problems.

**Key Concepts**

- **IP Address:** A unique identifier assigned to each device on a network.

- **Subnet Mask:** A 32-bit binary number that separates the network portion of an IP address from the host portion. (Tells us how big our network is and how many IP addresses are the on our network)

- **CIDR Notation:** A shorthand notation for representing the network portion of an IP address and the number of bits used for the network. For example, 192.168.1.0/24 indicates that the first 24 bits of the IP address represent the network.

#### Network Bits and Host Bits

They determine which part of an IP address identifies the network and which part identifies a specific device (host) within that network.  

**Network Bits:**

- These bits identify the specific network to which a device belongs. A "1" in the subnet mask signifies a network bit.
    
- **Example:** In the subnet mask 255.255.255.0, the first three octets (255.255.255) represent the network bits. 

**Host Bits:**

- These bits identify a specific device within a network.  A "0" in the subnet mask signifies a host bit.
    
- **Example:** In the subnet mask 255.255.255.0, the last octet (0) represents the host bits.

**Visual Representation:**

```
IP Address: 192.168.1.100
Subnet Mask: 255.255.255.0 

Binary:
IP Address: 11000000.10101000.00000001.01100100
Subnet Mask: 11111111.11111111.11111111.00000000

Network Bits: 11000000.10101000.00000001
Host Bits: 01100100
```


Let’s say we have the IP address `192.168.1.0/24`. This means:

- **Network portion**: First 24 bits (`192.168.1`).
- **Host portion**: Last 8 bits (can represent 256 addresses: `0-255`).

**Key Points:**

- The number of network bits and host bits determines the number of possible networks and hosts within a network.  
    
- Subnetting involves borrowing bits from the host portion to create more networks.
    
- The subnet mask is crucial for determining the network and host portions of an IP address.  

By understanding network bits and host bits, you can effectively manage IP addresses, design network topologies, and troubleshoot a network.

- **Network Address** (first IP in the subnet):  

    This address identifies the subnet itself and is used by routers to determine which subnet a packet is destined for. It cannot be assigned to a device.


- **Broadcast Address** (last IP in the subnet):  

    This address is used to send packets to all devices within the subnet. It’s reserved for broadcast purposes and also cannot be assigned to a device.


## Subnetting Process

1. **Determine the number of subnets needed.**
2. **Calculate the number of bits required to create the desired number of subnets.**
3. **Borrow the required number of bits from the host portion of the subnet mask.**
4. **Create the new subnet mask.**
5. **Determine the valid IP address ranges for each subnet.**



### EXAMPLE 

Lets Say I want to Divide my network to 6 subnets and my IP address is `192.168.1.0/24`.

Each subnet will have its own range of IP addresses that can be assigned to devices (like computers, printers, etc.).

### Step 1: Find the Number of Bits to Borrow

To divide the network into 6 subnets, calculate the number of bits needed to represent at least 6 subnets:

![[Pasted image 20250109111047.png]]

So, we need to borrow **3 bits** from the host portion.

---

### Step 2: New Subnet Mask

The original subnet mask is `/24` (255.255.255.0). 

`/24` means the first 24 bits are fixed.

Borrowing 3 bits from the host portion gives us a new subnet mask of `/27` (24 + 3).

---

### Step 3: Number of Hosts Per Subnet

With a subnet mask of `/27`, the host portion has \( 32 - 27 = 5 \) bits remaining.

- Total addresses per subnet: \( 2^5 = 32 \).

- Usable host addresses: \( 32 - 2 = 30 \) (1 for the network address and 1 for the broadcast address).

- The number 32 comes from the total number of bits in an IPv4 address. An IPv4 address is always 32 bits long.

- When you see the subnet mask written as `/27`, it means that the first 27 bits of the 32-bit IPv4 address are used for the network portion, and the remaining bits are used for the host portion.

---

### Step 4: Subnet Ranges

Now divide `192.168.1.0/24` into subnets of size `/27`. Each subnet will have 32 addresses.

| Subnet | Network Address  | Usable Host Range      | Broadcast Address |
|--------|------------------|------------------------|-------------------|
| 1      | 192.168.1.0/27   | 192.168.1.1 - 192.168.1.30  | 192.168.1.31      |
| 2      | 192.168.1.32/27  | 192.168.1.33 - 192.168.1.62 | 192.168.1.63      |
| 3      | 192.168.1.64/27  | 192.168.1.65 - 192.168.1.94 | 192.168.1.95      |
| 4      | 192.168.1.96/27  | 192.168.1.97 - 192.168.1.126| 192.168.1.127     |
| 5      | 192.168.1.128/27 | 192.168.1.129 - 192.168.1.158| 192.168.1.159    |
| 6      | 192.168.1.160/27 | 192.168.1.161 - 192.168.1.190| 192.168.1.191    |

---

### Step 5: What About the Remaining Addresses?

A `/24` network has \( 256 \) total addresses. We used \( 6 \times 32 = 192 \) addresses. The remaining addresses (from `192.168.1.192` to `192.168.1.255`) can form another subnet.

| Subnet | Network Address  | Usable Host Range      | Broadcast Address |
|--------|------------------|------------------------|-------------------|
| 7      | 192.168.1.192/26| 192.168.1.193 - 192.168.1.254 | 192.168.1.255 |

If you don't want to use the remaining addresses as a separate subnet, they will simply remain unused.

---

### Verification of Addresses
Here’s a simple Python script to list out the subnets for confirmation:

```python
import ipaddress

# Define the main network
network = ipaddress.ip_network("192.168.1.0/24")

# Create 6 subnets with /27 prefix
subnets = list(network.subnets(new_prefix=27))

# Print subnet details
for i, subnet in enumerate(subnets[:6], start=1):  # Limit to 6 subnets
    print(f"Subnet {i}: {subnet}")
    print(f"  Network Address: {subnet.network_address}")
    print(f"  First Host: {list(subnet.hosts())[0]}")
    print(f"  Last Host: {list(subnet.hosts())[-1]}")
    print(f"  Broadcast Address: {subnet.broadcast_address}")
    print()
```

