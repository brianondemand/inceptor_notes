

## Flexbox Properties

- `display: flex`: Enables flexbox layout for flexible positioning of elements.

    ```css
    div {
      display: flex;
    }
    ```

- `justify-content`: Aligns items along the main axis.

    ```css
    div {
      justify-content: center;
    }
    ```

- `align-items`: Aligns items along the cross-axis.

    ```css
    div {
      align-items: center;
    }
    ```


## Grid Properties

- `display: grid`: Enables CSS Grid layout for structuring elements.

    ```css
    div {
      display: grid;
      grid-template-columns: 1fr 1fr;
    }
    ```


## Animations & Transitions

- `transition`: Creates smooth changes over time.

    ```css
    div {
      transition: all 0.3s ease;
    }
    ```

- `animation`: Applies an animation effect to an element.

    ```css
    div {
      animation: fadeIn 2s;
    }
    ```

- `@keyframes`: Defines the sequence of animation frames.

    ```css
    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }
    ```


---

Wireshark is a network protocol analyzer, or an application that captures packets from a network connection, such as from your computer to your home office or the internet. Packet is the name given to a discrete unit of data in a typical Ethernet network.

Wireshark is the most often-used packet sniffer in the world. Like any other packet sniffer, Wireshark does three things:

1. **Packet Capture:** Wireshark listens to a network connection in real time and then grabs entire streams of traffic – quite possibly tens of thousands of packets at a time.
2. **Filtering:** Wireshark is capable of slicing and dicing all of this random live data using filters. By applying a filter, you can obtain just the information you need to see.
3. **Visualization:** Wireshark, like any good packet sniffer, allows you to dive right into the very middle of a network packet. It also allows you to visualize entire conversations and network streams.

Wireshark has many uses, including troubleshooting networks that have performance issues.

Here’s a **Wireshark Cheat Sheet** to help you with packet analysis and filtering.

### What the Color Coding Means in Wireshark

Now that you have some packets, it’s time to figure out what they mean. Wireshark tries to help you identify packet types by applying common-sense color coding. The table below describes the default colors given to major packet types.

| **Color in Wireshark** | **Packet Type**                                                             |
| ---------------------- | --------------------------------------------------------------------------- |
| Light purple           | TCP                                                                         |
| Light blue             | UDP                                                                         |
| Black                  | Packets with errors                                                         |
| Light green            | HTTP traffic                                                                |
| Light yellow           | Windows-specific traffic, including Server Message Blocks (SMB) and NetBIOS |
| Dark yellow            | Routing                                                                     |
| Dark gray              | TCP SYN, FIN and ACK traffic                                                |

---

**1. Basic Commands**

|Command|Description|
|---|---|
|`wireshark`|Launch Wireshark from the terminal (Linux/macOS).|
|`tshark -i eth0`|Capture packets using Tshark (CLI version of Wireshark).|
|`Ctrl + E`|Start/Stop packet capture.|
|`Ctrl + K`|Clear packet capture.|
|`Ctrl + Shift + P`|Open Preferences.|

---

 **2. Capture Filters** _(Used before capturing packets)_

|Filter|Description|
|---|---|
|`host 192.168.1.1`|Capture packets to/from a specific host.|
|`net 192.168.1.0/24`|Capture packets within a subnet.|
|`port 443`|Capture packets for a specific port (e.g., HTTPS).|
|`tcp`|Capture only TCP packets.|
|`udp`|Capture only UDP packets.|
|`icmp`|Capture only ICMP (ping) packets.|
|`ether host 00:1A:2B:3C:4D:5E`|Capture packets from a specific MAC address.|

---

**3. Display Filters** _(Used after capturing packets)_

|Filter|Description|
|---|---|
|`ip.addr == 192.168.1.1`|Show packets related to a specific IP.|
|`ip.src == 192.168.1.1`|Show packets from a specific source IP.|
|`ip.dst == 192.168.1.1`|Show packets to a specific destination IP.|
|`tcp.port == 80`|Show packets for a specific port (e.g., HTTP).|
|`tcp.flags.syn == 1`|Show SYN packets (used in TCP handshakes).|
|`http`|Show only HTTP traffic.|
|`dns`|Show only DNS packets.|
|`ssl` or `tls`|Show only SSL/TLS traffic.|
|`udp contains "Google"`|Show UDP packets containing "Google".|

---

 **4. TCP Flags Filters**

| Filter                 | Description                             |
| ---------------------- | --------------------------------------- |
| `tcp.flags.syn == 1`   | SYN packets (used in TCP handshakes).   |
| `tcp.flags.ack == 1`   | ACK packets (acknowledgments).          |
| `tcp.flags.fin == 1`   | FIN packets (connection termination).   |
| `tcp.flags.reset == 1` | RST packets (reset connections).        |
| `tcp.flags.push == 1`  | PSH packets (urgent data transmission). |

---

 **5. Common Protocol Filters**

|Filter|Description|
|---|---|
|`http`|Show HTTP packets.|
|`ftp`|Show FTP packets.|
|`dns`|Show DNS query and response packets.|
|`smtp`|Show SMTP (email) packets.|
|`dhcp`|Show DHCP lease request packets.|
|`icmp`|Show ping (ICMP) packets.|

