In order to protect their networks against complete breakdown, businesses use a number of different protocols. First Hop Redundancy Protocol (FHRP) is one such protocol, and it uses a virtual default gateway to provide nearly uninterrupted network availability for businesses. FHRP allows multiple routers to act as a backup for each other in case one of them fails or becomes unreachable. This way, the network can avoid losing connectivity to the default gateway and ensure uninterrupted traffic flow.

In this blog, we will mainly focus on the basic meaning of the First Hop Redundancy Protocol (FHRP) and why it is important for network reliability and performance. We will also learn about the different types of FHRP, such as Hot Standby Router Protocol (HSRP), Virtual Router Redundancy Protocol (VRRP), and Gateway Load Balancing Protocol (GLBP).

Before learning about FHRP (First Hop Redundancy Protocol), a [network engineer](https://www.pynetlabs.com/how-to-become-a-network-engineer-in-2022/) must understand why redundancy is even required in networking.

## Why Redundancy?

Redundancy plays a vital role in networking. Network redundancy assures business continuity by avoiding failure of the network. By keeping operations running all the time, it boosts productivity.

To have a dependable network, we must build a redundant one. In [local area networks](https://www.pynetlabs.com/what-is-lan-local-area-network/) (intranet), we use multiple switches for redundancy. But is it possible for multiple routers too?

Yes, it is also possible to have redundant topology to connect different networks together.

Every host connected to the organization’s network must use a [router](https://www.pynetlabs.com/what-is-a-router-in-computer-network/), which acts as the host’s default gateway to the Internet. But what happens if the gateway router is unavailable?

Hosts can have only one default gateway configured at a time, so when that router fails, hosts will lose connectivity.

We need to replace the gateway router and also need to configure default gateway on every host. This approach is ineffective because it will result in longer service interruptions for the organization’s users. That is where FHRP steps in.

## First Hop Redundancy Protocol (FHRP)

First Hop Redundancy Protocol (FHRP) is a hop redundancy protocol designed to provide redundancy to the gateway router within the organization’s network by using a virtual IP address and virtual [MAC address](https://www.pynetlabs.com/what-is-mac-address/). So, in case of a failure of the gateway, the backup router will become active, usually within a few seconds.

- Two or more routers should be utilized as a gateway router in order to deploy FHRP.
- Each router’s physical interfaces have a unique IP address.
- Additionally, both routers will have virtual MAC and [IP addresses](https://www.pynetlabs.com/types-of-ip-address/).
- The virtual IP address will serve as the organization’s network’s default gateway IP address for all connected devices.
- One router will be used as a default (gateway router), and the other will be a backup router.

If the default router goes offline, the backup router will take its place to be the gateway router for all the hosts without changing the default gateway address of every host.

The below diagram is an example of a network topology without FHRP implementation:

![fhrp](https://www.pynetlabs.com/wp-content/uploads/2022/10/FHRP1.png)

The below diagram is an example of network topology with FHRP implemented:

![fhrp](https://www.pynetlabs.com/wp-content/uploads/2022/10/FHRP2-1.png)

## Why is FHRP Important?

Let’s understand the importance of First Hop Redundancy Protocol with help of an example:

Imagine you are trying to access a website, but the router responsible for forwarding the traffic suddenly fails. Now, this failure can lead to network downtime, which can disrupt users and services. With redundancy in place, this can be avoided. Hence, FHRP is used. It will instantly switch to a backup router in case of a failure, ensuring no interruptions in the services.

## Working of FHRP

FHRP is a protocol used in computer networks that acts as a backup for the default gateway on a subnetwork. The default gateway is the router that connects the subnetwork to other networks, such as the Internet. In case of the failure of the default gateway, the subnetwork will lose connectivity to other networks, which further causes interruption and network downtime.

To avoid this, FHRP enables several routers to share a single virtual IP and virtual MAC address that acts as the default gateway for hosts inside a subnetwork. All traffic entering and leaving the subnetwork is routed via one of these routers, which is identified as the active router. The other routers are backups that keep an eye on the primary router to take over if necessary. So, the working of FHRP can be divided into 3 parts:

### Router Failover Mechanism

FHRP works by setting up a “failover” mechanism between routers. An active router is responsible for the network traffic in normal circumstances. However, when it fails, a standby router automatically takes over the responsibility without disrupting the network services.

### Virtual Router Concept

FHRP uses the concept of virtual router. When configured, routers create a virtual IP address that devices in the network use as their gateway. This virtual router is mapped to multiple physical routers to provide seamless failover.

### Election of Active and Standby Routers

During setup, FHRP recognises an active router that is handling the network traffic. The rest of the routers are kept as backup or standby routers, which constantly monitor the active router’s status. In case of a failure, the backup routers are ready to take over instantly.

## What is the purpose of Fist Hop Redundancy Protocol?

The prime purpose of the First Hop Redundancy Protocol is to provide redundancy to your network by enabling multiple routers as a gateway for your traffic. This allows your network to continue working even in case of a router failure, as another router will take over instantly. Here are FHRP’s core objectives:

### Ensuring Network Availability

The primary function of FHRP is to ensure a backup router is always ready to take over in case of active router failure. This minimizes the risk of network failure due to the failure of one router.

### Minimizing Downtime

When a router failure happens, FHRP allows the network to instantly switch to a standby router without the users noticing any disruptions. It reduces downtime and helps keep business operations running smoothly.

Below, we have taken an example to help you understand the purpose of FHRP.

**Topology:**

- **Router A:** 192.168.1.1 (primary router)
- **Router B:** 192.168.1.2 (backup router)
- **Switch:** connects to Router A and Router B
- **Client:** connects to Switch

![Two network topologies with and without Redundant Gateway Router](https://www.pynetlabs.com/wp-content/uploads/2022/09/network-topologies-with-and-without-fhrp-1024x512.jpeg)

**Normal Operation:**

- Client sends traffic to Router A (192.168.1.1)
- Router A forwards traffic to the internet
- Router B is in standby mode, waiting for Router A to fail

**Router A Fails:**

- Client sends traffic to Router A (192.168.1.1), but Router A is down
- FHRP protocol detects Router A failure and activates Router B
- Router B takes over as the new primary router and uses the same IP address (192.168.1.1)
- Client sends traffic to Router B (192.168.1.1), which forwards traffic to the internet

In this case, the FHRP guarantees the client internet access even if Router A is unavailable, i.e., fails. Router B then becomes the new primary router and uses the same IP address and the client does not have to change anything to remain connected.

## Types of First Hop Redundancy Protocol (FHRP)

There are three ways to implement FHRP. Examples of these protocols are:

1. **Hot Standby Router Protocol** (**HSRP**) – Initial and proprietary standard of Cisco

1. **Virtual Router Redundancy Protocol** (**VRRP**) – An open standard protocol

1. **Gateway Load Balancing Protocol** (**GLBP**) – A more recent proprietary standard from Cisco that permits load balancing as well as redundancy

Let’s discuss each one of these, one by one. Let’s start with HSRP.

### Hot Standby Router Protocol (HSRP)

[Hot Standby Router Protocol or HSRP](https://www.pynetlabs.com/what-is-hsrp-in-networking/) is a Cisco-proprietary router redundancy protocol that enables a group of routers to cooperate to have a redundant network. All the routers within the group will have the same virtual IP address and virtual mac address.

The Two router states of Hot Standby Router Protocol (HSRP) are:

- **Active Router** – The router that actively (default) sends and receives a packet to the host within the organization is the default gateway router. From the group of routers, only one will be selected as an active router.
- **Standby Router** – The router that, in case the current active router will go offline, among the standby router will be chosen as the active router.

#### HSRP features

- Exchange Hello messages every 3 sec.
- Multicast IP for HSRP version 1 = 224.0.0.2
- Multicast IP for HSRP version 2 = 224.0.0.102
- UDP port number = 1985
- Group number = 0-255
- The default priority is 100, and the range is 0-255
- Election of active router
- Highest priority
- If priority is same, then the highest IP address configured on the interface
- Virtual MAC address of HSRP is 0000.0c07.acxx

Where, 0000.0c = Cisco ID

07.ac = HSRP ID

xx= Group Number

**For Example** – For HSRP group number 10, the virtual MAC address will be 0000.0c07.ac0A

HSRP’s problem is that at any given time, only one router will be active. The other router is on standby until the active router fails. This plan of action is not particularly effective because all of the extra bandwidth offered by redundant uplinks connected to standby routers will not be utilised.

![Hot Standby Router Protocol](https://www.pynetlabs.com/wp-content/uploads/2022/09/4.jpeg)

### Virtual Router Redundancy Protocol (VRRP)

VRRP stands for **[Virtual Router Redundancy Protocol](https://www.pynetlabs.com/what-is-vrrp-in-networking/)**. It is a vendor-neutral redundancy protocol that groups two or more routers to produce a new single virtual router. It allows for redundancy by assigning the same virtual gateway IP address and MAC address to all physical routers in the VRRP group.

Currently, VRRP is at version 2. It’s almost the same idea as HSRP. The only difference is that on VRRP, **preemption** is enabled by default, whereas on HSRP, it must be configured manually.

**Note** – If we want a specific router to always assume the role of an Active HSRP Router whenever it’s up and running, then we can use **HSRP Preempt**.

Two states of Virtual Router Redundancy Protocol (VRRP) are:

#### Master Router

It is currently the organization’s default gateway for all hosts. It is constantly sending and receiving packets to and from the hosts.

#### Backup Router

During a failover or when the master router goes offline, the backup router will take over as the master router.

### Gateway Load Balancing Protocol (GLBP)

GLBP stands for Gateway Load Balancing Protocol. It prevents a single point of failure, like HSRP and VRRP. Still, it also allows load-sharing among a group of redundant routers so that all the routers will take an active part in packet forwarding, and no uplink will be unused. This is the additional feature of GLBP protocol with redundancy.

#### GLBP Operation

- All the routers taking part in GLBP form a group. After that, they elect one router to serve as the group’s AVG (active virtual gateway).
- Other members of the group serve as backup for the AVG if it fails.
- The AVG has control over all group members by assigning each one a virtual MAC address.
- Each router is responsible for forwarding packets sent to the AVG-assigned virtual MAC address.
- For their virtual MAC address, these routers are referred to as AVF (active virtual forwarder).
- [ARP (Address Resolution Protocol)](https://www.pynetlabs.com/what-is-arp/) requests for the virtual IP address are also handled by the AVG. This is critical to GLBP operation because load balancing is achieved by the AVG responding to ARP requests from different hosts with different virtual MAC addresses.
- When a client requests the IP address of its default gateway via ARP, the AVG responds with the virtual MAC address of one of the AVFs.
- When another client sends an ARP message to resolve the default gateway address, the AVG responds with the virtual MAC address of the next AVF. As a result, each client receives a unique virtual MAC address for the same virtual IP address as the default gateway.
- As a result, despite having the same default gateway configured, each client will send its traffic to a different router.

#### GLBP Features

- GLBP is Cisco proprietary protocol, introduced in [Cisco IOS software](https://www.cisco.com/c/en_in/products/ios-nx-os-software/index.html) release 12.2(14)s for routers.
- All the routers in the group forward the data.
- AVG (Active Virtual Gateway) is assigned to one of the routers in the group
- Highest priority router
- If priority is the same, then the highest IP address configured on the interface
- Maximum number of virtual MACs supported per group = 4
- GLBP group number = 0 –1023
- Priority Value= 1-255
- Hello Timer = 3sec, Dead Timer = 10sec
- Multicast IP address=224.0.0.102
- Virtual MAC address = 0007.b4xx.xxyy

Where, xx.xx = GLBP group Number and yy = virtual Forwarder number.

For Example – GLBP group number 1 and forwarder 1 has virtual MAC address: 0007.b400.0101

![FHRP3](https://www.pynetlabs.com/wp-content/uploads/2022/10/FHRP3.png)

## What are the benefits of using FHRP?

Some of the benefits of using the First Hop Redundancy Protocol (FHRP) are:

- **Redundancy:** FHRP provides an alternative path for the traffic in the event of a path failure.
- **High Availability:** The FHRP ensures there is always another [network device](https://www.pynetlabs.com/network-devices-and-its-various-types/) ‘available’ to offer the same function as another in case one of the devices fails.
- **No Single Point of Failure:** FHRP eliminates the risk of a single point of failure, which can cause network downtime.
- **Improved Network Uptime:** FHRP assists in reducing the cases of network downtime and ensures that communication in the devices is always connected.
- **Load Balancing:** FHRP can distribute traffic across multiple devices, improving network performance and reducing congestion.
- **Simplified Network Management:** FHRP makes it easier to manage the networks since you will have one address for many devices.
- **Increased Network Reliability:** FHRP improves network availability since it possesses a backup route for traffic in case a device fails.
- FHRP can disperse the traffic through multiple devices, which leads to higher network performance and, side-by-side, reducing congestion.

## FHRP Best Practices

Here are some FHRP best practices:

### Configuring Redundancy Effectively

When setting up FHRP, you must configure redundancy to ensure a smooth failover process, or you will notice a small downtime error during failover.

### Monitoring and Maintenance

Monitoring your FHRP setup regularly is extremely important to ensure that the routers are functioning as expected. Periodic maintenance and testing can help you to mitigate any potential issues before they create any failures.

## Frequently Asked Questions

### Q1. What is FHRP used for?

It is a network protocol that allows a router to act as a backup for another router in case of failure. FHRP can also be used to improve the availability as well as reliability of network traffic.

### Q2. What are the three types of FHRP protocols?

The three types of FHRP protocols are Hot Standby Router Protocol (HSRP), Virtual Router Redundancy Protocol (VRRP), and Gateway Load Balancing Protocol (GLBP). All of these protocols mentioned above are designed to provide redundancy and load balancing for the default gateway used on a subnetwork. It is done by allowing two or more routers to share a virtual IP address and a virtual MAC address.

### Q3. What is VRRP and GLBP?

**VRRP** stands for Virtual Router Redundancy Protocol, and it is similar to HSRP, but it supports more than one virtual router per interface. Whereas, **GLBP** stands for Gateway Load Balancing Protocol, and it extends the functionality of HSRP and VRRP by allowing load balancing among multiple active routers in a group.

### Q4. What is the benefit of FHRP?

There are many benefits of using FHRP. Some of these are: 

- FHRP can help in improving network availability and reliability.
- FHRP distributes traffic over numerous routers that can further improve load balancing and performance.

## Conclusion

In this blog, we have explained First Hop Redundancy Protocol, its working, and the types of FHRP protocols. Apart from that, we have added some of the most asked questions for your clear understanding. We hope you have learned, and if you have any further questions or suggestions, feel free to comment below.

If your goal is to master these protocols, you should enrol in our [CCNA training](https://www.pynetlabs.com/ccna-training-in-india/). This training course will not only introduce you to the networking world but also help you master most of the networking protocols.

![Blog featured image for a blog on title - Challenges in Ensuring Fairness in Generative AI](https://www.pynetlabs.com/wp-content/uploads/ensuring-fairness-in-generative-ai.jpg)

![A featured image for a blog with title - Generative AI Tools](https://www.pynetlabs.com/wp-content/uploads/generative-ai-tools.jpg)

![A featured image for a blog with title - What is Generative AI?](https://www.pynetlabs.com/wp-content/uploads/what-is-generative-ai.jpg)

![A blog featured image for a blog on title - Network Automation Roadmap](https://www.pynetlabs.com/wp-content/uploads/network-automation-roadmap.jpg)