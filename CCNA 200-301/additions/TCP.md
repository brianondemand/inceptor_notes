## What is Transmission Control Protocol (TCP)?

The transmission control protocol (TCP) is the internet standard ensuring the successful exchange of data packets between devices over a network. TCP is the underlying communication protocol for a wide variety of applications, including web servers and websites, email applications, FTP and peer-to-peer apps.

TCP operates with the internet protocol (IP) to specify how data is exchanged online. IP is responsible for sending each packet to its destination, while TCP guarantees that bytes are transmitted in the order in which they were sent with no errors or omissions. Together, the two protocols are referred to as TCP/IP.

## Packet format

When sending packets using TCP/IP, the data portion of each IP packet is formatted as a TCP segment. The TCP segment contains the following fields:

| ![TCP segment](https://cdn.kastatic.org/ka-perseus-images/e5fdf560fdb40a1c0b3c3ce96f570e5f00fff161.svg) |
| --- |

Each TCP segment contains a header and data. The TCP header contains many more fields than the UDP header and can range in size from 20202020 to 60606060 bytes, depending on the size of the options field.

The TCP header shares some fields with the UDP header: source port number, destination port number, and checksum.

**Let's step through the process of transmitting a packet with TCP/IP.**

### Step 1: Establish a connection

When two computers want to send data to each other over TCP, they first need to establish a connection using a three-way handshake.

| ![connection establish](https://cdn.kastatic.org/ka-perseus-images/d09f9d37ff2a2deb21a8822f8c99ba6b86319f0b.svg) |
| --- |

The first computer sends a packet with the SYN bit set to 1 (SYN = "synchronize?"). The second computer sends back a packet with the ACK bit set to 1 (ACK = "acknowledge!") plus the SYN bit set to 1. The first computer replies back with an ACK.

The SYN and ACK bits are both part of the TCP header:

| ![connection establish](https://cdn.kastatic.org/ka-perseus-images/9a4a79816965be53e1071cf6b0e2991cb4d170ca.svg) |
| --- |
| *The ACK and SYN bits are highlighted on the fourth row of the header.* |

In fact, the three packets involved in the three-way handshake do not typically include any data. Once the computers are done with the handshake, they're ready to receive packets containing actual data.

### Step 2: Send packets of data

When a packet of data is sent over TCP, the recipient must always acknowledge what they received.

| ![send tcp packets](https://cdn.kastatic.org/ka-perseus-images/2cfc6b88b3b5c3a27386503d347524c2065a57d9.svg) |
| --- |

The first computer sends a packet with data and a sequence number. The second computer acknowledges it by setting the ACK bit and increasing the acknowledgement number by the length of the received data.

The sequence and acknowledgement numbers are part of the TCP header:

| ![send tcp packets](https://cdn.kastatic.org/ka-perseus-images/ec71832edb1f2ff1d2ad12da494033ce2b25aafa.svg) |
| --- |
| *The 32-bit sequence and acknowledgement numbers are highlighted.* |

Those two numbers help the computers to keep track of which data was successfully received, which data was lost, and which data was accidentally sent twice.

### Step 3: Close the connection

| ![close connection](https://cdn.kastatic.org/ka-perseus-images/f158ea181534ee675d0928fa657897cefc04359e.svg) |
| --- |

When the connection is closed, the sender sends a packet with the FIN bit set to 1 (FIN = "finish!"). The recipient acknowledges the FIN by setting the ACK bit and increasing the acknowledgement number by one.

### Detecting lost packets

| ![Detecting lost Packet](https://cdn.kastatic.org/ka-perseus-images/b1017461d232cd46fa5b445f80e75568bf31c57c.svg) |
| --- |

After sending off a packet, the sender starts a timer and puts the packet in a retransmission queue. If the timer runs out and the sender has not yet received an ACK from the recipient, it sends the packet again.

The retransmission may lead to the recipient receiving duplicate packets, if a packet was not actually lost but just very slow to arrive or be acknowledged. If so, the recipient can simply discard duplicate packets. It's better to have the data twice than not at all!

### Handling out of order packets

TCP connections can detect out of order packets by using the sequence and acknowledgement numbers.

| ![handling packets order](https://cdn.kastatic.org/ka-perseus-images/27f4fa1915c98689623e0ee224416c5290afc65a.svg) |
| --- |

When the recipient sees a higher sequence number than what they have acknowledged so far, they know that they are missing at least one packet in between. In the situation pictured above, the recipient sees a sequence number of #73 but expected a sequence number of #37. The recipient lets the sender know there's something amiss by sending a packet with an acknowledgement number set to the expected sequence number.

Sometimes the missing packet is simply taking a slower route through the Internet and it arrives soon after.

| ![handling slow packets ](https://cdn.kastatic.org/ka-perseus-images/c96ec5ae0784f98e14d7a1c45b0dc65203b6bf48.svg) |
| --- |

Other times, the missing packet may actually be a lost packet and the sender must retransmit the packet.

| ![handling losted packets ](https://cdn.kastatic.org/ka-perseus-images/bdeaf7f92aa9f48d5d103888a63a34704b755104.svg) |
| --- |

In both situations, the recipient has to deal with out of order packets. Fortunately, the recipient can use the sequence numbers to reassemble the packet data in the correct order.

| ![correct sequence](https://cdn.kastatic.org/ka-perseus-images/5fbe9cbfb51c95ad73beb2c536749908a8057889.svg) |
| --- |