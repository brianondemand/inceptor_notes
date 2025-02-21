## Ethernet LAN Switching

The way that Ethernet networks communicate is governed by a set of Ethernet standards. These standards define the Physical layer, which is responsible for the transmission of data over the network, and the Data Link layer, which is responsible for error detection and correction. The most recent version of the Ethernet standard is IEEE 802.3.

Ethernet standards related to the Physical layer of the **OSI model** (Layer 1) define physical characteristics of the medium used to transfer data between devices, for example, voltage levels, maximum transmission distances (like Ethernet UTP cables’ 100 meter limit), physical connectors, cable specifications, etc.

The characteristics that Ethernet standards related to the Data Link layer of the OSI model (Layer 2) define include: frame format (structure of an Ethernet frame), MAC addressing (a method of assigning unique identifiers to devices on an Ethernet network), **CSMA/CD** (a method of resolving collisions between devices on an Ethernet network), and flow control (a method of preventing devices from sending too much data at once).

Layer 2 provides node-to-node connectivity and data transfer, such as PC to switch or switch to router. Switches operate at Layer 2.

## LANs (Local Area Networks)

A LAN is basically a network contained within a relatively small area, such as an office floor or a home network. Routers are used to connect separate LANs. Switches do not separate LANs, but adding more switches can be used to expand an existing LAN.

Note how many LANs there are in this network topology. The green network, consisting of three PCs, one switch, and the router interface they are connected to, is one VLAN. The red network is also one LAN. Although there are two switches, it is all one LAN. Finally, we have two blue LANs. This lesson looks at how traffic is sent and received within LANs like these four LANs.

![4-lans-network](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/069c1-4-lans-network.webp?w=1171)

Image courtesy of Jeremy’s IT Lab (Free CCNA | Ethernet LAN Switching (Part 1) | Day 5)


### Protocol Data Unit (PDU)

**PDU (Protocol Data Unit)** refers to a **layer-specific data packet** that is transmitted across a network. Each layer in the **OSI model** has its own form of PDU.

**PDUs in the OSI Model**

Here’s how PDUs are named at different layers:

1. **Layer 1 (Physical)** – **Bits** (Raw data as electrical, optical, or radio signals)
2. **Layer 2 (Data Link)** – **Frames** (Encapsulates packets with MAC addresses for local delivery)
3. **Layer 3 (Network)** – **Packets** (Contains IP addresses for routing across networks)
4. **Layer 4 (Transport)** – **Segments (TCP) / Datagrams (UDP)** (Handles end-to-end communication)
5. **Layer 5-7 (Session, Presentation, Application)** – **Data** (User-readable data)

## OSI model PDUs review

This diagram shows the encapsulation process as data is prepared to be sent over a network. At the top, the data prepared by the upper layers of the OSI model is simply called data.

![OSI-model-PDUs](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/ac8f1-osi-model-pdus.webp?w=1201)

Image courtesy of Jeremy’s IT Lab (Free CCNA | Ethernet LAN Switching (Part 1) | Day 5)

A Layer 4 header is added, and this combination of data and Layer 4 header is called a segment. A Layer 3 header is added to the segment, and it is now called a packet. Finally, a Layer 2 header and trailer are added to the packet, and it becomes a frame. These different stages of preparing data to be forwarded are called protocol data units or PDUs. For example, the Layer 2 PDU is a frame.

This lesson will focus on how switches receive and forward frames, specifically Ethernet frames since Ethernet is the most widely used Layer 2 protocol in LANs today.


## Ethernet Frames

Ethernet frames are the data units used in Ethernet-based networks. It encapsulates data and control information, ensuring efficient transmission between devices.

Each frame consists of key components that facilitate proper data transmission and error detection.

### Structure of an Ethernet Frame

