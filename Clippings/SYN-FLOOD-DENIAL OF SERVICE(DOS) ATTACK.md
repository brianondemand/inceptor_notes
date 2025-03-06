[

![Rabbiyatabassum](https://miro.medium.com/v2/resize:fill:44:44/1*dmbNkD5D-u45r44go_cf0g.png)

](https://medium.com/@rabbiyatabassum?source=post_page---byline--67755f5109b7---------------------------------------)

https://www.youtube.com/watch?v=S9FdzDXgniA hping3

https://www.geeksforgeeks.org/sniffing-using-bettercap-in-linux/

https://hackviser.com/tactics/tools/bettercap

**SYSTEM AND TOOLS USED:**

1\. WINDOWS 10 (victim machine)

2\. KALI LINUX VERSION 2022.0 (Attacking machine)

3\. HPING3

4\. WIRESHARK

5\. SYSTEM SPECs (8GB RAM)

**STEPS:**

1. Installing hping3 on Kali machine:

This is a command used in Linux-based operating systems (such as Ubuntu, Debian, or Linux Mint) that uses the APT package manager to install the “hping3” utility.

“hping3” is a command-line tool that allows network administrators and security professionals to send custom TCP/IP packets and to test and troubleshoot network connectivity, as well as perform advanced network scanning and analysis.

ping3 can be used as a part of a DoS attack by sending a high volume of traffic to a targeted network or system. This high volume of traffic can overwhelm the target’s network bandwidth, processing power, or other resources, causing the target to become unavailable to legitimate users.

![](https://miro.medium.com/v2/resize:fit:700/1*4dFnx98mcIVo7Lj7YiFo6w.png)

installing hping3

Now we will try to perform a DOS attack using the hping3 tool. This command is a hping3 command that sends a high volume of TCP SYN packets to the specified IP address on port 80. Here’s a breakdown of the command and what each option does:

- “-c 15000”: Specifies the number of packets to send. In this case, 15,000 packets will be sent.
- “-d 120”: Specifies the data size in the packets being sent. In this case, the data size is set to 120 bytes.
- “-S”: Sets the SYN flag in the TCP packet header, indicating the start of a TCP connection.
- “-w 64”: Sets the TCP window size to 64, which determines how much data can be sent at once before receiving an acknowledgment.
- “-p 80”: Specifies the destination port for the packets being sent. In this case, port 80 is being targeted, which is commonly used for HTTP traffic.
- “ — flood”: Enables flooding mode, which sends packets as fast as possible without waiting for responses.
- “ — rand-source”: Uses a random source IP address for each packet sent, making it more difficult to trace the source of the traffic.

Overall, this command sends a high volume of TCP SYN packets to the specified IP address on port 80, which can potentially overwhelm the target’s network bandwidth and resources, causing a denial of service (DoS) condition.

![](https://miro.medium.com/v2/resize:fit:700/1*NE4uPXf05eosNWZNKT2MAg.png)

hping3 command to send packets

To detect an SYN flood attack with Wireshark, you can follow these steps:

1. Open Wireshark and start capturing packets on the interface that is connected to the network where the attack is taking place.
2. Filter the captured packets by the TCP protocol by entering “TCP” in the filter field and pressing Enter.
3. Look for a high volume of TCP SYN packets from a single source IP address to the same destination IP address and port. This indicates a possible SYN flood attack.
4. Look for a high number of TCP SYN-ACK packets from the destination IP address back to the source IP address. If there are no corresponding SYN-ACK packets, it suggests the source IP address is spoofed and not responding.
5. Look for a low number of TCP ACK packets from the source IP address back to the destination IP address. If the source IP address is not responding to the ACK packet, it can indicate a possible SYN flood attack.
6. Use Wireshark’s Statistics > TCP Stream Graphs > Round Trip Time Graph feature to analyze the round-trip time between the source and destination IP addresses. If the round-trip time is consistently high or shows an upward trend, it can indicate a possible SYN flood attack.

![](https://miro.medium.com/v2/resize:fit:700/1*t6XbXo6FH_yYHpIfVfENYA.png)

capturing packets using Wireshark

**PREVENTION:**

If you suspect an SYN flood attack, it’s important to take immediate action to mitigate the attack, such as implementing firewall rules to block the attacker’s IP address or deploying a specialized DDoS mitigation tool or service.