---

 **6. Advanced Filters**

|Filter|Description|
|---|---|
|`tcp.analysis.flags`|Show TCP retransmissions and duplicate ACKs.|
|`frame.time >= "2024-02-22 10:00:00"`|Filter packets after a specific time.|
|`ip.ttl < 5`|Show packets with TTL less than 5 (possibly malicious traffic).|
|`http.request.method == "POST"`|Show only HTTP POST requests.|
|`dns.qry.name contains "example.com"`|Show DNS queries for example.com.|

---

**7. Export and Save Captures**

|Command|Description|
|---|---|
|`Ctrl + S`|Save capture to a `.pcap` file.|
|`Ctrl + Shift + S`|Export specific packets.|
|`File > Export Objects`|Export HTTP, FTP, or SMB objects from captured traffic.|

---

## Wireshark Filters for Malware Detection

 **1. HTTP GET Flooding (DDoS Attack)**

- **Threat:** Attackers flood a server with HTTP GET requests, causing denial of service.
- **Filter:**

```
http.request.method == "GET"
```


**2. DNS Tunneling**

- **Threat:** Malware uses DNS queries to bypass firewalls and exfiltrate data.
- **Filter:**

```
dns
```


**3. SMB Brute Force Attack**

- **Threat:** Multiple login attempts over SMB to guess credentials.
- **Filter:**

```
smb.cmd == 0x73
```


**4. SYN Flood Attack**

- **Threat:** Attackers send many SYN packets without completing the handshake, overwhelming resources.
- **Filter:**

```
 tcp.flags.syn == 1 && tcp.flags.ack == 0
```

**5. DNS Amplification Attack**

- **Threat:** Small DNS requests trigger **large responses**, overwhelming targets.
- **Filter:**

```
dns.qry.name
```


**6. ICMP Flood (Ping of Death)**

- **Threat:** Large ICMP packets flood a network, causing service disruption.
- **Filter:**

```
icmp
```


 **7. ARP Spoofing**

- **Threat:** Attackers manipulate ARP messages to hijack network traffic.
- **Filter:**

```
arp.duplicate-address-frame
```


**8. DNS Poisoning**

- **Threat:** DNS responses are **altered to redirect users** to malicious websites.
- **Filter:**

```
dns.flags.rcode != 0
```


**9. Suspicious HTTP User-Agent**

- **Threat:** Attackers use modified User-Agent strings to mask activities.
- **Filter:**

```
http.user_agent
```


 **10. FTP Plaintext Authentication**

- **Threat:** FTP transmits **usernames/passwords in plaintext**, making them vulnerable.
- **Filter:**

```
ftp.request.command == "USER"
```

**11. SSH Brute Force Login**

- **Threat:** Repeated login attempts exploit weak SSH credentials.
- **Filter:**

```
ssh
```


**12. DHCP Starvation Attack**

- **Threat:** Attackers **request multiple DHCP leases**, exhausting available IPs.
- **Filter:**

```
dhcp
```


 **13. Suspicious TLS Certificate**

- **Threat:** Malware uses self-signed or fake SSL certificates to intercept traffic.
- **Filter:**

```
ssl.handshake.type == 11
```

**14. Telnet Cleartext Transmission**

- **Threat:** Telnet sends **unencrypted** login credentials over the network.
- **Filter:**

```
telnet
```

 
 **15. Unauthorized RDP Access**

- **Threat:** Attackers attempt **brute-force or unauthorized access** via Remote Desktop Protocol (RDP).
- **Filter:**

 ```
 tcp.port == 3389
```

**16. Port Scanning (Reconnaissance)**

- **Threat:** Attackers scan ports to find vulnerabilities.
- **Filter:**

```
 tcp.flags.syn == 1 && tcp.flags.ack == 0
```

**17. SMTP Exfiltration**

- **Threat:** Sensitive data is **exfiltrated via email** (SMTP protocol).
- **Filter:**

```
smtp
```

 **18. Rogue DHCP Server**

- **Threat:** Unauthorized DHCP servers **assign fake IPs**, disrupting the network.
- **Filter:**

```
dhcp
```


**19. SQL Injection Attack**

- **Threat:** Malicious SQL code is injected into vulnerable input fields.
- **Filter:**

```
http.request.uri contains "SELECT"
```


**20. VoIP Eavesdropping (SIP Traffic)**

- **Threat:** Attackers intercept **VoIP (SIP) calls** to listen in.
- **Filter:**

```
sip
```


**21. Malware Command & Control (C2) Traffic**

- **Threat:** Malware communicates with **external C2 servers**.
- **Filter:**

```
http contains "cmd.exe"
```


**22. SSL Downgrade Attack**

- **Threat:** Attackers **force weak encryption (SSL 2.0/3.0)** to decrypt traffic.
- **Filter:**

```
ssl.record.version < 0x0303
```

**23. Suspicious HTTP POST Requests**

- **Threat:** Malware uses HTTP POST to send stolen data or upload files.
- **Filter:**

```
http.request.method == "POST"
```


