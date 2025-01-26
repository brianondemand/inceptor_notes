### **Practical 1: Network Sniffing with Wireshark**

**Goal:** Capture and analyze network traffic for HTTP, TCP flags, and other protocols.

**Steps:**

1. **Setup Wireshark:**
    
    - Open Wireshark on your Kali Linux system.
    - Select the appropriate network interface (e.g., `eth0`, `wlan0`) for packet capturing.
2. **Start Capturing Traffic:**
    
    - Click on the **Start Capturing Packets** button (shark fin icon).
    - Generate some network traffic by visiting a website or running a network tool.
3. **Analyze Captured Traffic:**
    
    - **HTTP Traffic:**
        - Use the filter `http` in the Wireshark filter bar.
        - Identify GET/POST requests, status codes, and headers.
    - **TCP Flags:**
        - Use the filter `tcp.flags` to view packets with TCP flag details.
        - Identify SYN, ACK, FIN, RST, and PSH flags in TCP packets.
    - **Other Protocols:**
        - Use filters for protocols such as `dns`, `arp`, `icmp`, and `dhcp`.
        - Example: Use `dns` to analyze DNS query and response traffic.
4. **Stop and Save:**
    
    - Stop the capture and save the `.pcap` file for further analysis.

---

### **Practical 2: Perform a MITM Attack using Cain & Abel**

**Goal:** Simulate a Man-in-the-Middle (MITM) attack to intercept and analyze data.

**Steps:**

1. **Setup the Environment:**
    
    - Ensure that the target and attacker machines are on the same network.
    - Open Cain & Abel on your Kali Linux or Windows system.
2. **Enable ARP Poisoning:**
    
    - Go to the **Sniffer** tab and enable it.
    - Add the network range for your local subnet.
    - Scan for active devices on the network.
3. **Select Target:**
    
    - Identify the target device (e.g., victim's IP address).
    - Add the target to the ARP poisoning table.
4. **Launch ARP Poisoning:**
    
    - Go to the ARP tab and start poisoning.
    - Cain & Abel will now redirect the traffic between the target and the gateway through your machine.
5. **Capture and Analyze Traffic:**
    
    - Use the Sniffer to capture sensitive data such as credentials or unencrypted communication.
6. **Stop and Clean Up:**
    
    - Stop ARP poisoning and exit Cain & Abel.
    - Clear ARP cache on the target device using `arp -d`.

---

### **Practical 3: Perform a DoS Attack on a Target Host Using hping3**

**Goal:** Simulate a Denial-of-Service (DoS) attack to overwhelm a target host.

**Steps:**

1. **Prepare the Environment:**
    
    - Identify the target host’s IP address.
    - Open a terminal on Kali Linux.
2. **Send SYN Flood Attack:**
    
    - Run the following command:
        
        bash
        
        Copy code
        
        `hping3 -S --flood -V <target_ip>`
        
    - Explanation:
        - `-S`: Sends SYN packets.
        - `--flood`: Sends packets as fast as possible.
        - `-V`: Verbose mode for monitoring packet sending.
3. **ICMP Flood:**
    
    - Run an ICMP flood attack:
        
        bash
        
        Copy code
        
        `hping3 --icmp --flood -V <target_ip>`
        
4. **UDP Flood:**
    
    - Run a UDP flood attack:
        
        bash
        
        Copy code
        
        `hping3 --udp --flood -V <target_ip>`
        
5. **Monitor Impact:**
    
    - Monitor the target host's performance using tools like `top` or `htop`.
    - Observe the impact on network latency and CPU usage.
6. **Stop the Attack:**
    
    - Stop the attack by pressing `Ctrl+C`.