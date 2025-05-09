 ****What is a Network?**

A **computer network** is a collection of interconnected devices (computers, servers, switches, routers) that can share resources and information. Networking enables communication, data transfer, and access to remote resources.

## Types of Networks:

- **LAN (Local Area Network):** Covers a small geographic area like a home, office, or campus.

![][https://media.geeksforgeeks.org/wp-content/uploads/20240618124339/LAN.png]

---

* **Characteristics:**

	* High bandwidth (fast data transfer speeds)
    * Low latency (minimal delays in data transmission)
    * Often privately owned and managed

* **Examples:**

    * A network connecting computers within a single office 
    * A network connecting devices in a home 


---

- **WAN (Wide Area Network):** Spans large geographical areas, often used by corporations or ISPs. Internet is the largest WAN.
![][https://www.entrustit.co.uk/wp-content/uploads/2014/10/wan.gif]

* **Characteristics:**

    * Typically relies on leased telecommunication lines (e.g., dedicated lines, leased lines) or public networks (e.g., the internet)
    * Can have varying bandwidth and latency depending on the underlying infrastructure

* **Examples:**

    * A company's internal network connecting its headquarters with branch offices in different cities
    * The internet itself, which is a global WAN

---

- **MAN (Metropolitan Area Network):** Covers a city or town. Larger than a LAN, smaller than a WAN.
![][https://apposite-tech.com/wp-content/uploads/2017/09/network.png]



* **Characteristics:**

    * Can offer higher bandwidth than traditional WAN connections but may have higher costs
    * Often used to interconnect government offices, universities, or businesses within a city

* **Examples:**

    * A network connecting government buildings within a city
    * A university network connecting its various campuses and departments

---

- **PAN (Personal Area Network):** Small network typically used for devices like phones, tablets, and laptops.

![][https://download.zone/wp-content/uploads/2023/11/personal-area-network-pan.png]

---


### Network Architectures

A **host** in networking refers to any device connected to a network, assigned a network address, and capable of functioning as a **client**, **server**, or **peer**:

- **Client:** Requests data or services.
- **Server:** Provides data or services.
- **Peer:** Can both request and provide data.


**Types of Network Architectures**

![][https://cdn.shopify.com/s/files/1/0106/6339/5391/files/Peer-to-peer_and_client-server_architecture_1024x1024.jpg?v=1727573346]

#### 1. Peer-to-Peer Architecture

 **All hosts can both request and provide data/services.

**Advantages:**

- Simple to configure.

**Disadvantages:**

- Data management and backups are challenging due to decentralized data storage.

 - Security requires individual user account setup on each device.

#### 2. Client/Server Architecture**

In the client-server architecture, the central server handles data storage, client request processing, network security and access control, while other client devices access resources and communicate with each other through the server.

 **Advantages:**

-  Centralized data and service management.
  
- Improved scalability and security.

**Disadvantages:**

- The server can be a single point of failure unless redundancy is implemented.

---

## Network Components and Devices

Network devices, or networking hardware, are physical devices that are required for communication and interaction between hardware on a computer network.


### Core Devices:

1. **Router**

A router connects different networks, such as a home or business network to the internet. It routes data between these networks, allowing devices within a local network to communicate with each other and with external networks.

**Example:** A Wi-Fi router in a home network, directing traffic between devices like smartphones, computers, and the internet.

**Diagram:**

![][https://img.freepik.com/free-photo/wan-wlan-technology-connection-computers_1232-4122.jpg?t=st=1736578818~exp=1736582418~hmac=d8c7a15b7f5192fb0316e568812f2e30370b22537f5ca11de1a539686e6fa488&w=740]

---

2. **Switch**

A switch is used to connect multiple devices within a single network. It operates at the data link layer (Layer 2) and forwards data to devices based on MAC addresses. It improves network efficiency by directing data only to the destination device, rather than broadcasting it to all devices.

**Example:** A network switch in an office connecting computers, printers, and servers within a local network.

**Diagram:**

![][https://img.freepik.com/free-photo/network-switch-with-cables_1137-6.jpg?t=st=1736579018~exp=1736582618~hmac=221a001c39e697bf11cfe3612577b1efaad050358752aa3702172ae8f5c6575b&w=740]

---

**3. Hub**

A hub is a simple networking device that connects multiple devices within a network. Unlike a switch, a hub broadcasts data to all devices, which can cause network inefficiency, especially in large networks.

**Example:** An older or small office network where a hub connects various devices.

**Diagram:**

![][https://5.imimg.com/data5/VS/JR/AU/SELLER-11828670/d-link-network-hub-1000x1000.jpg]

---

**4. Access Point (AP)**

An access point allows wireless devices to connect to a wired network using Wi-Fi. It is often used in larger networks or homes where devices like smartphones and laptops need wireless connectivity.

**Example:** A Wi-Fi access point in a home providing internet connectivity to smartphones, laptops, and tablets.

**Diagram:**

![][https://img.freepik.com/free-vector/isometric-mobile-network-concept_1284-18852.jpg?t=st=1736579249~exp=1736582849~hmac=52c1e87e96c6e15a874d316f2a96eee64ce0f366f18e4e775ce3150ed5ad78e9&w=740]

---

**5. Modem**

A modem (modulator-demodulator) connects a local network to the internet by converting the digital data from a computer into a signal that can be transmitted over phone lines, cable systems, or fiber optics.

**Example:** A cable modem used by internet service providers (ISPs) to provide internet access to homes or businesses.

**Diagram:**

![][https://media.geeksforgeeks.org/wp-content/uploads/20230826113414/Modembak.png]

---

**6. Bridge**

A bridge connects two separate networks to work as a single network. It operates at the data link layer and helps segment traffic in large networks to reduce congestion.

**Example:** A bridge connecting two Wi-Fi networks in a large building.

**Diagram:**

![][https://media.geeksforgeeks.org/wp-content/uploads/20241112120628072153/Hub-vs-Switches.webp]

---

**7. Gateway**

A gateway acts as a translator between two different network protocols, allowing communication between different types of networks. It often includes routing and firewall functions.

**Example:** A gateway connecting an office's internal network to the public internet, especially in scenarios involving VPNs or private network communication.

**Diagram:**

![][https://datasave.qsfptek.com/upload/2024-03-11/1710148821173.png]


These devices are crucial for maintaining efficient, secure, and scalable network operations, each playing a unique role in enabling communication across various network infrastructures.

### Other Components:

- **NIC (Network Interface Card):** Hardware allowing devices to connect to a network.

- **Cables:**

    - **Twisted Pair (Cat5e, Cat6)** – Used in Ethernet networks.
    
    - **Coaxial Cable** – Used in cable internet.
    
    - **Fiber Optic Cable** – For high-speed long-distance communication.
    


---

## 3. Network Topologies

**Network Topology**, you may wonder what this means. Basically a network topology means a kind of arrangement of the elements of a communication network. In other words, network topology refers to the geometric shape that a network takes when it is laid physically. When it comes to networks there are many ways a network can be arranged.

There are five types of network topology in computer networks:

1. **Bus Topology**
2. **Ring Topology**
3. **Mesh Topology**
4. **Star Topology**
5. **Tree Topology**
6. **Hybrid Topology**

##### 1) Bus Topology

Bus topology is a network type in which every computer and network device is connected to single cable. When it has exactly two endpoints, then it is called **Linear Bus topology**.

![bus-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fbus-topology.png&w=3840&q=75)

**Features of Bus Topology**

- It transmits data only in one direction.
- Every device is connected to a single cable

**Advantages of Bus Topology**

- It is cost effective
- Cable required is least compared to other network topology.
- Used in small networks.
- It is easy to understand.
- Easy to expand joining two cables together.

**Disadvantages of Bus Topology**

- Cable fails then whole network fails
- If network traffic is heavy or nodes are more the performance of the network decreases.
- Cable has a limited length.
- It is slower than the ring topology.

---

##### 2) Ring Topology

It is called ring topology because it forms a ring as each computer is connected to another computer, with the last one connected to the first. Exactly two neighbors for each device.

![ring-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fring-topology.png&w=3840&q=75)


**Features of Ring Topology**

- A number of repeaters are used for Ring topology with large number of nodes because if someone wants to send some data to the last node in the ring topology with 100 nodes, then the data will have to pass through 99 nodes to reach the 100th node. Hence to prevent data loss repeaters are used in the network.
  
- The transmission is unidirectional, but it can be made bidirectional by having 2 connections between each Network Node, it is called **Dual Ring Topology**.

- In Dual Ring Topology, two ring networks are formed, and data flow is in opposite direction in them. Also, if one fails the second rin can act as a backup, to keep the network up.
  
- Data is transferred in a sequential manner that is bit by bit. Data transmitted, has to pass through each node of the network, till the destination node.


**Advantages of Ring Topology**

- Transmitting network is not affected by high traffic or by adding more nodes, as only the nodes having tokens can transmit data.

- Cheap to install and expand.


**Disadvantages of Ring Topology**

- Troubleshooting is difficult in ring topology.
- Adding or deleting the computers disturbs the network activity.
- Failure of one computer disturbs the whole network.

---

##### 3) Star Topology

In this type of topology all the computers are connected to a single hub through a cable. This hub is the central node and all others nodes are connected to the central node.

![star-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fstar-topology.png&w=3840&q=75)


**Features of Star Topology**

- Every node has its own dedicated connection to the hub.
- Hub acts as a repeater for data flow.
- Can be used with twisted pair, Optical Fibre or coaxial cable.

**Advantages of Star Topology**

- Fast performance with few nodes and low network traffic.
- Hub can be upgraded easily.
- Easy to troubleshoot.
- Easy to setup and modify.
- Only that node is affected which has failed, rest of the nodes can work smoothly.

**Disadvantages of Star Topology**

- Cost of installation is high
- Expensive to use.
- If the hub fails then the whole network is stopped because all the nodes depend on the hub.
- Performance is based on the hub that is it depends on its capacity

---

##### 4) Mesh Topology


It is a point-to-point connection to other nodes or devices. All the network nodes are connected to each other. Mesh has `n(n-1)/2` physical channels to link `n` devices.

**Types of Mesh Topology**

1. **Partial Mesh Topology**: In this topology some of the systems are connected in the same fashion as mesh topology but some devices are only connected to two or three devices.
2. **Full Mesh Topology**: Each and every nodes or devices are connected to each other.

![mesh-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fmesh-topology.png&w=3840&q=75)


**Features of Mesh Topology**

- Fully connected
- Robust.
- Not flexible.

**Advantages of Mesh Topology**

- Each connection can carry its own data load.
- It is robust.
- Fault is diagnosed easily.
- Provides security and privacy.

**Disadvantages of Mesh Topology**

- Installation and configuration is difficult.
- Cabling cost is more.
- Bulk wiring is required.

---

##### 5) Tree Topology

It has a root node and all other nodes are connected to it forming a hierarchy. It is also called hierarchical topology. It should at least have three levels to the hierarchy.

![tree-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Ftree-topology.png&w=3840&q=75)


**Features of Tree Topology**

- Ideal if workstations are located in groups.
- Used in Wide Area Network

**Advantages of Tree Topology**

- Extension of bus and star topologies.
- Expansion of nodes is possible and easy.
- Easily manages and maintained.
- Error detection is easily done.

**Disadvantages of Tree Topology**

- Heavily cabled.
- Costly.
- If more nodes are added maintenance is difficult.
- Central hub fails, network fails.

---

##### 6) Hybrid Topology

It is two different types of topologies which is a mixture of two or more topologies. For example if in an office in one department ring topology is used and in another star topology is used, connecting these topologies will result in Hybrid Topology (ring topology and star topology).

![hybrid-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fhybrid-topology.png&w=3840&q=75)


**Features of Hybrid Topology**

- It is a combination of two or topologies
- Inherits the advantages and disadvantages of the topologies included

**Advantages of Hybrid Topology**

- Reliable as Error detecting and trouble shooting is easy.
- Effective.
- Scalable as size can be increased easily.
- Flexible.

**Disadvantages of Hybrid Topology**

- Complex in design.
- Costly.

----

## Open Systems Interconnection (OSI Model)


The **OSI (Open Systems Interconnection) Model** is a set of rules that explains how different computer systems communicate over a network.

OSI Model was developed by the **International Organization for Standardization (ISO)**. 

The OSI Model consists of 7 layers and each layer has specific functions and responsibilities


**Purpose of the OSI Model**

- Provides a universal language for networking.
- Standardizes networking functions to enable interoperability between different systems and technologies.
- Breaks down complex network interactions into manageable and understandable layers.
- Facilitates troubleshooting by isolating issues to a specific layer.

#### OSI Model (7 Layers):

![osi-model-diagram][https://insights.profitap.com/hs-fs/hubfs/The%207%20Layers%20of%20OSI.png?width=560&name=The%207%20Layers%20of%20OSI.png]

---

#### 1. Physical

The first OSI model layer describes the physical connections between devices in a network. Electrical, optic, or electromagnetic signal data moves from device to device through the physical infrastructure defined by this layer.

**Elements of the OSI layer model’s physical layer include:**

- Electrical, mechanical, and physical systems, parts, and devices
- Specifications such as cable size, signal frequency, voltages, etc.
- How a network is configured, such as a bus, with devices arranged in a line with many stops, a star, with a central device surrounded by an array of devices, a ring with devices in a connected circle, a mesh of woven interconnections, and more
- Communication modes such as one-way simplex, two-way full duplex, or half duplex, with messages going back and forth, but only one direction at a time
- Data transmission performance, such as bit rate, referring to how much data is moving through a connection at a given time, and bit synchronization to align the clocks of each device for accurate data transmission
- Modulation, switching, and interfacing with the physical transmission medium
- Common protocols for connections, including Wi-Fi, Ethernet, and others
- Hardware, including networking devices, antennas, cables, modems, and intermediate devices such as repeaters and hubs

#### 2. The Data Link Layer

The second OSI model layer describes data transmission between network devices. Data is sent in packets within a frame of special bit patterns or codes that indicate the beginning and end of each packet. These packets move through switches that route information through the physical layer from one physical location to another.

**The OSI data link layer has two sublayers:**

- The Logical Link Control (LLC) sublayer manages flow and error controls to ensure accurate data transmission between the network devices.
- The Media Access Control (MAC) sublayer manages access and permissions for transmitting data between devices. The function of this sublayer is to manage which device controls a channel, moment to moment.

#### 3. The Network Layer

The third of the OSI layers organizes and transmits data between multiple networks. Network layer hardware includes routes, bridge routers, 3-layer switches, and protocols such as Internet (IPv4) Protocol version 4 and Internet Protocol version 6 (IPv6).

This layer routes data via the shortest or fastest physical path, working around traffic controls, congestion, broken links, service priority, and more. It handles addressing logic to distinguish between the source and destination networks. It divides data into packets to send and then reassembles them at their destination.

#### 4. The Transport Layer

This layer deals with sending and delivering of complete and reliable data from one device to another through a network or between networks. Common transport layer protocols include the Transmission Control Protocol (TCP) for connection-oriented data transmission and the User Datagram Protocol (UDP) for connectionless data transmission.

Some of the essential functions in this layer include:

- Error control, flow control, and congestion control are ways to keep track of data packets, check for errors and duplication, and then to resend if there is an error or failure.
- Service-point addressing ensures that data is delivered to the correct protocol, identified by a port number.
- Packet segmentation and reassembly are processes for dividing data and sending it sequentially, then rechecking it at its destination for integrity and accuracy.

#### 5. The Session Layer

This OSI Model layer concerns itself with managing session links between network devices with a specific beginning and end. The essential functions include establishing a link to start the session, authenticating senders and receivers, authorizing communications between devices and apps, maintaining the session, and terminating the connection, which are the key functions.

A common session type is when an internet user visits and browses a website for a specific period.

An essential concept in this layer is synchronization, in which checkpoints during the session ensure a coordinated data flow that is free of unplanned breaks or data loss.

**Common OSI session layer protocols include:**

- Remote procedure call protocol (RPC)
- Point-to-Point Tunneling Protocol (PPTP)
- Session Control Protocol (SCP)
- Session Description Protocol (SDP)

#### 6. The Presentation Layer

Data flows as packets of code, often encrypted, through networks. Presenting it in a useful format is the focus of the sixth OSI model layer. The presentation layer deals with:

- Data conversion
- Character code translation
- Data compression
- Encryption and decryption

To send text across a network, the characters of the alphabet convert via a character coding system, such as the American Standard Code for Information Interchange (ASCII) or Extended Binary Coded Decimal Interchange Code (EBCDIC) that is then encrypted and compressed and sent over the network. On the receiving end, the process reverses. Different kinds of data get translated into different format codes.

#### 7. The Application Layer

The top layer of the OSI 7 layer model is the application layer. It is how a user application, such as a website, browser, email, instant messaging, file transfers, or voice-over IP, interfaces with the network. Think of it as the window for accessing the network to send or display data, which can be anything from a picture of your pet cat to a database of statistics to a voice message.

It facilitates networking requests, determines resource availability, synchronizes communication, and manages application-specific networking requirements. The application layer also identifies constraints at the application level, such as those associated with authentication, privacy, quality of service, networking devices, and data syntax.

**Common OSI application layer protocols include:**

![][https://s7280.pcdn.co/wp-content/uploads/2018/06/osi-model-7-layers-1.png]


---

### TCP/IP Model (4 Layers):

The TCP/IP model is a fundamental framework for computer networking. It stands for Transmission Control Protocol/Internet Protocol, which are the core protocols of the Internet. 

This model defines how data is transmitted over networks, ensuring reliable communication between devices.

Defines how data is transmitted over networks. And ensures reliable communication between devices over networks.

- Consists of four layers:
    - **Link Layer**
    - **Internet Layer**
    - **Transport Layer**
    - **Application Layer**

Designed and developed by the Department of Defense (DoD) in the 1960s.

Developed alongside the creation of the ARPANET, which later became the foundation of the modern internet. 

![][https://www.tutorialspoint.com/data_communication_computer_network/images/tcp_ip_protocol.jpg]

---

#### Layers of TCP/IP Model

##### 1. Application Layer

In TCP/IP, the Application layer protocols provide services to the application software running on a computer. The application layer uses HTTP, POP3, and SMTP protocols. The application layer provides an interface between the software running on a computer and the network itself.

##### 2. Transport Layer

In TCP/IP, the Transport layer includes transmission control protocol (TCP) and user datagram protocol (UDP). TCP provides services to the application layer that reside above the transport layer or higher within the TCP/IP model.

##### 3. Internet Layer (Network Layer)

The Internet layer in the TCP/IP model is the Network Layer 3 of the OSI model. It stores the IP addresses and the routing data. When data is transmitted from a node on one LAN to a node on a different LAN, the Internet Layer is used. IPv4, IPv6, ICMP, and routing protocols (among others) are the Internet Layer TCP/IP protocols.

##### 4. Host-to-Network or Link Layer

In TCP/IP, the Host-to-Network layer is also called the network interface or _link layer_. It provides services to the upper layer within the model. When a hosts or routers IP process chooses to send an IP packet to a different router or host, that host or router then uses the link-layer details to send that packet to the next host/router.

This layer is the lowermost layer of the TCP/IP model; it is concerned with the physical transmission of data. It is like a combination of the data link layer and physical layer of the OSI model.



---

## IP Addressing and Subnetting

**What is an IP**

An IP address stands for **"Internet Protocol Address"**, which is a set of rules for communication over the internet, such as sending mail, streaming video, or connecting to website. **An IP address identifies a network or device on the internet**.

Internet Protocol Address mainly refers to a numbering scheme, providing a highly unique number to every machine connected to the internet. (Internet protocols do other things as well, such as routing internet traffic). This way, it's easy to see which devices on the internet are sending, requesting and receiving what information.

#### Versions of IP Address

#### IPv4

IPv4 stands for internet protocol version 4. This is the one you will see used the most. These addresses are **32-bit long** and divided into **four parts** known as **octets**, each octet containing **8 bit**. This protocol has been around **since 1981** and has not seen many changes since. Despite it having **4,294,967,296** possible IP addresses, we are still running out of them to use.

![ipv4-address](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fipv4-address.png&w=3840&q=75)

---

#### IPv6

IPv6 is the newest version of internet protocol formulated by the IETF, which helps identify and local endpoint systems on a computer network and route online traffic while addressing the problem of IPv4 address depletion due to prolonged internet use worldwide.

It uses a **128-bit** addressing system, allowing for approximately 3.4x10<sup>38</sup> addresses. The actual number is a bit lower as some IPs are reserved for special use.

IPv6 address is expressed by **eight groups of hexadecimal (base16)** numbers separated by colons. Groups of numbers that contain all zeros are often omitted to save space, leaving a colon separator to mark the gap.

![ipv6-address](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fipv6-address.png&w=3840&q=75)

---

Here are some of the main advantages IPv6 provides:

-   Faster routing
-   Better end-to-end connectivity
-   Easier administration
-   Improved mobility features
-   Superior Multicast and Anycast abilities
-   More security for applications and networks

#### IP Address Classes

|Class|Range|Default Subnet Mask|
|---|---|---|
|A|1.0.0.0 – 126.255.255.255|255.0.0.0|
|B|128.0.0.0 – 191.255.255.255|255.255.0.0|
|C|192.0.0.0 – 223.255.255.255|255.255.255.0|

**Class A** addresses are for networks with large number of total hosts. Class A allows for 126 networks by using the first octet for the network ID. 

**Class B** addresses are for medium to large sized networks. Class B allows for 16,384 networks by using the first two octets for the network ID. 

**Class C** addresses are used in small local area networks (LANs). Class C allows for approximately 2 million networks by using the first three octets for the network ID. 

**Class D** IP addresses are not allocated to hosts and are used for multicasting. 

**Multicasting** allows a single host to send a single stream of data to thousands of hosts across the Internet at the same time. It is often used for audio and video streaming, such as IP-based cable TV networks. 

![ipv4-classes-examples](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/8e5e0-ipv4-classes-examples-15.webp?w=1201)

#### Types of IP addresses

**Private IP addresses**

Every device that connects to your internet network has a private IP address. This includes computers, smartphones, and tablets but also any Bluetooth internet of things, the number of private IP addresses you have at home is probably growing. Your router needs a way to identify these items separately, and many items need a way to recognize each other. Therefore, your router generates private IP addresses that are unique identifiers for each device that differentiate them on the network.

**Public IP addresses**

A public IP address is the primary address associated with your whole network. While each connected device has it own IP address, they are also included within the main IP address for your network. As described above, your public IP address is provided to your router by your ISP. Typically ISPs have a large pool of IP addresses that they distribute to their customers. Your public IP address that all the devices outside your internet network will use to recognize your network.


**Special IP Addresses**

 IP Range: 127.0.0.1 to 127.255.255.255 are network testing addresses (also referred to as loop-back addresses). These are virtual IP address, in that they cannot be assigned to a device. 

Specifically, the IP 127.0.0.1 is often used to troubleshoot network connectivity issues using the `ping command`. Specifically, it tests a computer's TCP/IP network software driver to ensure it is working properly.

A **local broadcast address** (255.255.255.255) sends messages to all devices on the **same local network** and is not routed.

Not routed  means that the broadcast message is confined to a **single network or subnet** and **does not pass through routers** to other networks.

A **directed broadcast address** (e.g., 192.168.1.255) targets all devices on a **specific subnet** and can be routed.

Routers can forward directed broadcasts to other networks as long as the broadcast is targeting a specific subnet.

The **loopback address** (127.0.0.1) is used to test the network stack of the **local machine** without leaving the device.

A **network mask** (netmask) is a 32-bit number that is used to identify the network portion of an IP address. It is used in conjunction with an IP address to determine which hosts are in the same network and which hosts are in different networks.

![classes-ipv4-binary](https://itnetworkingskills.wordpress.com/wp-content/uploads/2024/05/203e2-classes-ipv4-binary-17.webp?w=1201)


The **broadcast address** of the network is the last address of the network. Like the network address, the broadcast address cannot be assigned to a host.

#### How IP address assigned: Dynamic vs. Static

IP addresses can be permanent (static) or temporary (dynamic).

**Dynamic IP addresses**

Dynamic IP addresses change automatically and regularly. ISPs buy a large pool of IP addresses and assign them automatically to their customers. Periodically, they re-assign them and put the older IP addresses back into the pool to be used for other customers. 

**Static IP addresses**

In contrast to dynamic IP addresses, static addresses remain consistent. Once the network assigns an IP address, it remains the same. Most individuals and businesses do not need a static IP address, but for businesses that plan to host their own server, it is crucial to have one. This is because a static IP address ensures that websites and email addresses tied to it will have a consistent IP address -- vital if you want other devices to be able to find them consistently on the web.

---
### Subnetting

Subnetting is the process of dividing a large IP network into smaller, more manageable networks called subnets. This is done by borrowing bits from the host portion of an IP address and using them to create new network addresses.

**Why Subnet**

- **Efficiency:** Subnetting allows for more efficient use of IP addresses, especially in large networks.
- **Security:** By dividing a network into smaller segments, you can improve security by controlling traffic flow and isolating potential threats.
- **Broadcast Reduction:** Subnetting reduces the number of unnecessary broadcasts, improving network performance.
- **Administrative Ease:** Subnetting makes it easier to manage and troubleshoot network problems.

**Classless Inter-Domain Routing (CIDR)** is a method for assigning IP addresses more flexibly and efficiently, replacing the older classful system (Class A, B, C). 

It allows for variable-length subnet masks, meaning that IP addresses can be allocated in smaller or larger blocks, as needed, rather than being restricted to fixed-size classes. 

This results in better utilization of the IP address space and improved routing table management.

---
## Protocols

Network protocols are sets of rules that govern communication between networked devices, ensuring they can understand each other regardless of their hardware or software.

Network protocols enable the exchange of information across the internet. They work behind the scenes so effectively that most users don't know what they do and don't think twice about how they work.

Networking protocols are categorized into three main types: communication protocols that facilitate **data exchange** between devices, **management protocols** that oversee and control network operations, and **security protocols** that ensure the protection, authentication and integrity of data during transmission.

#### Internet and Communication Protocols

**1. IP (Internet Protocol)**  

Internet Protocol is responsible for addressing and routing packets of data so that they can travel across networks and arrive at the correct destination. Every device on a network has an IP address, which helps in identifying it uniquely.

**2. TCP (Transmission Control Protocol)**  

TCP is a connection-oriented protocol that ensures reliable and ordered delivery of a stream of data between applications. It checks for errors and guarantees that data is delivered without duplication and in the correct order.

**3. UDP (User Datagram Protocol)**  

UDP is a connectionless protocol that allows sending messages without establishing a reliable connection. It is faster than TCP but does not guarantee delivery, ordering, or error-checking. It is used in real-time applications like video streaming and online gaming.

**4. ICMP (Internet Control Message Protocol)**  

ICMP is used by network devices to send error messages and operational information indicating success or failure when communicating with another IP address. It is commonly used in network diagnostics tools like ping and traceroute.

**5. ARP (Address Resolution Protocol)**  

ARP is used to map IP addresses to physical MAC addresses in a local area network. When a device wants to communicate with another on the same network, it uses ARP to find the MAC address associated with the IP address.



#### Web and File Transfer Protocols


**6. HTTP (Hypertext Transfer Protocol)**  

HTTP is the protocol used for transmitting hypertext such as web pages over the internet. It defines how messages are formatted and transmitted, and how web servers and browsers should respond to various commands.

**7. HTTPS (Hypertext Transfer Protocol Secure)**  

HTTPS is the secure version of HTTP that uses encryption protocols like SSL or TLS to protect the integrity and confidentiality of data between the user's computer and the site.

**8. FTP (File Transfer Protocol)**  

FTP is used to transfer files between a client and a server on a computer network. It requires a login with a username and password and is useful for uploading or downloading files from websites.

**9. SFTP (SSH File Transfer Protocol)**  

SFTP is a secure version of FTP that runs over the SSH protocol. It provides encryption for file transfers, making it suitable for transferring sensitive data.

**10. TFTP (Trivial File Transfer Protocol)**  

TFTP is a simplified version of FTP with no authentication or encryption. It is typically used to transfer configuration files and firmware to network devices.



#### Email Protocols


**11. SMTP (Simple Mail Transfer Protocol)**  

SMTP is used to send emails from an email client to an email server or between servers. It is a push protocol and works well for sending emails but not retrieving them.

**12. POP3 (Post Office Protocol version 3)**  

POP3 is used to retrieve emails from a mail server. Once the emails are downloaded, they are typically deleted from the server. This makes it suitable for users who access email from a single device.

**13. IMAP (Internet Message Access Protocol)**  

IMAP allows access to email messages from multiple devices by storing them on the server. Users can organize, delete, and manage messages directly on the mail server.

#### Network Services Protocols

**14. DNS (Domain Name System)**  

DNS translates human-readable domain names (like [www.example.com](http://www.example.com/)) into machine-readable IP addresses. This system is crucial for the functioning of the internet.

**15. DHCP (Dynamic Host Configuration Protocol)**  

DHCP automatically assigns IP addresses and other network configuration parameters to devices on a network, allowing them to communicate effectively.

**16. NTP (Network Time Protocol)**  

NTP synchronizes the clocks of computers to a reference time source, ensuring consistent timekeeping across networked systems.


#### Remote Access and Management Protocols

**17. SSH (Secure Shell)**  

SSH provides a secure channel over an unsecured network in a client-server architecture, allowing secure remote login and other secure network services.

**18. Telnet**  

Telnet is a protocol used to provide bidirectional interactive text-based communication via a virtual terminal connection. However, it lacks encryption and is considered insecure.

**19. RDP (Remote Desktop Protocol)**  

RDP allows users to connect to another computer over a network and control it remotely with a graphical interface. It is primarily used in Windows environments.



#### Routing Protocols

**20. RIP (Routing Information Protocol)**  

RIP is a distance-vector routing protocol used in local and wide area networks. It uses hop count as a routing metric and is one of the oldest routing protocols.

**21. OSPF (Open Shortest Path First)**  

OSPF is a link-state routing protocol used in larger enterprise networks. It calculates the shortest path for data using Dijkstra's algorithm.

**22. BGP (Border Gateway Protocol)**  

BGP is used to exchange routing information between autonomous systems on the internet. It is the protocol that makes core routing decisions on the internet.



#### Directory and Network Management

**23. LDAP (Lightweight Directory Access Protocol)**  

LDAP is used to access and manage directory information services over a network. It is commonly used for storing user credentials and permissions in enterprise environments.

**24. SNMP (Simple Network Management Protocol)**  

SNMP is used to collect and organize information about managed devices on IP networks and to modify that information to change device behavior.

**25. MPLS (Multiprotocol Label Switching)**  

MPLS is a data-carrying technique that speeds up and shapes traffic flows across enterprise and service provider networks. It routes data using labels rather than long network addresses.


---
### Common Ports

There are a total of ==65,535== network ports available for TCP and UDP. These ports are divided into three ranges: Well-known ports (0-1023), Registered ports (1024-49151), and Dynamic and/or Private ports (49152-65535).

| Port          | Protocol | Service / Use in Cybersecurity                                 |
| ------------- | -------- | -------------------------------------------------------------- |
| **20**        | TCP      | FTP (Data transfer) — Used in file transfers.                  |
| **21**        | TCP      | FTP (Control) — Often misconfigured, supports anonymous login. |
| **22**        | TCP      | SSH — Common brute-force target for remote access.             |
| **23**        | TCP      | Telnet — Insecure remote login. Often exploited.               |
| **25**        | TCP      | SMTP — Email sending, often used in phishing/spam.             |
| **53**        | TCP/UDP  | DNS — DNS poisoning/spoofing attacks.                          |
| **67/68**     | UDP      | DHCP — Can be abused for rogue DHCP server attacks.            |
| **69**        | UDP      | TFTP — Simple, often used for boot files, sometimes exploited. |
| **80**        | TCP      | HTTP — Most common attack surface (XSS, SQLi, etc.).           |
| **110**       | TCP      | POP3 — Insecure email retrieval, sometimes exposed.            |
| **111**       | TCP/UDP  | RPCbind — Enumeration vector on *nix systems.                  |
| **123**       | UDP      | NTP — NTP amplification (DDoS).                                |
| **135**       | TCP      | MS RPC — Often scanned for Windows exploits.                   |
| **137-139**   | TCP/UDP  | NetBIOS — LAN enumeration, SMB relaying, etc.                  |
| **143**       | TCP      | IMAP — Email retrieval; look for weak authentication.          |
| **161/162**   | UDP      | SNMP — Info disclosure (public string abuse).                  |
| **389**       | TCP/UDP  | LDAP — Directory enumeration, AD attacks.                      |
| **443**       | TCP      | HTTPS — Secure web, still vulnerable to web exploits.          |
| **445**       | TCP      | SMB — EternalBlue exploit, SMB relay, LLMNR poisoning.         |
| **465/587**   | TCP      | SMTPS — Encrypted email submission.                            |
| **512-514**   | TCP/UDP  | Rexec/Rlogin/Rsh — Legacy remote access.                       |
| **593**       | TCP      | RPC over HTTP — MS Exchange, lateral movement.                 |
| **636**       | TCP      | LDAPS — Encrypted LDAP.                                        |
| **873**       | TCP      | rsync — Misconfigurations can lead to data leakage.            |
| **993/995**   | TCP      | Secure IMAP/POP3 — Encrypted email access.                     |
| **1080**      | TCP      | SOCKS proxy — Proxy abuse.                                     |
| **1433/1434** | TCP/UDP  | MS SQL Server — SQL injection, weak creds.                     |
| **1521**      | TCP      | Oracle DB — Often found in corp environments.                  |
| **2049**      | TCP/UDP  | NFS — Info disclosure if exported volumes are public.          |
| **3306**      | TCP      | MySQL — Target of SQL injection and brute-force.               |
| **3389**      | TCP      | RDP — Popular brute-force/RCE target.                          |
| **4444**      | TCP      | Metasploit default reverse shell port.                         |
| **5000**      | TCP      | Flask web apps — Common dev environment target.                |
| **5060/5061** | TCP/UDP  | SIP — VoIP attacks.                                            |
| **5432**      | TCP      | PostgreSQL — Info disclosure, auth bypass.                     |
| **5900**      | TCP      | VNC — Weak authentication, remote desktop hijack.              |
| **6379**      | TCP      | Redis — No authentication by default; RCE possible.            |
| **8080**      | TCP      | Alternate HTTP — Common for admin panels.                      |
| **8443**      | TCP      | Alternate HTTPS — Admin interfaces often here.                 |
| **9200/9300** | TCP      | Elasticsearch — Can be unauthenticated; data exfiltration.     |
| **27017**     | TCP      | MongoDB — Default config often has no auth.                    |

---
## Networking  Tools


**Common Network Tools**:

- **ping:** Tests connectivity to another host.
    
    - `ping 8.8.8.8`

- **tracert (Windows) / traceroute (Linux):** Shows the path packets take.

- **ipconfig (Windows):** Displays IP configuration.
    
    - `ipconfig /all`

- **ifconfig / ip a (Linux):** Displays network interfaces.

- **netstat:** Displays network connections, ports, and routing table.

- **nslookup:** Resolves domain names to IP addresses.

- **whois:** Gets ownership information about a domain.


---

	![TRYHACKME ROOM = ][# Introductory Networking]