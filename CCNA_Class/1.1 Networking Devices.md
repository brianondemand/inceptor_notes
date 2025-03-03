
![Nextworking Devices](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fbg.png&w=3840&q=75)

## What are network devices?

Network devices, or networking hardware, are physical devices that are required for communication and interaction between hardware on a computer network.

## Types of network devices

Here is the common network device list:

- NIC (Network Interface Card)
- Repeater
- Hub
- Bridge
- Switch
- Router

### NIC

**Network Interface Card (NIC)** is a hardware component that is present on the computer. It is used to connect **different networking devices** such as **computers** and **servers** to **share data** over the connected network. It provides functionality such as support for **I/O interrupt**, **Direct Memory Access (DMA) interfaces**, **partitioning**, and **data transmission**.

![NIC](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fnic.png&w=3840&q=75)

NIC is important for us to **establish a wired or wireless** connection over the **network**.

Network Interface Card is also known as **Network Interface Controller**, **Network Adapter**, **Ethernet card**, **Connection card**, and **LAN (Local Area Network) Adapter**.

### REPEATER

A repeater operates at the **physical layer**. Its job is to **regenerate** the signal over the **same network** before the signal becomes **too weak** or **corrupted** so as to **extend the length** to which the signal can be **transmitted** over the **same network**. An important point to be noted about repeaters is that they do not **amplify** the signal. When the signal becomes weak, they **copy the signal bit by bit and regenerate it at the original strength**. **It is a 2 port device**.

![Repeater](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Frepeater.gif&w=1920&q=75)

### HUB

A hub is basically a **multiport repeater**. A hub connects **multiple wires** coming from **different branches**, for example, the connector in star topology which connects different stations. Hubs cannot filter data, so data packets are **sent to all** connected devices. In other words, the [collision domain](https://en.wikipedia.org/wiki/Collision_domain) of all hosts connected through Hub remains one. Also, they do not have the intelligence to find out the best path for data packets which leads to inefficiencies and wastage.

![Hub](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fhub.gif&w=640&q=75)

### Bridge

A bridge operates at the data link layer. A bridge is a repeater, with add on the functionality of **filtering content** by reading the **MAC addresses** of source and destination. It is also used for interconnecting **two LANs** working on the **same protocol**. It has a **single input** and **single output port**, thus making it a 2 port device

![Bridge](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fbridge.png&w=1920&q=75)

### Switch

A switch is a multiport bridge with a buffer and a design that can boost its efficiency(a large number of ports imply less traffic) and performance. A switch is a data link layer device. The switch can perform error checking before forwarding data, which makes it very efficient as it does not forward packets that have errors and forward good packets selectively to the correct port only. In other words, the switch divides the collision domain of hosts, but [broadcast domain](https://en.wikipedia.org/wiki/Broadcast_domain) remains the same.

![Switch](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fswitch.gif&w=640&q=75)

### Router

A router is a device like a switch that routes data packets based on their **IP addresses**. The router is mainly a **Network Layer device**. Routers normally connect **LANs** and **WANs** together and have a dynamically updating **routing table** based on which they make decisions on **routing** the data packets. Router divide **broadcast domains** of hosts connected through it.

![Router](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Frouter.png&w=3840&q=75)

## Repeater vs Hub vs Bridge vs Switch vs Router

| STATEMENT | REPEATER | HUB | BRIDGE | SWITCH | ROUTER |
| --- | --- | --- | --- | --- | --- |
| **Layer** | physical | physical | Data link | Data link | Network |
| **Port** | 2 | multiport | 2 | multiport | multiport |
| **Network** | work only same network | work only same network | work only same network | work only same network | support two or more network |
| **Collision Domain** | one | one | two | depend on your vlan | not exist |
| **Filter** | no filter | no filter | Use MAC Table for frame filtering | Use MAC Table for frame filtering and Switch also Have a Look-up Engine (specific hardware) | Use Routing Table for packet filtering |
| **Message Broadcast** | everytime | everytime | only one time (when destination MAC address is not exist in MAC table) | only one time (when destination MAC address is not exist in MAC table) | no broadcast |