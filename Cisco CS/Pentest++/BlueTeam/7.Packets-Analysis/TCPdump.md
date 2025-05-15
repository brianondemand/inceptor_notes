## What is TCPDump?

TCPDump is a command-line packet analyzer designed for capturing and analyzing network traffic directly from network interfaces. It is widely used for network troubleshooting, analysis, and security auditing purposes.

## Common Use and Commands:

TCPDump provides various options for capturing and analyzing network packets. Below is a basic usage example:

```Terminal
tcpdump [OPTIONS] [EXPRESSION]
```

Common options include:
- `-i`: Specify the interface for capturing traffic.
- `-r`: Read packets from a capture file.
- `-w`: Write packets to a capture file.
- `-n`: Disable name resolution.

Example to capture traffic on interface eth0 and display basic packet information:
```Terminal
tcpdump -i eth0
tcpdump -n -i eth0
```

Example to read packets from a capture file:
```Terminal
tcpdump -r capture.pcap
```

## More Information:

For in-depth documentation and advanced usage of TCPDump, users can refer to the official TCPDump documentation. Additionally, the source code for TCPDump is available on GitHub: [https://github.com/the-tcpdump-group/tcpdump](https://github.com/the-tcpdump-group/tcpdump).