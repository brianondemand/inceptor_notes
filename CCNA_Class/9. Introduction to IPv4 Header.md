

![ip-packet-mtu-problem](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fmtu_problem.png&w=3840&q=75)

Before going into a detailed discussion of IPv4 Header, I will provide a brief Introduction on IP packets. In the world of IP communication, the information is sent and received between networks in the form of packets. "**IP Packet**" is the **Protocol Datagram Unit (PDU)** of the network layer of the **Open System Infrastructure (OSI)** 7 layer reference model. The total length of IP packet is given by the **IPv4 Header + IPv4 Payload** . When we consider the encapsulation process, the IPv4 payload is the segment which is the PDU of the Transport layer of the OSI model.

![ip-packet-fragmentation](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fip_packet_fragmentation.png&w=3840&q=75)

Now moving on to the focus of this article, IPv4 Header can be describes as the set of information added at the beginning of IPv4 Payload at the creation of the IPv4 packet. IP Header contains information about **IP Version**, **source & desitination IP**, **TTL** etc.

![IPv4-header-format](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fip-header-syntax.png&w=3840&q=75)

Below is the list mentioned.

1. Version.
2. Internet Header Length.
3. Differentiated Service Code Point (DSCP).
4. Explicit Congestion Notification (ECN).
5. Total Length
6. Identification
7. Flags
1. 0 Bit Flag
2. DF Flag
3. MF Flag
8. Fragment Offset
9. Time To Live (TTL)
10. Protocol
11. Header Checksum
12. Source IP Address
13. Destination IP Address
14. Options.

Let's take a look at these components, their sizes and what they can do:

#### 1\. Version

- Version is a 4 bit field that indicates the IP version used.
- The most populorly used IP version-4 (IPv4) and version-6 (IPv6).
- Only IPv4 uses the above header.
- In the case of IPv4, the value of its four bits is set to **0100**. Which indicates 4 in binary

- IHL is a 4 bit field that contains the length of the IP header.
- It helps in knowing from where the actual data begins.

> Note:- Minimum And Maximum Header Length lies in the range **\[20 bytes to 60 bytes\]**

- The initial 5 rows of the IP header are always used.
- So, minimum length of `IP Header` = `5 x 4 bytes` = `20 bytes`.
- The size of the 6th row representing the Options field vary.
- The size of Options field can go up to 40 bytes.
- So, maximum length of `IP Header` = `20 bytes + 40 bytes` = `60 bytes`.

**Concept of Scaling Factor**

- IHL is a 4 bit.
- So, the range of decimal values that can be represented is **\[0 to 15\]**
- But the range of header length is **\[20 to 60\]** bytes.
- So, to represent the header length, we use a scaling factor of 4.

In general,

`HEADER LENGTH` = `IHL x 4 Bytes`

**Examples:-**

- if IHL contains decimal value 5 (represented as **0101**), then-

`Header length` = `5 x 4` = `20 bytes`

- if IHL contains decimal value 10 (represented as **1010**), then-

`Header length` = `10 x 4` = `40 bytes`

- if IHL contains decimal value 15 (represented as **1111**), then-

`Header length` = `15 x 4` = `60 bytes`

#### 3\. Differentiated Service Code Point (DSCP)

- DSCP also called **Types of Service** or **(ToS)**.
- This field is 6 bits is used to provide features related to service quality, such as for data streaming or Voice over IP(VoIP) calls.
- It is used to specific how a datagram will be handled.

#### 4\. Explicit Congestion Notification

- ECN is used to send notifications to the sender or receiver in situations where network congestion happens.
- This is an optional feature of IPv4 can; if one of the endpoints don't support it, it is not use.
- ECN uses the two bits
- `00` - Non ECN Capable Transport, Non-ECT
- `10` - ECN Capable Transport, ECT(0)
- `01` - ECN Capable Transport, ECT(1)
- `11` - Congestion Encountered, CE

#### 5\. Total Length

- Total length is a 16 bit field that contains the total length of the datagram (in bytes)

`Total length` = `Header length` + `Payload length`

- Minimum total length of datagram = 20 bytes (20 bytes header + 0 bytes data )
- Maximum total length of datagram = Maximum value of 16 bit word = 65535 bytes

#### 6\. Identification

![IPv4-header-format](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fpacket-identification.png&w=3840&q=75)

- Identification is a 16 bit field.
- It is used for the identification of the fragment of an original IP datagram.

When an IP datagram is fragmented.

- Each fragmented datagram is assigned the same identification number.
- This number is useful during the re-assembly of fragmented datagrams.
- It helps to identify to which IP datagram, the fragmented datagram belong to.

#### 7\. Flags

flag in an IPv4 header is a three-bit field that is used to control and identify fragments. The following can be their configuration:

**0 Bit**

- this is reserved and has to be set zero.

**DF Bit**

- DF bit stands for Do Not Fragment bit.
- Its value may be 0 or 1.

When DF bit is set to 0,

- It grants the permission to the intermediate devices to fragment the datagram if required.

When DF bit is set to 1,

- It indicates the intermediate devices not to fragment the IP datagram at any cost.
- If network requires the datagram to be fragmented to travel further but settings does not allow its fragmentation, then it is discard.
- An error message is sent to the sender saying that the datagram has been discarded due to its setting.

**MF Bit**

- MF bit stands for **More Fragments bit**.
- Its value may be 0 or 1.

When MF bit is set to 0,

