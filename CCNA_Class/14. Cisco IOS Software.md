
# Cisco Packet Tracer

**Cisco Packet Tracer** is computer networking simulation software for teaching and learning networking, IoT, and cybersecurity skills in a virtual lab.

The free Cisco Packet Tracer software helps you to practice your network configuration and troubleshooting skills using your desktop or laptop computer. It allows you to simulate networks without having access to physical equipment. In addition to networking, you can learn, and then practice your Internet of Things (IoT) and Cybersecurity skills.

**Task:**

```c
Download The Cisco Packet Tracer software
```


## User Interface

Packet Tracer is a tool that allows you to simulate real networks. It provides three main menus that you can use for the following:

- Add devices and connect them via cables or wireless
- Select, delete, inspect, label, and group components within your network
- Manage your network

The network management menu lets you do the following:

- Open an existing/sample network
- Save your current network
- Modify your user profile or your preferences


Packet Tracer also provides a variety of tabs for device configuration including the following:

- Physical
- Config
- CLI
- Desktop
- Services

The tabs that are shown depend on the device you are currently configuring.

#### Physical Tab

The Physical tab provides an interface for interacting with the device including powering it on or off or installing different modules, such as a wireless network interface card (NIC).

![pysical tab][https://www.netacad.com/content/i2ptgs/1.0/courses/content/m1/en-US/assets/Physical-Tab.png]

---

#### Config Tab

For intermediate devices such as routers and switches, there are two ways to access device configurations. Configurations can be accessed via a Config tab, which is a Graphical User Interface (GUI). Configurations can also be accessed using a command line interface (CLI).

The Config tab does not simulate the functionality of a device. This tab is unique to Packet Tracer. If you don’t know how to use the command line interface, this tab provides a way to use a Packet Tracer-only GUI to configure basic settings. As settings are changed in the GUI, the equivalent CLI commands appear in the **Equivalent IOS Commands** window. This helps you to learn the CLI commands and the Cisco Internetwork Operating System (IOS) while you are using the Config tab.

For example, in the figure, the user has configured **MyRouter** as the name of the device. The Equivalent IOS Commands window shows the IOS command that achieves the same results in the CLI.

In addition, device configuration files can be saved, loaded, erased, and exported here.

![][https://www.netacad.com/content/i2ptgs/1.0/courses/content/m1/en-US/assets/Config-Tab.png]

---

#### CLI Tab

The CLI tab provides access to the command line interface of a Cisco device. Using the CLI tab requires knowledge of device configuration with IOS. Here, you can practice configuring Cisco devices at the command line. CLI configuration is a necessary skill for more advanced networking implementations.

**Note**: Any commands that were entered from the Config tab are also shown in the CLI tab.

![][https://www.netacad.com/content/i2ptgs/1.0/courses/content/m1/en-US/assets/CLI-Tab.png]

---

#### Desktop Tab

For some end devices, such as PCs and laptops, Packet Tracer provides a desktop interface that gives you access to IP configuration, wireless configuration, a command prompt, a web browser, and other applications.

![][https://www.netacad.com/content/i2ptgs/1.0/courses/content/m1/en-US/assets/Desktop-Tab.png]

---

#### Services Tab

A server has all of the functions of a host with the addition of one more tab, the Services tab. This tab allows a server to be configured with common server processes such as HTTP, DHCP, DNS, or other services, as shown in the figure.

![][https://www.netacad.com/content/i2ptgs/1.0/courses/content/m1/en-US/assets/Services-Tab.png]

---
## File Types

It is important to understand the different file types that you will find when using Cisco Packet Tracer.

Packet Tracer has the ability to create four different types of files. These file types are used for different purposes and include: .`pka`, .`pkt`, .`pksz`, and .`pkz`.
Cisco Packet Tracer files are typically saved with the following file extensions:

1. **.pkt** - This is the primary file type for Cisco Packet Tracer. It contains all the configurations, network topology, and other details of your project. This file is used to store your simulation or network design.
    
2. **.pka** - This file extension is used for Packet Tracer Activity files. These are pre-made exercises or learning modules, often used in Cisco networking courses. The .pka files contain a step-by-step set of instructions or challenges designed to teach specific networking concepts.
    
3. **.pkz** - This is a compressed version of a Packet Tracer file. It’s often used for sharing large files more efficiently, as it compresses the .pkt file to save space.
    

4. .pksz - This is a **Packet Tracer Scenario** file. It is typically used for sharing or distributing scenarios that include not just the network topology and configurations, but also pre-configured steps or tasks that the user is supposed to complete.


---

## Connection Types

In Cisco Packet Tracer, various types of **connection types** are used to connect devices within a network. These connection types are based on the physical or logical medium used for communication. Here are the main types:

 1. **Copper Straight-Through Cable**

- **Icon:** A solid orange line (usually with a white stripe).
- **Use:** Typically used to connect devices of different types, such as:
    - **PC to Switch**
    - **Router to Switch**
- **Purpose:** This cable connects a device (like a PC) to a switch or router when they are using different ports, such as connecting a PC to a switch’s Ethernet port.

 2. **Copper Cross-Over Cable**

- **Icon:** A solid orange line with no stripe.
- **Use:** Used to connect devices of the **same type**, such as:
    - **PC to PC**
    - **Switch to Switch**
    - **Router to Router**
- **Purpose:** Used when you need to connect two similar devices directly (e.g., two PCs or two switches), allowing them to communicate by crossing over the transmit and receive wires.

 3. **Fiber Optic Cable**

- **Icon:** A solid blue line.
- **Use:** For high-speed, long-distance communication between devices, such as:
    - **Router to Router**
    - **Switch to Switch**
- **Purpose:** Used in networks where high bandwidth or long-distance communication is required, often for backbone or inter-building links.

 4. **Serial Cable (DCE/DTE)**

- **Icon:** A straight line with either "DTE" (Data Terminal Equipment) or "DCE" (Data Communication Equipment) labels.
- **Use:** For connecting **routers** to each other over WAN links (Wide Area Network):
    - **Router to Router** over a serial connection.
- **Purpose:** Used for WAN (Wide Area Network) connections, often simulating ISDN or leased line connections.

 5. **Console Cable (RJ-45 to DB-9)**

- **Icon:** A blue, straight line (often looks like a twisted pair cable).
- **Use:** To connect a **PC to a router or switch console port** for device management.
- **Purpose:** This cable is used to access a router or switch’s command-line interface (CLI) for configuration and troubleshooting.

 6. **Wireless Connection**

- **Icon:** A dashed line or cloud representing a wireless link.
- **Use:** Connecting wireless devices, such as:
    - **Laptop to Wireless Router**
    - **Wireless Access Point to Devices**
- **Purpose:** For wireless connections, typically used for laptops or mobile devices to communicate with a wireless router or access point.

 7. **Fiber Optic (Multi-mode or Single-mode)**

- **Icon:** A dotted blue line for **multi-mode** and a solid blue line for **single-mode**.
- **Use:** High-performance fiber connections for long distances.
- **Purpose:** Similar to regular fiber optic cables but specific to the mode of fiber transmission being used (multi-mode for shorter distances, single-mode for long-distance links).

---

 **Table Summary of Cable Types**

| **Cable Type**              | **Use Case**                          | **Device 1**            | **Device 2**            | **Example Scenario**                           |
| --------------------------- | ------------------------------------- | ----------------------- | ----------------------- | ---------------------------------------------- |
| **Copper Straight-Through** | Different types of devices            | PC, Router, Switch      | Switch, Router, PC      | PC to Switch, Router to Switch                 |
| **Copper Cross-Over**       | Same type of devices                  | PC, Switch, Router      | PC, Switch, Router      | PC to PC, Switch to Switch, Router to Router   |
| **Fiber Optic**             | High-speed, long-distance connections | Switch, Router          | Switch, Router          | Router to Router (backbone connection)         |
| **Serial Cable (DCE/DTE)**  | WAN (Wide Area Network) connection    | Router                  | Router                  | Router to Router (over a serial WAN link)      |
| **Console Cable**           | Device management (CLI access)        | PC                      | Router, Switch          | PC to Router or Switch (access CLI for config) |
| **Wireless Connection**     | Wireless device connections           | Laptop, Wireless Router | Wireless Device, Router | Laptop to Wireless Router                      |

---

This table should help clarify what cables to use when building out different types of connections in a network.