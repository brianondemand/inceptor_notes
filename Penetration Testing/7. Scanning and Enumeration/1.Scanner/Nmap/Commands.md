## What is Nmap?

Nmap (Network Mapper) is a popular open-source tool used for network exploration and security auditing. It is designed to scan large networks and identify potential vulnerabilities and security risks.

Nmap works by sending packets to target hosts and analyzing the responses to determine which ports are open, which services are running, and which operating systems are being used. It can also perform various advanced scans, such as OS detection, version detection, and service fingerprinting.

## Nmap Scan Types

#### TCP Connect Scan

The TCP Connect Scan uses the operating system's TCP stack to complete a full three-way handshake with the target. This scan is automatically used when you run Nmap without root or administrative privileges. It is reliable and accurate, but easily detected and logged by target systems.

Command and option:  

`nmap -sT <target>`  

Example: `nmap -sT 192.168.1.1`

---

#### UDP Scan

The UDP Scan is used to identify open UDP ports. Nmap sends empty UDP packets to each port and monitors for ICMP "port unreachable" replies. If no response is received, the port is considered open|filtered. UDP scans are slower due to limited feedback and potential rate limiting by the target.

Command and option:  

`nmap -sU <target>`  

Example: `nmap -sU 192.168.1.1`

To scan both TCP and UDP ports:  

`nmap -sS -sU -p T:1-100,U:1-100 <target>`

---

#### TCP FIN Scan

The TCP FIN Scan attempts to evade basic firewalls and packet filters. Instead of initiating a connection with a SYN packet, it sends a FIN packet. According to TCP specifications, closed ports respond with RST, while open ports remain silent. This makes it stealthier, but it does not work reliably against Windows targets.

Command and option:  

`nmap -sF <target>`  

Example: `nmap -sF 192.168.1.1`

---

#### Host Discovery Scan

The Host Discovery Scan is used to determine which systems on a network are alive. It does not perform a port scan. By default, Nmap sends an ICMP echo request, TCP SYN to port 443, TCP ACK to port 80, and ICMP timestamp request. Responses to any of these indicate the host is up.

Command and option:  

- `nmap -sn <target>`  

Example: `nmap -sn 192.168.1.0/24`

To perform host discovery with a more aggressive scan:  

`nmap -Pn <target>`  

This skips host discovery and treats all hosts as online.

---

#### Port Scanning Behavior

By default, Nmap scans the top 1000 most commonly used TCP ports. This behavior offers a balance of speed and effectiveness for general network reconnaissance. To scan a specific port range or the entire port space, use the `-p` option.

Scan top 1000 ports (default):  

`nmap <target>`

Scan all 65535 TCP ports:  

`nmap -p- <target>`

Scan a custom port range:  

`nmap -p 1-1000 <target>`

Scan specific ports:  

`nmap -p 22,80,443 <target>`

---

#### Service and Version Detection

To detect services and versions running on open ports, Nmap uses banner grabbing and service probes.

Command and option:  

`nmap -sV <target>`  

Example: `nmap -sV 192.168.1.1`

---

#### Operating System Detection

This feature attempts to determine the operating system of the target host using TCP/IP stack fingerprinting.

Command and option:  

`nmap -O <target>`  

Example: `nmap -O 192.168.1.1`

For more accuracy, combine service and OS detection:  

`nmap -A <target>`

---

#### Aggressive Scan

An aggressive scan enables OS detection, version detection, script scanning, and traceroute in one go. It is very noisy and easily detected but gives detailed results.

Command and option:  

`nmap -A <target>`  

Example: `nmap -A 192.168.1.1`

---

#### Save Scan Results

Nmap allows you to save your output in different formats for further analysis.

Save as normal text:  

`nmap -oN scan.txt <target>`

Save as XML:  

`nmap -oX scan.xml <target>`

Save in grepable format:  

`nmap -oG scan.gnmap <target>`

Save all formats at once:  

`nmap -oA fullscan <target>`  

This will generate `fullscan.nmap`, `fullscan.xml`, and `fullscan.gnmap`

---
