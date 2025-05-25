## What is Mass Scan?
Mass Scan is an open-source tool used for network scanning and port discovery. It is designed to quickly scan large networks for open ports and services, and generate reports on the identified vulnerabilities.

Mass Scan works by sending packets to the target network and analyzing the responses to determine which ports are open and which services are running. It supports both TCP and UDP protocols and can scan large networks with high speed and accuracy.

## Common Use and Commands:
Mass Scan is commonly used by network administrators and security professionals to identify potential vulnerabilities in their networks and secure them from potential threats.

The following are some common commands used in Mass Scan:

```
- masscan <target-ip> -p <port>                         --->  Scan a single IP address
- 
- masscan <target-ip-range> -p <port>                   ---> Scan a range of IP addresses
- 
- masscan <subnet> -p <port>                            ---> Scan a subnet
- 
- masscan <target-ip> -p 1-65535                        ---> Scan all ports on a target
- 
- masscan <target-ip> --exclude-ports <port1,port2,...> ---> Exclude certain ports from scan
- 
- masscan <target-ip> -p <port> --rate=1000(ex)         ---> Set rate to make it scan faster
- 
- masscan <target-ip> -p <port> --randomize-hosts       ---> Randomise host (spoof request)
- 
- masscan <target-ip>/8 -p <port>                       ---> Will scan all computers on network
```

Mass Scan supports various options and flags that can be used to customize the scan, such as setting the rate of packets per second, specifying the output format, and enabling OS detection.

---
## More Information
For more information on Mass Scan, including the latest updates and documentation, please visit the project's official website: https://github.com/robertdavidgraham/masscan

