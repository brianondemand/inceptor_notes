

**2. Perform a TCP SYN Scan (detect open ports)**

```bash
hping3 -S -p 80 192.168.1.1
```

- `-S`: Sends **SYN packets** to test if a port is open.
- `-p 80`: Target **port 80** (HTTP).

**3. Detect firewalls (Send ACK packets)**

```bash
hping3 -A -p 80 192.168.1.1
```

- `-A`: Sends **ACK packets** (firewalls usually block these if no prior connection exists).

 **4. Spoof Source IP Address (IP Spoofing)**

```bash
hping3 -S -p 443 -a 10.10.10.10 192.168.1.1
```

- `-a 10.10.10.10`: Fake source IP **(spoofing attack simulation)**.

 **5. Simulate a Denial-of-Service (DoS) attack**

```bash
hping3 -S --flood -p 80 192.168.1.1
```

- `--flood`: Sends packets **as fast as possible** (network stress testing).

 **6. Perform a TCP Traceroute**

```bash
hping3 --traceroute -S -p 80 192.168.1.1
```

- `--traceroute`: Maps **network path** using **TCP instead of ICMP**.
