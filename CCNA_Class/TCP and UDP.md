
![osi-model-diagram][https://insights.profitap.com/hs-fs/hubfs/The%207%20Layers%20of%20OSI.png?width=560&name=The%207%20Layers%20of%20OSI.png]


## Overview

The Transport Layer (OSI Layer 4) is responsible for reliable data transfer. It ensures data arrives error-free and in order. This layer includes two primary protocols: 

- **Transmission Control Protocol (TCP)**: Connection-oriented.
- **User Datagram Protocol (UDP)**: Connectionless.

---

# Transmission Control Protocol (TCP)

**Transmission Control Protocol**, is one of the main protocols used to send data over the internet or other networks. It’s like a virtual postman that ensures the data you send reaches its destination safely and in the correct order.

### **Key Features of TCP**

1. **Connection-Oriented:**
    
    - TCP sets up a reliable connection between two devices before sending data. This is like making a phone call where both people agree to talk before starting the conversation.
2. **Reliable:**
    
    - TCP ensures that all data sent from the sender is received correctly by the receiver. If any data is lost or corrupted, TCP will resend it.
3. **Ordered Delivery:**
    
    - Data is sent in small chunks called **segments**. TCP ensures that these segments are reassembled in the correct order at the destination.
4. **Error Checking:**
    
    - TCP checks for errors during transmission and corrects them to ensure the data is not corrupted.

### **What is a Port ?**

A **port** is like a specific door on a device that an application uses to send or receive data. 

Just like how a building has many doors for different rooms, a computer has many port numbers for different applications.

When two devices communicate, they use **two port numbers**:

1. **Source Port:** The port on the sender's device.
2. **Destination Port:** The port on the receiver's device.

These port numbers help TCP identify which application the data belongs to. For example:

- **Port 80:** Used for HTTP (web browsing).
- **Port 443:** Used for HTTPS (secure web browsing).
- **Port 25:** Used for sending emails (SMTP).

### **Summary Common Ports**

|**Port Number**|**Protocol**|**Type**|**Description**|
|---|---|---|---|
|21|FTP|TCP|File Transfer Protocol, used for transferring files.|
|22|SSH|TCP|Secure Shell, used for secure remote access.|
|25|SMTP|TCP|Simple Mail Transfer Protocol, used for sending emails.|
|53|DNS|UDP/TCP|Domain Name System, used for resolving domain names.|
|80|HTTP|TCP|Hypertext Transfer Protocol, used for web traffic.|
|110|POP3|TCP|Post Office Protocol v3, used for retrieving emails.|
|123|NTP|UDP|Network Time Protocol, used for time synchronization.|
|143|IMAP|TCP|Internet Message Access Protocol, used for accessing emails.|
|161|SNMP|UDP|Simple Network Management Protocol, used for network management.|
|443|HTTPS|TCP|Hypertext Transfer Protocol Secure, used for secure web traffic.|

---
## Three-Way Handshake:

The **Three-Way Handshake** is a process used by TCP to establish a reliable connection between two devices on a network. It ensures that both devices are ready to communicate and agree on initial settings. Here’s how it works:

1. **SYN (Synchronize):**
    
    - The client (e.g., your computer) sends a **SYN** message to the server, indicating it wants to start communication and synchronize sequence numbers.
2. **SYN-ACK (Synchronize and Acknowledge):**
    
    - The server responds with a **SYN-ACK** message. This acknowledges the client’s SYN request and includes its own synchronization request.
3. **ACK (Acknowledge):**
    
    - The client sends an **ACK** message back to the server, confirming it has received the server’s SYN-ACK.

At the end of these three steps, the connection is established, and data transfer can begin. This ensures both devices are synchronized and ready to communicate reliably.

### **TCP Flags and Their Functions**

TCP flags are control bits in the TCP header used to manage the state of a connection and control the flow of data between devices. They play a critical role in establishing, maintaining, and terminating connections, as well as ensuring reliable data delivery.

Here’s a breakdown of the **main TCP flags**:

---

### **1. SYN (Synchronize)**

- **Purpose:** Used to initiate a new connection.
- **How It Works:**
    - Sent during the **three-way handshake** to establish a connection.
    - The sender sets this flag to indicate a request to synchronize sequence numbers with the receiver.

---

### **2. ACK (Acknowledgment)**

- **Purpose:** Acknowledges the receipt of data.
- **How It Works:**
    - The ACK flag is set to indicate that the receiver has successfully received data up to a specific sequence number.
    - It is used in every part of the connection after the initial SYN is acknowledged.
- **Example:**
    - If the receiver sends an acknowledgment number of `5001`, it means it has received all data up to byte `5000` and is ready for the next byte.

---

### **3. FIN (Finish)**

- **Purpose:** Gracefully closes a connection.
- **How It Works:**
    - When a device finishes sending data, it sets the FIN flag to indicate that no more data will be sent.
    - The other side must acknowledge this flag and may also send its own FIN flag to close the connection.

---

### **4. RST (Reset)**

- **Purpose:** Abruptly terminates a connection.
- **How It Works:**
    - If something goes wrong during communication (e.g., an error or an unexpected condition), the RST flag is used to reset the connection immediately.
    - Often used when a device receives data it doesn’t expect or recognize.

---

### **5. PSH (Push)**

- **Purpose:** Forces immediate delivery of data to the application layer.
- **How It Works:**
    - Normally, TCP buffers data to optimize network performance. The PSH flag tells the receiver to process and deliver the data to the application layer immediately without waiting for more data.
    - Useful for real-time applications like chat or online gaming.

---

### **6. URG (Urgent)**

- **Purpose:** Indicates that the data in the packet is urgent.
- **How It Works:**
    - When this flag is set, it tells the receiver to prioritize processing the data marked as urgent.
    - The **Urgent Pointer** field in the TCP header specifies the end of the urgent data within the packet.

---

### **7. CWR (Congestion Window Reduced)**

- **Purpose:** Indicates that the sender has reduced its sending rate due to network congestion.
- **How It Works:**
    - Used as part of TCP congestion control mechanisms.
    - Set in response to the ECN (Explicit Congestion Notification) flag, which indicates network congestion.

---

### **8. ECE (Explicit Congestion Notification Echo)**

- **Purpose:** Signals network congestion to the sender.
- **How It Works:**
    - Used in conjunction with ECN to notify both sender and receiver about congestion in the network, allowing them to adjust their transmission rates.

---

### **Summary Table of TCP Flags**

|**Flag**|**Name**|**Purpose**|
|---|---|---|
|SYN|Synchronize|Initiates a connection (used in the three-way handshake).|
|ACK|Acknowledgment|Acknowledges receipt of data or connection requests.|
|FIN|Finish|Gracefully terminates a connection.|
|RST|Reset|Abruptly resets a connection due to errors or unexpected conditions.|
|PSH|Push|Forces immediate delivery of data to the application layer.|
|URG|Urgent|Marks data as urgent and prioritizes its processing.|
|CWR|Congestion Window Reduced|Indicates reduced sending rate due to congestion.|
|ECE|Explicit Congestion Notification Echo|Notifies the sender about network congestion.|

---

### **TCP Flag Usage in the Three-Way Handshake**

- **SYN:** Sent by the client to start the connection.
- **SYN-ACK:** Sent by the server to acknowledge the client's SYN and synchronize its own sequence numbers.
- **ACK:** Sent by the client to confirm the connection.

---
### **Segmentation and Sequencing in TCP**

Segmentation and sequencing are critical functions performed by TCP to ensure reliable data transmission over a network. Here's what they mean in detail:

---

### **1. Segmentation**

The process of breaking large amounts of data into smaller, manageable pieces (called segments) for transmission over a network.

When a large chunk of data (like a file, video, or webpage) needs to be sent over a network, it is typically too big to be sent all at once. TCP handles this by breaking the data into smaller, manageable pieces called **segments**.

- **Why segmentation?**
    
    - Network devices and protocols have size limits (called the **Maximum Transmission Unit**, or MTU). Segmentation ensures that data fits within these limits.
    - Smaller pieces reduce the risk of losing an entire large message if an error occurs. Only a small segment would need retransmission.
- **How segmentation works:**
    
    - The sender's TCP process divides the data into segments.
    - Each segment is given a **header** that includes important information like sequence numbers, source and destination ports, and checksums.

---

### **2. Sequencing**

The process of assigning a unique number to each segment of data, ensuring that they can be reassembled in the correct order at the receiving end.

Once the data is segmented, TCP ensures that these segments can be reassembled correctly at the destination. This is achieved through **sequencing**.

- **Sequence Numbers:**
    
    - Every segment is assigned a unique **sequence number** that represents its position within the original data.
    - These numbers allow the receiver to identify which segment comes first, second, and so on.
- **Why sequencing is needed:**
    
    - In many networks, segments do not always arrive in the same order they were sent due to factors like network delays or routing differences.
    - Sequencing allows the receiver to put the pieces back together in the correct order.
- **Example of sequencing in action:**
    
    - Suppose you’re downloading a file that gets segmented into three parts:
        - Segment 1 (Sequence 1001)
        - Segment 2 (Sequence 2001)
        - Segment 3 (Sequence 3001)
    - If Segment 2 arrives before Segment 1, the receiver uses the sequence numbers to rearrange them correctly before delivering the file.

---

### **Advantages of Segmentation and Sequencing**

- **Error Handling:**
    - If a segment is lost or corrupted, only that specific segment needs to be resent, not the entire message.
- **Efficient Use of Resources:**
    - By sending smaller segments, TCP can optimize data flow and adjust to network conditions.
- **Reassembly at the Receiver:**
    - Sequence numbers ensure the receiver can reassemble the data into its original form.

---

### **Real-World Example**

Imagine you're streaming a video. TCP breaks the video file into small packets (segmentation) and numbers them (sequencing). Even if some packets take different routes or arrive late, sequencing ensures the video plays smoothly by arranging the packets in the correct order before playing them.

---


## TCP Header 

![tcp-header][https://www.nwkings.com/wp-content/uploads/2023/08/HEADER-768x432.png]



The **TCP Header** is a structured section of information added to each TCP segment. It contains critical details that help manage reliable communication between devices. Let’s break it down:

- A TCP Header typically ranges from **20 bytes** (minimum size) to **60 bytes** (with optional fields).
- It is added to each TCP segment and works with the payload (actual data) to ensure proper delivery.

---

## **Main Parts of the TCP Header**

#### **a. Source Port (16 bits)**

- Identifies the port number of the application on the sender's device.
- Example: A web browser might use a random port (e.g., 49152).

#### **b. Destination Port (16 bits)**

- Specifies the port number of the receiving application on the destination device.
- Example: Port 80 for HTTP or Port 443 for HTTPS.

---

#### **c. Sequence Number (32 bits)**

- Used for **sequencing** data packets.
- Indicates the position of the first byte of the segment in the data stream.
- Helps the receiver reassemble data in the correct order.

---

#### **d. Acknowledgment Number (32 bits)**

- Acknowledges receipt of data by the receiver.
- If the acknowledgment number is 1501, it means all bytes up to 1500 have been successfully received.

---

#### **e. Data Offset (4 bits)**

- Indicates the size of the TCP Header (in 4-byte blocks).
- Helps the receiver identify where the payload (actual data) starts.

---

#### **f. Reserved (3 bits)**

- Reserved for future use.
- Always set to zero.

---

#### **g. Control Flags (6 bits)**

- Also known as **TCP Flags**, they control the connection state:
    - **SYN:** Initiates a connection.
    - **ACK:** Acknowledges received data.
    - **FIN:** Terminates a connection.
    - **RST:** Resets a connection.
    - **PSH:** Pushes data immediately to the application layer.
    - **URG:** Indicates urgent data.

---

#### **h. Window Size (16 bits)**

- Specifies the size of the receive window, which is the amount of data the sender can send without receiving an acknowledgment.
- Helps manage **flow control** to avoid overwhelming the receiver.

---

#### **i. Checksum (16 bits)**

- Used for error checking.
- Ensures the data in the TCP Header and payload is intact during transmission.

---

#### **j. Urgent Pointer (16 bits)**

- Indicates the position of urgent data in the segment.
- Only used when the **URG** flag is set.

---

#### **k. Options (Variable length)**

- Optional fields for additional settings.
- Example: Maximum Segment Size (MSS), which indicates the largest amount of data that can be sent in a single segment.

---

### **3. Structure of the TCP Header**

Here’s a simplified representation:

|**Field**|**Size (bits)**|**Purpose**|
|---|---|---|
|Source Port|16|Identifies the sending application’s port.|
|Destination Port|16|Identifies the receiving application’s port.|
|Sequence Number|32|Tracks the position of the data in the stream.|
|Acknowledgment Number|32|Confirms receipt of data.|
|Data Offset|4|Specifies the header size.|
|Reserved|3|Reserved for future use.|
|Flags|6|Controls the connection state (e.g., SYN, ACK).|
|Window Size|16|Manages flow control.|
|Checksum|16|Verifies header and data integrity.|
|Urgent Pointer|16|Points to urgent data, if any.|
|Options|Variable|Provides additional configuration.|

---

### **4. Example of How It Works**

1. When you load a webpage, your browser (client) uses TCP to send a segment to the web server:
    
    - **Source Port:** A random port (e.g., 49152).
    - **Destination Port:** 80 (HTTP).
    - **Sequence Number:** Marks the position of the first byte sent.
    - **ACK Flag:** Acknowledges previous data from the server.
2. The server uses this header information to process your request and respond appropriately.
    

---

## Flow Control in Networking

**Flow control** is a technique used in networking to manage the rate at which data is sent between two devices. Its main goal is to ensure that the sender does not overwhelm the receiver by sending data faster than it can be processed or stored.

---

### **Why is Flow Control Important?**

1. **Prevent Data Loss:**
    
    - If the sender transmits data too quickly and the receiver's buffer (temporary storage) fills up, the receiver may drop the excess data.
2. **Avoid Congestion:**
    
    - Controlling the flow of data helps prevent network congestion, which can slow down overall communication for all devices on the network.
3. **Efficient Resource Utilization:**
    
    - Proper flow control ensures that network resources (like bandwidth and processing power) are used optimally without waste.

---

### **How Flow Control Works**

Flow control involves mechanisms that allow the receiver to signal the sender about its capacity to receive data. This is often implemented in the **Transport Layer** of the OSI model (e.g., TCP).

#### **1. Buffering**

- The receiver stores incoming data in a buffer (a temporary storage area).
- If the buffer fills up, the receiver signals the sender to pause or slow down until it processes the stored data.

#### **2. Sliding Window Protocol**

This is a common method of flow control used in TCP:

- The **window size** defines how much data the sender can transmit before waiting for an acknowledgment from the receiver.
- The receiver informs the sender about the size of the window (the amount of data it can handle).
- As the receiver processes data, it sends acknowledgments, and the sender slides the window forward, allowing more data to be sent.

**Example:**

- If the window size is 5 segments, the sender can send 5 segments before pausing to wait for an acknowledgment.
- If the receiver processes 3 segments, it updates the window to allow the sender to transmit 3 more segments.

#### **3. Acknowledgments**

- The receiver sends **ACK (Acknowledgment)** messages to the sender, confirming which data has been received.
- If no acknowledgment is received, the sender assumes the data was lost or delayed and may retransmit it.

---

### **Types of Flow Control**

There are two primary types of flow control:

#### **a. Stop-and-Wait Flow Control**

- The sender transmits one frame of data and waits for an acknowledgment before sending the next.
- Simple but inefficient for high-speed networks, as the sender spends a lot of time waiting.

#### **b. Sliding Window Flow Control**

- Allows the sender to send multiple frames (within the window size) before requiring an acknowledgment.
- More efficient and commonly used in modern networking protocols like TCP.

---

### **Real-Life Analogy**

Imagine a warehouse sending boxes to a delivery truck:

- **Buffering:** The truck has limited storage space (buffer). If too many boxes arrive at once, some may fall off.
- **Acknowledgments:** After delivering each box, the truck driver signals the warehouse that more boxes can be sent.
- **Window Size:** The truck might specify how many boxes it can handle in one trip. If it can carry 10 boxes, the warehouse sends only 10 boxes at a time.

---

### **TCP Flow Control Example**

1. **Sender:** Starts sending data packets to the receiver.
2. **Receiver:** Monitors its buffer space.
    - If the buffer is filling up, it reduces the window size to slow the sender.
    - If the buffer has space, it increases the window size, allowing the sender to send more data.
3. **Dynamic Adjustment:** The window size is dynamically adjusted based on the network conditions and the receiver’s capacity.

---

### **Benefits of Flow Control**

1. **Reliable Communication:** Ensures no data is lost due to buffer overflow.
2. **Optimized Network Performance:** Balances data flow, avoiding congestion and delays.
3. **Adaptability:** Adjusts to varying network conditions and device capacities.

---

### **Challenges in Flow Control**

1. **Latency:** A slow acknowledgment process can delay data transmission.
2. **Congestion in Networks:** If multiple devices are transmitting simultaneously, managing flow control across all devices becomes complex.


---

# User Datagram Protocol (UDP)

UDP, or **User Datagram Protocol**, is a lightweight communication protocol used to send data between devices over a network. Unlike TCP, UDP focuses on speed rather than reliability, making it ideal for time-sensitive applications.

---

### **Key Features of UDP**

1. **Connectionless:**
    
    - UDP does not establish a connection between the sender and receiver before transmitting data. It simply sends data packets without a prior handshake.
2. **No Reliability:**
    
    - UDP does not guarantee that data will reach its destination. If packets are lost or arrive out of order, UDP does not attempt to fix this.
3. **Fast and Low Overhead:**
    
    - Because UDP doesn’t use mechanisms like acknowledgments or retransmissions, it has minimal delay and overhead.
4. **Unordered Delivery:**
    
    - Data packets may arrive at the receiver in any order. The application using UDP must handle reordering if needed.

---

### **How UDP Works**

1. **Data is Divided into Packets:**
    
    - The sender breaks the data into smaller pieces called **datagrams**.
2. **Datagrams Are Sent:**
    
    - These datagrams are sent directly to the receiver without establishing a connection.
3. **Receiver Processes Datagrams:**
    
    - The receiver gets the datagrams and passes them to the application layer for use. If any packets are missing, it does not notify the sender.

---


### **UDP Header**

![udp-header][https://www.myreadingroom.co.in/images/stories/docs/dcn/user%20datagram_Header.JPG]

| **Field**            | **Size (bits)** | **Purpose**                                                                       |
| -------------------- | --------------- | --------------------------------------------------------------------------------- |
| **Source Port**      | 16              | Identifies the sending application or process.                                    |
| **Destination Port** | 16              | Identifies the receiving application or process.                                  |
| **Length**           | 16              | Specifies the total length of the UDP datagram (header + data).                   |
| **Checksum**         | 16              | Used for error-checking the header and data (optional in IPv4, required in IPv6). |

---
### **How UDP Header Works**

When a UDP datagram is sent:

1. The **Source Port** specifies where the data is coming from.
2. The **Destination Port** tells the receiver where the data should go.
3. The **Length** ensures the receiver knows the exact size of the datagram.
4. The **Checksum** helps detect if the data was corrupted in transit.


---
### **Comparison: UDP Header vs. TCP Header**

|**Feature**|**UDP Header**|**TCP Header**|
|---|---|---|
|**Size**|8 bytes|20-60 bytes (depending on options)|
|**Fields**|Source Port, Destination Port, Length, Checksum|Source/Destination Port, Sequence Number, Acknowledgment, Flags, etc.|
|**Reliability**|No acknowledgments or sequencing|Reliable (ACKs, retransmissions)|
|**Complexity**|Simple and lightweight|More complex and feature-rich|

---

### **When to Use UDP**

UDP is ideal for applications where speed is more critical than reliability. Examples include:

1. **Streaming Media:**
    
    - Video or audio streaming (e.g., YouTube, Netflix) uses UDP because minor packet loss does not significantly affect quality.
2. **Online Gaming:**
    
    - Games prioritize fast communication over reliability. A slight delay or packet loss is preferable to waiting for retransmitted data.
3. **Voice over IP (VoIP):**
    
    - Calls need real-time transmission. Lost packets are ignored to avoid delays.
4. **DNS Queries:**
    
    - Domain Name System (DNS) requests use UDP for quick lookups since a failed query can simply be retried.

---

### **Example of UDP in Real Life**

Imagine sending postcards (UDP) versus a certified mail package (TCP):

1. **Postcards (UDP):**
    - You send multiple postcards to a friend. Some might get lost, but the ones that arrive are still useful. You don’t wait to confirm delivery before sending the next one.
2. **Certified Mail (TCP):**
    - You send a package and wait for the recipient to sign and confirm before sending the next.

---

### **Advantages of UDP**

1. **Speed:**
    - No connection setup or acknowledgment makes UDP faster than TCP.
2. **Low Latency:**
    - Ideal for real-time applications like gaming or video calls.
3. **Simplicity:**
    - Fewer resources are needed compared to TCP.

---

### **Disadvantages of UDP**

1. **No Reliability:**
    - Data loss is possible, and UDP doesn’t attempt to recover it.
2. **Unordered Data:**
    - Data packets may arrive out of sequence.
3. **No Congestion Control:**
    - UDP doesn’t slow down if the network is congested, potentially worsening traffic issues.

---

# Using Wireshark to Observe TCP and UDP Protocols

Wireshark is a powerful network protocol analyzer that allows you to capture and inspect network traffic in real time. Here's a step-by-step guide to observing TCP and UDP protocols in action:

![wireshark][https://e7.pngegg.com/pngimages/305/843/png-clipart-wireshark-logo-icons-logos-emojis-tech-companies.png]

---

### **1. Install and Set Up Wireshark**

1. **Download and Install Wireshark:**
    
    - Download Wireshark from the [official website](https://www.wireshark.org/).
    - Install it on your operating system by following the installation instructions.
2. **Run Wireshark with Administrator Privileges:**
    
    - Open Wireshark to ensure it has the necessary permissions to capture live traffic.

---

### **2. Start a Capture Session**

1. **Select a Network Interface:**
    
    - On the main screen, Wireshark lists all available network interfaces.
    - Choose the interface that is connected to the internet (e.g., Ethernet or Wi-Fi).
2. **Start Capturing Traffic:**
    
    - Click the **Start Capturing Packets** button (the blue shark fin icon) to begin capturing live traffic.

---

### **3. Generate Traffic**

To capture TCP and UDP traffic, you need to generate traffic using applications that use these protocols.

#### **TCP Example: Web Browsing**

1. Open a web browser and visit a website (e.g., `http://example.com`).
    - HTTP and HTTPS use TCP (ports 80 and 443).

#### **UDP Example: DNS Query**

1. Open a command prompt or terminal.
2. Use the `nslookup` command to perform a DNS query:
    
    ```bash
    nslookup example.com
    ```
    
    - This sends a DNS query over UDP (port 53).

---

### **4. Stop the Capture**

1. After generating the traffic, go back to Wireshark and click the **Stop Capturing Packets** button (the red square icon).
2. Wireshark will display the captured packets in a list.

---

### **5. Filter and Analyze the Packets**

#### **Filter for TCP Traffic:**

1. Enter the following filter in the **Filter bar** at the top:
    
    ```
    tcp
    ```
    
    - This will show only TCP packets.
2. Look for packets that correspond to your web browsing:
    
    - Check the **Source Port** (a random port on your machine) and **Destination Port** (80 or 443 for HTTP/HTTPS).
    - Expand the packet details to see TCP flags like SYN, ACK, FIN, etc.

#### **Filter for UDP Traffic:**

1. Enter the following filter in the **Filter bar**:
    
    ```
    udp
    ```
    
    - This will show only UDP packets.
2. Look for packets related to the DNS query:
    
    - The **Source Port** is a random port, and the **Destination Port** is 53 (DNS).
    - Expand the details to see the DNS query and response.

---
### **Identifying the 3-Way Handshake**

- Use filters to narrow down traffic:
    
   ```
    tcp.flags.syn == 1
    ```
    
    - Shows all packets with the SYN flag.
    
- Follow the conversation:
    - Right-click on a SYN packet and choose **Follow > TCP Stream** to isolate the handshake and subsequent data exchange.

---
### **6. Examine the Details**

1. **TCP Packet Details:**
    
    - Expand the **Transmission Control Protocol** section in the packet details.
    - Observe:
        - **Source Port** and **Destination Port.**
        - Flags such as SYN, ACK, FIN, etc.
        - Sequence and acknowledgment numbers.
2. **UDP Packet Details:**
    
    - Expand the **User Datagram Protocol** section.
    - Observe:
        - **Source Port** and **Destination Port.**
        - Length and Checksum fields.
    - Look under the **DNS** section to view the query and response details.

---

### **7. Save and Document Your Findings**

1. **Save the Capture:**
    - Go to **File > Save As** to save your captured packets for future analysis.
2. **Document Key Observations:**
    - Note the port numbers, protocols, and packet details.

---

