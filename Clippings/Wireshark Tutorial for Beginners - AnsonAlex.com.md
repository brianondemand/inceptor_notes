Wireshark is one of the most powerful network traffic analyzers for both Mac and Windows. It can be used to view network traffic, analyze packet data, and identify any problematic or malicious activity.

## Getting Started with Wireshark

### Installation

Wireshark is [free to download](https://www.wireshark.org/) and use for both Mac and Windows. When you first install it, there’s an additional package that you also have to install, at least on Mac, so just make sure to read the readme files that you see when you first download it.

### **Network Interface Overview**

Once it’s installed and open, you can immediately see in the capture section which network interface cards are picking up traffic. Your computer must to be connected to the networks that you want to look at packets on.

Generally speaking, you’re going to want to look at your Ethernet or your Wi-Fi network interface card (NIC). Ethernet should work in all situations but some Windows users have experienced issues capturing packets over Wi-Fi networks.

![](https://ansonalex.com/wp-content/uploads/CaptureNICsWireshark.jpg.webp)

NIC Capture Options in Wireshark

### **Capturing Packets**

After double-clicking on a NIC in the list, Wireshark starts capturing packets immediately and you can let it go and capture packets for as long as you’d like.

If you’re troubleshooting a particular website, you’ll want to try and access that website while it’s capturing. Once you think you have enough data, click on the red stop button at the top left.

![](https://ansonalex.com/wp-content/uploads/StartOfPacketCaptureWireshark-1-1024x247.jpg.webp)

Starting a Packet Capture in Wireshark

## Analyzing Captured Data

### Understanding Packet Information

Once you begin capturing data with Wireshark, it displays the total number of captured packets at the bottom of the screen. Initially, you will see all packets displayed but, by using filters, you can drill down to view only the important packets.

Each row on the screen represents a single packet, showcasing the exchange of information over the network during activities like browsing a website or transferring files.

### The Importance of Filtering

Your network is constantly buzzing with packet transfers, not just from your activities but also from IoT and smart devices maintaining their connection to the network. The challenge in using Wireshark lies in filtering out the noise—identifying packets that aren’t immediately relevant to your current analysis objective. Wireshark offers tools to give you a comprehensive overview of network activity, enabling you to narrow down and examine the specific packets you need to analyze further.

## **Utilizing Wireshark’s Features**

### **Exploring Statistics and Conversations**

Begin by navigating to the “**Statistics**” dropdown in Wireshark for an overview of packet capture (PCAP) properties. Particularly useful is the “Conversations” option, which reveals all conversations between IP addresses within the captured data. 

This feature allows you to sift through various protocols, such as TCP, and examine specifics like the number of bytes transferred and the duration of conversations between IP addresses.

![](https://ansonalex.com/wp-content/uploads/ConversationViewinWireshark-1.jpg.webp)

Viewing All Conversations in a Wireshark Packet Capture (PCAP)

### **Understanding Your Network**

It’s essential to familiarize yourself with the IP and MAC addresses of devices on your network for effective analysis. Knowing these addresses aids in troubleshooting and identifying devices during your investigation.

### **Identifying Suspicious Activity**

Be vigilant for extended communications between your device and unknown IP addresses, which could indicate suspicious activity. Wireshark is a versatile tool for diagnosing network issues, investigating potential phishing attempts, and optimizing bandwidth by monitoring device communications.

### **Digging Deeper**

The conversation statistics window is your starting point for deep analysis. From here, you can right-click on IP addresses and apply filters to drill down to specific packets. 

For example, you could only show packets that were sent to or from a particular IP address.  Or, you could filter only packets from a specific conversation between 2 IP addresses.

![Applying a Filter in Wireshark](https://ansonalex.com/wp-content/uploads/ApplyingaFilterinWireshark-1024x332.jpg.webp)

Right-Clicking to Apply a Filter from Conversation View in Wireshark

## Filtering Specific Data

### Analyzing HTTP Traffic

- **HTTP Traffic Focus**: For potential security analysis, just type “HTTP” in the filter to identify unencrypted traffic. This step is crucial for spotting vulnerabilities or phishing activities.
- **Following HTTP Streams**: Delve deeper into specific HTTP packets by right-clicking on a packet selecting “Follow”, which reveals the comprehensive data exchange within the session.

![Applying an HTTP Filter in Wireshark](https://ansonalex.com/wp-content/uploads/ApplyingHTTPFilterWireshark-1024x247.jpg.webp)

Applying an HTTP Filter in Wireshark

### Exploring Encrypted Traffic

- **Secure Traffic Analysis**: Apply a filter for TCP port 443 to investigate encrypted traffic. While content remains unreadable without decryption keys, recognizing the flow of secure traffic provides valuable insights.

![Filtering Secure Traffic on Port 443 in Wireshark](https://ansonalex.com/wp-content/uploads/FilteringSecurePort443TrafficInWireshark-1024x277.jpg.webp)

Filtering Secure Traffic on Port 443 in Wireshark

### Advanced Filtering Techniques

- **Excluding Common Protocols**: Implement filters like `!ARP && !STP && !LLDP && !CDP` to focus on relevant traffic by removing background protocol noise.
- **Identifying Connection Initiations**: Use `tcp.flags.syn == 1` for spotting the beginnings of TCP connections, highlighting new connection attempts.
- **Flagged Packet Analysis**: With `tcp.analysis.flags`, isolate packets Wireshark flags for further investigation, which can indicate potential issues or anomalies.
- **Aborted Connection Detection**: The filter `tcp.flags.reset == 1` reveals packets indicating connection resets, often a sign of network distress or security concerns.

## Enhancing Wireshark with Custom Buttons

To streamline your workflow in Wireshark, custom filter buttons can be added for filters you frequently use.

Navigate to the right side of the filter toolbar and click on the “+” (plus) icon.

Name your button (e.g., “HTTPS” for secure traffic) and input the corresponding filter expression (e.g., `tcp.port == 443` for HTTPS).

Once configured, click “OK” to add the button. This creates a quick-access button for your specified filter, allowing you to apply it with a single click.

**Efficiency Tip**: Creating buttons for common tasks, like isolating HTTP or encrypted HTTPS traffic, saves significant time during analysis and is highly recommended for both novice and experienced users.

![Custom Button for Secure Traffic in Wireshark](https://ansonalex.com/wp-content/uploads/SecureTrafficButtonWireshark-1024x172.jpg.webp)

Creating a Custom Button to Quickly Filter Secure Traffic in Wireshark

## Understanding Coloring Rules

Wireshark’s color coding (e.g., black lines for TCP issues, red for aborted connections) helps quickly identify network events. Customize or explore these settings via “Coloring Rules” in the “View” menu.

![Default Coloring Rules Wireshark](https://ansonalex.com/wp-content/uploads/DefaultColoringRulesWireshark-1024x451.jpg.webp)

A List of the Default Coloring Rules in Wireshark

## Examining Packet Contents in Depth

Once you’ve navigated through the sea of network traffic and identified packets of interest, taking a closer look at the individual packet’s contents can unveil a wealth of information. This detailed analysis is crucial for understanding the nature of the data being transferred, identifying potential security threats, and troubleshooting network issues.

### How to Inspect a Packet’s Details:

- **Selecting a Packet**: In the main interface where packets are listed, click on a packet that you’ve identified as interesting or relevant to your analysis. This could be based on your filtering or an anomaly you’ve noticed in the traffic flow.
- **Packet Details Panel**: Upon selection, the packet details will be displayed in the middle panel of Wireshark. This panel breaks down the packet’s structure, showing each layer of the network protocol stack it traverses.
- **Exploring Protocol Information**: Expand the protocol layers (e.g., Ethernet, IP, TCP, HTTP) to view specific details. Look for indicators of the packet’s purpose, such as source and destination addresses, protocol-specific flags, and payload data.
- **Following the Stream**: For a holistic view of the communication session, right-click on the packet and select “Follow” > “TCP Stream” (or “UDP Stream”, depending on the protocol). This action will compile and display the entire conversation to which the packet belongs, allowing you to read the sequence of exchanged messages.

![Packet Contents in Wireshark](https://ansonalex.com/wp-content/uploads/PacketContentWireshark-1024x434.jpg.webp)

Examining the Content of a Packet in Wireshark

## Practical Cybersecurity Training

### **Real-World Application with [Malware-Traffic-Analysis.net](https://malware-traffic-analysis.net/)**:

This platform offers an invaluable resource for cybersecurity enthusiasts and professionals. It features real packet captures (PCAPs) from various malware infections and cyber-attacks for analysis.

**How It Works**: Users can download specific PCAP files, each accompanied by a set of objectives aiming to guide the analysis towards understanding the nature of the malware or attack. This hands-on approach allows for practical experience in identifying and dissecting malicious network traffic.

**Learning Outcome**: The site provides detailed solutions and analyses for each exercise, enabling users to compare their findings with expert insights. This process enhances understanding of malware behavior, attack patterns, and effective use of Wireshark for cybersecurity purposes.

**Educational Value**: Malware-Traffic-Analysis.net is not only a tool for self-learning but also used by cybersecurity programs worldwide to train students in network security and malware analysis.