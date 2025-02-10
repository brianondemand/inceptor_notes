
![What is vlan](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fvlan_bg.png&w=3840&q=75)

## What is VLAN?

Virtual LAN (VLAN) is a concept in which we can divide the devices logically on layer 2 (data link layer). Generally, layer 3 devices divides broadcast domain but broadcast domain can be divided by switches using the concept of VLAN.

Without VLANs, a broadcast sent from a host can easily reach all network devices. Each and every device will process broadcast received frames. It can increase the CPU overhead on each device and reduce the overall network security.

In case if you place interfaces on both switches into separate VLAN, a broadcast from host A can reach only devices available inside the same VLAN. Hosts of VLANs will not even be aware that the communication took place.

## VLANs ranges:

Here are the important ranges of VLAN:

| Range | Description |
| --- | --- |
| **VLAN 0-4094** | Reserved VLAN, which cannot be seen or used. |
| **VLAN 1:** | This is a default VLAN of switches. You cannot delete or edit this VLAN, but it can be used. |
| **VLAN 2-1001:** | It is a normal VLAN range. You can create, edit, and delete it. |
| **VLAN 1002-1005:** | These ranges are CISCO defaults for token rings and FDDI. You cannot delete this VLAN. |
| **VLAN 1006-4094:** | It is an extended range of VLANs. |

## Configuration –

We can simply create VLANs by simply assigning the `vlan-id` and `Vlan name`.

```switch
Switch1(config)#vlan 2
Switch1(config-vlan)#name vlan1
```

Here, 2 is the Vlan I’d and vlan1 is the Vlan name. Now, we assign Vlan to the switch ports.e.g-

```switch
Switch(config)#int fa0/0
Switch(config-if)#switchport mode access
Switch(config-if)#switchport access Vlan 2
```

Also, switchport `range` can be assigned to required vlans.

```switch
Switch(config)#int range fa0/0-2
Switch(config-if)#switchport mode access
Switch(config-if) #switchport access Vlan 2
```

By this, switchport `fa0/0`, `fa0/1`, `fa0-2` will be assigned `Vlan 2`.

## Example:-

![What is vlan](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fvlan_configure.png&w=1920&q=75)

Assigning IP address `192.168.1.2`, `192.168.1.3` and `192.168.1.4` to the PC’s. Now, we will create `Vlan 2 and 3` on `switch`.

```switch
Switch(config)#vlan 2
Switch(config)#vlan 3
```

We have made VLANs but the most important part is to assign switch ports to the VLANs.

```switch
Switch(config)#int fa0/1
Switch(config-if)#switchport mode access
Switch(config-if) #switchport access Vlan 2

Switch(config)#int fa0/2
Switch(config-if)#switchport mode access
Switch(config-if) #switchport access Vlan 3

Switch(config)#int fa0/3
Switch(config-if)#switchport mode access
Switch(config-if) #switchport access Vlan 2
```

As seen, we have assigned `Vlan 2` to `fa0/1`, `fa0/3`, and `Vlan 3` to `fa0/2`.

## Advantages –

- **performance** –The network traffic is full of broadcast and multicast. VLAN reduces the need to send such traffic to unnecessary destinations.e.g-If the traffic is intended for 2 users but as 10 devices are present in the same broadcast domain therefore all will receive the traffic i.e wastage of bandwidth but if we make VLANs, then the broadcast or multicast packet will go to the intended users only.
- **formation of virtual groups** – As there are different departments in every organization namely sales, finance etc., VLANs can be very useful in order to group the devices logically according to their departments.
- **security** – In the same network, sensitive data can be broadcast which can be accessed by the outsider but by creating VLAN, we can control broadcast domains, set up firewalls, restrict access. Also, VLANs can be used to inform the network manager of an intrusion. Hence, VLANs greatly enhance network security.
- **Flexibility** – VLAN provide flexibility to add, remove the number of host we want.
- **Cost reduction** – VLANs can be used to create broadcast domains which eliminate the need for expensive routers.
- By using Vlan, the number of small size broadcast domain can be increased which are easy to handle as compared to a bigger broadcast domain.