![][https://www.omnisecu.com/images/tcpip/frame-header-trailer-data.jpg?ezimgfmt=ngcb3/notWebP]


Here’s a breakdown of its structure:

1. **Preamble (7 bytes)**  
   - A sequence of alternating **1s and 0s** (101010... pattern).  
   - Used for **clock synchronization** between sender and receiver.

2. **Start Frame Delimiter (SFD) (1 byte)**  
   - Marks the exact start of the frame with a **10101011** sequence.  
   - Ensures that the receiver can **identify** the beginning of the frame.

3. **Destination MAC Address (6 bytes)**  
   - **Identifies the receiver** in the network.  
   - If **broadcast**, it’s **FF:FF:FF:FF:FF:FF**.

4. **Source MAC Address (6 bytes)**  
   - **Identifies the sender’s** MAC address.

5. **EtherType / Length (2 bytes)**  
   - If **≤ 1500**, it represents the length of the payload (IEEE 802.3).  
   - If **≥ 1536**, it indicates the protocol type (EtherType), e.g.:
     - `0x0800` → IPv4  
     - `0x86DD` → IPv6  
     - `0x0806` → ARP  

6. **Payload (46 - 1500 bytes)**  
   - Contains **actual data** being transmitted.  
   - If less than 46 bytes, **padding** is added to meet the minimum Ethernet frame size (64 bytes).

7. **Frame Check Sequence (FCS) (4 bytes)**  
   - Uses **Cyclic Redundancy Check (CRC-32)** for **error detection**.  
   - If errors are detected, the frame is discarded.

| Field Name           | Size (Bytes) | Description |
|----------------------|-------------|-------------|
| **Preamble**        | 7           | Synchronization pattern for receiver alignment. |
| **Start Frame Delimiter (SFD)** | 1 | Marks the start of the frame. |
| **Destination MAC Address** | 6 | MAC address of the receiving device. |
| **Source MAC Address** | 6 | MAC address of the sending device. |
| **EtherType / Length** | 2 | Indicates protocol type (IPv4, IPv6, ARP, etc.) or length of data. |
| **Payload (Data & Padding)** | 46-1500 | Actual data being transmitted; minimum 46 bytes (padding used if needed). |
| **Frame Check Sequence (FCS)** | 4 | CRC checksum to detect errors in transmission. |

---
### Types of Ethernet Frames  

  Ethernet frames are the fundamental units of communication in a network. They contain the data being transmitted along with control information. There are three main types of frames based on how they are addressed and delivered:  

**1. Unicast Frame**  
- A **one-to-one** communication between a sender and a single specific receiver.  
- The **destination MAC address** in the frame is a unique MAC address of the intended recipient.  
- Most network traffic is **unicast**, such as web browsing, file transfers, and emails.  
- **Example:** A computer sending a request to a web server.  

**2. Broadcast Frame**  
- A **one-to-all** communication where a frame is sent to **all devices** in the network.  
- The **destination MAC address** is **FF:FF:FF:FF:FF:FF**, which is the universal broadcast address.  
- Used when the sender does not know the recipient’s MAC address.  
- **Example:**  
  - **ARP request**: A device asks, “Who has this IP address?” and all devices listen.  
  - **DHCP Discover**: A client looks for a DHCP server to get an IP address.  
- **Limitation:** Broadcast traffic can lead to **network congestion** in large networks.  

**3. Multicast Frame**  
- A **one-to-many** communication where a frame is sent to **a group of devices** instead of all.  
- The **destination MAC address** is a **multicast MAC address** (e.g., `01:00:5E:xx:xx:xx` for IPv4 multicast).  
- Used in applications like video streaming, online gaming, and routing protocols (OSPF, EIGRP).  
- **Example:** A streaming service sending a video feed to multiple subscribed users without flooding all network devices.  

**How Switches Handle These Frames**  

- **Unicast:** The switch forwards the frame only to the port where the destination MAC is known.  
- **Broadcast:** The switch forwards the frame to **all ports** except the one it was received on.  
- **Multicast:** The switch forwards the frame **only to interested devices** using IGMP (Internet Group Management Protocol). 

---
## MAC addresses

A MAC address is a 6-byte, or 48-bit, physical address assigned to the device when it is made. This is different from an IP address, which you assign in the CLI when you configure the device. 

You might hear the term burned in address or BIA to refer to the MAC address. This is because the address is “burned-in” to the device as it is made.

The MAC address is globally unique, no two devices in the world should have the same MAC address. Although, exceptionally, there are MAC addresses known as locally-unique MAC addresses which do not have to be globally unique.

The first 3 bytes (24 bits) of the MAC address are the **OUI**, which stands for organizationally unique identifier. The OUI is assigned by the Institute of Electrical and Electronics Engineers (IEEE) Registration Authority to the company making the device. Cisco, for example, will have various OUIs which only Cisco can use, and other makers will have their own OUIs which only they can use. 

The last 3 bytes, the second half of the MAC address, are unique to the device itself.

MAC addresses are written as a series of 12 hexadecimal characters.

Here’s a simple network comprised of three PCs connected to a switch. Note, in general, switches (like routers) have one MAC address per port.

![three-PCs-switch](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/f1c79-three-pcs-switch-7.webp?w=1201)

Image courtesy of Jeremy’s IT Lab (Free CCNA | Ethernet LAN Switching (Part 1) | Day 5)

Notice the interface names for the switch, F0/1, F0/2, and F0/3. F means FastEthernet, so these are 100 Megabit per second interfaces.

You may also see MAC addresses written with periods or hyphens after every other digit, so for example PC1’s MAC address would be AA.AA.AA.00.00.01. 

The MAC address for each PC is shown, but note this is a simplified way of writing the MAC addresses. A real MAC address might look something like this: 00-B0-D0-63-C2-26. Also, an abbreviation is used in our discussion, e.g., referencing only the last four digits of the MAC address.

## Unicast frames

Let’s say PC1 with a source MAC address of .0001 wants to send a frame to PC2 with a destination MAC address of .0002. This kind of frame is called **a unicast frame**, a frame destined for a single target, PC2 in this case. 

PC1 sends the frame through its NIC (network interface card), which is connected to SW1, and SW1 receives the frame. 

![Unicast-frame-example](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/79cc4-unicast-frame-example-8.webp?w=1201)

Image courtesy of Jeremy’s IT Lab (Free CCNA | Ethernet LAN Switching (Part 1) | Day 5)

## MAC address table / dynamic MAC addresses

After SW1 receives the frame, it looks at the source MAC address field of the frame and then uses that information to learn where PC1 is. 

As you can see, SW1 adds the MAC address AAAA.AA00.0001 to its MAC address table, and it associates that MAC address with its F0/1 interface. This is known as a dynamically learned MAC address, or just dynamic MAC address, because it wasn’t manually configured on the switch, the switch learned it itself.

Every switch will keep a MAC address table and will fill the MAC address table dynamically by looking at the source MAC address of frames it receives.

Since SW1 received a frame from source MAC address AAAA.AA00.0001 on its F0/1 interface, **SW1 knows that it can reach that MAC address on that interface**, and adds the MAC address to its MAC address table. This is how switches dynamically learn where each device on the network is, by looking at the source MAC address of the frame.

## Unknown unicast / flooding

The destination of the frame is AAAA.AA00.0002, but SW1 does not know how to reach .0002. This frame is called an **unknown unicast frame**, because it is a frame for which the switch has no entry in its MAC Address table. 

Because the switch does not know how to reach the destination, the switch has only one option, that is, to flood the frame. Flood means to forward the frame out of all of its interfaces, except the interface it received the frame on. SW1 copies the frame and sends it out its F0/2 and F0/3 interfaces. 

That would look like this. 

![unicast-flooding](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/f4307-unicast-flooding-9.webp?w=1201)

Image courtesy of Jeremy’s IT Lab (Free CCNA | Ethernet LAN Switching (Part 1) | Day 5)

PC3 ignores (drops) the packet, because the destination MAC address does not match its own MAC address. PC2, however, receives the packet, and then processes it normally, up the OSI stack.

Let’s say PC2 then wants to send some data to PC1, maybe a reply to what PC1 sent to PC2. 

Notice, below, the destination and source addresses of the frame are reversed. PC2 sends the frame out of its network interface, and SW1 receives it. SW1 looks at the source MAC address of the frame, and then adds the MAC address to its MAC address table, associating it with the F0/2 interface.

![known-unicast-frame](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/3d2f8-known-unicast-frame-10.webp?w=1201)

Image courtesy of Jeremy’s IT Lab (Free CCNA | Ethernet LAN Switching (Part 1) | Day 5)

## Known unicast / forwarding

This time SW1 does not flood the frame. This is known as a **known unicast frame**, because the destination is already in the switch’s MAC address table. Whereas unknown unicast frames are flooded, known unicast frames are forwarded to the destination. PC1 then processes the frame up the OSI stack, through the de-encapsulation process.

On Cisco switches, these dynamic MAC addresses are removed from the MAC address table after 5 minutes of inactivity. So if PC1 did not send any traffic for over 5 minutes, SW1 would remove the MAC address to clean out the MAC address table. Of course, if PC1 sent traffic again, SW1 would dynamically learn its MAC address again.

## MAC learning and frame flooding / forwarding review

Let’s look at another example, this time with two switches.

PC1 wants to send some information to PC3. The source MAC address of the packet is .0001 and the destination is .0003. PC1 sends the frame out of its network interface and it arrives at SW1. SW1 learns PC1’s MAC address from the source address field of the frame and associates it with the interface on which it was received, F0/1. But SW1 still does not know where PC3 is. So SW1 floods the frame out all of its ports, except the one it was received on. In this case it will flood the frame out of F0/2 and F0/3.

![frame-flooding](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/32032-frame-flooding-11.webp?w=1201)

Image courtesy of Jeremy’s IT Lab (Free CCNA | Ethernet LAN Switching (Part 1) | Day 5)

PC2 drops the frame because the destination MAC Address doesn’t match its own MAC address.

Just like SW1 did, SW2 uses the source MAC address field of the frame to dynamically learn PC1’s MAC address (.0001) and the interface it can use to reach PC1, F0/3. This is the interface that SW2 will use to reach PC1. 

SW2 received a unicast frame, that is a frame destined for a single device, but SW2 does not know how to reach that device, because it is not in its MAC address table.

So SW2 floods the frame out of interfaces F0/1 and F0/2. PC4 drops the frame because the destination MAC address does not match its own. PC3, however, receives the frame, as the destination MAC address matches its own MAC address.

Let’s say that PC3 is going to send a reply back to PC1. The destination and source MAC address fields are reversed. PC3 sends the frame out of its network interface, and it is received by SW2. SW2 learns PC3’s MAC address, and enters the MAC address and the corresponding interface in its MAC address table. 

SW2 already has an entry for the destination MAC Address .0001 in its MAC address table, so there is no need to flood the frame. Instead, it is forwarded normally out of the corresponding interface in the MAC address table, which is F0/3. The frame is received by SW1, which adds an entry for PC3’s MAC address in its MAC address table, with the interface F0/3, since that’s where it received the frame.

Finally, since SW1 already has an entry for the destination MAC address in its own MAC address table, SW1 forwards the frame out of the corresponding interface, and it reaches its destination, PC1. 

### Types of MAC Addresses

1. **Dynamic MAC Address**  
   - Learned automatically from incoming frames.  
   - Removed after a certain inactivity period (default 300 seconds).  
   - Used in standard networks where devices frequently connect and disconnect.  
   - Command to view:

```c
show mac address-table dynamic
```

1. **Static MAC Address**  
   - Manually configured and permanently stored in the MAC address table.  
   - Provides security by ensuring only specific devices use a particular port.  
   - Commonly used for servers and critical devices.  
   - Configuration example: `mac address-table static <MAC> vlan <VLAN> interface <INTERFACE>`.  
   - Command to view:

```c
show mac address-table static
``` 

1. **Sticky MAC Address**  
   - Automatically learned and stored in the switch configuration.  
   - Remains even after reboot if saved.  
   - Used for securing access ports by preventing unauthorized device connections.  
   - Enabled with the `switchport port-security mac-address sticky` command.  
   - Command to view: 

```c
show mac address-table | include Sticky
```

### MAC Address Table 

A **MAC address table** (also called the **CAM table**) is a database in a switch that stores **MAC addresses and their associated ports**. It helps the switch forward frames efficiently by sending them directly to the correct port instead of broadcasting.  

**How the MAC Address Table Works**  

1. When a switch receives a frame, it checks the **source MAC address** and records it in the MAC address table, associating it with the incoming port.  
2. If the **destination MAC address** is found in the table, the switch forwards the frame to the correct port.  
3. If the destination MAC is **unknown**, the switch floods the frame to all ports except the one it was received on.  
4. If a MAC address remains **inactive for too long**, it is removed from the table (default aging time: 300 seconds).  

**Viewing the MAC Address Table**  

On a Cisco switch, use:  

```bash
show mac address-table
```

This command displays **MAC addresses, VLANs, types (dynamic/static), and associated ports**.  

**Clearing the MAC Address Table**  

To remove all learned MAC addresses:  

```bash
clear mac address-table dynamic
```  

This forces the switch to relearn MAC addresses.  

---

