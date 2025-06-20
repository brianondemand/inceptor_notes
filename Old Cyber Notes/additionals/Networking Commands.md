| Command (Windows)               | Command (Linux)                | Description                                             |              |                                                |
| ------------------------------- | ------------------------------ | ------------------------------------------------------- | ------------ | ---------------------------------------------- |
| `ipconfig`                      | `ifconfig` / `ip a`            | Displays network configuration details.                 |              |                                                |
| `ping`                          | `ping`                         | Sends ICMP echo requests to test connectivity.          |              |                                                |
| `tracert`                       | `traceroute`                   | Traces the route packets take to a destination.         |              |                                                |
| `nslookup`                      | `dig` / `nslookup`             | Queries DNS records for domain name resolution.         |              |                                                |
| `netstat`                       | `netstat`                      | Displays active connections and network statistics.     |              |                                                |
| `arp -a`                        | `arp -a`                       | Displays and manages the ARP cache.                     |              |                                                |
| `route print`                   | `route -n`                     | Shows and modifies the IP routing table.                |              |                                                |
| `netsh wlan show profiles`      | `nmcli dev wifi`               | Lists saved Wi-Fi profiles.                             |              |                                                |
| `netsh int ip reset`            | `systemctl restart networking` | Resets the TCP/IP stack.                                |              |                                                |
| `getmac`                        | `ip link show`                 | Retrieves the MAC address of network adapters.          |              |                                                |
| `telnet`                        | `telnet`                       | Tests connectivity to a remote host on a specific port. |              |                                                |
| `powershell Test-NetConnection` | `nc -zv` / `telnet`            | Tests network connectivity and open ports.              |              |                                                |
| `tasklist                       | find "chrome"`                 | `ps aux                                                 | grep chrome` | Finds running processes related to networking. |
| `netsh firewall show config`    | `iptables -L`                  | Displays firewall rules and settings.                   |              |                                                |
| `netsh wlan show networks`      | `iwlist wlan0 scan`            | Lists available Wi-Fi networks.                         |              |                                                |
