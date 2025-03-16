## Multiswitch broadcast domains

When a broadcast frame is received on any switch port, the switch forwards it out to all its other ports. Having that in mind, if we connect two default setting switches, as shown below, any broadcast frame received by either switch is forwarded to the other one and then out all its ports.

**Therefore a broadcast domain is not limited to one switch only, it includes all devices that get a copy of any broadcast frame, even if they are connected to other switches.**

 If we scale this logic to a LAN with tens of interconnected switches, we could have a broadcast domain consisting of hundred of end devices. 
 
 This at some point can contest the network with BUM traffic to the point that the LAN becomes unusable. Thus splitting the single broadcast domain into multiple smaller ones is even more important in large topologies for interconnected switches.

![][https://www.networkacademy.io/sites/default/files/inline-images/LAN%20on%20multiple%20switches.gif]


## VLAN on multiple switches

Using virtual LANs we can split the switch topology into multiple broadcast domains as shown in figure 2. There are multiple ways of doing this but let's start with the simplest one. This is done by configuring ports 1 through 4 of both switches to VLAN 10 and ports 5 through 9 to VLAN20.

Although it is a valid design and it works, it simply does not scale very well. **It requires a physical link between the switches per VLAN**. If the topology has to have 10+ VLANs, it would need 10+ physical cables between the switches, and you would use 10+ switch ports  (on each switch) for those links.

![][https://www.networkacademy.io/sites/default/files/inline-images/VLANs%20on%20multiple%20switches%20without%20trunk.gif]


This design is applicable in topologies, where there are a few VLANs only. Nowadays in modern enterprise networks, there are tens of VLANs, so this way of spanning VLANs between switches is not applicable at scale.


## VLAN Trunking

In order to overcome this scaling limitation, we can use another Ethernet technology called VLAN trunking. **It creates only one link between the switches that support as many VLAN as needed**.

At the same time, it also keeps the VLAN traffic separate, so frames from VLAN 20 won't go to devices in VLAN 10 and vice-versa. An example could be seen in figure below. 

The link between switch 1 and switch 2 is a trunk link and you can see that both VLAN 10 and VLAN 20 pass through the link.


![][https://www.networkacademy.io/sites/default/files/inline-images/VLANs%20on%20multiple%20switches_0.gif]


## Trunking protocols

Two trunking protocols have been used on Cisco switches over the years - **Inter-Switch Link (ISL)** and **IEEE 802.1Q**. 

IEEE stands for : **Institute of Electrical and Electronics Engineers**

ISL was a Cisco proprietary tagging protocol predecessor of 802.1Q, it has been deprecated and is not used anymore. 

IEEE 802.1Q is the industry-standard trunking encapsulation at present and is typically the only one supported on modern switches. 

![802.1q header][https://cdn.fiberroad.com/app/uploads/2022/12/VLAN-data-frame-1024x287.png]


It is important to note that the tag adds 4 additional bytes to the Ethernet header of the frames. The most important field in the tag is the **VLAN ID** which is 12 bits long. It specifies the VLAN to which the frame belongs. Because values of 0x000 and 0xFFF are reserved, there are **4,094** possible VLAN numbers.

## VLAN Tagging 

VLAN trunking allows switches to forwards frames from different VLANs over a single link called **trunk**. 

This is done by adding an additional header information called **tag** to the Ethernet frame. The process of adding this small header is called **VLAN tagging**. 

If you look at Figure below,  end-station 1 is sending a broadcast frame. 

When switch 1 receives the frame, it knows that this is a broadcast frame and it has to send it out all its ports. However, switch 1 must tell switch 2 that this frame belongs to VLAN10. So before sending the frame to switch 2, SW1 adds a **VLAN header** to the original ethernet frame, with VLAN number 10 as shown in figure below. 

![Example of VLANs tagging](https://www.networkacademy.io/sites/default/files/inline-images/VLAN-Tagging.gif)


When switch 2 receives the frame, it sees that the frame belongs to VLAN 10, then it removes the header and forwards to the original ethernet frame to all its interfaces configured in VLAN10.

So in the given examples, when the ethernet frames are sent between the switches over the trunk link, they are **tagged** with VLAN header. When the receiving switch gets them, removes the VLAN tag and sends them to the clients in the VLAN, the frames are **untagged**.

## Switch interface modes

Each switch interface can operate as **access** or **trunk** port. Because in typical LAN deployment, there are hundreds or even thousands of switch ports, there is a protocol called **Dynamic Trunking Protocol (DTP)** that helps network administrators set the operational mode of interfaces automatically. 

By default, all Cisco switch ports are in operational state **dynamic auto**, which means that this Dynamic Trunking Protocol (DTP) is listening and trying to understand what is configured on the other side of the cable, and based on that to decide whether to become an access or trunk port.

For example, if we have a link between SW1 and SW2, if we configure the interface on SW1 to be a trunk port, DTP will advertise this to the other side and the interface on SW2 will automatically set itself in trunk mode and a trunk link will be formed between the switches.

| Mode                                | Behaviour                                                                                                                                                                                                                                                                                                           |
| ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `switchport mode dynamic auto`      | DEFAULT MODE for layer 2 interfaces of Cisco switches<br><br>**Passively waiting** to convert the port into a **trunk**. (DTP listening for messages from the far side saying "let's form a trunk")<br><br>Becomes a trunk if the other side of the link is configured with **trunk** or **dynamic desirable** mode |
| `switchport mode dynamic desirable` | **Actively trying** to convert the link to a **trunk**. (DTP actively sending messages to the far side saying "let's form a trunk")<br><br>Becomes a trunk if the other side of the link is configured with **trunk** or **dynamic desirable** or **dynamic auto.**                                                 |
| `switchport mode access`            | The interface becomes an **access port**.<br><br>DTP negotiates the link as nontrunk link.                                                                                                                                                                                                                          |
| `switchport mode trunk`             | The interface becomes a **trunk port**.<br><br>DTP negotiates the link as trunk link. (DTP actively sending messages to the far side saying "let's form a trunk")                                                                                                                                                   |
| `switchport mode nonegotiate`       | Disables the Dynamic Trunking Protocol (DTP).<br><br>Interface mode is configured manually.                                                                                                                                                                                                                         |

As you can see there are quite a few switchport operational modes, so there are several possible combination for both ends of a link between two switches. Depending on the configuration of both sides the switches could form a trunk link or not. All combination are shown in Figure below

![](https://www.networkacademy.io/sites/default/files/inline-images/Switchport-Modes.png)


---


## Configuring Trunk ports

The default mode for Cisco switchports is dynamic auto. Therefore, in order to form a trunk, only one side of the link must be configured to actively negotiate it. 

Let's configure Gi0/1 on SW1 to be actively trying to form a trunk and see what happens.


SW1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.

SW1(config)#interface GigabitEthernet 0/1
SW1(config-if)#switchport mode ?
  access   Set trunking mode to ACCESS unconditionally
  dynamic  Set trunking mode to dynamically negotiate access or trunk mode
  trunk    Set trunking mode to TRUNK unconditionally

SW1(config-if)#switchport mode dynamic ?
  auto       Set trunking mode dynamic negotiation parameter to AUTO
  desirable  Set trunking mode dynamic negotiation parameter to DESIRABLE

SW1(config-if)#switchport mode dynamic desirable
SW1(config-if)#end
%SYS-5-CONFIG_I: Configured from console by console

SW1#show interface trunk 

You can see from the output of **show interface trunk** command that a trunk link formed, even though we haven't configured anything on the other side of the link on switch 2. That is the function of the dynamic trunking protocol. Let's check what is the status of the link according to switch 2.

SW2#**sh interfaces trunk**


## Summary

- VLANs are **locally significant** and are stored in the switch's local VLAN database.
- Trunk links **tag** frames with VLAN identification. 
- IEEE 802.1Q is the **standard trunking mechanism** on Cisco switches. The old method called ISL has been deprecated and is not used anymore.
- Dynamic Trunking Protocol (DTP) can **negotiate trunk links**.
- To form a trunk link between two switches, both have to be configured to allow trunking on each end of the link.