- It indicates to the receiver that the current datagram is either the last fragment in the set or that it is the only, fragment.

When MF bit is set to 1,

- It indicates to the receiver that the current datagram is a fragment of some larger datagram.
- More fragments are following.
- MF bit is et to 1 on all the fragments except the last one.

#### 8\. Fragment Offset

- Fragment Offset is 13 bit field.
- It indicates the position of a fragmented datagram in the original unfragmented IP datagram.
- The first fragment datagram has a fragment offset of zero.

> Fragment offset for given fragmented datagram = Number of data bytes ahead of it in the original unfragmented datagram

**Concept Of Scaling Factor**

- We use a scaling factor of 8 for the fragment offset.
- Fragment offset field value = Fragment Offset / 8

**Need of Scaling Factor For Fragment offset**

In IPv4 header, the total length field comprises of 16 bits.

`Total length` = `Header length` + `Payload length`

Minimum header length = 20 bytes.

So, maximum amount of data that can be sent in the payload field = 2<sup>16</sup> - 20 bytes.

In worst case, a datagram containing 2<sup>16</sup> - 20 bytes bytes of data might be fragmented in such a way that the last fragmented datagram contains only 1 byte of data.

Then, fragment offset for the last fragmented datagram will be (2<sup>16</sup> - 20) bytes - 1 byte = 65514 bytes

Now, this fragment offset value of 65514 can not be represented.

This is because the fragment offset field consist of only 13 bits.

Using 13 bits, a maximum number of 2<sup>13</sup> = 8191 can be represented.

So, to represent 2<sup>16</sup> we use the concept of scaling factor.

**Scaling factor** = **2<sup>16</sup>** / **2<sup>13</sup>** = 8.

#### 9\. Time to Live (TTL)

- Time to live (TTL) is a 8 bit field.
- It indicates the maximum number of hops a datagram can take to reach the destination.
- The main purpose of TTL is to prevent the IP datagrams from looping around forever in routing loop.

The value of TTL is decremented by 1 when-

- Datagram takes a hop to any intermediate device having network layer.
- Datagram takes a hop to the destination.

If the value of TTL becomes zero before reaching the destination, then datagram is discarded.

#### 10\. Protocol

- Protocol is 8 bit field.
- It tells the network layer at the destination host to which protocol the IP datagram belong to.
- In other words, it tells the next level protocol to the network layer at the destination side.
- Protocol number of **ICMP is 1**, **IGMP is 2**, **TCP is 6** and **UDP is 17**.

**Why Protocol Number is a part of IP header?**

An IP datagram is sent by the sender to the receiver. When datagram reaches at the router, it's buffer is already full.

Router does not discard the datagram directly. Before discarding, router checks the next level protocol number mentioned in its IP header. If the datagram belongs to TCP, then it tries to make room for the datagram in its buffer. It creates a room by eliminating one of the datagrams having lower priority.

This is because it knows that TCP is a reliable protocol and if it discards the datagram, then it will be sent again by the sender.

The order in which router eliminate the datagram from its buffer is-

`ICMP > IGMP > UDP > TCP`

If protocol number would have been inside the datagram, then

- Router could not look into it.
- This is because router has only three layers- physical layer, data-link layer and network layer.

That is why, protocol number is made a part of IP header.

Header checksum is a 16 bit field. It contains the checksum value of the entire header. The checksum value is used for error checking of the header.

The header is compared to the value of its checksum at each hop, and in case the header checksum is not matching. The packet is discarded. Keep in mind that this is only for the header, and its protocol handles the data field. UDP and TCP, for example have their own checksum fields.

The fields that may be modified are

- TTL
- Options
- Datagram Length
- Header Length
- Fragment Offset

#### 12\. Source IP Address

It is a 32-bit address of the source of the IPv4 packet.

#### 13\. Destination IP Address

the destination address is also 32 bit in size, and it contains the receiver's address.

#### 14\. Options

Option is a field whose size vary from 0 bytes to 40 bytes.

This field is used for several purposes such as

- **Record route**

A record route option is used to record the IP Address of the routers through which the datagram passes on its way. When record route option is set in the options field, IP Address of the router gets recorded in the Options field

> Note:- The maximum number of IPv4 router addresses that can be recorded in the Record route option field of an IPv4 header is 9

**Explanation**

- In IPv4, size of IP Addresses = 32 bits = 4 bytes
- Maximum size of Options field = 40 bytes.
- So, it seems maximum number of IP Addresses that can be recorded = 40 / 4 = 10.
- But some space is required to indicate the type of option being used.
- Also, some space is to be left between the IP Addresses.
- So, the space of 4 bytes is left for this purpose.
- Therefore, the maximum number of IP addresses that can be recorded = 9
- **Source routing**

A source routing option is used to specify the route that the datagram must take to reach the destination. This option is generally used to check whether a certain path is working fine or not. Source routing may be loose or strict
- **Padding**

Addition of dummy data to fill up unused space in the transmission unit and make it conform to the standard size is called as padding. Option field is used for padding.

**Example**

- When header length is not a multiple of 4, extra zeroes are padded in the Options field.
- By doing so, header length becomes a multiple of 4.
- If header length = 30 bytes, 3 bytes of dummy data is added to the header.
- This makes header length = 32 bytes.
- Then, the value 32 / 4 = 8 is put in the header length field.
- In worst case, 3 bytes of dummy data might have to be padded to make the header length a multiple of 4.