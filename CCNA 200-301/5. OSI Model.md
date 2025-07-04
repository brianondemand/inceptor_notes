
The **OSI (Open Systems Interconnection) Model** is a set of rules that explains how different computer systems communicate over a network.

OSI Model was developed by the **International Organization for Standardization (ISO)**. 

The OSI Model consists of 7 layers and each layer has specific functions and responsibilities

---

### **Purpose of the OSI Model**

- Provides a universal language for networking.
- Standardizes networking functions to enable interoperability between different systems and technologies.
- Breaks down complex network interactions into manageable and understandable layers.
- Facilitates troubleshooting by isolating issues to a specific layer.

---

### **The Seven Layers of the OSI Model**
---

![osi-model-diagram][https://insights.profitap.com/hs-fs/hubfs/The%207%20Layers%20of%20OSI.png?width=560&name=The%207%20Layers%20of%20OSI.png]

---
### 1. PHYSICAL LAYER

- It is responsible for the actual physical connection between the devices. 

- The physical layer contains information in the form of **bits.**

	- A **bit** (**binary digit**) is the smallest unit of data in computing and digital communications.

- Physical Layer is responsible for transmitting individual bits from one node to the next. 

- When receiving data, this layer will get the signal received and convert it into 0s and 1s and send them to the Data Link layer, which will put the frame back together.

![][https://media.geeksforgeeks.org/wp-content/uploads/20241015103017414021/physical-layer.png]


**Devices operating on this layer**

- Hub, Repeater, Modem, and Ethernet cables, Fiber Optics, Switches.

**Functions of the Physical Layer**

- **Bit Synchronization**: The physical layer provides the synchronization of the bits by providing a clock. This clock controls both sender and receiver thus providing synchronization at the bit level.

- **Bit Rate Control**: The Physical layer also defines the transmission rate i.e. the number of bits sent per second.

- **Physical Topologies**: Physical layer specifies how the different, devices/nodes are arranged in a network i.e. bus topology , star topology , or mesh topology .

- **Transmission Mode**: Physical layer also defines how the data flows between the two connected devices. The various transmission modes possible are Simplex, half-duplex and full-duplex .

---
### 2. DATA LINK LAYER

- The data link layer is responsible for the node-to-node delivery of the message. 

- The main function of this layer is to make sure data transfer is error-free from one node to another, over the physical layer. 

- When a packet arrives in a network, it is the responsibility of the DLL to transmit it to the Host using its **MAC address**. 

- Packet in the Data Link layer is referred to as **Frame**. 

- Switches and Bridges are common Data Link Layer devices.

The Data Link Layer is divided into two sublayers:

* **Logical Link Control (LLC)**
* **Media Access Control (MAC)**

---
#### 1. Logical Link Control (LLC)

- Is a sublayer that generally provides the logic for the data link as it controls the synchronization, multiplexing, flow control, and even error-checking functions Data Link Layer.

#### 2. Media Access Control (MAC)

- Is a physical address that works at the Data Link Layer.

- MAC Addresses are unique 48-bit hardware numbers of a computer that are embedded into a network card (known as a Network Interface Card) during manufacturing. 

- The MAC Address is also known as the Physical Address of a network device. 

---

- The packet received from the Network layer is further divided into frames depending on the frame size of the NIC(Network Interface Card). 

- DLL also encapsulates Sender and Receiver’s MAC address in the header.

- The Receiver’s MAC address is obtained by placing an ARP(Address Resolution Protocol) request onto the wire asking “Who has that IP address?” and the destination host will reply with its MAC address.

#### Functions of the Data Link Layer

* **Framing:** Framing is a function of the data link layer. It provides a way for a sender to transmit a set of bits that are meaningful to the receiver. This can be accomplished by attaching special bit patterns to the beginning and end of the frame.

* **Physical Addressing:** After creating frames, the Data link layer adds physical addresses ( MAC addresses ) of the sender and/or receiver in the header of each frame.

* **Error Control:** The data link layer provides the mechanism of error control in which it detects and retransmits damaged or lost frames.

* **Flow Control:** The data rate must be constant on both sides else the data may get corrupted thus, flow control coordinates the amount of data that can be sent before receiving an acknowledgment.

* **Access Control:** When a single communication channel is shared by multiple devices, the MAC sub-layer of the data link layer helps to determine which device has control over the channel at a given time.
---

### 3. NETWORK LAYER

- The network layer works for the transmission of data from one host to the other located in different networks. It also takes care of packet routing i.e. selection of the shortest path to transmit the packet, from the number of routes available.

	- **Packet routing is the process of selecting the optimal path for data packets to travel from their source to their destination across a network.**

- The sender and receiver’s **IP address** are placed in the header by the network layer. Segment in the Network layer is referred to as Packet.

- Network layer is implemented by networking devices such as routers and switches.

#### Functions of the Network Layer

**Routing**: The network layer protocols determine which route is suitable from source to destination. This function of the network layer is known as routing.

**Logical Addressing**: To identify each device inter-network uniquely, the network layer defines an addressing scheme. 

The sender and receiver’s IP addresses are placed in the header by the network layer. Such an address distinguishes each device uniquely and universally.

---

### 4. TRANSPORT

- The transport layer provides services to the application layer and takes services from the network layer. 

- The data in the transport layer is referred to as Segments. It is responsible for the end-to-end delivery of the complete message. 

- The transport layer also provides the acknowledgment of the successful data transmission and re-transmits the data if an error is found. 

- Protocols used in Transport Layer are TCP, UDP  NetBIOS, PPTP.

**At the sender's side** 

The transport layer receives the formatted data from the upper layers, performs **Segmentation**, and also implements **Flow and error control** to ensure proper data transmission. It also adds Source and Destination **port number** in its header and forwards the segmented data to the Network Layer.

Generally, this destination port number is configured, either by default or manually. For example, when a web application requests a web server, it typically uses port number 80, because this is the default port assigned to web applications. Many applications have default ports assigned.

**At the Receiver's side**

The **Transport Layer** reads the port number from its header and forwards the Data which it has received to the respective application. It also performs sequencing and reassembling of the segmented data.


#### Functions of the Transport Layer

**Segmentation and Reassembly**: This layer accepts the message from the (session) layer, and breaks the message into smaller units. Each of the segments produced has a header associated with it. The transport layer at the destination station reassembles the message.

**Service Point Addressing**: To deliver the message to the correct process, the transport layer header includes a type of address called service point address or port address. Thus by specifying this address, the transport layer makes sure that the message is delivered to the correct process.


---

### 5. SESSION LAYER


- Session Layer in the OSI Model is responsible for the establishment of connections, management of connections, terminations of sessions between two devices. 

- It also provides authentication and security. Protocols used in the Session Layer are NetBIOS, PPTP.

#### Functions of the Session Layer

- **Session Establishment, Maintenance, and Termination**: The layer allows the two processes to establish, use, and terminate a connection.

- **Synchronization**: This layer allows a process to add checkpoints that are considered synchronization points in the data. These synchronization points help to identify the error so that the data is re-synchronized properly, and ends of the messages are not cut prematurely and data loss is avoided.

- **Dialog Controller**: The session layer allows two systems to start communication with each other in half-duplex or full-duplex.

---

### 6. PRESENTATION LAYER

- The presentation layer is also called the Translation layer. The data from the application layer is extracted here and manipulated as per the required format to transmit over the network. Protocols used in the Presentation Layer are JPEG, MPEG, GIF, TLS/SSL, etc.

#### Functions of the Presentation Layer

- **Translation**: For example, ASCII to EBCDIC .

- **Encryption/ Decryption**: Data encryption translates the data into another form or code. The encrypted data is known as the ciphertext and the decrypted data is known as plain text. A key value is used for encrypting as well as decrypting data.

- **Compression**: Reduces the number of bits that need to be transmitted on the network.

---

### 7. APPLICATION LAYER

- At the very top of the OSI Reference Model stack of layers, we find the Application layer which is implemented by the network applications. 

- These applications produce the data to be transferred over the network. This layer also serves as a window for the application services to access the network and for displaying the received information to the user. 

- Protocols used in the Application layer are SMTP, FTP, DNS, etc.

![][https://media.geeksforgeeks.org/wp-content/uploads/20241015103102290937/application-layer.gif]

---

Functions of the Application Layer

- **Network Virtual Terminal(NVT)**: It allows a user to log on to a remote host.

- **File Transfer Access and Management(FTAM)**: This application allows a user to access files in a remote host, retrieve files in a remote host, and manage or control files from a remote computer.

- **Mail Services**: Provide email service.

- **Directory Services**: This application provides distributed database sources and access for global information about various objects and services.

---
### How Data Flows in the OSI Model

| Layer        | Process                                                    |
| ------------ | ---------------------------------------------------------- |
| Application  | Applications create the data.                              |
| Presentation | Data is formatted and encrypted.                           |
| Session      | Connections are established and managed.                   |
| Transport    | Data is broken into segments for reliable delivery.        |
| Network      | Segments are packaged into packets and routed.             |
| Data Link    | Packets are framed and sent to the next device.            |
| Physical     | Frames are converted into bits and transmitted physically. |

---
### **Real-World Example**

Let us suppose, **Person A** sends an e-mail to his friend **Person B**.

**Step 1: Person A** interacts with e-mail application like **Gmail**, **outlook**, etc. Writes his email to send. (This happens at **Application Layer**).

**Step 2: At Presentation Layer,** Mail application prepares for data transmission like encrypting data and formatting it for transmission.

**Step 3: At Session Layer,** There is a connection established between the sender and receiver on the internet.

**Step 4: At Transport Layer**, Email data is broken into smaller segments. It adds sequence number and error-checking information to maintain the reliability of the information.

**Step 5: At Network Layer,** Addressing of packets is done in order to find the best route for transfer.

**Step 6: At Data Link Layer**, data packets are encapsulated into frames, then MAC address is added for local devices and then it checks for error using error detection.

**Step 7: At Physical Layer,** Frames are transmitted in the form of electrical/ optical signals over a physical network medium like ethernet cable or WiFi.

After the email reaches the receiver i.e. **Person B**, the process will reverse and decrypt the e-mail content. At last, the email will be shown on **Person B** email client.

---
#### Summary Of Protocols Used in the OSI Layers

| Layer           | Working                                                                                               | Protocol Data Unit | Protocols                             |
| --------------- | ----------------------------------------------------------------------------------------------------- | ------------------ | ------------------------------------- |
| 1  Physical     | Establishing Physical Connections between Devices.                                                    | Bits               | USB, SONET/SDH, etc.                  |
| 2  Data Link    | Node to Node Delivery of Message.                                                                     | Frames             | Ethernet, PPP, etc.                   |
| 3 Network       | Transmission of data from one host to another, located in different networks.                         | Packets            | IP, ICMP, IGMP, OSPF, etc.            |
| 4 Transport     | Take Service from Network Layer and provide it to the Application Layer.                              | Segments/Datagrams | TCP, UDP, SCTP, etc.                  |
| 5 Session       | Establishes Connection, Maintenance, Ensures Authentication and Ensures security.                     | Data               | NetBIOS, RPC, PPTP, etc.              |
| 6  Presentation | Data from the application layer is extracted and manipulated in the required format for transmission. | Data               | TLS/SSL, MIME, JPEG, PNG, ASCII, etc. |
| 7 Application   | Helps in identifying the client and synchronizing communication.                                      | Data               | FTP, SMTP, DNS, DHCP, etc.            |

---

The **TCP/IP protocol suite** uses a **4 layer model**.

![][http://www.steves-internet-guide.com/wp-content/uploads/tcp-ip-networking-model.jpg]


---
#### **Difference Between OSI and TCP/IP Model**

| Feature         | OSI Model                                  | TCP/IP Model                               |
|-----------------|---------------------------------------------|---------------------------------------------|
| Stands for      | Open Systems Interconnection                | Transmission Control Protocol/Internet Protocol |
| Layers          | 7                                            | 4                                            |
| Package Delivery| Guaranteed                                  | Not Guaranteed                               |
| Data Transmission| Layers 1, 2, and 3 necessary                | All layers are necessary                     |
| Layer Dependency| Independent                                 | Integrated, some layers required by others    |
| Practical Use   | Conceptual framework, less used practically | Widely used in actual networks               |

---

#### **Advantages of the OSI Model**

 - **Standardization**: Ensures devices from different manufacturers can communicate effectively.
 
 - **Troubleshooting**: Simplifies network troubleshooting by isolating issues to specific layers.
 
- **Modularity**: Each layer's independence supports modular development and upgrades.

- **Interoperability**: Promotes compatibility between diverse software and hardware.

#### Disadvantages of OSI Model

- The OSI Model has seven layers, which can be complicated and hard to understand for beginners.

- In real-life networking, most systems use a simpler model called the Internet protocol suite (TCP/IP), so the OSI Model is not always directly applicable.

- Each layer in the OSI Model adds its own set of rules and operations, which can make the process more time-consuming and less efficient.

- The OSI Model is more of a theoretical framework, meaning it’s great for understanding concepts but not always practical for implementation.

---


![][https://content.instructables.com/FZF/E6TA/HRWNA2YP/FZFE6TAHRWNA2YP.jpg?auto=webp&frame=1&width=541&height=1024&fit=bounds&md=MjAxNC0wNS0zMCAwMjoxMTowMS4w]

---

